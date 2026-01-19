(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1768863412)
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
      (lambda _%$args133237%_
        (apply make-instance gx#expander-context::t _%$args133237%_)))
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
      (lambda _%$args133234%_
        (apply make-instance gx#root-context::t _%$args133234%_)))
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
      (lambda _%$args133231%_
        (apply make-instance gx#phi-context::t _%$args133231%_)))
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
      (lambda _%$args133228%_
        (apply make-instance gx#top-context::t _%$args133228%_)))
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
      (lambda _%$args133225%_
        (apply make-instance gx#module-context::t _%$args133225%_)))
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
      (lambda _%$args133222%_
        (apply make-instance gx#prelude-context::t _%$args133222%_)))
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
      (lambda _%$args133219%_
        (apply make-instance gx#local-context::t _%$args133219%_)))
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
      (lambda (_%self133192%_ _%id133193%_ _%super133194%_)
        (let ((_%self133197%_ _%self133192%_))
          (if (##fx< '3 (##structure-length _%self133197%_))
              (begin
                (##unchecked-structure-set!
                 _%self133197%_
                 _%id133193%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133197%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133197%_
                 _%super133194%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133197%_
                     '3
                     (##structure-length _%self133197%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self133210%_ _%id133211%_)
        (let ((_%super133213%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self133210%_
           _%id133211%_
           _%super133213%_))))
    (define gx#phi-context:::init!
      (lambda _g133279_
        (let ((_g133280_ (##length _g133279_)))
          (cond ((##fx= _g133280_ 2)
                 (apply gx#phi-context:::init!__0 _g133279_))
                ((##fx= _g133280_ 3)
                 (apply gx#phi-context:::init!__% _g133279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g133279_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self133045%_ _%super133046%_)
        (let ((_%self133049%_ _%self133045%_))
          (if (##fx< '3 (##structure-length _%self133049%_))
              (begin
                (##unchecked-structure-set!
                 _%self133049%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133049%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133049%_
                 _%super133046%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133049%_
                     '3
                     (##structure-length _%self133049%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self133062%_)
        (let ((_%super133064%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self133062%_ _%super133064%_))))
    (define gx#local-context:::init!
      (lambda _g133281_
        (let ((_g133282_ (##length _g133281_)))
          (cond ((##fx= _g133282_ 1)
                 (apply gx#local-context:::init!__0 _g133281_))
                ((##fx= _g133282_ 2)
                 (apply gx#local-context:::init!__% _g133281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g133281_))))))
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
      (lambda _%$args132919%_
        (apply make-instance gx#binding::t _%$args132919%_)))
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
      (lambda _%$args132916%_
        (apply make-instance gx#runtime-binding::t _%$args132916%_)))
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
      (lambda _%$args132913%_
        (apply make-instance gx#local-binding::t _%$args132913%_)))
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
      (lambda _%$args132910%_
        (apply make-instance gx#top-binding::t _%$args132910%_)))
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
      (lambda _%$args132907%_
        (apply make-instance gx#module-binding::t _%$args132907%_)))
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
      (lambda _%$args132904%_
        (apply make-instance gx#extern-binding::t _%$args132904%_)))
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
      (lambda _%$args132901%_
        (apply make-instance gx#syntax-binding::t _%$args132901%_)))
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
      (lambda _%$args132898%_
        (apply make-instance gx#import-binding::t _%$args132898%_)))
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
      (lambda _%$args132895%_
        (apply make-instance gx#alias-binding::t _%$args132895%_)))
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
      (lambda _%$args132892%_
        (apply make-instance gx#expander::t _%$args132892%_)))
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
      (lambda _%$args132889%_
        (apply make-instance gx#core-expander::t _%$args132889%_)))
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
      (lambda _%$args132886%_
        (apply make-instance gx#expression-form::t _%$args132886%_)))
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
      (lambda _%$args132883%_
        (apply make-instance gx#special-form::t _%$args132883%_)))
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
      (lambda _%$args132880%_
        (apply make-instance gx#definition-form::t _%$args132880%_)))
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
      (lambda _%$args132877%_
        (apply make-instance gx#top-special-form::t _%$args132877%_)))
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
      (lambda _%$args132874%_
        (apply make-instance gx#module-special-form::t _%$args132874%_)))
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
      (lambda _%$args132871%_
        (apply make-instance gx#feature-expander::t _%$args132871%_)))
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
      (lambda _%$args132868%_
        (apply make-instance gx#private-feature-expander::t _%$args132868%_)))
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
      (lambda _%$args132865%_
        (apply make-instance gx#reserved-expander::t _%$args132865%_)))
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
      (lambda _%$args132862%_
        (apply make-instance gx#macro-expander::t _%$args132862%_)))
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
      (lambda _%$args132859%_
        (apply make-instance gx#rename-macro-expander::t _%$args132859%_)))
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
      (lambda _%$args132856%_
        (apply make-instance gx#user-expander::t _%$args132856%_)))
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
      (lambda _%$args132853%_
        (apply make-instance gx#expander-mark::t _%$args132853%_)))
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
      (lambda (_%ctx132837%_
               _%message132838%_
               _%stx132839%_
               .
               _%details132840%_)
        (let ((_%ctx132851%_
               (let ((_%$e132842%_ _%ctx132837%_))
                 (if _%$e132842%_
                     _%$e132842%_
                     (let ((_%$e132845%_ (gx#core-context-top__0)))
                       (if _%$e132845%_
                           ((lambda (_%ctx132848%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx132848%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e132845%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message132838%_
                  (cons _%stx132839%_ _%details132840%_)
                  _%ctx132851%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx132824%_ _%expression?132825%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx132824%_ _%expression?132825%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx132830%_)
        (let ((_%expression?132832%_ '#f))
          (gx#eval-syntax__% _%stx132830%_ _%expression?132832%_))))
    (define gx#eval-syntax
      (lambda _g133283_
        (let ((_g133284_ (##length _g133283_)))
          (cond ((##fx= _g133284_ 1) (apply gx#eval-syntax__0 _g133283_))
                ((##fx= _g133284_ 2) (apply gx#eval-syntax__% _g133283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g133283_))))))
    (define gx#eval-syntax*
      (lambda (_%stx132821%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx132821%_))))
    (define gx#core-expand__%
      (lambda (_%stx132808%_ _%expression?132809%_)
        (if _%expression?132809%_
            (gx#core-expand-expression _%stx132808%_)
            (gx#core-expand-top _%stx132808%_))))
    (define gx#core-expand__0
      (lambda (_%stx132814%_)
        (let ((_%expression?132816%_ '#f))
          (gx#core-expand__% _%stx132814%_ _%expression?132816%_))))
    (define gx#core-expand
      (lambda _g133285_
        (let ((_g133286_ (##length _g133285_)))
          (cond ((##fx= _g133286_ 1) (apply gx#core-expand__0 _g133285_))
                ((##fx= _g133286_ 2) (apply gx#core-expand__% _g133285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g133285_))))))
    (define gx#core-expand-top
      (lambda (_%stx132775%_)
        (let* ((_%stx132777%_ (gx#core-expand*__0 _%stx132775%_))
               (_%e132778132785%_ _%stx132777%_)
               (_%E132780132789%_
                (lambda () (gx#core-expand-expression _%stx132777%_)))
               (_%E132779132803%_
                (lambda ()
                  (if (gx#stx-pair? _%e132778132785%_)
                      (let ((_%e132781132793%_
                             (gx#syntax-e _%e132778132785%_)))
                        (let ((_%hd132782132796%_ (##car _%e132781132793%_))
                              (_%tl132783132798%_ (##cdr _%e132781132793%_)))
                          (let ((_%form132801%_ _%hd132782132796%_))
                            (if (gx#core-bound-identifier?__0 _%form132801%_)
                                _%stx132777%_
                                (_%E132780132789%_)))))
                      (_%E132780132789%_)))))
          (_%E132779132803%_))))
    (define gx#core-expand-expression
      (lambda (_%stx132707%_)
        (letrec ((_%sealed-expression?132709%_
                  (lambda (_%hd132745%_)
                    (if (gx#sealed-syntax? _%hd132745%_)
                        (let* ((_%e132746132753%_ _%hd132745%_)
                               (_%E132748132757%_ (lambda () '#f))
                               (_%E132747132771%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e132746132753%_)
                                      (let ((_%e132749132761%_
                                             (gx#syntax-e _%e132746132753%_)))
                                        (let ((_%hd132750132764%_
                                               (##car _%e132749132761%_))
                                              (_%tl132751132766%_
                                               (##cdr _%e132749132761%_)))
                                          (let ((_%form132769%_
                                                 _%hd132750132764%_))
                                            (gx#core-bound-identifier?__%
                                             _%form132769%_
                                             gx#expression-form-binding?))))
                                      (_%E132748132757%_)))))
                          (_%E132747132771%_))
                        '#f)))
                 (_%illegal-expression132710%_
                  (lambda (_%hd132742%_ . _%_132743%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx132707%_
                     _%hd132742%_)))
                 (_%expand-e132711%_
                  (lambda (_%form132734%_ _%hd132735%_)
                    (let ((_%bind132737%_
                           (if (##structure-instance-of?
                                _%form132734%_
                                'gx#binding::t)
                               _%form132734%_
                               (gx#resolve-identifier__0 _%form132734%_))))
                      (if (gx#core-expander-binding? _%bind132737%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind132737%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd132735%_
                            (gx#stx-source _%stx132707%_)))
                          (if (##structure-direct-instance-of?
                               _%bind132737%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind132737%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd132735%_
                                 (gx#stx-source _%stx132707%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx132707%_
                               _%form132734%_)))))))
          (let ((_%hd132713%_ (gx#core-expand-head _%stx132707%_)))
            (if (_%sealed-expression?132709%_ _%hd132713%_)
                _%hd132713%_
                (if (gx#stx-pair? _%hd132713%_)
                    (let* ((_%form132717%_ (gx#stx-car _%hd132713%_))
                           (_%bind132719%_
                            (if (gx#identifier? _%form132717%_)
                                (gx#resolve-identifier__0 _%form132717%_)
                                '#f)))
                      (if (or (not _%bind132719%_)
                              (not (gx#core-expander-binding? _%bind132719%_)))
                          (_%expand-e132711%_
                           '%%app
                           (cons '%%app _%hd132713%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind132719%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd132713%_
                               _%illegal-expression132710%_)
                              (if (gx#expression-form-binding? _%bind132719%_)
                                  (_%expand-e132711%_
                                   _%bind132719%_
                                   _%hd132713%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind132719%_)
                                      (gx#core-expand-expression
                                       (_%expand-e132711%_
                                        _%bind132719%_
                                        _%hd132713%_))
                                      (_%illegal-expression132710%_
                                       _%hd132713%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd132713%_)
                        (_%illegal-expression132710%_ _%hd132713%_)
                        (if (gx#identifier? _%hd132713%_)
                            (_%expand-e132711%_
                             '%%ref
                             (cons '%%ref (cons _%hd132713%_ '())))
                            (if (gx#stx-datum? _%hd132713%_)
                                (_%expand-e132711%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd132713%_ '())))
                                (_%illegal-expression132710%_
                                 _%hd132713%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx132702%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx132705%_ (gx#core-expand-expression _%stx132702%_)))
             (values _%stx132705%_ (gx#eval-syntax* _%stx132705%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx132683%_ _%stop?132684%_)
        (let _%lp132686%_ ((_%stx132688%_ _%stx132683%_))
          (if (_%stop?132684%_ _%stx132688%_)
              _%stx132688%_
              (let ((_%rstx132690%_ (gx#core-expand1 _%stx132688%_)))
                (if (eq? _%stx132688%_ _%rstx132690%_)
                    _%stx132688%_
                    (_%lp132686%_ _%rstx132690%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx132695%_)
        (let ((_%stop?132697%_ false))
          (gx#core-expand*__% _%stx132695%_ _%stop?132697%_))))
    (define gx#core-expand*
      (lambda _g133287_
        (let ((_g133288_ (##length _g133287_)))
          (cond ((##fx= _g133288_ 1) (apply gx#core-expand*__0 _g133287_))
                ((##fx= _g133288_ 2) (apply gx#core-expand*__% _g133287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g133287_))))))
    (define gx#core-expand1
      (lambda (_%stx132635%_)
        (letrec ((_%step132637%_
                  (lambda (_%hd132674%_)
                    (let ((_%bind132676%_
                           (gx#resolve-identifier__0 _%hd132674%_)))
                      (if (##structure-instance-of?
                           _%bind132676%_
                           'gx#runtime-binding::t)
                          _%stx132635%_
                          (if (##structure-direct-instance-of?
                               _%bind132676%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind132676%_
                                '4
                                '#f
                                '#f)
                               _%stx132635%_)
                              (if (not _%bind132676%_)
                                  _%stx132635%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx132635%_))))))))
          (let* ((_%e132638132646%_ _%stx132635%_)
                 (_%E132644132650%_ (lambda () _%stx132635%_))
                 (_%E132640132656%_
                  (lambda ()
                    (let ((_%hd132654%_ _%e132638132646%_))
                      (if (gx#identifier? _%hd132654%_)
                          (_%step132637%_ _%hd132654%_)
                          (_%E132644132650%_)))))
                 (_%E132639132670%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132638132646%_)
                        (let ((_%e132641132660%_
                               (gx#syntax-e _%e132638132646%_)))
                          (let ((_%hd132642132663%_ (##car _%e132641132660%_))
                                (_%tl132643132665%_ (##cdr _%e132641132660%_)))
                            (let ((_%hd132668%_ _%hd132642132663%_))
                              (if (gx#identifier? _%hd132668%_)
                                  (_%step132637%_ _%hd132668%_)
                                  (_%E132640132656%_)))))
                        (_%E132640132656%_)))))
            (_%E132639132670%_)))))
    (define gx#core-expand-head
      (lambda (_%stx132601%_)
        (letrec ((_%stop?132603%_
                  (lambda (_%stx132605%_)
                    (let* ((_%e132606132613%_ _%stx132605%_)
                           (_%E132608132617%_ (lambda () '#f))
                           (_%E132607132631%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132606132613%_)
                                  (let ((_%e132609132621%_
                                         (gx#syntax-e _%e132606132613%_)))
                                    (let ((_%hd132610132624%_
                                           (##car _%e132609132621%_))
                                          (_%tl132611132626%_
                                           (##cdr _%e132609132621%_)))
                                      (let ((_%hd132629%_ _%hd132610132624%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd132629%_))))
                                  (_%E132608132617%_)))))
                      (_%E132607132631%_)))))
          (gx#core-expand*__% _%stx132601%_ _%stop?132603%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx132407%_
               _%expand-special132408%_
               _%begin-form132409%_
               _%expand-e132410%_)
        (letrec ((_%expand-splice132412%_
                  (lambda (_%hd132575%_
                           _%body132576%_
                           _%rest132577%_
                           _%r132578%_)
                    (if (gx#stx-list? _%body132576%_)
                        (_%K132416%_
                         (gx#stx-foldr cons _%rest132577%_ _%body132576%_)
                         _%r132578%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx132407%_
                         _%hd132575%_))))
                 (_%expand-cond-expand132413%_
                  (lambda (_%hd132571%_ _%rest132572%_ _%r132573%_)
                    (_%K132416%_
                     (cons (gx#core-expand-cond-expand% _%hd132571%_)
                           _%rest132572%_)
                     _%r132573%_)))
                 (_%expand-include132414%_
                  (lambda (_%hd132520%_ _%rest132521%_ _%r132522%_)
                    (let* ((_%e132523132533%_ _%hd132520%_)
                           (_%E132525132537%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132523132533%_)))
                           (_%E132524132567%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132523132533%_)
                                  (let ((_%e132526132541%_
                                         (gx#syntax-e _%e132523132533%_)))
                                    (let ((_%hd132527132544%_
                                           (##car _%e132526132541%_))
                                          (_%tl132528132546%_
                                           (##cdr _%e132526132541%_)))
                                      (if (gx#stx-pair? _%tl132528132546%_)
                                          (let ((_%e132529132549%_
                                                 (gx#syntax-e
                                                  _%tl132528132546%_)))
                                            (let ((_%hd132530132552%_
                                                   (##car _%e132529132549%_))
                                                  (_%tl132531132554%_
                                                   (##cdr _%e132529132549%_)))
                                              (let ((_%path132557%_
                                                     _%hd132530132552%_))
                                                (if (gx#stx-null?
                                                     _%tl132531132554%_)
                                                    (if (gx#stx-string?
                                                         _%path132557%_)
                                                        (let* ((_%rpath132559%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path132557%_
                         (gx#stx-source _%hd132520%_)))
                       (_%block132561%_
                        (gx#core-expand-include%__%
                         _%hd132520%_
                         _%rpath132559%_))
                       (_%rbody132564%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block132561%_
                            _%expand-special132408%_
                            '#f
                            _%expand-e132410%_))
                         gx#current-expander-path
                         (cons _%rpath132559%_ (gx#current-expander-path)))))
                  (_%K132416%_
                   _%rest132521%_
                   (__foldr1 cons _%r132522%_ _%rbody132564%_)))
                (_%E132525132537%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132525132537%_)))))
                                          (_%E132525132537%_))))
                                  (_%E132525132537%_)))))
                      (_%E132524132567%_))))
                 (_%expand-expression132415%_
                  (lambda (_%hd132516%_ _%rest132517%_ _%r132518%_)
                    (_%K132416%_
                     _%rest132517%_
                     (cons (_%expand-e132410%_ _%hd132516%_) _%r132518%_))))
                 (_%K132416%_
                  (lambda (_%rest132446%_ _%r132447%_)
                    (let* ((_%e132448132455%_ _%rest132446%_)
                           (_%E132450132459%_
                            (lambda ()
                              (if _%begin-form132409%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form132409%_
                                    (reverse _%r132447%_))
                                   (gx#stx-source _%stx132407%_))
                                  _%r132447%_)))
                           (_%E132449132512%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132448132455%_)
                                  (let ((_%e132451132463%_
                                         (gx#syntax-e _%e132448132455%_)))
                                    (let ((_%hd132452132466%_
                                           (##car _%e132451132463%_))
                                          (_%tl132453132468%_
                                           (##cdr _%e132451132463%_)))
                                      (let* ((_%hd132471%_ _%hd132452132466%_)
                                             (_%rest132473%_
                                              _%tl132453132468%_)
                                             (_%hd132475%_
                                              (gx#core-expand-head
                                               _%hd132471%_))
                                             (_%e132476132483%_ _%hd132475%_)
                                             (_%E132478132487%_
                                              (lambda ()
                                                (_%expand-expression132415%_
                                                 _%hd132475%_
                                                 _%rest132473%_
                                                 _%r132447%_)))
                                             (_%E132477132508%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e132476132483%_)
                                                    (let ((_%e132479132491%_
                                                           (gx#syntax-e
                                                            _%e132476132483%_)))
                                                      (let ((_%hd132480132494%_
                                                             (##car _%e132479132491%_))
                                                            (_%tl132481132496%_
                                                             (##cdr _%e132479132491%_)))
                                                        (let* ((_%form132499%_
                                                                _%hd132480132494%_)
                                                               (_%body132501%_
                                                                _%tl132481132496%_)
                                                               (_%bind132503%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form132499%_)
                            (gx#resolve-identifier__0 _%form132499%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind132503%_)
                      (let ((_%$e132505%_
                             (##unchecked-structure-ref
                              _%bind132503%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e132505%_)
                            (_%expand-splice132412%_
                             _%hd132475%_
                             _%body132501%_
                             _%rest132473%_
                             _%r132447%_)
                            (if (eq? '%#cond-expand _%$e132505%_)
                                (_%expand-cond-expand132413%_
                                 _%hd132475%_
                                 _%rest132473%_
                                 _%r132447%_)
                                (if (eq? '%#include _%$e132505%_)
                                    (_%expand-include132414%_
                                     _%hd132475%_
                                     _%rest132473%_
                                     _%r132447%_)
                                    (_%expand-special132408%_
                                     _%hd132475%_
                                     _%K132416%_
                                     _%rest132473%_
                                     _%r132447%_)))))
                      (_%expand-expression132415%_
                       _%hd132475%_
                       _%rest132473%_
                       _%r132447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132478132487%_)))))
                                        (_%E132477132508%_))))
                                  (_%E132450132459%_)))))
                      (_%E132449132512%_)))))
          (let* ((_%e132417132424%_ _%stx132407%_)
                 (_%E132419132428%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e132417132424%_)))
                 (_%E132418132442%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132417132424%_)
                        (let ((_%e132420132432%_
                               (gx#syntax-e _%e132417132424%_)))
                          (let ((_%hd132421132435%_ (##car _%e132420132432%_))
                                (_%tl132422132437%_ (##cdr _%e132420132432%_)))
                            (let ((_%body132440%_ _%tl132422132437%_))
                              (if (gx#stx-list? _%body132440%_)
                                  (_%K132416%_ _%body132440%_ '())
                                  (_%E132419132428%_)))))
                        (_%E132419132428%_)))))
            (_%E132418132442%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx132583%_ _%expand-special132584%_)
        (let* ((_%begin-form132586%_ '%#begin)
               (_%expand-e132588%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx132583%_
           _%expand-special132584%_
           _%begin-form132586%_
           _%expand-e132588%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx132590%_ _%expand-special132591%_ _%begin-form132592%_)
        (let ((_%expand-e132594%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx132590%_
           _%expand-special132591%_
           _%begin-form132592%_
           _%expand-e132594%_))))
    (define gx#core-expand-block
      (lambda _g133289_
        (let ((_g133290_ (##length _g133289_)))
          (cond ((##fx= _g133290_ 2) (apply gx#core-expand-block__0 _g133289_))
                ((##fx= _g133290_ 3) (apply gx#core-expand-block__1 _g133289_))
                ((##fx= _g133290_ 4) (apply gx#core-expand-block__% _g133289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g133289_))))))
    (define gx#core-expand-block*
      (lambda (_%stx132355%_ _%expand-special132356%_)
        (let* ((_%g132357132368%_
                (gx#core-expand-block__1
                 _%stx132355%_
                 _%expand-special132356%_
                 '#f))
               (_%E132361132372%_
                (lambda ()
                  (error '"No clause matching"
                         _%g132357132368%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K132366132403%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx132355%_)))
                (_%K132363132389%_ (lambda (_%expr132387%_) _%expr132387%_))
                (_%K132362132378%_
                 (lambda (_%body132376%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body132376%_))
                    (gx#stx-source _%stx132355%_)))))
            (let ((_%try-match132359132399%_
                   (lambda ()
                     (if (pair? _%g132357132368%_)
                         (let ((_%tl132365132394%_ (##cdr _%g132357132368%_))
                               (_%hd132364132392%_ (##car _%g132357132368%_)))
                           (if (null? _%tl132365132394%_)
                               (let ((_%expr132397%_ _%hd132364132392%_))
                                 (_%K132363132389%_ _%expr132397%_))
                               (let ((_%body132381%_ _%g132357132368%_))
                                 (_%K132362132378%_ _%body132381%_))))
                         (let ((_%body132381%_ _%g132357132368%_))
                           (_%K132362132378%_ _%body132381%_))))))
              (if (null? _%g132357132368%_)
                  (_%K132366132403%_)
                  (_%try-match132359132399%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx132180%_)
        (letrec ((_%satisfied?132182%_
                  (lambda (_%condition132283%_)
                    (let* ((_%e132284132299%_ _%condition132283%_)
                           (_%E132294132303%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132284132299%_)))
                           (_%E132287132322%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132284132299%_)
                                  (let ((_%e132295132307%_
                                         (gx#syntax-e _%e132284132299%_)))
                                    (let ((_%hd132296132310%_
                                           (##car _%e132295132307%_))
                                          (_%tl132297132312%_
                                           (##cdr _%e132295132307%_)))
                                      (let* ((_%combinator132315%_
                                              _%hd132296132310%_)
                                             (_%body132317%_
                                              _%tl132297132312%_))
                                        (if (gx#stx-list? _%body132317%_)
                                            (let ((_%$e132319%_
                                                   (gx#stx-e
                                                    _%combinator132315%_)))
                                              (if (eq? 'not _%$e132319%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?132182%_
                                                        _%body132317%_))
                                                  (if (eq? 'and _%$e132319%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?132182%_
                                                       _%body132317%_)
                                                      (if (eq? 'or
                                                               _%$e132319%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?132182%_
                                                           _%body132317%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e132319%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body132317%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx132180%_
                       _%combinator132315%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E132294132303%_)))))
                                  (_%E132294132303%_))))
                           (_%E132286132345%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132284132299%_)
                                  (let ((_%e132288132326%_
                                         (gx#syntax-e _%e132284132299%_)))
                                    (let ((_%hd132289132329%_
                                           (##car _%e132288132326%_))
                                          (_%tl132290132331%_
                                           (##cdr _%e132288132326%_)))
                                      (if (and (gx#identifier?
                                                _%hd132289132329%_)
                                               (gx#core-identifier=?
                                                _%hd132289132329%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl132290132331%_)
                                              (let ((_%e132291132334%_
                                                     (gx#syntax-e
                                                      _%tl132290132331%_)))
                                                (let ((_%hd132292132337%_
                                                       (##car _%e132291132334%_))
                                                      (_%tl132293132339%_
                                                       (##cdr _%e132291132334%_)))
                                                  (let ((_%expr132342%_
                                                         _%hd132292132337%_))
                                                    (if (gx#stx-null?
                                                         _%tl132293132339%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr132342%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E132287132322%_)))))
                                              (_%E132287132322%_))
                                          (_%E132287132322%_))))
                                  (_%E132287132322%_))))
                           (_%E132285132351%_
                            (lambda ()
                              (let ((_%id132349%_ _%e132284132299%_))
                                (if (gx#identifier? _%id132349%_)
                                    (gx#core-bound-identifier?__%
                                     _%id132349%_
                                     gx#feature-binding?)
                                    (_%E132286132345%_))))))
                      (_%E132285132351%_))))
                 (_%loop132183%_
                  (lambda (_%rest132213%_)
                    (let* ((_%e132214132222%_ _%rest132213%_)
                           (_%E132220132226%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132214132222%_)))
                           (_%E132216132230%_
                            (lambda ()
                              (if (gx#stx-null? _%e132214132222%_)
                                  '()
                                  (_%E132220132226%_))))
                           (_%E132215132279%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132214132222%_)
                                  (let ((_%e132217132234%_
                                         (gx#syntax-e _%e132214132222%_)))
                                    (let ((_%hd132218132237%_
                                           (##car _%e132217132234%_))
                                          (_%tl132219132239%_
                                           (##cdr _%e132217132234%_)))
                                      (let* ((_%hd132242%_ _%hd132218132237%_)
                                             (_%rest132244%_
                                              _%tl132219132239%_)
                                             (_%e132245132252%_ _%hd132242%_)
                                             (_%E132247132256%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e132245132252%_)))
                                             (_%E132246132275%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e132245132252%_)
                                                    (let ((_%e132248132260%_
                                                           (gx#syntax-e
                                                            _%e132245132252%_)))
                                                      (let ((_%hd132249132263%_
                                                             (##car _%e132248132260%_))
                                                            (_%tl132250132265%_
                                                             (##cdr _%e132248132260%_)))
                                                        (let* ((_%condition132268%_
                                                                _%hd132249132263%_)
                                                               (_%body132270%_
                                                                _%tl132250132265%_))
                                                          (if (gx#stx-eq?
                                                               _%condition132268%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest132244%_)
                          _%body132270%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx132180%_
                           _%hd132242%_))
                      (if (_%satisfied?132182%_ _%condition132268%_)
                          _%body132270%_
                          (_%loop132183%_ _%rest132244%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132247132256%_)))))
                                        (_%E132246132275%_))))
                                  (_%E132216132230%_)))))
                      (_%E132215132279%_)))))
          (let* ((_%e132184132191%_ _%stx132180%_)
                 (_%E132186132195%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e132184132191%_)))
                 (_%E132185132209%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132184132191%_)
                        (let ((_%e132187132199%_
                               (gx#syntax-e _%e132184132191%_)))
                          (let ((_%hd132188132202%_ (##car _%e132187132199%_))
                                (_%tl132189132204%_ (##cdr _%e132187132199%_)))
                            (let ((_%clauses132207%_ _%tl132189132204%_))
                              (if (gx#stx-list? _%clauses132207%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop132183%_ _%clauses132207%_))
                                  (_%E132186132195%_)))))
                        (_%E132186132195%_)))))
            (_%E132185132209%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx132123%_ _%rpath132124%_)
        (let* ((_%e132125132135%_ _%stx132123%_)
               (_%E132127132139%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132125132135%_)))
               (_%E132126132166%_
                (lambda ()
                  (if (gx#stx-pair? _%e132125132135%_)
                      (let ((_%e132128132143%_
                             (gx#syntax-e _%e132125132135%_)))
                        (let ((_%hd132129132146%_ (##car _%e132128132143%_))
                              (_%tl132130132148%_ (##cdr _%e132128132143%_)))
                          (if (gx#stx-pair? _%tl132130132148%_)
                              (let ((_%e132131132151%_
                                     (gx#syntax-e _%tl132130132148%_)))
                                (let ((_%hd132132132154%_
                                       (##car _%e132131132151%_))
                                      (_%tl132133132156%_
                                       (##cdr _%e132131132151%_)))
                                  (let ((_%path132159%_ _%hd132132132154%_))
                                    (if (gx#stx-null? _%tl132133132156%_)
                                        (if (gx#stx-string? _%path132159%_)
                                            (let ((_%rpath132164%_
                                                   (let ((_%$e132161%_
                                                          _%rpath132124%_))
                                                     (if _%$e132161%_
                                                         _%$e132161%_
                                                         (gx#core-resolve-path__%
                                                          _%path132159%_
                                                          (gx#stx-source
                                                           _%stx132123%_))))))
                                              (if (member _%rpath132164%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx132123%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath132164%_))
                                                    (gx#stx-source
                                                     _%stx132123%_)))))
                                            (_%E132127132139%_))
                                        (_%E132127132139%_)))))
                              (_%E132127132139%_))))
                      (_%E132127132139%_)))))
          (_%E132126132166%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx132173%_)
        (let ((_%rpath132175%_ '#f))
          (gx#core-expand-include%__% _%stx132173%_ _%rpath132175%_))))
    (define gx#core-expand-include%
      (lambda _g133291_
        (let ((_g133292_ (##length _g133291_)))
          (cond ((##fx= _g133292_ 1)
                 (apply gx#core-expand-include%__0 _g133291_))
                ((##fx= _g133292_ 2)
                 (apply gx#core-expand-include%__% _g133291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g133291_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K132089%_ _%stx132090%_ _%method132091%_)
        (if (procedure? _%K132089%_)
            (let ((_%$e132094%_ (gx#stx-source _%stx132090%_)))
              (if _%$e132094%_
                  ((lambda (_%g132096132098%_)
                     (gx#stx-wrap-source
                      (_%K132089%_ _%stx132090%_)
                      _%g132096132098%_))
                   _%$e132094%_)
                  (_%K132089%_ _%stx132090%_)))
            (let ((_%$e132102%_
                   (bound-method-ref _%K132089%_ _%method132091%_)))
              (if _%$e132102%_
                  ((lambda (_%g132104132106%_)
                     (gx#core-apply-expander__%
                      _%g132104132106%_
                      _%stx132090%_
                      _%method132091%_))
                   _%$e132102%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx132090%_
                   _%method132091%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K132113%_ _%stx132114%_)
        (let ((_%method132116%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K132113%_
           _%stx132114%_
           _%method132116%_))))
    (define gx#core-apply-expander
      (lambda _g133293_
        (let ((_g133294_ (##length _g133293_)))
          (cond ((##fx= _g133294_ 2)
                 (apply gx#core-apply-expander__0 _g133293_))
                ((##fx= _g133294_ 3)
                 (apply gx#core-apply-expander__% _g133293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g133293_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self132074%_ _%stx132075%_)
        (let ((_%self132078%_ _%self132074%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx132075%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self131916%_ _%stx131917%_)
        (let* ((_%self131920%_ _%self131916%_)
               (_%self131929131935%_ _%self131920%_)
               (_%E131931131939%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131929131935%_
                         '((macro-expander K)))
                  '#!void))
               (_%K131932131944%_
                (lambda (_%K131942%_)
                  (gx#core-apply-expander__0 _%K131942%_ _%stx131917%_)))
               (_%e131933131947%_
                (##unchecked-structure-ref _%self131929131935%_ '1 '#f '#f))
               (_%K131950%_ _%e131933131947%_))
          (_%K131932131944%_ _%K131950%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self131758%_ _%stx131759%_)
        (let ((_%self131762%_ _%self131758%_))
          (if (gx#sealed-syntax? _%stx131759%_)
              _%stx131759%_
              (let* ((_%self131771131777%_ _%self131762%_)
                     (_%E131773131781%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self131771131777%_
                               '((core-expander K)))
                        '#!void))
                     (_%K131774131786%_
                      (lambda (_%K131784%_)
                        (gx#core-apply-expander__0 _%K131784%_ _%stx131759%_)))
                     (_%e131775131789%_
                      (##unchecked-structure-ref
                       _%self131771131777%_
                       '1
                       '#f
                       '#f))
                     (_%K131792%_ _%e131775131789%_))
                (_%K131774131786%_ _%K131792%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self131609%_ _%stx131610%_ _%top?131611%_)
        (let ((_%self131614%_ _%self131609%_))
          (if (_%top?131611%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self131614%_
               _%stx131610%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx131610%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self131627%_ _%stx131628%_)
        (let ((_%top?131630%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self131627%_
           _%stx131628%_
           _%top?131630%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g133295_
        (let ((_g133296_ (##length _g133295_)))
          (cond ((##fx= _g133296_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g133295_))
                ((##fx= _g133296_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g133295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g133295_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self131472%_ _%stx131473%_)
        (let ((_%self131476%_ _%self131472%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self131476%_
           _%stx131473%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self131286%_ _%stx131287%_)
        (let* ((_%self131290%_ _%self131286%_)
               (_%self131299131305%_ _%self131290%_)
               (_%E131301131309%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131299131305%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K131302131342%_
                (lambda (_%id131312%_)
                  (let* ((_%e131313131320%_ _%stx131287%_)
                         (_%E131315131324%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e131313131320%_)))
                         (_%E131314131338%_
                          (lambda ()
                            (if (gx#stx-pair? _%e131313131320%_)
                                (let ((_%e131316131328%_
                                       (gx#syntax-e _%e131313131320%_)))
                                  (let ((_%hd131317131331%_
                                         (##car _%e131316131328%_))
                                        (_%tl131318131333%_
                                         (##cdr _%e131316131328%_)))
                                    (let ((_%body131336%_ _%tl131318131333%_))
                                      (gx#core-cons
                                       _%id131312%_
                                       _%body131336%_))))
                                (_%E131315131324%_)))))
                    (_%E131314131338%_))))
               (_%e131303131345%_
                (##unchecked-structure-ref _%self131299131305%_ '1 '#f '#f))
               (_%id131348%_ _%e131303131345%_))
          (_%K131302131342%_ _%id131348%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self131112%_ _%stx131113%_ _%method131114%_)
        (let* ((_%self131115131123%_ _%self131112%_)
               (_%E131117131127%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131115131123%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K131118131134%_
                (lambda (_%phi131130%_ _%ctx131131%_ _%K131132%_)
                  (gx#core-apply-user-macro
                   _%K131132%_
                   _%stx131113%_
                   _%ctx131131%_
                   _%phi131130%_
                   _%method131114%_))))
          (if (##structure-instance-of?
               _%self131115131123%_
               'gx#user-expander::t)
              (let* ((_%e131119131137%_
                      (##unchecked-structure-ref
                       _%self131115131123%_
                       '1
                       '#f
                       '#f))
                     (_%K131140%_ _%e131119131137%_)
                     (_%e131120131142%_
                      (##unchecked-structure-ref
                       _%self131115131123%_
                       '2
                       '#f
                       '#f))
                     (_%ctx131145%_ _%e131120131142%_)
                     (_%e131121131147%_
                      (##unchecked-structure-ref
                       _%self131115131123%_
                       '3
                       '#f
                       '#f))
                     (_%phi131150%_ _%e131121131147%_))
                (_%K131118131134%_ _%phi131150%_ _%ctx131145%_ _%K131140%_))
              (_%E131117131127%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self131155%_ _%stx131156%_)
        (let ((_%method131158%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self131155%_
           _%stx131156%_
           _%method131158%_))))
    (define gx#core-apply-user-expander
      (lambda _g133297_
        (let ((_g133298_ (##length _g133297_)))
          (cond ((##fx= _g133298_ 2)
                 (apply gx#core-apply-user-expander__0 _g133297_))
                ((##fx= _g133298_ 3)
                 (apply gx#core-apply-user-expander__% _g133297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g133297_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K131102%_
               _%stx131103%_
               _%ctx131104%_
               _%phi131105%_
               _%method131106%_)
        (let ((_%mark131108%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx131104%_
                _%phi131105%_
                _%stx131103%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K131102%_
               (gx#stx-apply-mark _%stx131103%_ _%mark131108%_)
               _%method131106%_)
              _%mark131108%_))
           gx#current-expander-marks
           (cons _%mark131108%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx130950%_ _%phi130951%_ _%ctx130952%_)
        (let _%lp130954%_ ((_%bind130956%_
                            (gx#core-resolve-identifier__%
                             _%stx130950%_
                             _%phi130951%_
                             _%ctx130952%_)))
          (if (##structure-direct-instance-of?
               _%bind130956%_
               'gx#import-binding::t)
              (_%lp130954%_
               (##unchecked-structure-ref _%bind130956%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind130956%_
                   'gx#alias-binding::t)
                  (_%lp130954%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind130956%_ '4 '#f '#f)
                    _%phi130951%_
                    _%ctx130952%_))
                  _%bind130956%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx130964%_)
        (let* ((_%phi130966%_ (gx#current-expander-phi))
               (_%ctx130968%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx130964%_
           _%phi130966%_
           _%ctx130968%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx130970%_ _%phi130971%_)
        (let ((_%ctx130973%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx130970%_
           _%phi130971%_
           _%ctx130973%_))))
    (define gx#resolve-identifier
      (lambda _g133299_
        (let ((_g133300_ (##length _g133299_)))
          (cond ((##fx= _g133300_ 1)
                 (apply gx#resolve-identifier__0 _g133299_))
                ((##fx= _g133300_ 2)
                 (apply gx#resolve-identifier__1 _g133299_))
                ((##fx= _g133300_ 3)
                 (apply gx#resolve-identifier__% _g133299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g133299_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx130905%_
               _%val130906%_
               _%rebind?130907%_
               _%phi130908%_
               _%ctx130909%_)
        (let ((_%rebind?130914%_
               (if (not _%rebind?130907%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?130907%_)
                       _%rebind?130907%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx130905%_)
           _%val130906%_
           _%rebind?130914%_
           _%phi130908%_
           _%ctx130909%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx130919%_ _%val130920%_)
        (let* ((_%rebind?130922%_ '#f)
               (_%phi130924%_ (gx#current-expander-phi))
               (_%ctx130926%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx130919%_
           _%val130920%_
           _%rebind?130922%_
           _%phi130924%_
           _%ctx130926%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx130928%_ _%val130929%_ _%rebind?130930%_)
        (let* ((_%phi130932%_ (gx#current-expander-phi))
               (_%ctx130934%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx130928%_
           _%val130929%_
           _%rebind?130930%_
           _%phi130932%_
           _%ctx130934%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx130936%_ _%val130937%_ _%rebind?130938%_ _%phi130939%_)
        (let ((_%ctx130941%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx130936%_
           _%val130937%_
           _%rebind?130938%_
           _%phi130939%_
           _%ctx130941%_))))
    (define gx#bind-identifier!
      (lambda _g133301_
        (let ((_g133302_ (##length _g133301_)))
          (cond ((##fx= _g133302_ 2) (apply gx#bind-identifier!__0 _g133301_))
                ((##fx= _g133302_ 3) (apply gx#bind-identifier!__1 _g133301_))
                ((##fx= _g133302_ 4) (apply gx#bind-identifier!__2 _g133301_))
                ((##fx= _g133302_ 5) (apply gx#bind-identifier!__% _g133301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g133301_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx130871%_ _%phi130872%_ _%ctx130873%_)
        (let _%lp130875%_ ((_%e130877%_ _%stx130871%_)
                           (_%marks130878%_ (gx#current-expander-marks)))
          (if (symbol? _%e130877%_)
              (gx#core-resolve-binding
               _%e130877%_
               _%phi130872%_
               _%phi130872%_
               _%ctx130873%_
               (reverse _%marks130878%_))
              (if (gx#identifier-quote? _%e130877%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e130877%_ '1 '#f '#f)
                   _%phi130872%_
                   '0
                   (##unchecked-structure-ref _%e130877%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e130877%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e130877%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e130877%_ '1 '#f '#f)
                       _%phi130872%_
                       _%phi130872%_
                       _%ctx130873%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e130877%_ '3 '#f '#f)
                        _%marks130878%_))
                      (if (##structure-direct-instance-of?
                           _%e130877%_
                           'gx#syntax-wrap::t)
                          (_%lp130875%_
                           (##unchecked-structure-ref _%e130877%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e130877%_ '3 '#f '#f)
                            _%marks130878%_))
                          (if (##structure-instance-of?
                               _%e130877%_
                               'gerbil#AST::t)
                              (_%lp130875%_
                               (##unchecked-structure-ref
                                _%e130877%_
                                '1
                                '#f
                                '#f)
                               _%marks130878%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx130871%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx130889%_)
        (let* ((_%phi130891%_ (gx#current-expander-phi))
               (_%ctx130893%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx130889%_
           _%phi130891%_
           _%ctx130893%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx130895%_ _%phi130896%_)
        (let ((_%ctx130898%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx130895%_
           _%phi130896%_
           _%ctx130898%_))))
    (define gx#core-resolve-identifier
      (lambda _g133303_
        (let ((_g133304_ (##length _g133303_)))
          (cond ((##fx= _g133304_ 1)
                 (apply gx#core-resolve-identifier__0 _g133303_))
                ((##fx= _g133304_ 2)
                 (apply gx#core-resolve-identifier__1 _g133303_))
                ((##fx= _g133304_ 3)
                 (apply gx#core-resolve-identifier__% _g133303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g133303_))))))
    (define gx#core-resolve-binding
      (lambda (_%id130781%_
               _%phi130782%_
               _%src-phi130783%_
               _%ctx130784%_
               _%marks130785%_)
        (letrec ((_%resolve130787%_
                  (lambda (_%ctx130855%_ _%src-phi130856%_ _%key130857%_)
                    (let _%lp130859%_ ((_%ctx130861%_
                                        (gx#core-context-shift
                                         _%ctx130855%_
                                         _%phi130782%_))
                                       (_%dphi130862%_
                                        (fx- _%phi130782%_ _%src-phi130856%_)))
                      (let ((_%$e130864%_
                             (gx#core-context-resolve
                              _%ctx130861%_
                              _%key130857%_)))
                        (if _%$e130864%_
                            _%$e130864%_
                            (if (fxzero? _%dphi130862%_)
                                '#f
                                (if (fxpositive? _%dphi130862%_)
                                    (_%lp130859%_
                                     (gx#core-context-shift _%ctx130861%_ '-1)
                                     (##fx- _%dphi130862%_ '1))
                                    (_%lp130859%_
                                     (gx#core-context-shift _%ctx130861%_ '1)
                                     (##fx+ _%dphi130862%_ '1))))))))))
          (let _%lp130789%_ ((_%ctx130791%_ _%ctx130784%_)
                             (_%src-phi130792%_ _%src-phi130783%_)
                             (_%rest130793%_ _%marks130785%_))
            (let* ((_%rest130794130802%_ _%rest130793%_)
                   (_%else130796130810%_
                    (lambda ()
                      (_%resolve130787%_
                       _%ctx130791%_
                       _%src-phi130792%_
                       _%id130781%_)))
                   (_%K130798130843%_
                    (lambda (_%rest130813%_ _%hd130814%_)
                      (let* ((_%hd130815130821%_ _%hd130814%_)
                             (_%E130817130825%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd130815130821%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K130818130835%_
                              (lambda (_%subst130828%_)
                                (let ((_%$e130832%_
                                       (let ((_%key130830%_
                                              (if _%subst130828%_
                                                  (hash-get
                                                   _%subst130828%_
                                                   _%id130781%_)
                                                  '#f)))
                                         (if _%key130830%_
                                             (_%resolve130787%_
                                              _%ctx130791%_
                                              _%src-phi130792%_
                                              _%key130830%_)
                                             '#f))))
                                  (if _%$e130832%_
                                      _%$e130832%_
                                      (_%lp130789%_
                                       (##unchecked-structure-ref
                                        _%hd130814%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd130814%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest130813%_))))))
                        (if (##structure-instance-of?
                             _%hd130815130821%_
                             'gx#expander-mark::t)
                            (let* ((_%e130819130838%_
                                    (##unchecked-structure-ref
                                     _%hd130815130821%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst130841%_ _%e130819130838%_))
                              (_%K130818130835%_ _%subst130841%_))
                            (_%E130817130825%_))))))
              (if (pair? _%rest130794130802%_)
                  (let ((_%hd130799130846%_ (##car _%rest130794130802%_))
                        (_%tl130800130848%_ (##cdr _%rest130794130802%_)))
                    (let* ((_%hd130851%_ _%hd130799130846%_)
                           (_%rest130853%_ _%tl130800130848%_))
                      (_%K130798130843%_ _%rest130853%_ _%hd130851%_)))
                  (_%else130796130810%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key130651%_
               _%val130652%_
               _%rebind?130653%_
               _%phi130654%_
               _%ctx130655%_)
        (letrec ((_%update-binding130657%_
                  (lambda (_%xval130730%_)
                    (if (or (_%rebind?130653%_
                             _%ctx130655%_
                             _%xval130730%_
                             _%val130652%_)
                            (and (##structure-direct-instance-of?
                                  _%xval130730%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval130730%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val130652%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val130652%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval130730%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val130652%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val130652%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval130730%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val130652%_
                        (if (and (##structure-direct-instance-of?
                                  _%val130652%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val130652%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval130730%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val130652%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval130730%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval130730%_
                            (if (and (##structure-direct-instance-of?
                                      _%val130652%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval130730%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key130651%_
                                 (cons (##unchecked-structure-ref
                                        _%val130652%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val130652%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval130730%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval130730%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval130730%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval130730%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key130651%_
                                 _%val130652%_
                                 _%xval130730%_))))))
                 (_%gensubst130658%_
                  (lambda (_%subst130725%_ _%id130726%_)
                    (let ((_%eid130728%_
                           (gensym (if (uninterned-symbol? _%id130726%_)
                                       '%
                                       _%id130726%_))))
                      (hash-put! _%subst130725%_ _%id130726%_ _%eid130728%_)
                      _%eid130728%_)))
                 (_%subst!130659%_
                  (lambda (_%key130661%_)
                    (let* ((_%key130662130670%_ _%key130661%_)
                           (_%else130664130678%_ (lambda () _%key130661%_))
                           (_%K130666130713%_
                            (lambda (_%mark130681%_ _%id130682%_)
                              (let* ((_%mark130683130689%_ _%mark130681%_)
                                     (_%E130685130693%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark130683130689%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K130686130705%_
                                      (lambda (_%subst130696%_)
                                        (if (not _%subst130696%_)
                                            (let ((_%subst130699%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark130681%_
                                               _%subst130699%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst130658%_
                                               _%subst130699%_
                                               _%id130682%_))
                                            (let ((_%$e130701%_
                                                   (hash-get
                                                    _%subst130696%_
                                                    _%id130682%_)))
                                              (if _%$e130701%_
                                                  _%$e130701%_
                                                  (_%gensubst130658%_
                                                   _%subst130696%_
                                                   _%id130682%_)))))))
                                (if (##structure-instance-of?
                                     _%mark130683130689%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e130687130708%_
                                            (##unchecked-structure-ref
                                             _%mark130683130689%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst130711%_ _%e130687130708%_))
                                      (_%K130686130705%_ _%subst130711%_))
                                    (_%E130685130693%_))))))
                      (if (pair? _%key130662130670%_)
                          (let ((_%hd130667130716%_
                                 (##car _%key130662130670%_))
                                (_%tl130668130718%_
                                 (##cdr _%key130662130670%_)))
                            (let* ((_%id130721%_ _%hd130667130716%_)
                                   (_%mark130723%_ _%tl130668130718%_))
                              (_%K130666130713%_ _%mark130723%_ _%id130721%_)))
                          (_%else130664130678%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx130655%_ _%phi130654%_)
           (_%subst!130659%_ _%key130651%_)
           _%val130652%_
           _%update-binding130657%_))))
    (define gx#core-bind!__0
      (lambda (_%key130751%_ _%val130752%_)
        (let* ((_%rebind?130754%_ false)
               (_%phi130756%_ (gx#current-expander-phi))
               (_%ctx130758%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key130751%_
           _%val130752%_
           _%rebind?130754%_
           _%phi130756%_
           _%ctx130758%_))))
    (define gx#core-bind!__1
      (lambda (_%key130760%_ _%val130761%_ _%rebind?130762%_)
        (let* ((_%phi130764%_ (gx#current-expander-phi))
               (_%ctx130766%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key130760%_
           _%val130761%_
           _%rebind?130762%_
           _%phi130764%_
           _%ctx130766%_))))
    (define gx#core-bind!__2
      (lambda (_%key130768%_ _%val130769%_ _%rebind?130770%_ _%phi130771%_)
        (let ((_%ctx130773%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key130768%_
           _%val130769%_
           _%rebind?130770%_
           _%phi130771%_
           _%ctx130773%_))))
    (define gx#core-bind!
      (lambda _g133305_
        (let ((_g133306_ (##length _g133305_)))
          (cond ((##fx= _g133306_ 2) (apply gx#core-bind!__0 _g133305_))
                ((##fx= _g133306_ 3) (apply gx#core-bind!__1 _g133305_))
                ((##fx= _g133306_ 4) (apply gx#core-bind!__2 _g133305_))
                ((##fx= _g133306_ 5) (apply gx#core-bind!__% _g133305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g133305_))))))
    (define gx#core-identifier-key
      (lambda (_%stx130582%_)
        (if (symbol? _%stx130582%_)
            (let* ((_%g130584130592%_ (gx#current-expander-marks))
                   (_%else130586130600%_ (lambda () _%stx130582%_))
                   (_%K130588130605%_
                    (lambda (_%hd130603%_) (cons _%stx130582%_ _%hd130603%_))))
              (if (pair? _%g130584130592%_)
                  (let* ((_%hd130589130608%_ (##car _%g130584130592%_))
                         (_%hd130611%_ _%hd130589130608%_))
                    (_%K130588130605%_ _%hd130611%_))
                  (_%else130586130600%_)))
            (if (gx#identifier? _%stx130582%_)
                (let* ((_%id130614%_ (gx#syntax-local-unwrap _%stx130582%_))
                       (_%eid130616%_ (gx#stx-e _%id130614%_))
                       (_%marks130618%_
                        (gx#stx-identifier-marks* _%id130614%_))
                       (_%marks130620130628%_ _%marks130618%_)
                       (_%else130622130636%_ (lambda () _%eid130616%_))
                       (_%K130624130641%_
                        (lambda (_%hd130639%_)
                          (cons _%eid130616%_ _%hd130639%_))))
                  (if (pair? _%marks130620130628%_)
                      (let* ((_%hd130625130644%_ (##car _%marks130620130628%_))
                             (_%hd130647%_ _%hd130625130644%_))
                        (_%K130624130641%_ _%hd130647%_))
                      (_%else130622130636%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx130582%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx130521%_ _%phi130522%_)
        (letrec ((_%make-phi130524%_
                  (lambda (_%super130580%_)
                    (let ((__obj133278
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj133278
                       (##gensym 'phi)
                       _%super130580%_)
                      __obj133278)))
                 (_%make-phi/up130525%_
                  (lambda (_%ctx130575%_ _%super130576%_)
                    (let ((_%ctx+1130578%_
                           (_%make-phi130524%_ _%super130576%_)))
                      (##unchecked-structure-set!
                       _%ctx130575%_
                       _%ctx+1130578%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1130578%_
                       _%ctx130575%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1130578%_)))
                 (_%make-phi/down130526%_
                  (lambda (_%ctx130570%_ _%super130571%_)
                    (let ((_%ctx-1130573%_
                           (_%make-phi130524%_ _%super130571%_)))
                      (##unchecked-structure-set!
                       _%ctx-1130573%_
                       _%ctx130570%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx130570%_
                       _%ctx-1130573%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1130573%_)))
                 (_%shift130527%_
                  (lambda (_%ctx130553%_
                           _%delta130554%_
                           _%make-delta-context130555%_
                           _%phi130556%_
                           _%K130557%_)
                    (let ((_%$e130559%_
                           (##unchecked-structure-ref
                            _%ctx130553%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e130559%_
                          ((lambda (_%super130562%_)
                             (let* ((_%super130564%_
                                     (_%K130557%_
                                      _%super130562%_
                                      _%delta130554%_))
                                    (_%ctx+d130566%_
                                     (_%make-delta-context130555%_
                                      _%ctx130553%_
                                      _%super130564%_)))
                               (_%K130557%_
                                _%ctx+d130566%_
                                (fx- _%phi130556%_ _%delta130554%_))))
                           _%$e130559%_)
                          (error '"Bad context" _%ctx130553%_))))))
          (let _%K130529%_ ((_%ctx130531%_ _%ctx130521%_)
                            (_%phi130532%_ _%phi130522%_))
            (if (fxzero? _%phi130532%_)
                _%ctx130531%_
                (if (##structure-instance-of? _%ctx130531%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi130532%_)
                        (let ((_%$e130536%_
                               (##unchecked-structure-ref
                                _%ctx130531%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e130536%_
                              ((lambda (_%g130538130540%_)
                                 (_%K130529%_
                                  _%g130538130540%_
                                  (##fx- _%phi130532%_ '1)))
                               _%$e130536%_)
                              (_%shift130527%_
                               _%ctx130531%_
                               '1
                               _%make-phi/up130525%_
                               _%phi130532%_
                               _%K130529%_)))
                        (let ((_%$e130544%_
                               (##unchecked-structure-ref
                                _%ctx130531%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e130544%_
                              ((lambda (_%g130546130548%_)
                                 (_%K130529%_
                                  _%g130546130548%_
                                  (##fx+ _%phi130532%_ '1)))
                               _%$e130544%_)
                              (_%shift130527%_
                               _%ctx130531%_
                               '-1
                               _%make-phi/down130526%_
                               _%phi130532%_
                               _%K130529%_))))
                    _%ctx130531%_))))))
    (define gx#core-context-get
      (lambda (_%ctx130518%_ _%key130519%_)
        (hash-get
         (##unchecked-structure-ref _%ctx130518%_ '2 '#f '#f)
         _%key130519%_)))
    (define gx#core-context-put!
      (lambda (_%ctx130514%_ _%key130515%_ _%val130516%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx130514%_ '2 '#f '#f)
         _%key130515%_
         _%val130516%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx130500%_ _%key130501%_)
        (let _%lp130503%_ ((_%ctx130505%_ _%ctx130500%_))
          (let ((_%$e130507%_
                 (gx#core-context-get _%ctx130505%_ _%key130501%_)))
            (if _%$e130507%_
                _%$e130507%_
                (let ((_%$e130510%_
                       (if (##structure-instance-of?
                            _%ctx130505%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx130505%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e130510%_ (_%lp130503%_ _%$e130510%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx130489%_ _%key130490%_ _%val130491%_ _%rebind130492%_)
        (let ((_%$e130494%_ (gx#core-context-get _%ctx130489%_ _%key130490%_)))
          (if _%$e130494%_
              ((lambda (_%xval130497%_)
                 (gx#core-context-put!
                  _%ctx130489%_
                  _%key130490%_
                  (_%rebind130492%_ _%xval130497%_)))
               _%$e130494%_)
              (gx#core-context-put!
               _%ctx130489%_
               _%key130490%_
               _%val130491%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx130464%_ _%stop?130465%_)
        (let _%lp130467%_ ((_%ctx130469%_ _%ctx130464%_))
          (if (_%stop?130465%_ _%ctx130469%_)
              _%ctx130469%_
              (if (##structure-instance-of? _%ctx130469%_ 'gx#phi-context::t)
                  (_%lp130467%_
                   (##unchecked-structure-ref _%ctx130469%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx130478%_ (gx#current-expander-context))
               (_%stop?130480%_ gx#top-context?))
          (gx#core-context-top__% _%ctx130478%_ _%stop?130480%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx130482%_)
        (let ((_%stop?130484%_ gx#top-context?))
          (gx#core-context-top__% _%ctx130482%_ _%stop?130484%_))))
    (define gx#core-context-top
      (lambda _g133307_
        (let ((_g133308_ (##length _g133307_)))
          (cond ((##fx= _g133308_ 0) (apply gx#core-context-top__0 _g133307_))
                ((##fx= _g133308_ 1) (apply gx#core-context-top__1 _g133307_))
                ((##fx= _g133308_ 2) (apply gx#core-context-top__% _g133307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g133307_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx130449%_)
        (let _%lp130451%_ ((_%ctx130453%_ _%ctx130449%_))
          (if (##structure-instance-of? _%ctx130453%_ 'gx#phi-context::t)
              (_%lp130451%_
               (##unchecked-structure-ref _%ctx130453%_ '3 '#f '#f))
              _%ctx130453%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx130459%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx130459%_))))
    (define gx#core-context-root
      (lambda _g133309_
        (let ((_g133310_ (##length _g133309_)))
          (cond ((##fx= _g133310_ 0) (apply gx#core-context-root__0 _g133309_))
                ((##fx= _g133310_ 1) (apply gx#core-context-root__% _g133309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g133309_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx130431%_ . _%ignore130432%_)
        (let ((_%$e130434%_ (gx#current-expander-allow-rebind?)))
          (if _%$e130434%_
              _%$e130434%_
              (if (##structure-instance-of? _%ctx130431%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx130431%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx130431%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx130441%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx130441%_))))
    (define gx#core-context-rebind?
      (lambda _g133311_
        (let ((_g133312_ (##length _g133311_)))
          (cond ((##fx= _g133312_ 0)
                 (apply gx#core-context-rebind?__0 _g133311_))
                ((##fx= _g133312_ 1)
                 (apply gx#core-context-rebind?__% _g133311_))
                ((##fx>= _g133312_ 1)
                 (apply gx#core-context-rebind?__% _g133311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g133311_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx130414%_)
        (let ((_%$e130416%_ (gx#core-context-top__1 _%ctx130414%_)))
          (if _%$e130416%_
              ((lambda (_%ctx130419%_)
                 (if (##structure-instance-of?
                      _%ctx130419%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx130419%_ '6 '#f '#f)
                     '#f))
               _%$e130416%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx130426%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx130426%_))))
    (define gx#core-context-namespace
      (lambda _g133313_
        (let ((_g133314_ (##length _g133313_)))
          (cond ((##fx= _g133314_ 0)
                 (apply gx#core-context-namespace__0 _g133313_))
                ((##fx= _g133314_ 1)
                 (apply gx#core-context-namespace__% _g133313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g133313_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind130400%_ _%is?130401%_)
        (if (##structure-direct-instance-of?
             _%bind130400%_
             'gx#syntax-binding::t)
            (_%is?130401%_
             (##unchecked-structure-ref _%bind130400%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind130406%_)
        (let ((_%is?130408%_ gx#expander?))
          (gx#expander-binding?__% _%bind130406%_ _%is?130408%_))))
    (define gx#expander-binding?
      (lambda _g133315_
        (let ((_g133316_ (##length _g133315_)))
          (cond ((##fx= _g133316_ 1) (apply gx#expander-binding?__0 _g133315_))
                ((##fx= _g133316_ 2) (apply gx#expander-binding?__% _g133315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g133315_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind130397%_)
        (gx#expander-binding?__% _%bind130397%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind130395%_)
        (gx#expander-binding?__% _%bind130395%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind130389%_)
        (letrec ((_%direct-special-form?130391%_
                  (lambda (_%obj130393%_)
                    (##structure-direct-instance-of?
                     _%obj130393%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind130389%_
           _%direct-special-form?130391%_))))
    (define gx#special-form-binding?
      (lambda (_%bind130387%_)
        (gx#expander-binding?__% _%bind130387%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind130378%_)
        (letrec ((_%feature?130380%_
                  (lambda (_%e130382%_)
                    (let ((_%$e130384%_
                           (##structure-instance-of?
                            _%e130382%_
                            'gx#feature-expander::t)))
                      (if _%$e130384%_
                          _%$e130384%_
                          (##structure-instance-of?
                           _%e130382%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind130378%_ _%feature?130380%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind130376%_)
        (gx#expander-binding?__% _%bind130376%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id130363%_ _%bound?130364%_)
        (if (gx#identifier? _%id130363%_)
            (_%bound?130364%_ (gx#resolve-identifier__0 _%id130363%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id130369%_)
        (let ((_%bound?130371%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id130369%_ _%bound?130371%_))))
    (define gx#core-bound-identifier?
      (lambda _g133317_
        (let ((_g133318_ (##length _g133317_)))
          (cond ((##fx= _g133318_ 1)
                 (apply gx#core-bound-identifier?__0 _g133317_))
                ((##fx= _g133318_ 2)
                 (apply gx#core-bound-identifier?__% _g133317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g133317_))))))
    (define gx#core-identifier=?
      (lambda (_%x130353%_ _%y130354%_)
        (letrec ((_%y=?130356%_
                  (lambda (_%xid130360%_)
                    ((if (list? _%y130354%_) memq eq?)
                     _%xid130360%_
                     _%y130354%_))))
          (let ((_%bind130358%_ (gx#resolve-identifier__0 _%x130353%_)))
            (if (##structure-instance-of? _%bind130358%_ 'gx#binding::t)
                (_%y=?130356%_
                 (##unchecked-structure-ref _%bind130358%_ '1 '#f '#f))
                (_%y=?130356%_ (gx#stx-e _%x130353%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e130351%_)
        (if (interned-symbol? _%e130351%_)
            (string-index__0 (symbol->string _%e130351%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx130304%_ _%src130305%_ _%ctx130306%_ _%marks130307%_)
        (if (##structure? _%stx130304%_)
            (let ((_%$e130309%_ (gx#sealed-syntax-unwrap _%stx130304%_)))
              (if _%$e130309%_
                  _%$e130309%_
                  (if (gx#identifier? _%stx130304%_)
                      (let ((_%id130313%_
                             (gx#stx-unwrap__% _%stx130304%_ _%marks130307%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id130313%_ '1 '#f '#f)
                         (let ((_%$e130315%_
                                (##unchecked-structure-ref
                                 _%id130313%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e130315%_ _%$e130315%_ _%src130305%_))
                         _%ctx130306%_
                         (##unchecked-structure-ref _%id130313%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx130304%_)
                       (let ((_%$e130319%_ (gx#stx-source _%stx130304%_)))
                         (if _%$e130319%_ _%$e130319%_ _%src130305%_))
                       _%ctx130306%_
                       (reverse _%marks130307%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx130304%_
             _%src130305%_
             _%ctx130306%_
             (reverse _%marks130307%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx130325%_)
        (let* ((_%src130327%_ '#f)
               (_%ctx130329%_ (gx#current-expander-context))
               (_%marks130331%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130325%_
           _%src130327%_
           _%ctx130329%_
           _%marks130331%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx130333%_ _%src130334%_)
        (let* ((_%ctx130336%_ (gx#current-expander-context))
               (_%marks130338%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130333%_
           _%src130334%_
           _%ctx130336%_
           _%marks130338%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx130340%_ _%src130341%_ _%ctx130342%_)
        (let ((_%marks130344%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130340%_
           _%src130341%_
           _%ctx130342%_
           _%marks130344%_))))
    (define gx#core-quote-syntax
      (lambda _g133319_
        (let ((_g133320_ (##length _g133319_)))
          (cond ((##fx= _g133320_ 1) (apply gx#core-quote-syntax__0 _g133319_))
                ((##fx= _g133320_ 2) (apply gx#core-quote-syntax__1 _g133319_))
                ((##fx= _g133320_ 3) (apply gx#core-quote-syntax__2 _g133319_))
                ((##fx= _g133320_ 4) (apply gx#core-quote-syntax__% _g133319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g133319_))))))
    (define gx#core-cons
      (lambda (_%hd130300%_ _%tl130301%_)
        (cons (gx#core-quote-syntax__0 _%hd130300%_) _%tl130301%_)))
    (define gx#core-list
      (lambda (_%hd130297%_ . _%rest130298%_)
        (cons (gx#core-quote-syntax__0 _%hd130297%_) _%rest130298%_)))
    (define gx#core-cons*
      (lambda (_%hd130294%_ . _%rest130295%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd130294%_) _%rest130295%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path130263%_ _%rel130264%_)
        (let ((_%path130281%_ (gx#stx-e _%stx-path130263%_))
              (_%reldir130282%_
               (let _%lp130266%_ ((_%relsrc130268%_
                                   (let ((_%$e130278%_
                                          (gx#stx-source _%stx-path130263%_)))
                                     (if _%$e130278%_
                                         _%$e130278%_
                                         _%rel130264%_))))
                 (if (##structure-instance-of? _%relsrc130268%_ 'gerbil#AST::t)
                     (_%lp130266%_
                      (let ((_%$e130271%_ (gx#stx-source _%relsrc130268%_)))
                        (if _%$e130271%_
                            _%$e130271%_
                            (gx#stx-e _%relsrc130268%_))))
                     (if (source-location-path? _%relsrc130268%_)
                         (path-directory
                          (source-location-path _%relsrc130268%_))
                         (if (string? _%relsrc130268%_)
                             (path-directory _%relsrc130268%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path130281%_ (path-normalize _%reldir130282%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path130287%_)
        (let ((_%rel130289%_ '#f))
          (gx#core-resolve-path__% _%stx-path130287%_ _%rel130289%_))))
    (define gx#core-resolve-path
      (lambda _g133321_
        (let ((_g133322_ (##length _g133321_)))
          (cond ((##fx= _g133322_ 1) (apply gx#core-resolve-path__0 _g133321_))
                ((##fx= _g133322_ 2) (apply gx#core-resolve-path__% _g133321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g133321_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr130219%_ _%ctx130220%_)
        (let* ((_%repr130221130228%_ _%repr130219%_)
               (_%E130223130232%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr130221130228%_
                         '([phi . subs]))
                  '#!void))
               (_%K130224130240%_
                (lambda (_%subs130235%_ _%phi130236%_)
                  (let ((_%subst130238%_
                         (if (null? _%subs130235%_)
                             '#f
                             (list->hash-table-eq _%subs130235%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst130238%_
                     _%ctx130220%_
                     _%phi130236%_
                     '#f)))))
          (if (pair? _%repr130221130228%_)
              (let ((_%hd130225130243%_ (##car _%repr130221130228%_))
                    (_%tl130226130245%_ (##cdr _%repr130221130228%_)))
                (let* ((_%phi130248%_ _%hd130225130243%_)
                       (_%subs130250%_ _%tl130226130245%_))
                  (_%K130224130240%_ _%subs130250%_ _%phi130248%_)))
              (_%E130223130232%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr130255%_)
        (let ((_%ctx130257%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr130255%_ _%ctx130257%_))))
    (define gx#core-deserialize-mark
      (lambda _g133323_
        (let ((_g133324_ (##length _g133323_)))
          (cond ((##fx= _g133324_ 1)
                 (apply gx#core-deserialize-mark__0 _g133323_))
                ((##fx= _g133324_ 2)
                 (apply gx#core-deserialize-mark__% _g133323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g133323_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx130216%_)
        (gx#stx-rewrap _%stx130216%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx130214%_)
        (gx#stx-unwrap__% _%stx130214%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx130184%_)
        (let* ((_%g130185130193%_ (gx#current-expander-marks))
               (_%else130187130201%_ (lambda () _%stx130184%_))
               (_%K130189130206%_
                (lambda (_%hd130204%_)
                  (gx#stx-apply-mark _%stx130184%_ _%hd130204%_))))
          (if (pair? _%g130185130193%_)
              (let* ((_%hd130190130209%_ (##car _%g130185130193%_))
                     (_%hd130212%_ _%hd130190130209%_))
                (_%K130189130206%_ _%hd130212%_))
              (_%else130187130201%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx130169%_ _%E130170%_)
        (let ((_%bind130172%_ (gx#resolve-identifier__0 _%stx130169%_)))
          (if (##structure-direct-instance-of?
               _%bind130172%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind130172%_ '4 '#f '#f)
              (_%E130170%_ _%stx130169%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx130177%_)
        (let ((_%E130179%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx130177%_ _%E130179%_))))
    (define gx#syntax-local-e
      (lambda _g133325_
        (let ((_g133326_ (##length _g133325_)))
          (cond ((##fx= _g133326_ 1) (apply gx#syntax-local-e__0 _g133325_))
                ((##fx= _g133326_ 2) (apply gx#syntax-local-e__% _g133325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g133325_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx130153%_ _%E130154%_)
        (let ((_%e130156%_ (gx#syntax-local-e__% _%stx130153%_ _%E130154%_)))
          (if (##structure-instance-of? _%e130156%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e130156%_ '1 '#f '#f)
              _%e130156%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx130161%_)
        (let ((_%E130163%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx130161%_ _%E130163%_))))
    (define gx#syntax-local-value
      (lambda _g133327_
        (let ((_g133328_ (##length _g133327_)))
          (cond ((##fx= _g133328_ 1)
                 (apply gx#syntax-local-value__0 _g133327_))
                ((##fx= _g133328_ 2)
                 (apply gx#syntax-local-value__% _g133327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g133327_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx130150%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx130150%_)))))
