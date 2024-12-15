(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1734279328)
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
      (lambda _%$args122478%_
        (apply make-instance gx#expander-context::t _%$args122478%_)))
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
      (lambda _%$args122475%_
        (apply make-instance gx#root-context::t _%$args122475%_)))
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
      (lambda _%$args122472%_
        (apply make-instance gx#phi-context::t _%$args122472%_)))
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
      (lambda _%$args122469%_
        (apply make-instance gx#top-context::t _%$args122469%_)))
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
      (lambda _%$args122466%_
        (apply make-instance gx#module-context::t _%$args122466%_)))
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
      (lambda _%$args122463%_
        (apply make-instance gx#prelude-context::t _%$args122463%_)))
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
      (lambda _%$args122460%_
        (apply make-instance gx#local-context::t _%$args122460%_)))
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
      (lambda (_%self119366122431%_ _%id122433%_ _%super122434%_)
        (let* ((_%self122436%_ _%self119366122431%_)
               (_%self122438%_ _%self122436%_))
          (if (##fx< '3 (##structure-length _%self122438%_))
              (begin
                (##unchecked-structure-set!
                 _%self122438%_
                 _%id122433%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122438%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122438%_
                 _%super122434%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122438%_
                     '3
                     (##vector-length _%self122438%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self119366122451%_ _%id122452%_)
        (let ((_%super122454%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self119366122451%_
           _%id122452%_
           _%super122454%_))))
    (define gx#phi-context:::init!
      (lambda _g122521_
        (let ((_g122520_ (##length _g122521_)))
          (cond ((##fx= _g122520_ 2)
                 (apply gx#phi-context:::init!__0 _g122521_))
                ((##fx= _g122520_ 3)
                 (apply gx#phi-context:::init!__% _g122521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g122521_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self119367122282%_ _%super122284%_)
        (let* ((_%self122286%_ _%self119367122282%_)
               (_%self122288%_ _%self122286%_))
          (if (##fx< '3 (##structure-length _%self122288%_))
              (begin
                (##unchecked-structure-set!
                 _%self122288%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122288%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122288%_
                 _%super122284%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122288%_
                     '3
                     (##vector-length _%self122288%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self119367122301%_)
        (let ((_%super122303%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self119367122301%_ _%super122303%_))))
    (define gx#local-context:::init!
      (lambda _g122523_
        (let ((_g122522_ (##length _g122523_)))
          (cond ((##fx= _g122522_ 1)
                 (apply gx#local-context:::init!__0 _g122523_))
                ((##fx= _g122522_ 2)
                 (apply gx#local-context:::init!__% _g122523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g122523_))))))
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
      (lambda _%$args122156%_
        (apply make-instance gx#binding::t _%$args122156%_)))
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
      (lambda _%$args122153%_
        (apply make-instance gx#runtime-binding::t _%$args122153%_)))
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
      (lambda _%$args122150%_
        (apply make-instance gx#local-binding::t _%$args122150%_)))
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
      (lambda _%$args122147%_
        (apply make-instance gx#top-binding::t _%$args122147%_)))
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
      (lambda _%$args122144%_
        (apply make-instance gx#module-binding::t _%$args122144%_)))
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
      (lambda _%$args122141%_
        (apply make-instance gx#extern-binding::t _%$args122141%_)))
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
      (lambda _%$args122138%_
        (apply make-instance gx#syntax-binding::t _%$args122138%_)))
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
      (lambda _%$args122135%_
        (apply make-instance gx#import-binding::t _%$args122135%_)))
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
      (lambda _%$args122132%_
        (apply make-instance gx#alias-binding::t _%$args122132%_)))
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
      (lambda _%$args122129%_
        (apply make-instance gx#expander::t _%$args122129%_)))
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
      (lambda _%$args122126%_
        (apply make-instance gx#core-expander::t _%$args122126%_)))
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
      (lambda _%$args122123%_
        (apply make-instance gx#expression-form::t _%$args122123%_)))
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
      (lambda _%$args122120%_
        (apply make-instance gx#special-form::t _%$args122120%_)))
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
      (lambda _%$args122117%_
        (apply make-instance gx#definition-form::t _%$args122117%_)))
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
      (lambda _%$args122114%_
        (apply make-instance gx#top-special-form::t _%$args122114%_)))
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
      (lambda _%$args122111%_
        (apply make-instance gx#module-special-form::t _%$args122111%_)))
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
      (lambda _%$args122108%_
        (apply make-instance gx#feature-expander::t _%$args122108%_)))
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
      (lambda _%$args122105%_
        (apply make-instance gx#private-feature-expander::t _%$args122105%_)))
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
      (lambda _%$args122102%_
        (apply make-instance gx#reserved-expander::t _%$args122102%_)))
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
      (lambda _%$args122099%_
        (apply make-instance gx#macro-expander::t _%$args122099%_)))
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
      (lambda _%$args122096%_
        (apply make-instance gx#rename-macro-expander::t _%$args122096%_)))
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
      (lambda _%$args122093%_
        (apply make-instance gx#user-expander::t _%$args122093%_)))
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
      (lambda _%$args122090%_
        (apply make-instance gx#expander-mark::t _%$args122090%_)))
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
      (lambda (_%ctx122074%_
               _%message122075%_
               _%stx122076%_
               .
               _%details122077%_)
        (let ((_%ctx122088%_
               (let ((_%$e122079%_ _%ctx122074%_))
                 (if _%$e122079%_
                     _%$e122079%_
                     (let ((_%$e122082%_ (gx#core-context-top__0)))
                       (if _%$e122082%_
                           ((lambda (_%ctx122085%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx122085%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e122082%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message122075%_
                  (cons _%stx122076%_ _%details122077%_)
                  _%ctx122088%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx122061%_ _%expression?122062%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx122061%_ _%expression?122062%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx122067%_)
        (let ((_%expression?122069%_ '#f))
          (gx#eval-syntax__% _%stx122067%_ _%expression?122069%_))))
    (define gx#eval-syntax
      (lambda _g122525_
        (let ((_g122524_ (##length _g122525_)))
          (cond ((##fx= _g122524_ 1) (apply gx#eval-syntax__0 _g122525_))
                ((##fx= _g122524_ 2) (apply gx#eval-syntax__% _g122525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g122525_))))))
    (define gx#eval-syntax*
      (lambda (_%stx122058%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx122058%_))))
    (define gx#core-expand__%
      (lambda (_%stx122045%_ _%expression?122046%_)
        (if _%expression?122046%_
            (gx#core-expand-expression _%stx122045%_)
            (gx#core-expand-top _%stx122045%_))))
    (define gx#core-expand__0
      (lambda (_%stx122051%_)
        (let ((_%expression?122053%_ '#f))
          (gx#core-expand__% _%stx122051%_ _%expression?122053%_))))
    (define gx#core-expand
      (lambda _g122527_
        (let ((_g122526_ (##length _g122527_)))
          (cond ((##fx= _g122526_ 1) (apply gx#core-expand__0 _g122527_))
                ((##fx= _g122526_ 2) (apply gx#core-expand__% _g122527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g122527_))))))
    (define gx#core-expand-top
      (lambda (_%stx122012%_)
        (let* ((_%stx122014%_ (gx#core-expand*__0 _%stx122012%_))
               (_%e122015122022%_ _%stx122014%_)
               (_%E122017122026%_
                (lambda () (gx#core-expand-expression _%stx122014%_)))
               (_%E122016122040%_
                (lambda ()
                  (if (gx#stx-pair? _%e122015122022%_)
                      (let ((_%e122018122030%_
                             (gx#syntax-e _%e122015122022%_)))
                        (let ((_%hd122019122033%_ (##car _%e122018122030%_))
                              (_%tl122020122035%_ (##cdr _%e122018122030%_)))
                          (let ((_%form122038%_ _%hd122019122033%_))
                            (if (gx#core-bound-identifier?__0 _%form122038%_)
                                _%stx122014%_
                                (_%E122017122026%_)))))
                      (_%E122017122026%_)))))
          (_%E122016122040%_))))
    (define gx#core-expand-expression
      (lambda (_%stx121944%_)
        (letrec ((_%sealed-expression?121946%_
                  (lambda (_%hd121982%_)
                    (if (gx#sealed-syntax? _%hd121982%_)
                        (let* ((_%e121983121990%_ _%hd121982%_)
                               (_%E121985121994%_ (lambda () '#f))
                               (_%E121984122008%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e121983121990%_)
                                      (let ((_%e121986121998%_
                                             (gx#syntax-e _%e121983121990%_)))
                                        (let ((_%hd121987122001%_
                                               (##car _%e121986121998%_))
                                              (_%tl121988122003%_
                                               (##cdr _%e121986121998%_)))
                                          (let ((_%form122006%_
                                                 _%hd121987122001%_))
                                            (gx#core-bound-identifier?__%
                                             _%form122006%_
                                             gx#expression-form-binding?))))
                                      (_%E121985121994%_)))))
                          (_%E121984122008%_))
                        '#f)))
                 (_%illegal-expression121947%_
                  (lambda (_%hd121979%_ . _%_121980%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx121944%_
                     _%hd121979%_)))
                 (_%expand-e121948%_
                  (lambda (_%form121971%_ _%hd121972%_)
                    (let ((_%bind121974%_
                           (if (##structure-instance-of?
                                _%form121971%_
                                'gx#binding::t)
                               _%form121971%_
                               (gx#resolve-identifier__0 _%form121971%_))))
                      (if (gx#core-expander-binding? _%bind121974%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind121974%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd121972%_
                            (gx#stx-source _%stx121944%_)))
                          (if (##structure-direct-instance-of?
                               _%bind121974%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind121974%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd121972%_
                                 (gx#stx-source _%stx121944%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx121944%_
                               _%form121971%_)))))))
          (let ((_%hd121950%_ (gx#core-expand-head _%stx121944%_)))
            (if (_%sealed-expression?121946%_ _%hd121950%_)
                _%hd121950%_
                (if (gx#stx-pair? _%hd121950%_)
                    (let* ((_%form121954%_ (gx#stx-car _%hd121950%_))
                           (_%bind121956%_
                            (if (gx#identifier? _%form121954%_)
                                (gx#resolve-identifier__0 _%form121954%_)
                                '#f)))
                      (if (or (not _%bind121956%_)
                              (not (gx#core-expander-binding? _%bind121956%_)))
                          (_%expand-e121948%_
                           '%%app
                           (cons '%%app _%hd121950%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind121956%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd121950%_
                               _%illegal-expression121947%_)
                              (if (gx#expression-form-binding? _%bind121956%_)
                                  (_%expand-e121948%_
                                   _%bind121956%_
                                   _%hd121950%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind121956%_)
                                      (gx#core-expand-expression
                                       (_%expand-e121948%_
                                        _%bind121956%_
                                        _%hd121950%_))
                                      (_%illegal-expression121947%_
                                       _%hd121950%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd121950%_)
                        (_%illegal-expression121947%_ _%hd121950%_)
                        (if (gx#identifier? _%hd121950%_)
                            (_%expand-e121948%_
                             '%%ref
                             (cons '%%ref (cons _%hd121950%_ '())))
                            (if (gx#stx-datum? _%hd121950%_)
                                (_%expand-e121948%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd121950%_ '())))
                                (_%illegal-expression121947%_
                                 _%hd121950%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx121939%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx121942%_ (gx#core-expand-expression _%stx121939%_)))
             (values _%stx121942%_ (gx#eval-syntax* _%stx121942%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx121920%_ _%stop?121921%_)
        (let _%lp121923%_ ((_%stx121925%_ _%stx121920%_))
          (if (_%stop?121921%_ _%stx121925%_)
              _%stx121925%_
              (let ((_%rstx121927%_ (gx#core-expand1 _%stx121925%_)))
                (if (eq? _%stx121925%_ _%rstx121927%_)
                    _%stx121925%_
                    (_%lp121923%_ _%rstx121927%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx121932%_)
        (let ((_%stop?121934%_ false))
          (gx#core-expand*__% _%stx121932%_ _%stop?121934%_))))
    (define gx#core-expand*
      (lambda _g122529_
        (let ((_g122528_ (##length _g122529_)))
          (cond ((##fx= _g122528_ 1) (apply gx#core-expand*__0 _g122529_))
                ((##fx= _g122528_ 2) (apply gx#core-expand*__% _g122529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g122529_))))))
    (define gx#core-expand1
      (lambda (_%stx121872%_)
        (letrec ((_%step121874%_
                  (lambda (_%hd121911%_)
                    (let ((_%bind121913%_
                           (gx#resolve-identifier__0 _%hd121911%_)))
                      (if (##structure-instance-of?
                           _%bind121913%_
                           'gx#runtime-binding::t)
                          _%stx121872%_
                          (if (##structure-direct-instance-of?
                               _%bind121913%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind121913%_
                                '4
                                '#f
                                '#f)
                               _%stx121872%_)
                              (if (not _%bind121913%_)
                                  _%stx121872%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx121872%_))))))))
          (let* ((_%e121875121883%_ _%stx121872%_)
                 (_%E121881121887%_ (lambda () _%stx121872%_))
                 (_%E121877121893%_
                  (lambda ()
                    (let ((_%hd121891%_ _%e121875121883%_))
                      (if (gx#identifier? _%hd121891%_)
                          (_%step121874%_ _%hd121891%_)
                          (_%E121881121887%_)))))
                 (_%E121876121907%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121875121883%_)
                        (let ((_%e121878121897%_
                               (gx#syntax-e _%e121875121883%_)))
                          (let ((_%hd121879121900%_ (##car _%e121878121897%_))
                                (_%tl121880121902%_ (##cdr _%e121878121897%_)))
                            (let ((_%hd121905%_ _%hd121879121900%_))
                              (if (gx#identifier? _%hd121905%_)
                                  (_%step121874%_ _%hd121905%_)
                                  (_%E121877121893%_)))))
                        (_%E121877121893%_)))))
            (_%E121876121907%_)))))
    (define gx#core-expand-head
      (lambda (_%stx121838%_)
        (letrec ((_%stop?121840%_
                  (lambda (_%stx121842%_)
                    (let* ((_%e121843121850%_ _%stx121842%_)
                           (_%E121845121854%_ (lambda () '#f))
                           (_%E121844121868%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121843121850%_)
                                  (let ((_%e121846121858%_
                                         (gx#syntax-e _%e121843121850%_)))
                                    (let ((_%hd121847121861%_
                                           (##car _%e121846121858%_))
                                          (_%tl121848121863%_
                                           (##cdr _%e121846121858%_)))
                                      (let ((_%hd121866%_ _%hd121847121861%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd121866%_))))
                                  (_%E121845121854%_)))))
                      (_%E121844121868%_)))))
          (gx#core-expand*__% _%stx121838%_ _%stop?121840%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx121644%_
               _%expand-special121645%_
               _%begin-form121646%_
               _%expand-e121647%_)
        (letrec ((_%expand-splice121649%_
                  (lambda (_%hd121812%_
                           _%body121813%_
                           _%rest121814%_
                           _%r121815%_)
                    (if (gx#stx-list? _%body121813%_)
                        (_%K121653%_
                         (gx#stx-foldr cons _%rest121814%_ _%body121813%_)
                         _%r121815%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx121644%_
                         _%hd121812%_))))
                 (_%expand-cond-expand121650%_
                  (lambda (_%hd121808%_ _%rest121809%_ _%r121810%_)
                    (_%K121653%_
                     (cons (gx#core-expand-cond-expand% _%hd121808%_)
                           _%rest121809%_)
                     _%r121810%_)))
                 (_%expand-include121651%_
                  (lambda (_%hd121757%_ _%rest121758%_ _%r121759%_)
                    (let* ((_%e121760121770%_ _%hd121757%_)
                           (_%E121762121774%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121760121770%_)))
                           (_%E121761121804%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121760121770%_)
                                  (let ((_%e121763121778%_
                                         (gx#syntax-e _%e121760121770%_)))
                                    (let ((_%hd121764121781%_
                                           (##car _%e121763121778%_))
                                          (_%tl121765121783%_
                                           (##cdr _%e121763121778%_)))
                                      (if (gx#stx-pair? _%tl121765121783%_)
                                          (let ((_%e121766121786%_
                                                 (gx#syntax-e
                                                  _%tl121765121783%_)))
                                            (let ((_%hd121767121789%_
                                                   (##car _%e121766121786%_))
                                                  (_%tl121768121791%_
                                                   (##cdr _%e121766121786%_)))
                                              (let ((_%path121794%_
                                                     _%hd121767121789%_))
                                                (if (gx#stx-null?
                                                     _%tl121768121791%_)
                                                    (if (gx#stx-string?
                                                         _%path121794%_)
                                                        (let* ((_%rpath121796%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path121794%_
                         (gx#stx-source _%hd121757%_)))
                       (_%block121798%_
                        (gx#core-expand-include%__%
                         _%hd121757%_
                         _%rpath121796%_))
                       (_%rbody121801%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block121798%_
                            _%expand-special121645%_
                            '#f
                            _%expand-e121647%_))
                         gx#current-expander-path
                         (cons _%rpath121796%_ (gx#current-expander-path)))))
                  (_%K121653%_
                   _%rest121758%_
                   (__foldr1 cons _%r121759%_ _%rbody121801%_)))
                (_%E121762121774%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121762121774%_)))))
                                          (_%E121762121774%_))))
                                  (_%E121762121774%_)))))
                      (_%E121761121804%_))))
                 (_%expand-expression121652%_
                  (lambda (_%hd121753%_ _%rest121754%_ _%r121755%_)
                    (_%K121653%_
                     _%rest121754%_
                     (cons (_%expand-e121647%_ _%hd121753%_) _%r121755%_))))
                 (_%K121653%_
                  (lambda (_%rest121683%_ _%r121684%_)
                    (let* ((_%e121685121692%_ _%rest121683%_)
                           (_%E121687121696%_
                            (lambda ()
                              (if _%begin-form121646%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form121646%_
                                    (reverse _%r121684%_))
                                   (gx#stx-source _%stx121644%_))
                                  _%r121684%_)))
                           (_%E121686121749%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121685121692%_)
                                  (let ((_%e121688121700%_
                                         (gx#syntax-e _%e121685121692%_)))
                                    (let ((_%hd121689121703%_
                                           (##car _%e121688121700%_))
                                          (_%tl121690121705%_
                                           (##cdr _%e121688121700%_)))
                                      (let* ((_%hd121708%_ _%hd121689121703%_)
                                             (_%rest121710%_
                                              _%tl121690121705%_)
                                             (_%hd121712%_
                                              (gx#core-expand-head
                                               _%hd121708%_))
                                             (_%e121713121720%_ _%hd121712%_)
                                             (_%E121715121724%_
                                              (lambda ()
                                                (_%expand-expression121652%_
                                                 _%hd121712%_
                                                 _%rest121710%_
                                                 _%r121684%_)))
                                             (_%E121714121745%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121713121720%_)
                                                    (let ((_%e121716121728%_
                                                           (gx#syntax-e
                                                            _%e121713121720%_)))
                                                      (let ((_%hd121717121731%_
                                                             (##car _%e121716121728%_))
                                                            (_%tl121718121733%_
                                                             (##cdr _%e121716121728%_)))
                                                        (let* ((_%form121736%_
                                                                _%hd121717121731%_)
                                                               (_%body121738%_
                                                                _%tl121718121733%_)
                                                               (_%bind121740%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form121736%_)
                            (gx#resolve-identifier__0 _%form121736%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind121740%_)
                      (let ((_%$e121742%_
                             (##unchecked-structure-ref
                              _%bind121740%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e121742%_)
                            (_%expand-splice121649%_
                             _%hd121712%_
                             _%body121738%_
                             _%rest121710%_
                             _%r121684%_)
                            (if (eq? '%#cond-expand _%$e121742%_)
                                (_%expand-cond-expand121650%_
                                 _%hd121712%_
                                 _%rest121710%_
                                 _%r121684%_)
                                (if (eq? '%#include _%$e121742%_)
                                    (_%expand-include121651%_
                                     _%hd121712%_
                                     _%rest121710%_
                                     _%r121684%_)
                                    (_%expand-special121645%_
                                     _%hd121712%_
                                     _%K121653%_
                                     _%rest121710%_
                                     _%r121684%_)))))
                      (_%expand-expression121652%_
                       _%hd121712%_
                       _%rest121710%_
                       _%r121684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121715121724%_)))))
                                        (_%E121714121745%_))))
                                  (_%E121687121696%_)))))
                      (_%E121686121749%_)))))
          (let* ((_%e121654121661%_ _%stx121644%_)
                 (_%E121656121665%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121654121661%_)))
                 (_%E121655121679%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121654121661%_)
                        (let ((_%e121657121669%_
                               (gx#syntax-e _%e121654121661%_)))
                          (let ((_%hd121658121672%_ (##car _%e121657121669%_))
                                (_%tl121659121674%_ (##cdr _%e121657121669%_)))
                            (let ((_%body121677%_ _%tl121659121674%_))
                              (if (gx#stx-list? _%body121677%_)
                                  (_%K121653%_ _%body121677%_ '())
                                  (_%E121656121665%_)))))
                        (_%E121656121665%_)))))
            (_%E121655121679%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx121820%_ _%expand-special121821%_)
        (let* ((_%begin-form121823%_ '%#begin)
               (_%expand-e121825%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121820%_
           _%expand-special121821%_
           _%begin-form121823%_
           _%expand-e121825%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx121827%_ _%expand-special121828%_ _%begin-form121829%_)
        (let ((_%expand-e121831%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121827%_
           _%expand-special121828%_
           _%begin-form121829%_
           _%expand-e121831%_))))
    (define gx#core-expand-block
      (lambda _g122531_
        (let ((_g122530_ (##length _g122531_)))
          (cond ((##fx= _g122530_ 2) (apply gx#core-expand-block__0 _g122531_))
                ((##fx= _g122530_ 3) (apply gx#core-expand-block__1 _g122531_))
                ((##fx= _g122530_ 4) (apply gx#core-expand-block__% _g122531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g122531_))))))
    (define gx#core-expand-block*
      (lambda (_%stx121592%_ _%expand-special121593%_)
        (let* ((_%g121594121605%_
                (gx#core-expand-block__1
                 _%stx121592%_
                 _%expand-special121593%_
                 '#f))
               (_%E121598121609%_
                (lambda ()
                  (error '"No clause matching"
                         _%g121594121605%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K121603121640%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx121592%_)))
                (_%K121600121626%_ (lambda (_%expr121624%_) _%expr121624%_))
                (_%K121599121615%_
                 (lambda (_%body121613%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body121613%_))
                    (gx#stx-source _%stx121592%_)))))
            (let ((_%try-match121596121636%_
                   (lambda ()
                     (if (pair? _%g121594121605%_)
                         (let ((_%tl121602121631%_ (##cdr _%g121594121605%_))
                               (_%hd121601121629%_ (##car _%g121594121605%_)))
                           (if (null? _%tl121602121631%_)
                               (let ((_%expr121634%_ _%hd121601121629%_))
                                 (_%K121600121626%_ _%expr121634%_))
                               (let ((_%body121618%_ _%g121594121605%_))
                                 (_%K121599121615%_ _%body121618%_))))
                         (let ((_%body121618%_ _%g121594121605%_))
                           (_%K121599121615%_ _%body121618%_))))))
              (if (null? _%g121594121605%_)
                  (_%K121603121640%_)
                  (_%try-match121596121636%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx121417%_)
        (letrec ((_%satisfied?121419%_
                  (lambda (_%condition121520%_)
                    (let* ((_%e121521121536%_ _%condition121520%_)
                           (_%E121531121540%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121521121536%_)))
                           (_%E121524121559%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121521121536%_)
                                  (let ((_%e121532121544%_
                                         (gx#syntax-e _%e121521121536%_)))
                                    (let ((_%hd121533121547%_
                                           (##car _%e121532121544%_))
                                          (_%tl121534121549%_
                                           (##cdr _%e121532121544%_)))
                                      (let* ((_%combinator121552%_
                                              _%hd121533121547%_)
                                             (_%body121554%_
                                              _%tl121534121549%_))
                                        (if (gx#stx-list? _%body121554%_)
                                            (let ((_%$e121556%_
                                                   (gx#stx-e
                                                    _%combinator121552%_)))
                                              (if (eq? 'not _%$e121556%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?121419%_
                                                        _%body121554%_))
                                                  (if (eq? 'and _%$e121556%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?121419%_
                                                       _%body121554%_)
                                                      (if (eq? 'or
                                                               _%$e121556%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?121419%_
                                                           _%body121554%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e121556%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body121554%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx121417%_
                       _%combinator121552%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E121531121540%_)))))
                                  (_%E121531121540%_))))
                           (_%E121523121582%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121521121536%_)
                                  (let ((_%e121525121563%_
                                         (gx#syntax-e _%e121521121536%_)))
                                    (let ((_%hd121526121566%_
                                           (##car _%e121525121563%_))
                                          (_%tl121527121568%_
                                           (##cdr _%e121525121563%_)))
                                      (if (and (gx#identifier?
                                                _%hd121526121566%_)
                                               (gx#core-identifier=?
                                                _%hd121526121566%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl121527121568%_)
                                              (let ((_%e121528121571%_
                                                     (gx#syntax-e
                                                      _%tl121527121568%_)))
                                                (let ((_%hd121529121574%_
                                                       (##car _%e121528121571%_))
                                                      (_%tl121530121576%_
                                                       (##cdr _%e121528121571%_)))
                                                  (let ((_%expr121579%_
                                                         _%hd121529121574%_))
                                                    (if (gx#stx-null?
                                                         _%tl121530121576%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr121579%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E121524121559%_)))))
                                              (_%E121524121559%_))
                                          (_%E121524121559%_))))
                                  (_%E121524121559%_))))
                           (_%E121522121588%_
                            (lambda ()
                              (let ((_%id121586%_ _%e121521121536%_))
                                (if (gx#identifier? _%id121586%_)
                                    (gx#core-bound-identifier?__%
                                     _%id121586%_
                                     gx#feature-binding?)
                                    (_%E121523121582%_))))))
                      (_%E121522121588%_))))
                 (_%loop121420%_
                  (lambda (_%rest121450%_)
                    (let* ((_%e121451121459%_ _%rest121450%_)
                           (_%E121457121463%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121451121459%_)))
                           (_%E121453121467%_
                            (lambda ()
                              (if (gx#stx-null? _%e121451121459%_)
                                  '()
                                  (_%E121457121463%_))))
                           (_%E121452121516%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121451121459%_)
                                  (let ((_%e121454121471%_
                                         (gx#syntax-e _%e121451121459%_)))
                                    (let ((_%hd121455121474%_
                                           (##car _%e121454121471%_))
                                          (_%tl121456121476%_
                                           (##cdr _%e121454121471%_)))
                                      (let* ((_%hd121479%_ _%hd121455121474%_)
                                             (_%rest121481%_
                                              _%tl121456121476%_)
                                             (_%e121482121489%_ _%hd121479%_)
                                             (_%E121484121493%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e121482121489%_)))
                                             (_%E121483121512%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121482121489%_)
                                                    (let ((_%e121485121497%_
                                                           (gx#syntax-e
                                                            _%e121482121489%_)))
                                                      (let ((_%hd121486121500%_
                                                             (##car _%e121485121497%_))
                                                            (_%tl121487121502%_
                                                             (##cdr _%e121485121497%_)))
                                                        (let* ((_%condition121505%_
                                                                _%hd121486121500%_)
                                                               (_%body121507%_
                                                                _%tl121487121502%_))
                                                          (if (gx#stx-eq?
                                                               _%condition121505%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest121481%_)
                          _%body121507%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx121417%_
                           _%hd121479%_))
                      (if (_%satisfied?121419%_ _%condition121505%_)
                          _%body121507%_
                          (_%loop121420%_ _%rest121481%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121484121493%_)))))
                                        (_%E121483121512%_))))
                                  (_%E121453121467%_)))))
                      (_%E121452121516%_)))))
          (let* ((_%e121421121428%_ _%stx121417%_)
                 (_%E121423121432%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121421121428%_)))
                 (_%E121422121446%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121421121428%_)
                        (let ((_%e121424121436%_
                               (gx#syntax-e _%e121421121428%_)))
                          (let ((_%hd121425121439%_ (##car _%e121424121436%_))
                                (_%tl121426121441%_ (##cdr _%e121424121436%_)))
                            (let ((_%clauses121444%_ _%tl121426121441%_))
                              (if (gx#stx-list? _%clauses121444%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop121420%_ _%clauses121444%_))
                                  (_%E121423121432%_)))))
                        (_%E121423121432%_)))))
            (_%E121422121446%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx121360%_ _%rpath121361%_)
        (let* ((_%e121362121372%_ _%stx121360%_)
               (_%E121364121376%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121362121372%_)))
               (_%E121363121403%_
                (lambda ()
                  (if (gx#stx-pair? _%e121362121372%_)
                      (let ((_%e121365121380%_
                             (gx#syntax-e _%e121362121372%_)))
                        (let ((_%hd121366121383%_ (##car _%e121365121380%_))
                              (_%tl121367121385%_ (##cdr _%e121365121380%_)))
                          (if (gx#stx-pair? _%tl121367121385%_)
                              (let ((_%e121368121388%_
                                     (gx#syntax-e _%tl121367121385%_)))
                                (let ((_%hd121369121391%_
                                       (##car _%e121368121388%_))
                                      (_%tl121370121393%_
                                       (##cdr _%e121368121388%_)))
                                  (let ((_%path121396%_ _%hd121369121391%_))
                                    (if (gx#stx-null? _%tl121370121393%_)
                                        (if (gx#stx-string? _%path121396%_)
                                            (let ((_%rpath121401%_
                                                   (let ((_%$e121398%_
                                                          _%rpath121361%_))
                                                     (if _%$e121398%_
                                                         _%$e121398%_
                                                         (gx#core-resolve-path__%
                                                          _%path121396%_
                                                          (gx#stx-source
                                                           _%stx121360%_))))))
                                              (if (member _%rpath121401%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx121360%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath121401%_))
                                                    (gx#stx-source
                                                     _%stx121360%_)))))
                                            (_%E121364121376%_))
                                        (_%E121364121376%_)))))
                              (_%E121364121376%_))))
                      (_%E121364121376%_)))))
          (_%E121363121403%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx121410%_)
        (let ((_%rpath121412%_ '#f))
          (gx#core-expand-include%__% _%stx121410%_ _%rpath121412%_))))
    (define gx#core-expand-include%
      (lambda _g122533_
        (let ((_g122532_ (##length _g122533_)))
          (cond ((##fx= _g122532_ 1)
                 (apply gx#core-expand-include%__0 _g122533_))
                ((##fx= _g122532_ 2)
                 (apply gx#core-expand-include%__% _g122533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g122533_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K121326%_ _%stx121327%_ _%method121328%_)
        (if (procedure? _%K121326%_)
            (let ((_%$e121331%_ (gx#stx-source _%stx121327%_)))
              (if _%$e121331%_
                  ((lambda (_%g121333121335%_)
                     (gx#stx-wrap-source
                      (_%K121326%_ _%stx121327%_)
                      _%g121333121335%_))
                   _%$e121331%_)
                  (_%K121326%_ _%stx121327%_)))
            (let ((_%$e121339%_
                   (bound-method-ref _%K121326%_ _%method121328%_)))
              (if _%$e121339%_
                  ((lambda (_%g121341121343%_)
                     (gx#core-apply-expander__%
                      _%g121341121343%_
                      _%stx121327%_
                      _%method121328%_))
                   _%$e121339%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx121327%_
                   _%method121328%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K121350%_ _%stx121351%_)
        (let ((_%method121353%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K121350%_
           _%stx121351%_
           _%method121353%_))))
    (define gx#core-apply-expander
      (lambda _g122535_
        (let ((_g122534_ (##length _g122535_)))
          (cond ((##fx= _g122534_ 2)
                 (apply gx#core-apply-expander__0 _g122535_))
                ((##fx= _g122534_ 3)
                 (apply gx#core-apply-expander__% _g122535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g122535_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self119368121309%_ _%stx121311%_)
        (let* ((_%self121313%_ _%self119368121309%_)
               (_%self121315%_ _%self121313%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx121311%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self119369121149%_ _%stx121151%_)
        (let* ((_%self121153%_ _%self119369121149%_)
               (_%self121155%_ _%self121153%_)
               (_%self121164121170%_ _%self121155%_)
               (_%E121166121174%_
                (lambda ()
                  (error '"No clause matching"
                         _%self121164121170%_
                         '((macro-expander K)))
                  '#!void))
               (_%K121167121179%_
                (lambda (_%K121177%_)
                  (gx#core-apply-expander__0 _%K121177%_ _%stx121151%_)))
               (_%e121168121182%_
                (##unchecked-structure-ref _%self121164121170%_ '1 '#f '#f))
               (_%K121185%_ _%e121168121182%_))
          (_%K121167121179%_ _%K121185%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self119370120989%_ _%stx120991%_)
        (let* ((_%self120993%_ _%self119370120989%_)
               (_%self120995%_ _%self120993%_))
          (if (gx#sealed-syntax? _%stx120991%_)
              _%stx120991%_
              (let* ((_%self121004121010%_ _%self120995%_)
                     (_%E121006121014%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self121004121010%_
                               '((core-expander K)))
                        '#!void))
                     (_%K121007121019%_
                      (lambda (_%K121017%_)
                        (gx#core-apply-expander__0 _%K121017%_ _%stx120991%_)))
                     (_%e121008121022%_
                      (##unchecked-structure-ref
                       _%self121004121010%_
                       '1
                       '#f
                       '#f))
                     (_%K121025%_ _%e121008121022%_))
                (_%K121007121019%_ _%K121025%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self119371120838%_ _%stx120840%_ _%top?120841%_)
        (let* ((_%self120843%_ _%self119371120838%_)
               (_%self120845%_ _%self120843%_))
          (if (_%top?120841%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self120845%_
               _%stx120840%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx120840%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self119371120858%_ _%stx120859%_)
        (let ((_%top?120861%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self119371120858%_
           _%stx120859%_
           _%top?120861%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g122537_
        (let ((_g122536_ (##length _g122537_)))
          (cond ((##fx= _g122536_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g122537_))
                ((##fx= _g122536_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g122537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g122537_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self119372120699%_ _%stx120701%_)
        (let* ((_%self120703%_ _%self119372120699%_)
               (_%self120705%_ _%self120703%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self120705%_
           _%stx120701%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self119373120511%_ _%stx120513%_)
        (let* ((_%self120515%_ _%self119373120511%_)
               (_%self120517%_ _%self120515%_)
               (_%self120526120532%_ _%self120517%_)
               (_%E120528120536%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120526120532%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K120529120569%_
                (lambda (_%id120539%_)
                  (let* ((_%e120540120547%_ _%stx120513%_)
                         (_%E120542120551%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e120540120547%_)))
                         (_%E120541120565%_
                          (lambda ()
                            (if (gx#stx-pair? _%e120540120547%_)
                                (let ((_%e120543120555%_
                                       (gx#syntax-e _%e120540120547%_)))
                                  (let ((_%hd120544120558%_
                                         (##car _%e120543120555%_))
                                        (_%tl120545120560%_
                                         (##cdr _%e120543120555%_)))
                                    (let ((_%body120563%_ _%tl120545120560%_))
                                      (gx#core-cons
                                       _%id120539%_
                                       _%body120563%_))))
                                (_%E120542120551%_)))))
                    (_%E120541120565%_))))
               (_%e120530120572%_
                (##unchecked-structure-ref _%self120526120532%_ '1 '#f '#f))
               (_%id120575%_ _%e120530120572%_))
          (_%K120529120569%_ _%id120575%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self120337%_ _%stx120338%_ _%method120339%_)
        (let* ((_%self120340120348%_ _%self120337%_)
               (_%E120342120352%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120340120348%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K120343120359%_
                (lambda (_%phi120355%_ _%ctx120356%_ _%K120357%_)
                  (gx#core-apply-user-macro
                   _%K120357%_
                   _%stx120338%_
                   _%ctx120356%_
                   _%phi120355%_
                   _%method120339%_))))
          (if (##structure-instance-of?
               _%self120340120348%_
               'gx#user-expander::t)
              (let* ((_%e120344120362%_
                      (##unchecked-structure-ref
                       _%self120340120348%_
                       '1
                       '#f
                       '#f))
                     (_%K120365%_ _%e120344120362%_)
                     (_%e120345120367%_
                      (##unchecked-structure-ref
                       _%self120340120348%_
                       '2
                       '#f
                       '#f))
                     (_%ctx120370%_ _%e120345120367%_)
                     (_%e120346120372%_
                      (##unchecked-structure-ref
                       _%self120340120348%_
                       '3
                       '#f
                       '#f))
                     (_%phi120375%_ _%e120346120372%_))
                (_%K120343120359%_ _%phi120375%_ _%ctx120370%_ _%K120365%_))
              (_%E120342120352%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self120380%_ _%stx120381%_)
        (let ((_%method120383%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self120380%_
           _%stx120381%_
           _%method120383%_))))
    (define gx#core-apply-user-expander
      (lambda _g122539_
        (let ((_g122538_ (##length _g122539_)))
          (cond ((##fx= _g122538_ 2)
                 (apply gx#core-apply-user-expander__0 _g122539_))
                ((##fx= _g122538_ 3)
                 (apply gx#core-apply-user-expander__% _g122539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g122539_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K120327%_
               _%stx120328%_
               _%ctx120329%_
               _%phi120330%_
               _%method120331%_)
        (let ((_%mark120333%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx120329%_
                _%phi120330%_
                _%stx120328%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K120327%_
               (gx#stx-apply-mark _%stx120328%_ _%mark120333%_)
               _%method120331%_)
              _%mark120333%_))
           gx#current-expander-marks
           (cons _%mark120333%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx120175%_ _%phi120176%_ _%ctx120177%_)
        (let _%lp120179%_ ((_%bind120181%_
                            (gx#core-resolve-identifier__%
                             _%stx120175%_
                             _%phi120176%_
                             _%ctx120177%_)))
          (if (##structure-direct-instance-of?
               _%bind120181%_
               'gx#import-binding::t)
              (_%lp120179%_
               (##unchecked-structure-ref _%bind120181%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind120181%_
                   'gx#alias-binding::t)
                  (_%lp120179%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind120181%_ '4 '#f '#f)
                    _%phi120176%_
                    _%ctx120177%_))
                  _%bind120181%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx120189%_)
        (let* ((_%phi120191%_ (gx#current-expander-phi))
               (_%ctx120193%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120189%_
           _%phi120191%_
           _%ctx120193%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx120195%_ _%phi120196%_)
        (let ((_%ctx120198%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120195%_
           _%phi120196%_
           _%ctx120198%_))))
    (define gx#resolve-identifier
      (lambda _g122541_
        (let ((_g122540_ (##length _g122541_)))
          (cond ((##fx= _g122540_ 1)
                 (apply gx#resolve-identifier__0 _g122541_))
                ((##fx= _g122540_ 2)
                 (apply gx#resolve-identifier__1 _g122541_))
                ((##fx= _g122540_ 3)
                 (apply gx#resolve-identifier__% _g122541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g122541_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx120130%_
               _%val120131%_
               _%rebind?120132%_
               _%phi120133%_
               _%ctx120134%_)
        (let ((_%rebind?120139%_
               (if (not _%rebind?120132%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?120132%_)
                       _%rebind?120132%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx120130%_)
           _%val120131%_
           _%rebind?120139%_
           _%phi120133%_
           _%ctx120134%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx120144%_ _%val120145%_)
        (let* ((_%rebind?120147%_ '#f)
               (_%phi120149%_ (gx#current-expander-phi))
               (_%ctx120151%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120144%_
           _%val120145%_
           _%rebind?120147%_
           _%phi120149%_
           _%ctx120151%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx120153%_ _%val120154%_ _%rebind?120155%_)
        (let* ((_%phi120157%_ (gx#current-expander-phi))
               (_%ctx120159%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120153%_
           _%val120154%_
           _%rebind?120155%_
           _%phi120157%_
           _%ctx120159%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx120161%_ _%val120162%_ _%rebind?120163%_ _%phi120164%_)
        (let ((_%ctx120166%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120161%_
           _%val120162%_
           _%rebind?120163%_
           _%phi120164%_
           _%ctx120166%_))))
    (define gx#bind-identifier!
      (lambda _g122543_
        (let ((_g122542_ (##length _g122543_)))
          (cond ((##fx= _g122542_ 2) (apply gx#bind-identifier!__0 _g122543_))
                ((##fx= _g122542_ 3) (apply gx#bind-identifier!__1 _g122543_))
                ((##fx= _g122542_ 4) (apply gx#bind-identifier!__2 _g122543_))
                ((##fx= _g122542_ 5) (apply gx#bind-identifier!__% _g122543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g122543_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx120096%_ _%phi120097%_ _%ctx120098%_)
        (let _%lp120100%_ ((_%e120102%_ _%stx120096%_)
                           (_%marks120103%_ (gx#current-expander-marks)))
          (if (symbol? _%e120102%_)
              (gx#core-resolve-binding
               _%e120102%_
               _%phi120097%_
               _%phi120097%_
               _%ctx120098%_
               (reverse _%marks120103%_))
              (if (gx#identifier-quote? _%e120102%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e120102%_ '1 '#f '#f)
                   _%phi120097%_
                   '0
                   (##unchecked-structure-ref _%e120102%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e120102%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e120102%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e120102%_ '1 '#f '#f)
                       _%phi120097%_
                       _%phi120097%_
                       _%ctx120098%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e120102%_ '3 '#f '#f)
                        _%marks120103%_))
                      (if (##structure-direct-instance-of?
                           _%e120102%_
                           'gx#syntax-wrap::t)
                          (_%lp120100%_
                           (##unchecked-structure-ref _%e120102%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e120102%_ '3 '#f '#f)
                            _%marks120103%_))
                          (if (##structure-instance-of?
                               _%e120102%_
                               'gerbil#AST::t)
                              (_%lp120100%_
                               (##unchecked-structure-ref
                                _%e120102%_
                                '1
                                '#f
                                '#f)
                               _%marks120103%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx120096%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx120114%_)
        (let* ((_%phi120116%_ (gx#current-expander-phi))
               (_%ctx120118%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120114%_
           _%phi120116%_
           _%ctx120118%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx120120%_ _%phi120121%_)
        (let ((_%ctx120123%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120120%_
           _%phi120121%_
           _%ctx120123%_))))
    (define gx#core-resolve-identifier
      (lambda _g122545_
        (let ((_g122544_ (##length _g122545_)))
          (cond ((##fx= _g122544_ 1)
                 (apply gx#core-resolve-identifier__0 _g122545_))
                ((##fx= _g122544_ 2)
                 (apply gx#core-resolve-identifier__1 _g122545_))
                ((##fx= _g122544_ 3)
                 (apply gx#core-resolve-identifier__% _g122545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g122545_))))))
    (define gx#core-resolve-binding
      (lambda (_%id120006%_
               _%phi120007%_
               _%src-phi120008%_
               _%ctx120009%_
               _%marks120010%_)
        (letrec ((_%resolve120012%_
                  (lambda (_%ctx120080%_ _%src-phi120081%_ _%key120082%_)
                    (let _%lp120084%_ ((_%ctx120086%_
                                        (gx#core-context-shift
                                         _%ctx120080%_
                                         _%phi120007%_))
                                       (_%dphi120087%_
                                        (fx- _%phi120007%_ _%src-phi120081%_)))
                      (let ((_%$e120089%_
                             (gx#core-context-resolve
                              _%ctx120086%_
                              _%key120082%_)))
                        (if _%$e120089%_
                            _%$e120089%_
                            (if (fxzero? _%dphi120087%_)
                                '#f
                                (if (fxpositive? _%dphi120087%_)
                                    (_%lp120084%_
                                     (gx#core-context-shift _%ctx120086%_ '-1)
                                     (##fx- _%dphi120087%_ '1))
                                    (_%lp120084%_
                                     (gx#core-context-shift _%ctx120086%_ '1)
                                     (##fx+ _%dphi120087%_ '1))))))))))
          (let _%lp120014%_ ((_%ctx120016%_ _%ctx120009%_)
                             (_%src-phi120017%_ _%src-phi120008%_)
                             (_%rest120018%_ _%marks120010%_))
            (let* ((_%rest120019120027%_ _%rest120018%_)
                   (_%else120021120035%_
                    (lambda ()
                      (_%resolve120012%_
                       _%ctx120016%_
                       _%src-phi120017%_
                       _%id120006%_)))
                   (_%K120023120068%_
                    (lambda (_%rest120038%_ _%hd120039%_)
                      (let* ((_%hd120040120046%_ _%hd120039%_)
                             (_%E120042120050%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd120040120046%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K120043120060%_
                              (lambda (_%subst120053%_)
                                (let ((_%$e120057%_
                                       (let ((_%key120055%_
                                              (if _%subst120053%_
                                                  (hash-get
                                                   _%subst120053%_
                                                   _%id120006%_)
                                                  '#f)))
                                         (if _%key120055%_
                                             (_%resolve120012%_
                                              _%ctx120016%_
                                              _%src-phi120017%_
                                              _%key120055%_)
                                             '#f))))
                                  (if _%$e120057%_
                                      _%$e120057%_
                                      (_%lp120014%_
                                       (##unchecked-structure-ref
                                        _%hd120039%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd120039%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest120038%_))))))
                        (if (##structure-instance-of?
                             _%hd120040120046%_
                             'gx#expander-mark::t)
                            (let* ((_%e120044120063%_
                                    (##unchecked-structure-ref
                                     _%hd120040120046%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst120066%_ _%e120044120063%_))
                              (_%K120043120060%_ _%subst120066%_))
                            (_%E120042120050%_))))))
              (if (pair? _%rest120019120027%_)
                  (let ((_%hd120024120071%_ (##car _%rest120019120027%_))
                        (_%tl120025120073%_ (##cdr _%rest120019120027%_)))
                    (let* ((_%hd120076%_ _%hd120024120071%_)
                           (_%rest120078%_ _%tl120025120073%_))
                      (_%K120023120068%_ _%rest120078%_ _%hd120076%_)))
                  (_%else120021120035%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key119876%_
               _%val119877%_
               _%rebind?119878%_
               _%phi119879%_
               _%ctx119880%_)
        (letrec ((_%update-binding119882%_
                  (lambda (_%xval119955%_)
                    (if (or (_%rebind?119878%_
                             _%ctx119880%_
                             _%xval119955%_
                             _%val119877%_)
                            (and (##structure-direct-instance-of?
                                  _%xval119955%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval119955%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val119877%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val119877%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval119955%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val119877%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val119877%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval119955%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val119877%_
                        (if (and (##structure-direct-instance-of?
                                  _%val119877%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val119877%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval119955%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val119877%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval119955%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval119955%_
                            (if (and (##structure-direct-instance-of?
                                      _%val119877%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval119955%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key119876%_
                                 (cons (##unchecked-structure-ref
                                        _%val119877%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val119877%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval119955%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval119955%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval119955%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval119955%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key119876%_
                                 _%val119877%_
                                 _%xval119955%_))))))
                 (_%gensubst119883%_
                  (lambda (_%subst119950%_ _%id119951%_)
                    (let ((_%eid119953%_
                           (gensym (if (uninterned-symbol? _%id119951%_)
                                       '%
                                       _%id119951%_))))
                      (hash-put! _%subst119950%_ _%id119951%_ _%eid119953%_)
                      _%eid119953%_)))
                 (_%subst!119884%_
                  (lambda (_%key119886%_)
                    (let* ((_%key119887119895%_ _%key119886%_)
                           (_%else119889119903%_ (lambda () _%key119886%_))
                           (_%K119891119938%_
                            (lambda (_%mark119906%_ _%id119907%_)
                              (let* ((_%mark119908119914%_ _%mark119906%_)
                                     (_%E119910119918%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark119908119914%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K119911119930%_
                                      (lambda (_%subst119921%_)
                                        (if (not _%subst119921%_)
                                            (let ((_%subst119924%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark119906%_
                                               _%subst119924%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst119883%_
                                               _%subst119924%_
                                               _%id119907%_))
                                            (let ((_%$e119926%_
                                                   (hash-get
                                                    _%subst119921%_
                                                    _%id119907%_)))
                                              (if _%$e119926%_
                                                  _%$e119926%_
                                                  (_%gensubst119883%_
                                                   _%subst119921%_
                                                   _%id119907%_)))))))
                                (if (##structure-instance-of?
                                     _%mark119908119914%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e119912119933%_
                                            (##unchecked-structure-ref
                                             _%mark119908119914%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst119936%_ _%e119912119933%_))
                                      (_%K119911119930%_ _%subst119936%_))
                                    (_%E119910119918%_))))))
                      (if (pair? _%key119887119895%_)
                          (let ((_%hd119892119941%_
                                 (##car _%key119887119895%_))
                                (_%tl119893119943%_
                                 (##cdr _%key119887119895%_)))
                            (let* ((_%id119946%_ _%hd119892119941%_)
                                   (_%mark119948%_ _%tl119893119943%_))
                              (_%K119891119938%_ _%mark119948%_ _%id119946%_)))
                          (_%else119889119903%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx119880%_ _%phi119879%_)
           (_%subst!119884%_ _%key119876%_)
           _%val119877%_
           _%update-binding119882%_))))
    (define gx#core-bind!__0
      (lambda (_%key119976%_ _%val119977%_)
        (let* ((_%rebind?119979%_ false)
               (_%phi119981%_ (gx#current-expander-phi))
               (_%ctx119983%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119976%_
           _%val119977%_
           _%rebind?119979%_
           _%phi119981%_
           _%ctx119983%_))))
    (define gx#core-bind!__1
      (lambda (_%key119985%_ _%val119986%_ _%rebind?119987%_)
        (let* ((_%phi119989%_ (gx#current-expander-phi))
               (_%ctx119991%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119985%_
           _%val119986%_
           _%rebind?119987%_
           _%phi119989%_
           _%ctx119991%_))))
    (define gx#core-bind!__2
      (lambda (_%key119993%_ _%val119994%_ _%rebind?119995%_ _%phi119996%_)
        (let ((_%ctx119998%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119993%_
           _%val119994%_
           _%rebind?119995%_
           _%phi119996%_
           _%ctx119998%_))))
    (define gx#core-bind!
      (lambda _g122547_
        (let ((_g122546_ (##length _g122547_)))
          (cond ((##fx= _g122546_ 2) (apply gx#core-bind!__0 _g122547_))
                ((##fx= _g122546_ 3) (apply gx#core-bind!__1 _g122547_))
                ((##fx= _g122546_ 4) (apply gx#core-bind!__2 _g122547_))
                ((##fx= _g122546_ 5) (apply gx#core-bind!__% _g122547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g122547_))))))
    (define gx#core-identifier-key
      (lambda (_%stx119807%_)
        (if (symbol? _%stx119807%_)
            (let* ((_%g119809119817%_ (gx#current-expander-marks))
                   (_%else119811119825%_ (lambda () _%stx119807%_))
                   (_%K119813119830%_
                    (lambda (_%hd119828%_) (cons _%stx119807%_ _%hd119828%_))))
              (if (pair? _%g119809119817%_)
                  (let* ((_%hd119814119833%_ (##car _%g119809119817%_))
                         (_%hd119836%_ _%hd119814119833%_))
                    (_%K119813119830%_ _%hd119836%_))
                  (_%else119811119825%_)))
            (if (gx#identifier? _%stx119807%_)
                (let* ((_%id119839%_ (gx#syntax-local-unwrap _%stx119807%_))
                       (_%eid119841%_ (gx#stx-e _%id119839%_))
                       (_%marks119843%_
                        (gx#stx-identifier-marks* _%id119839%_))
                       (_%marks119845119853%_ _%marks119843%_)
                       (_%else119847119861%_ (lambda () _%eid119841%_))
                       (_%K119849119866%_
                        (lambda (_%hd119864%_)
                          (cons _%eid119841%_ _%hd119864%_))))
                  (if (pair? _%marks119845119853%_)
                      (let* ((_%hd119850119869%_ (##car _%marks119845119853%_))
                             (_%hd119872%_ _%hd119850119869%_))
                        (_%K119849119866%_ _%hd119872%_))
                      (_%else119847119861%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx119807%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx119746%_ _%phi119747%_)
        (letrec ((_%make-phi119749%_
                  (lambda (_%super119805%_)
                    (let ((__obj122519
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj122519
                       (##gensym 'phi)
                       _%super119805%_)
                      __obj122519)))
                 (_%make-phi/up119750%_
                  (lambda (_%ctx119800%_ _%super119801%_)
                    (let ((_%ctx+1119803%_
                           (_%make-phi119749%_ _%super119801%_)))
                      (##unchecked-structure-set!
                       _%ctx119800%_
                       _%ctx+1119803%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1119803%_
                       _%ctx119800%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1119803%_)))
                 (_%make-phi/down119751%_
                  (lambda (_%ctx119795%_ _%super119796%_)
                    (let ((_%ctx-1119798%_
                           (_%make-phi119749%_ _%super119796%_)))
                      (##unchecked-structure-set!
                       _%ctx-1119798%_
                       _%ctx119795%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx119795%_
                       _%ctx-1119798%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1119798%_)))
                 (_%shift119752%_
                  (lambda (_%ctx119778%_
                           _%delta119779%_
                           _%make-delta-context119780%_
                           _%phi119781%_
                           _%K119782%_)
                    (let ((_%$e119784%_
                           (##unchecked-structure-ref
                            _%ctx119778%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e119784%_
                          ((lambda (_%super119787%_)
                             (let* ((_%super119789%_
                                     (_%K119782%_
                                      _%super119787%_
                                      _%delta119779%_))
                                    (_%ctx+d119791%_
                                     (_%make-delta-context119780%_
                                      _%ctx119778%_
                                      _%super119789%_)))
                               (_%K119782%_
                                _%ctx+d119791%_
                                (fx- _%phi119781%_ _%delta119779%_))))
                           _%$e119784%_)
                          (error '"Bad context" _%ctx119778%_))))))
          (let _%K119754%_ ((_%ctx119756%_ _%ctx119746%_)
                            (_%phi119757%_ _%phi119747%_))
            (if (fxzero? _%phi119757%_)
                _%ctx119756%_
                (if (##structure-instance-of? _%ctx119756%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi119757%_)
                        (let ((_%$e119761%_
                               (##unchecked-structure-ref
                                _%ctx119756%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e119761%_
                              ((lambda (_%g119763119765%_)
                                 (_%K119754%_
                                  _%g119763119765%_
                                  (##fx- _%phi119757%_ '1)))
                               _%$e119761%_)
                              (_%shift119752%_
                               _%ctx119756%_
                               '1
                               _%make-phi/up119750%_
                               _%phi119757%_
                               _%K119754%_)))
                        (let ((_%$e119769%_
                               (##unchecked-structure-ref
                                _%ctx119756%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e119769%_
                              ((lambda (_%g119771119773%_)
                                 (_%K119754%_
                                  _%g119771119773%_
                                  (##fx+ _%phi119757%_ '1)))
                               _%$e119769%_)
                              (_%shift119752%_
                               _%ctx119756%_
                               '-1
                               _%make-phi/down119751%_
                               _%phi119757%_
                               _%K119754%_))))
                    _%ctx119756%_))))))
    (define gx#core-context-get
      (lambda (_%ctx119743%_ _%key119744%_)
        (hash-get
         (##unchecked-structure-ref _%ctx119743%_ '2 '#f '#f)
         _%key119744%_)))
    (define gx#core-context-put!
      (lambda (_%ctx119739%_ _%key119740%_ _%val119741%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx119739%_ '2 '#f '#f)
         _%key119740%_
         _%val119741%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx119725%_ _%key119726%_)
        (let _%lp119728%_ ((_%ctx119730%_ _%ctx119725%_))
          (let ((_%$e119732%_
                 (gx#core-context-get _%ctx119730%_ _%key119726%_)))
            (if _%$e119732%_
                _%$e119732%_
                (let ((_%$e119735%_
                       (if (##structure-instance-of?
                            _%ctx119730%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx119730%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e119735%_ (_%lp119728%_ _%$e119735%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx119714%_ _%key119715%_ _%val119716%_ _%rebind119717%_)
        (let ((_%$e119719%_ (gx#core-context-get _%ctx119714%_ _%key119715%_)))
          (if _%$e119719%_
              ((lambda (_%xval119722%_)
                 (gx#core-context-put!
                  _%ctx119714%_
                  _%key119715%_
                  (_%rebind119717%_ _%xval119722%_)))
               _%$e119719%_)
              (gx#core-context-put!
               _%ctx119714%_
               _%key119715%_
               _%val119716%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx119689%_ _%stop?119690%_)
        (let _%lp119692%_ ((_%ctx119694%_ _%ctx119689%_))
          (if (_%stop?119690%_ _%ctx119694%_)
              _%ctx119694%_
              (if (##structure-instance-of? _%ctx119694%_ 'gx#phi-context::t)
                  (_%lp119692%_
                   (##unchecked-structure-ref _%ctx119694%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx119703%_ (gx#current-expander-context))
               (_%stop?119705%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119703%_ _%stop?119705%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx119707%_)
        (let ((_%stop?119709%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119707%_ _%stop?119709%_))))
    (define gx#core-context-top
      (lambda _g122549_
        (let ((_g122548_ (##length _g122549_)))
          (cond ((##fx= _g122548_ 0) (apply gx#core-context-top__0 _g122549_))
                ((##fx= _g122548_ 1) (apply gx#core-context-top__1 _g122549_))
                ((##fx= _g122548_ 2) (apply gx#core-context-top__% _g122549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g122549_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx119674%_)
        (let _%lp119676%_ ((_%ctx119678%_ _%ctx119674%_))
          (if (##structure-instance-of? _%ctx119678%_ 'gx#phi-context::t)
              (_%lp119676%_
               (##unchecked-structure-ref _%ctx119678%_ '3 '#f '#f))
              _%ctx119678%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx119684%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx119684%_))))
    (define gx#core-context-root
      (lambda _g122551_
        (let ((_g122550_ (##length _g122551_)))
          (cond ((##fx= _g122550_ 0) (apply gx#core-context-root__0 _g122551_))
                ((##fx= _g122550_ 1) (apply gx#core-context-root__% _g122551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g122551_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx119656%_ . _%ignore119657%_)
        (let ((_%$e119659%_ (gx#current-expander-allow-rebind?)))
          (if _%$e119659%_
              _%$e119659%_
              (if (##structure-instance-of? _%ctx119656%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx119656%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx119656%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx119666%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx119666%_))))
    (define gx#core-context-rebind?
      (lambda _g122553_
        (let ((_g122552_ (##length _g122553_)))
          (cond ((##fx= _g122552_ 0)
                 (apply gx#core-context-rebind?__0 _g122553_))
                ((##fx= _g122552_ 1)
                 (apply gx#core-context-rebind?__% _g122553_))
                ((##fx>= _g122552_ 1)
                 (apply gx#core-context-rebind?__% _g122553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g122553_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx119639%_)
        (let ((_%$e119641%_ (gx#core-context-top__1 _%ctx119639%_)))
          (if _%$e119641%_
              ((lambda (_%ctx119644%_)
                 (if (##structure-instance-of?
                      _%ctx119644%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx119644%_ '6 '#f '#f)
                     '#f))
               _%$e119641%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx119651%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx119651%_))))
    (define gx#core-context-namespace
      (lambda _g122555_
        (let ((_g122554_ (##length _g122555_)))
          (cond ((##fx= _g122554_ 0)
                 (apply gx#core-context-namespace__0 _g122555_))
                ((##fx= _g122554_ 1)
                 (apply gx#core-context-namespace__% _g122555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g122555_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind119625%_ _%is?119626%_)
        (if (##structure-direct-instance-of?
             _%bind119625%_
             'gx#syntax-binding::t)
            (_%is?119626%_
             (##unchecked-structure-ref _%bind119625%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind119631%_)
        (let ((_%is?119633%_ gx#expander?))
          (gx#expander-binding?__% _%bind119631%_ _%is?119633%_))))
    (define gx#expander-binding?
      (lambda _g122557_
        (let ((_g122556_ (##length _g122557_)))
          (cond ((##fx= _g122556_ 1) (apply gx#expander-binding?__0 _g122557_))
                ((##fx= _g122556_ 2) (apply gx#expander-binding?__% _g122557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g122557_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind119622%_)
        (gx#expander-binding?__% _%bind119622%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind119620%_)
        (gx#expander-binding?__% _%bind119620%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind119614%_)
        (letrec ((_%direct-special-form?119616%_
                  (lambda (_%obj119618%_)
                    (##structure-direct-instance-of?
                     _%obj119618%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind119614%_
           _%direct-special-form?119616%_))))
    (define gx#special-form-binding?
      (lambda (_%bind119612%_)
        (gx#expander-binding?__% _%bind119612%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind119603%_)
        (letrec ((_%feature?119605%_
                  (lambda (_%e119607%_)
                    (let ((_%$e119609%_
                           (##structure-instance-of?
                            _%e119607%_
                            'gx#feature-expander::t)))
                      (if _%$e119609%_
                          _%$e119609%_
                          (##structure-instance-of?
                           _%e119607%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind119603%_ _%feature?119605%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind119601%_)
        (gx#expander-binding?__% _%bind119601%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id119588%_ _%bound?119589%_)
        (if (gx#identifier? _%id119588%_)
            (_%bound?119589%_ (gx#resolve-identifier__0 _%id119588%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id119594%_)
        (let ((_%bound?119596%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id119594%_ _%bound?119596%_))))
    (define gx#core-bound-identifier?
      (lambda _g122559_
        (let ((_g122558_ (##length _g122559_)))
          (cond ((##fx= _g122558_ 1)
                 (apply gx#core-bound-identifier?__0 _g122559_))
                ((##fx= _g122558_ 2)
                 (apply gx#core-bound-identifier?__% _g122559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g122559_))))))
    (define gx#core-identifier=?
      (lambda (_%x119578%_ _%y119579%_)
        (letrec ((_%y=?119581%_
                  (lambda (_%xid119585%_)
                    ((if (list? _%y119579%_) memq eq?)
                     _%xid119585%_
                     _%y119579%_))))
          (let ((_%bind119583%_ (gx#resolve-identifier__0 _%x119578%_)))
            (if (##structure-instance-of? _%bind119583%_ 'gx#binding::t)
                (_%y=?119581%_
                 (##unchecked-structure-ref _%bind119583%_ '1 '#f '#f))
                (_%y=?119581%_ (gx#stx-e _%x119578%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e119576%_)
        (if (interned-symbol? _%e119576%_)
            (string-index__0 (symbol->string _%e119576%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx119529%_ _%src119530%_ _%ctx119531%_ _%marks119532%_)
        (if (##structure? _%stx119529%_)
            (let ((_%$e119534%_ (gx#sealed-syntax-unwrap _%stx119529%_)))
              (if _%$e119534%_
                  _%$e119534%_
                  (if (gx#identifier? _%stx119529%_)
                      (let ((_%id119538%_
                             (gx#stx-unwrap__% _%stx119529%_ _%marks119532%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id119538%_ '1 '#f '#f)
                         (let ((_%$e119540%_
                                (##unchecked-structure-ref
                                 _%id119538%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e119540%_ _%$e119540%_ _%src119530%_))
                         _%ctx119531%_
                         (##unchecked-structure-ref _%id119538%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx119529%_)
                       (let ((_%$e119544%_ (gx#stx-source _%stx119529%_)))
                         (if _%$e119544%_ _%$e119544%_ _%src119530%_))
                       _%ctx119531%_
                       (reverse _%marks119532%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx119529%_
             _%src119530%_
             _%ctx119531%_
             (reverse _%marks119532%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx119550%_)
        (let* ((_%src119552%_ '#f)
               (_%ctx119554%_ (gx#current-expander-context))
               (_%marks119556%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119550%_
           _%src119552%_
           _%ctx119554%_
           _%marks119556%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx119558%_ _%src119559%_)
        (let* ((_%ctx119561%_ (gx#current-expander-context))
               (_%marks119563%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119558%_
           _%src119559%_
           _%ctx119561%_
           _%marks119563%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx119565%_ _%src119566%_ _%ctx119567%_)
        (let ((_%marks119569%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119565%_
           _%src119566%_
           _%ctx119567%_
           _%marks119569%_))))
    (define gx#core-quote-syntax
      (lambda _g122561_
        (let ((_g122560_ (##length _g122561_)))
          (cond ((##fx= _g122560_ 1) (apply gx#core-quote-syntax__0 _g122561_))
                ((##fx= _g122560_ 2) (apply gx#core-quote-syntax__1 _g122561_))
                ((##fx= _g122560_ 3) (apply gx#core-quote-syntax__2 _g122561_))
                ((##fx= _g122560_ 4) (apply gx#core-quote-syntax__% _g122561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g122561_))))))
    (define gx#core-cons
      (lambda (_%hd119525%_ _%tl119526%_)
        (cons (gx#core-quote-syntax__0 _%hd119525%_) _%tl119526%_)))
    (define gx#core-list
      (lambda (_%hd119522%_ . _%rest119523%_)
        (cons (gx#core-quote-syntax__0 _%hd119522%_) _%rest119523%_)))
    (define gx#core-cons*
      (lambda (_%hd119519%_ . _%rest119520%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd119519%_) _%rest119520%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path119488%_ _%rel119489%_)
        (let ((_%path119506%_ (gx#stx-e _%stx-path119488%_))
              (_%reldir119507%_
               (let _%lp119491%_ ((_%relsrc119493%_
                                   (let ((_%$e119503%_
                                          (gx#stx-source _%stx-path119488%_)))
                                     (if _%$e119503%_
                                         _%$e119503%_
                                         _%rel119489%_))))
                 (if (##structure-instance-of? _%relsrc119493%_ 'gerbil#AST::t)
                     (_%lp119491%_
                      (let ((_%$e119496%_ (gx#stx-source _%relsrc119493%_)))
                        (if _%$e119496%_
                            _%$e119496%_
                            (gx#stx-e _%relsrc119493%_))))
                     (if (source-location-path? _%relsrc119493%_)
                         (path-directory
                          (source-location-path _%relsrc119493%_))
                         (if (string? _%relsrc119493%_)
                             (path-directory _%relsrc119493%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path119506%_ (path-normalize _%reldir119507%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path119512%_)
        (let ((_%rel119514%_ '#f))
          (gx#core-resolve-path__% _%stx-path119512%_ _%rel119514%_))))
    (define gx#core-resolve-path
      (lambda _g122563_
        (let ((_g122562_ (##length _g122563_)))
          (cond ((##fx= _g122562_ 1) (apply gx#core-resolve-path__0 _g122563_))
                ((##fx= _g122562_ 2) (apply gx#core-resolve-path__% _g122563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g122563_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr119444%_ _%ctx119445%_)
        (let* ((_%repr119446119453%_ _%repr119444%_)
               (_%E119448119457%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr119446119453%_
                         '([phi . subs]))
                  '#!void))
               (_%K119449119465%_
                (lambda (_%subs119460%_ _%phi119461%_)
                  (let ((_%subst119463%_
                         (if (null? _%subs119460%_)
                             '#f
                             (list->hash-table-eq _%subs119460%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst119463%_
                     _%ctx119445%_
                     _%phi119461%_
                     '#f)))))
          (if (pair? _%repr119446119453%_)
              (let ((_%hd119450119468%_ (##car _%repr119446119453%_))
                    (_%tl119451119470%_ (##cdr _%repr119446119453%_)))
                (let* ((_%phi119473%_ _%hd119450119468%_)
                       (_%subs119475%_ _%tl119451119470%_))
                  (_%K119449119465%_ _%subs119475%_ _%phi119473%_)))
              (_%E119448119457%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr119480%_)
        (let ((_%ctx119482%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr119480%_ _%ctx119482%_))))
    (define gx#core-deserialize-mark
      (lambda _g122565_
        (let ((_g122564_ (##length _g122565_)))
          (cond ((##fx= _g122564_ 1)
                 (apply gx#core-deserialize-mark__0 _g122565_))
                ((##fx= _g122564_ 2)
                 (apply gx#core-deserialize-mark__% _g122565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g122565_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx119441%_)
        (gx#stx-rewrap _%stx119441%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx119439%_)
        (gx#stx-unwrap__% _%stx119439%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx119409%_)
        (let* ((_%g119410119418%_ (gx#current-expander-marks))
               (_%else119412119426%_ (lambda () _%stx119409%_))
               (_%K119414119431%_
                (lambda (_%hd119429%_)
                  (gx#stx-apply-mark _%stx119409%_ _%hd119429%_))))
          (if (pair? _%g119410119418%_)
              (let* ((_%hd119415119434%_ (##car _%g119410119418%_))
                     (_%hd119437%_ _%hd119415119434%_))
                (_%K119414119431%_ _%hd119437%_))
              (_%else119412119426%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx119394%_ _%E119395%_)
        (let ((_%bind119397%_ (gx#resolve-identifier__0 _%stx119394%_)))
          (if (##structure-direct-instance-of?
               _%bind119397%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind119397%_ '4 '#f '#f)
              (_%E119395%_ _%stx119394%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx119402%_)
        (let ((_%E119404%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx119402%_ _%E119404%_))))
    (define gx#syntax-local-e
      (lambda _g122567_
        (let ((_g122566_ (##length _g122567_)))
          (cond ((##fx= _g122566_ 1) (apply gx#syntax-local-e__0 _g122567_))
                ((##fx= _g122566_ 2) (apply gx#syntax-local-e__% _g122567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g122567_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx119378%_ _%E119379%_)
        (let ((_%e119381%_ (gx#syntax-local-e__% _%stx119378%_ _%E119379%_)))
          (if (##structure-instance-of? _%e119381%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e119381%_ '1 '#f '#f)
              _%e119381%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx119386%_)
        (let ((_%E119388%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx119386%_ _%E119388%_))))
    (define gx#syntax-local-value
      (lambda _g122569_
        (let ((_g122568_ (##length _g122569_)))
          (cond ((##fx= _g122568_ 1)
                 (apply gx#syntax-local-value__0 _g122569_))
                ((##fx= _g122568_ 2)
                 (apply gx#syntax-local-value__% _g122569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g122569_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx119375%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx119375%_)))))
