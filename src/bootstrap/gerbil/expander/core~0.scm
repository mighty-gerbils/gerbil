(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1742226231)
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
      (lambda _%$args122532%_
        (apply make-instance gx#expander-context::t _%$args122532%_)))
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
      (lambda _%$args122529%_
        (apply make-instance gx#root-context::t _%$args122529%_)))
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
      (lambda _%$args122526%_
        (apply make-instance gx#phi-context::t _%$args122526%_)))
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
      (lambda _%$args122523%_
        (apply make-instance gx#top-context::t _%$args122523%_)))
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
      (lambda _%$args122520%_
        (apply make-instance gx#module-context::t _%$args122520%_)))
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
      (lambda _%$args122517%_
        (apply make-instance gx#prelude-context::t _%$args122517%_)))
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
      (lambda _%$args122514%_
        (apply make-instance gx#local-context::t _%$args122514%_)))
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
      (lambda (_%self119420122485%_ _%id122487%_ _%super122488%_)
        (let* ((_%self122490%_ _%self119420122485%_)
               (_%self122492%_ _%self122490%_))
          (if (##fx< '3 (##structure-length _%self122492%_))
              (begin
                (##unchecked-structure-set!
                 _%self122492%_
                 _%id122487%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122492%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122492%_
                 _%super122488%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122492%_
                     '3
                     (##structure-length _%self122492%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self119420122505%_ _%id122506%_)
        (let ((_%super122508%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self119420122505%_
           _%id122506%_
           _%super122508%_))))
    (define gx#phi-context:::init!
      (lambda _g122575_
        (let ((_g122574_ (##length _g122575_)))
          (cond ((##fx= _g122574_ 2)
                 (apply gx#phi-context:::init!__0 _g122575_))
                ((##fx= _g122574_ 3)
                 (apply gx#phi-context:::init!__% _g122575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g122575_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self119421122336%_ _%super122338%_)
        (let* ((_%self122340%_ _%self119421122336%_)
               (_%self122342%_ _%self122340%_))
          (if (##fx< '3 (##structure-length _%self122342%_))
              (begin
                (##unchecked-structure-set!
                 _%self122342%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122342%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122342%_
                 _%super122338%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122342%_
                     '3
                     (##structure-length _%self122342%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self119421122355%_)
        (let ((_%super122357%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self119421122355%_ _%super122357%_))))
    (define gx#local-context:::init!
      (lambda _g122577_
        (let ((_g122576_ (##length _g122577_)))
          (cond ((##fx= _g122576_ 1)
                 (apply gx#local-context:::init!__0 _g122577_))
                ((##fx= _g122576_ 2)
                 (apply gx#local-context:::init!__% _g122577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g122577_))))))
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
      (lambda _%$args122210%_
        (apply make-instance gx#binding::t _%$args122210%_)))
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
      (lambda _%$args122207%_
        (apply make-instance gx#runtime-binding::t _%$args122207%_)))
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
      (lambda _%$args122204%_
        (apply make-instance gx#local-binding::t _%$args122204%_)))
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
      (lambda _%$args122201%_
        (apply make-instance gx#top-binding::t _%$args122201%_)))
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
      (lambda _%$args122198%_
        (apply make-instance gx#module-binding::t _%$args122198%_)))
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
      (lambda _%$args122195%_
        (apply make-instance gx#extern-binding::t _%$args122195%_)))
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
      (lambda _%$args122192%_
        (apply make-instance gx#syntax-binding::t _%$args122192%_)))
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
      (lambda _%$args122189%_
        (apply make-instance gx#import-binding::t _%$args122189%_)))
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
      (lambda _%$args122186%_
        (apply make-instance gx#alias-binding::t _%$args122186%_)))
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
      (lambda _%$args122183%_
        (apply make-instance gx#expander::t _%$args122183%_)))
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
      (lambda _%$args122180%_
        (apply make-instance gx#core-expander::t _%$args122180%_)))
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
      (lambda _%$args122177%_
        (apply make-instance gx#expression-form::t _%$args122177%_)))
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
      (lambda _%$args122174%_
        (apply make-instance gx#special-form::t _%$args122174%_)))
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
      (lambda _%$args122171%_
        (apply make-instance gx#definition-form::t _%$args122171%_)))
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
      (lambda _%$args122168%_
        (apply make-instance gx#top-special-form::t _%$args122168%_)))
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
      (lambda _%$args122165%_
        (apply make-instance gx#module-special-form::t _%$args122165%_)))
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
      (lambda _%$args122162%_
        (apply make-instance gx#feature-expander::t _%$args122162%_)))
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
      (lambda _%$args122159%_
        (apply make-instance gx#private-feature-expander::t _%$args122159%_)))
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
      (lambda _%$args122156%_
        (apply make-instance gx#reserved-expander::t _%$args122156%_)))
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
      (lambda _%$args122153%_
        (apply make-instance gx#macro-expander::t _%$args122153%_)))
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
      (lambda _%$args122150%_
        (apply make-instance gx#rename-macro-expander::t _%$args122150%_)))
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
      (lambda _%$args122147%_
        (apply make-instance gx#user-expander::t _%$args122147%_)))
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
      (lambda _%$args122144%_
        (apply make-instance gx#expander-mark::t _%$args122144%_)))
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
      (lambda (_%ctx122128%_
               _%message122129%_
               _%stx122130%_
               .
               _%details122131%_)
        (let ((_%ctx122142%_
               (let ((_%$e122133%_ _%ctx122128%_))
                 (if _%$e122133%_
                     _%$e122133%_
                     (let ((_%$e122136%_ (gx#core-context-top__0)))
                       (if _%$e122136%_
                           ((lambda (_%ctx122139%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx122139%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e122136%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message122129%_
                  (cons _%stx122130%_ _%details122131%_)
                  _%ctx122142%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx122115%_ _%expression?122116%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx122115%_ _%expression?122116%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx122121%_)
        (let ((_%expression?122123%_ '#f))
          (gx#eval-syntax__% _%stx122121%_ _%expression?122123%_))))
    (define gx#eval-syntax
      (lambda _g122579_
        (let ((_g122578_ (##length _g122579_)))
          (cond ((##fx= _g122578_ 1) (apply gx#eval-syntax__0 _g122579_))
                ((##fx= _g122578_ 2) (apply gx#eval-syntax__% _g122579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g122579_))))))
    (define gx#eval-syntax*
      (lambda (_%stx122112%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx122112%_))))
    (define gx#core-expand__%
      (lambda (_%stx122099%_ _%expression?122100%_)
        (if _%expression?122100%_
            (gx#core-expand-expression _%stx122099%_)
            (gx#core-expand-top _%stx122099%_))))
    (define gx#core-expand__0
      (lambda (_%stx122105%_)
        (let ((_%expression?122107%_ '#f))
          (gx#core-expand__% _%stx122105%_ _%expression?122107%_))))
    (define gx#core-expand
      (lambda _g122581_
        (let ((_g122580_ (##length _g122581_)))
          (cond ((##fx= _g122580_ 1) (apply gx#core-expand__0 _g122581_))
                ((##fx= _g122580_ 2) (apply gx#core-expand__% _g122581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g122581_))))))
    (define gx#core-expand-top
      (lambda (_%stx122066%_)
        (let* ((_%stx122068%_ (gx#core-expand*__0 _%stx122066%_))
               (_%e122069122076%_ _%stx122068%_)
               (_%E122071122080%_
                (lambda () (gx#core-expand-expression _%stx122068%_)))
               (_%E122070122094%_
                (lambda ()
                  (if (gx#stx-pair? _%e122069122076%_)
                      (let ((_%e122072122084%_
                             (gx#syntax-e _%e122069122076%_)))
                        (let ((_%hd122073122087%_ (##car _%e122072122084%_))
                              (_%tl122074122089%_ (##cdr _%e122072122084%_)))
                          (let ((_%form122092%_ _%hd122073122087%_))
                            (if (gx#core-bound-identifier?__0 _%form122092%_)
                                _%stx122068%_
                                (_%E122071122080%_)))))
                      (_%E122071122080%_)))))
          (_%E122070122094%_))))
    (define gx#core-expand-expression
      (lambda (_%stx121998%_)
        (letrec ((_%sealed-expression?122000%_
                  (lambda (_%hd122036%_)
                    (if (gx#sealed-syntax? _%hd122036%_)
                        (let* ((_%e122037122044%_ _%hd122036%_)
                               (_%E122039122048%_ (lambda () '#f))
                               (_%E122038122062%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e122037122044%_)
                                      (let ((_%e122040122052%_
                                             (gx#syntax-e _%e122037122044%_)))
                                        (let ((_%hd122041122055%_
                                               (##car _%e122040122052%_))
                                              (_%tl122042122057%_
                                               (##cdr _%e122040122052%_)))
                                          (let ((_%form122060%_
                                                 _%hd122041122055%_))
                                            (gx#core-bound-identifier?__%
                                             _%form122060%_
                                             gx#expression-form-binding?))))
                                      (_%E122039122048%_)))))
                          (_%E122038122062%_))
                        '#f)))
                 (_%illegal-expression122001%_
                  (lambda (_%hd122033%_ . _%_122034%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx121998%_
                     _%hd122033%_)))
                 (_%expand-e122002%_
                  (lambda (_%form122025%_ _%hd122026%_)
                    (let ((_%bind122028%_
                           (if (##structure-instance-of?
                                _%form122025%_
                                'gx#binding::t)
                               _%form122025%_
                               (gx#resolve-identifier__0 _%form122025%_))))
                      (if (gx#core-expander-binding? _%bind122028%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind122028%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd122026%_
                            (gx#stx-source _%stx121998%_)))
                          (if (##structure-direct-instance-of?
                               _%bind122028%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind122028%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd122026%_
                                 (gx#stx-source _%stx121998%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx121998%_
                               _%form122025%_)))))))
          (let ((_%hd122004%_ (gx#core-expand-head _%stx121998%_)))
            (if (_%sealed-expression?122000%_ _%hd122004%_)
                _%hd122004%_
                (if (gx#stx-pair? _%hd122004%_)
                    (let* ((_%form122008%_ (gx#stx-car _%hd122004%_))
                           (_%bind122010%_
                            (if (gx#identifier? _%form122008%_)
                                (gx#resolve-identifier__0 _%form122008%_)
                                '#f)))
                      (if (or (not _%bind122010%_)
                              (not (gx#core-expander-binding? _%bind122010%_)))
                          (_%expand-e122002%_
                           '%%app
                           (cons '%%app _%hd122004%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind122010%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd122004%_
                               _%illegal-expression122001%_)
                              (if (gx#expression-form-binding? _%bind122010%_)
                                  (_%expand-e122002%_
                                   _%bind122010%_
                                   _%hd122004%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind122010%_)
                                      (gx#core-expand-expression
                                       (_%expand-e122002%_
                                        _%bind122010%_
                                        _%hd122004%_))
                                      (_%illegal-expression122001%_
                                       _%hd122004%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd122004%_)
                        (_%illegal-expression122001%_ _%hd122004%_)
                        (if (gx#identifier? _%hd122004%_)
                            (_%expand-e122002%_
                             '%%ref
                             (cons '%%ref (cons _%hd122004%_ '())))
                            (if (gx#stx-datum? _%hd122004%_)
                                (_%expand-e122002%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd122004%_ '())))
                                (_%illegal-expression122001%_
                                 _%hd122004%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx121993%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx121996%_ (gx#core-expand-expression _%stx121993%_)))
             (values _%stx121996%_ (gx#eval-syntax* _%stx121996%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx121974%_ _%stop?121975%_)
        (let _%lp121977%_ ((_%stx121979%_ _%stx121974%_))
          (if (_%stop?121975%_ _%stx121979%_)
              _%stx121979%_
              (let ((_%rstx121981%_ (gx#core-expand1 _%stx121979%_)))
                (if (eq? _%stx121979%_ _%rstx121981%_)
                    _%stx121979%_
                    (_%lp121977%_ _%rstx121981%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx121986%_)
        (let ((_%stop?121988%_ false))
          (gx#core-expand*__% _%stx121986%_ _%stop?121988%_))))
    (define gx#core-expand*
      (lambda _g122583_
        (let ((_g122582_ (##length _g122583_)))
          (cond ((##fx= _g122582_ 1) (apply gx#core-expand*__0 _g122583_))
                ((##fx= _g122582_ 2) (apply gx#core-expand*__% _g122583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g122583_))))))
    (define gx#core-expand1
      (lambda (_%stx121926%_)
        (letrec ((_%step121928%_
                  (lambda (_%hd121965%_)
                    (let ((_%bind121967%_
                           (gx#resolve-identifier__0 _%hd121965%_)))
                      (if (##structure-instance-of?
                           _%bind121967%_
                           'gx#runtime-binding::t)
                          _%stx121926%_
                          (if (##structure-direct-instance-of?
                               _%bind121967%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind121967%_
                                '4
                                '#f
                                '#f)
                               _%stx121926%_)
                              (if (not _%bind121967%_)
                                  _%stx121926%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx121926%_))))))))
          (let* ((_%e121929121937%_ _%stx121926%_)
                 (_%E121935121941%_ (lambda () _%stx121926%_))
                 (_%E121931121947%_
                  (lambda ()
                    (let ((_%hd121945%_ _%e121929121937%_))
                      (if (gx#identifier? _%hd121945%_)
                          (_%step121928%_ _%hd121945%_)
                          (_%E121935121941%_)))))
                 (_%E121930121961%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121929121937%_)
                        (let ((_%e121932121951%_
                               (gx#syntax-e _%e121929121937%_)))
                          (let ((_%hd121933121954%_ (##car _%e121932121951%_))
                                (_%tl121934121956%_ (##cdr _%e121932121951%_)))
                            (let ((_%hd121959%_ _%hd121933121954%_))
                              (if (gx#identifier? _%hd121959%_)
                                  (_%step121928%_ _%hd121959%_)
                                  (_%E121931121947%_)))))
                        (_%E121931121947%_)))))
            (_%E121930121961%_)))))
    (define gx#core-expand-head
      (lambda (_%stx121892%_)
        (letrec ((_%stop?121894%_
                  (lambda (_%stx121896%_)
                    (let* ((_%e121897121904%_ _%stx121896%_)
                           (_%E121899121908%_ (lambda () '#f))
                           (_%E121898121922%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121897121904%_)
                                  (let ((_%e121900121912%_
                                         (gx#syntax-e _%e121897121904%_)))
                                    (let ((_%hd121901121915%_
                                           (##car _%e121900121912%_))
                                          (_%tl121902121917%_
                                           (##cdr _%e121900121912%_)))
                                      (let ((_%hd121920%_ _%hd121901121915%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd121920%_))))
                                  (_%E121899121908%_)))))
                      (_%E121898121922%_)))))
          (gx#core-expand*__% _%stx121892%_ _%stop?121894%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx121698%_
               _%expand-special121699%_
               _%begin-form121700%_
               _%expand-e121701%_)
        (letrec ((_%expand-splice121703%_
                  (lambda (_%hd121866%_
                           _%body121867%_
                           _%rest121868%_
                           _%r121869%_)
                    (if (gx#stx-list? _%body121867%_)
                        (_%K121707%_
                         (gx#stx-foldr cons _%rest121868%_ _%body121867%_)
                         _%r121869%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx121698%_
                         _%hd121866%_))))
                 (_%expand-cond-expand121704%_
                  (lambda (_%hd121862%_ _%rest121863%_ _%r121864%_)
                    (_%K121707%_
                     (cons (gx#core-expand-cond-expand% _%hd121862%_)
                           _%rest121863%_)
                     _%r121864%_)))
                 (_%expand-include121705%_
                  (lambda (_%hd121811%_ _%rest121812%_ _%r121813%_)
                    (let* ((_%e121814121824%_ _%hd121811%_)
                           (_%E121816121828%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121814121824%_)))
                           (_%E121815121858%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121814121824%_)
                                  (let ((_%e121817121832%_
                                         (gx#syntax-e _%e121814121824%_)))
                                    (let ((_%hd121818121835%_
                                           (##car _%e121817121832%_))
                                          (_%tl121819121837%_
                                           (##cdr _%e121817121832%_)))
                                      (if (gx#stx-pair? _%tl121819121837%_)
                                          (let ((_%e121820121840%_
                                                 (gx#syntax-e
                                                  _%tl121819121837%_)))
                                            (let ((_%hd121821121843%_
                                                   (##car _%e121820121840%_))
                                                  (_%tl121822121845%_
                                                   (##cdr _%e121820121840%_)))
                                              (let ((_%path121848%_
                                                     _%hd121821121843%_))
                                                (if (gx#stx-null?
                                                     _%tl121822121845%_)
                                                    (if (gx#stx-string?
                                                         _%path121848%_)
                                                        (let* ((_%rpath121850%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path121848%_
                         (gx#stx-source _%hd121811%_)))
                       (_%block121852%_
                        (gx#core-expand-include%__%
                         _%hd121811%_
                         _%rpath121850%_))
                       (_%rbody121855%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block121852%_
                            _%expand-special121699%_
                            '#f
                            _%expand-e121701%_))
                         gx#current-expander-path
                         (cons _%rpath121850%_ (gx#current-expander-path)))))
                  (_%K121707%_
                   _%rest121812%_
                   (__foldr1 cons _%r121813%_ _%rbody121855%_)))
                (_%E121816121828%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121816121828%_)))))
                                          (_%E121816121828%_))))
                                  (_%E121816121828%_)))))
                      (_%E121815121858%_))))
                 (_%expand-expression121706%_
                  (lambda (_%hd121807%_ _%rest121808%_ _%r121809%_)
                    (_%K121707%_
                     _%rest121808%_
                     (cons (_%expand-e121701%_ _%hd121807%_) _%r121809%_))))
                 (_%K121707%_
                  (lambda (_%rest121737%_ _%r121738%_)
                    (let* ((_%e121739121746%_ _%rest121737%_)
                           (_%E121741121750%_
                            (lambda ()
                              (if _%begin-form121700%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form121700%_
                                    (reverse _%r121738%_))
                                   (gx#stx-source _%stx121698%_))
                                  _%r121738%_)))
                           (_%E121740121803%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121739121746%_)
                                  (let ((_%e121742121754%_
                                         (gx#syntax-e _%e121739121746%_)))
                                    (let ((_%hd121743121757%_
                                           (##car _%e121742121754%_))
                                          (_%tl121744121759%_
                                           (##cdr _%e121742121754%_)))
                                      (let* ((_%hd121762%_ _%hd121743121757%_)
                                             (_%rest121764%_
                                              _%tl121744121759%_)
                                             (_%hd121766%_
                                              (gx#core-expand-head
                                               _%hd121762%_))
                                             (_%e121767121774%_ _%hd121766%_)
                                             (_%E121769121778%_
                                              (lambda ()
                                                (_%expand-expression121706%_
                                                 _%hd121766%_
                                                 _%rest121764%_
                                                 _%r121738%_)))
                                             (_%E121768121799%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121767121774%_)
                                                    (let ((_%e121770121782%_
                                                           (gx#syntax-e
                                                            _%e121767121774%_)))
                                                      (let ((_%hd121771121785%_
                                                             (##car _%e121770121782%_))
                                                            (_%tl121772121787%_
                                                             (##cdr _%e121770121782%_)))
                                                        (let* ((_%form121790%_
                                                                _%hd121771121785%_)
                                                               (_%body121792%_
                                                                _%tl121772121787%_)
                                                               (_%bind121794%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form121790%_)
                            (gx#resolve-identifier__0 _%form121790%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind121794%_)
                      (let ((_%$e121796%_
                             (##unchecked-structure-ref
                              _%bind121794%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e121796%_)
                            (_%expand-splice121703%_
                             _%hd121766%_
                             _%body121792%_
                             _%rest121764%_
                             _%r121738%_)
                            (if (eq? '%#cond-expand _%$e121796%_)
                                (_%expand-cond-expand121704%_
                                 _%hd121766%_
                                 _%rest121764%_
                                 _%r121738%_)
                                (if (eq? '%#include _%$e121796%_)
                                    (_%expand-include121705%_
                                     _%hd121766%_
                                     _%rest121764%_
                                     _%r121738%_)
                                    (_%expand-special121699%_
                                     _%hd121766%_
                                     _%K121707%_
                                     _%rest121764%_
                                     _%r121738%_)))))
                      (_%expand-expression121706%_
                       _%hd121766%_
                       _%rest121764%_
                       _%r121738%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121769121778%_)))))
                                        (_%E121768121799%_))))
                                  (_%E121741121750%_)))))
                      (_%E121740121803%_)))))
          (let* ((_%e121708121715%_ _%stx121698%_)
                 (_%E121710121719%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121708121715%_)))
                 (_%E121709121733%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121708121715%_)
                        (let ((_%e121711121723%_
                               (gx#syntax-e _%e121708121715%_)))
                          (let ((_%hd121712121726%_ (##car _%e121711121723%_))
                                (_%tl121713121728%_ (##cdr _%e121711121723%_)))
                            (let ((_%body121731%_ _%tl121713121728%_))
                              (if (gx#stx-list? _%body121731%_)
                                  (_%K121707%_ _%body121731%_ '())
                                  (_%E121710121719%_)))))
                        (_%E121710121719%_)))))
            (_%E121709121733%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx121874%_ _%expand-special121875%_)
        (let* ((_%begin-form121877%_ '%#begin)
               (_%expand-e121879%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121874%_
           _%expand-special121875%_
           _%begin-form121877%_
           _%expand-e121879%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx121881%_ _%expand-special121882%_ _%begin-form121883%_)
        (let ((_%expand-e121885%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121881%_
           _%expand-special121882%_
           _%begin-form121883%_
           _%expand-e121885%_))))
    (define gx#core-expand-block
      (lambda _g122585_
        (let ((_g122584_ (##length _g122585_)))
          (cond ((##fx= _g122584_ 2) (apply gx#core-expand-block__0 _g122585_))
                ((##fx= _g122584_ 3) (apply gx#core-expand-block__1 _g122585_))
                ((##fx= _g122584_ 4) (apply gx#core-expand-block__% _g122585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g122585_))))))
    (define gx#core-expand-block*
      (lambda (_%stx121646%_ _%expand-special121647%_)
        (let* ((_%g121648121659%_
                (gx#core-expand-block__1
                 _%stx121646%_
                 _%expand-special121647%_
                 '#f))
               (_%E121652121663%_
                (lambda ()
                  (error '"No clause matching"
                         _%g121648121659%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K121657121694%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx121646%_)))
                (_%K121654121680%_ (lambda (_%expr121678%_) _%expr121678%_))
                (_%K121653121669%_
                 (lambda (_%body121667%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body121667%_))
                    (gx#stx-source _%stx121646%_)))))
            (let ((_%try-match121650121690%_
                   (lambda ()
                     (if (pair? _%g121648121659%_)
                         (let ((_%tl121656121685%_ (##cdr _%g121648121659%_))
                               (_%hd121655121683%_ (##car _%g121648121659%_)))
                           (if (null? _%tl121656121685%_)
                               (let ((_%expr121688%_ _%hd121655121683%_))
                                 (_%K121654121680%_ _%expr121688%_))
                               (let ((_%body121672%_ _%g121648121659%_))
                                 (_%K121653121669%_ _%body121672%_))))
                         (let ((_%body121672%_ _%g121648121659%_))
                           (_%K121653121669%_ _%body121672%_))))))
              (if (null? _%g121648121659%_)
                  (_%K121657121694%_)
                  (_%try-match121650121690%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx121471%_)
        (letrec ((_%satisfied?121473%_
                  (lambda (_%condition121574%_)
                    (let* ((_%e121575121590%_ _%condition121574%_)
                           (_%E121585121594%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121575121590%_)))
                           (_%E121578121613%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121575121590%_)
                                  (let ((_%e121586121598%_
                                         (gx#syntax-e _%e121575121590%_)))
                                    (let ((_%hd121587121601%_
                                           (##car _%e121586121598%_))
                                          (_%tl121588121603%_
                                           (##cdr _%e121586121598%_)))
                                      (let* ((_%combinator121606%_
                                              _%hd121587121601%_)
                                             (_%body121608%_
                                              _%tl121588121603%_))
                                        (if (gx#stx-list? _%body121608%_)
                                            (let ((_%$e121610%_
                                                   (gx#stx-e
                                                    _%combinator121606%_)))
                                              (if (eq? 'not _%$e121610%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?121473%_
                                                        _%body121608%_))
                                                  (if (eq? 'and _%$e121610%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?121473%_
                                                       _%body121608%_)
                                                      (if (eq? 'or
                                                               _%$e121610%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?121473%_
                                                           _%body121608%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e121610%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body121608%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx121471%_
                       _%combinator121606%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E121585121594%_)))))
                                  (_%E121585121594%_))))
                           (_%E121577121636%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121575121590%_)
                                  (let ((_%e121579121617%_
                                         (gx#syntax-e _%e121575121590%_)))
                                    (let ((_%hd121580121620%_
                                           (##car _%e121579121617%_))
                                          (_%tl121581121622%_
                                           (##cdr _%e121579121617%_)))
                                      (if (and (gx#identifier?
                                                _%hd121580121620%_)
                                               (gx#core-identifier=?
                                                _%hd121580121620%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl121581121622%_)
                                              (let ((_%e121582121625%_
                                                     (gx#syntax-e
                                                      _%tl121581121622%_)))
                                                (let ((_%hd121583121628%_
                                                       (##car _%e121582121625%_))
                                                      (_%tl121584121630%_
                                                       (##cdr _%e121582121625%_)))
                                                  (let ((_%expr121633%_
                                                         _%hd121583121628%_))
                                                    (if (gx#stx-null?
                                                         _%tl121584121630%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr121633%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E121578121613%_)))))
                                              (_%E121578121613%_))
                                          (_%E121578121613%_))))
                                  (_%E121578121613%_))))
                           (_%E121576121642%_
                            (lambda ()
                              (let ((_%id121640%_ _%e121575121590%_))
                                (if (gx#identifier? _%id121640%_)
                                    (gx#core-bound-identifier?__%
                                     _%id121640%_
                                     gx#feature-binding?)
                                    (_%E121577121636%_))))))
                      (_%E121576121642%_))))
                 (_%loop121474%_
                  (lambda (_%rest121504%_)
                    (let* ((_%e121505121513%_ _%rest121504%_)
                           (_%E121511121517%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121505121513%_)))
                           (_%E121507121521%_
                            (lambda ()
                              (if (gx#stx-null? _%e121505121513%_)
                                  '()
                                  (_%E121511121517%_))))
                           (_%E121506121570%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121505121513%_)
                                  (let ((_%e121508121525%_
                                         (gx#syntax-e _%e121505121513%_)))
                                    (let ((_%hd121509121528%_
                                           (##car _%e121508121525%_))
                                          (_%tl121510121530%_
                                           (##cdr _%e121508121525%_)))
                                      (let* ((_%hd121533%_ _%hd121509121528%_)
                                             (_%rest121535%_
                                              _%tl121510121530%_)
                                             (_%e121536121543%_ _%hd121533%_)
                                             (_%E121538121547%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e121536121543%_)))
                                             (_%E121537121566%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121536121543%_)
                                                    (let ((_%e121539121551%_
                                                           (gx#syntax-e
                                                            _%e121536121543%_)))
                                                      (let ((_%hd121540121554%_
                                                             (##car _%e121539121551%_))
                                                            (_%tl121541121556%_
                                                             (##cdr _%e121539121551%_)))
                                                        (let* ((_%condition121559%_
                                                                _%hd121540121554%_)
                                                               (_%body121561%_
                                                                _%tl121541121556%_))
                                                          (if (gx#stx-eq?
                                                               _%condition121559%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest121535%_)
                          _%body121561%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx121471%_
                           _%hd121533%_))
                      (if (_%satisfied?121473%_ _%condition121559%_)
                          _%body121561%_
                          (_%loop121474%_ _%rest121535%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121538121547%_)))))
                                        (_%E121537121566%_))))
                                  (_%E121507121521%_)))))
                      (_%E121506121570%_)))))
          (let* ((_%e121475121482%_ _%stx121471%_)
                 (_%E121477121486%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121475121482%_)))
                 (_%E121476121500%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121475121482%_)
                        (let ((_%e121478121490%_
                               (gx#syntax-e _%e121475121482%_)))
                          (let ((_%hd121479121493%_ (##car _%e121478121490%_))
                                (_%tl121480121495%_ (##cdr _%e121478121490%_)))
                            (let ((_%clauses121498%_ _%tl121480121495%_))
                              (if (gx#stx-list? _%clauses121498%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop121474%_ _%clauses121498%_))
                                  (_%E121477121486%_)))))
                        (_%E121477121486%_)))))
            (_%E121476121500%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx121414%_ _%rpath121415%_)
        (let* ((_%e121416121426%_ _%stx121414%_)
               (_%E121418121430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121416121426%_)))
               (_%E121417121457%_
                (lambda ()
                  (if (gx#stx-pair? _%e121416121426%_)
                      (let ((_%e121419121434%_
                             (gx#syntax-e _%e121416121426%_)))
                        (let ((_%hd121420121437%_ (##car _%e121419121434%_))
                              (_%tl121421121439%_ (##cdr _%e121419121434%_)))
                          (if (gx#stx-pair? _%tl121421121439%_)
                              (let ((_%e121422121442%_
                                     (gx#syntax-e _%tl121421121439%_)))
                                (let ((_%hd121423121445%_
                                       (##car _%e121422121442%_))
                                      (_%tl121424121447%_
                                       (##cdr _%e121422121442%_)))
                                  (let ((_%path121450%_ _%hd121423121445%_))
                                    (if (gx#stx-null? _%tl121424121447%_)
                                        (if (gx#stx-string? _%path121450%_)
                                            (let ((_%rpath121455%_
                                                   (let ((_%$e121452%_
                                                          _%rpath121415%_))
                                                     (if _%$e121452%_
                                                         _%$e121452%_
                                                         (gx#core-resolve-path__%
                                                          _%path121450%_
                                                          (gx#stx-source
                                                           _%stx121414%_))))))
                                              (if (member _%rpath121455%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx121414%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath121455%_))
                                                    (gx#stx-source
                                                     _%stx121414%_)))))
                                            (_%E121418121430%_))
                                        (_%E121418121430%_)))))
                              (_%E121418121430%_))))
                      (_%E121418121430%_)))))
          (_%E121417121457%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx121464%_)
        (let ((_%rpath121466%_ '#f))
          (gx#core-expand-include%__% _%stx121464%_ _%rpath121466%_))))
    (define gx#core-expand-include%
      (lambda _g122587_
        (let ((_g122586_ (##length _g122587_)))
          (cond ((##fx= _g122586_ 1)
                 (apply gx#core-expand-include%__0 _g122587_))
                ((##fx= _g122586_ 2)
                 (apply gx#core-expand-include%__% _g122587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g122587_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K121380%_ _%stx121381%_ _%method121382%_)
        (if (procedure? _%K121380%_)
            (let ((_%$e121385%_ (gx#stx-source _%stx121381%_)))
              (if _%$e121385%_
                  ((lambda (_%g121387121389%_)
                     (gx#stx-wrap-source
                      (_%K121380%_ _%stx121381%_)
                      _%g121387121389%_))
                   _%$e121385%_)
                  (_%K121380%_ _%stx121381%_)))
            (let ((_%$e121393%_
                   (bound-method-ref _%K121380%_ _%method121382%_)))
              (if _%$e121393%_
                  ((lambda (_%g121395121397%_)
                     (gx#core-apply-expander__%
                      _%g121395121397%_
                      _%stx121381%_
                      _%method121382%_))
                   _%$e121393%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx121381%_
                   _%method121382%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K121404%_ _%stx121405%_)
        (let ((_%method121407%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K121404%_
           _%stx121405%_
           _%method121407%_))))
    (define gx#core-apply-expander
      (lambda _g122589_
        (let ((_g122588_ (##length _g122589_)))
          (cond ((##fx= _g122588_ 2)
                 (apply gx#core-apply-expander__0 _g122589_))
                ((##fx= _g122588_ 3)
                 (apply gx#core-apply-expander__% _g122589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g122589_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self119422121363%_ _%stx121365%_)
        (let* ((_%self121367%_ _%self119422121363%_)
               (_%self121369%_ _%self121367%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx121365%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self119423121203%_ _%stx121205%_)
        (let* ((_%self121207%_ _%self119423121203%_)
               (_%self121209%_ _%self121207%_)
               (_%self121218121224%_ _%self121209%_)
               (_%E121220121228%_
                (lambda ()
                  (error '"No clause matching"
                         _%self121218121224%_
                         '((macro-expander K)))
                  '#!void))
               (_%K121221121233%_
                (lambda (_%K121231%_)
                  (gx#core-apply-expander__0 _%K121231%_ _%stx121205%_)))
               (_%e121222121236%_
                (##unchecked-structure-ref _%self121218121224%_ '1 '#f '#f))
               (_%K121239%_ _%e121222121236%_))
          (_%K121221121233%_ _%K121239%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self119424121043%_ _%stx121045%_)
        (let* ((_%self121047%_ _%self119424121043%_)
               (_%self121049%_ _%self121047%_))
          (if (gx#sealed-syntax? _%stx121045%_)
              _%stx121045%_
              (let* ((_%self121058121064%_ _%self121049%_)
                     (_%E121060121068%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self121058121064%_
                               '((core-expander K)))
                        '#!void))
                     (_%K121061121073%_
                      (lambda (_%K121071%_)
                        (gx#core-apply-expander__0 _%K121071%_ _%stx121045%_)))
                     (_%e121062121076%_
                      (##unchecked-structure-ref
                       _%self121058121064%_
                       '1
                       '#f
                       '#f))
                     (_%K121079%_ _%e121062121076%_))
                (_%K121061121073%_ _%K121079%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self119425120892%_ _%stx120894%_ _%top?120895%_)
        (let* ((_%self120897%_ _%self119425120892%_)
               (_%self120899%_ _%self120897%_))
          (if (_%top?120895%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self120899%_
               _%stx120894%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx120894%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self119425120912%_ _%stx120913%_)
        (let ((_%top?120915%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self119425120912%_
           _%stx120913%_
           _%top?120915%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g122591_
        (let ((_g122590_ (##length _g122591_)))
          (cond ((##fx= _g122590_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g122591_))
                ((##fx= _g122590_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g122591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g122591_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self119426120753%_ _%stx120755%_)
        (let* ((_%self120757%_ _%self119426120753%_)
               (_%self120759%_ _%self120757%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self120759%_
           _%stx120755%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self119427120565%_ _%stx120567%_)
        (let* ((_%self120569%_ _%self119427120565%_)
               (_%self120571%_ _%self120569%_)
               (_%self120580120586%_ _%self120571%_)
               (_%E120582120590%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120580120586%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K120583120623%_
                (lambda (_%id120593%_)
                  (let* ((_%e120594120601%_ _%stx120567%_)
                         (_%E120596120605%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e120594120601%_)))
                         (_%E120595120619%_
                          (lambda ()
                            (if (gx#stx-pair? _%e120594120601%_)
                                (let ((_%e120597120609%_
                                       (gx#syntax-e _%e120594120601%_)))
                                  (let ((_%hd120598120612%_
                                         (##car _%e120597120609%_))
                                        (_%tl120599120614%_
                                         (##cdr _%e120597120609%_)))
                                    (let ((_%body120617%_ _%tl120599120614%_))
                                      (gx#core-cons
                                       _%id120593%_
                                       _%body120617%_))))
                                (_%E120596120605%_)))))
                    (_%E120595120619%_))))
               (_%e120584120626%_
                (##unchecked-structure-ref _%self120580120586%_ '1 '#f '#f))
               (_%id120629%_ _%e120584120626%_))
          (_%K120583120623%_ _%id120629%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self120391%_ _%stx120392%_ _%method120393%_)
        (let* ((_%self120394120402%_ _%self120391%_)
               (_%E120396120406%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120394120402%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K120397120413%_
                (lambda (_%phi120409%_ _%ctx120410%_ _%K120411%_)
                  (gx#core-apply-user-macro
                   _%K120411%_
                   _%stx120392%_
                   _%ctx120410%_
                   _%phi120409%_
                   _%method120393%_))))
          (if (##structure-instance-of?
               _%self120394120402%_
               'gx#user-expander::t)
              (let* ((_%e120398120416%_
                      (##unchecked-structure-ref
                       _%self120394120402%_
                       '1
                       '#f
                       '#f))
                     (_%K120419%_ _%e120398120416%_)
                     (_%e120399120421%_
                      (##unchecked-structure-ref
                       _%self120394120402%_
                       '2
                       '#f
                       '#f))
                     (_%ctx120424%_ _%e120399120421%_)
                     (_%e120400120426%_
                      (##unchecked-structure-ref
                       _%self120394120402%_
                       '3
                       '#f
                       '#f))
                     (_%phi120429%_ _%e120400120426%_))
                (_%K120397120413%_ _%phi120429%_ _%ctx120424%_ _%K120419%_))
              (_%E120396120406%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self120434%_ _%stx120435%_)
        (let ((_%method120437%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self120434%_
           _%stx120435%_
           _%method120437%_))))
    (define gx#core-apply-user-expander
      (lambda _g122593_
        (let ((_g122592_ (##length _g122593_)))
          (cond ((##fx= _g122592_ 2)
                 (apply gx#core-apply-user-expander__0 _g122593_))
                ((##fx= _g122592_ 3)
                 (apply gx#core-apply-user-expander__% _g122593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g122593_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K120381%_
               _%stx120382%_
               _%ctx120383%_
               _%phi120384%_
               _%method120385%_)
        (let ((_%mark120387%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx120383%_
                _%phi120384%_
                _%stx120382%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K120381%_
               (gx#stx-apply-mark _%stx120382%_ _%mark120387%_)
               _%method120385%_)
              _%mark120387%_))
           gx#current-expander-marks
           (cons _%mark120387%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx120229%_ _%phi120230%_ _%ctx120231%_)
        (let _%lp120233%_ ((_%bind120235%_
                            (gx#core-resolve-identifier__%
                             _%stx120229%_
                             _%phi120230%_
                             _%ctx120231%_)))
          (if (##structure-direct-instance-of?
               _%bind120235%_
               'gx#import-binding::t)
              (_%lp120233%_
               (##unchecked-structure-ref _%bind120235%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind120235%_
                   'gx#alias-binding::t)
                  (_%lp120233%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind120235%_ '4 '#f '#f)
                    _%phi120230%_
                    _%ctx120231%_))
                  _%bind120235%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx120243%_)
        (let* ((_%phi120245%_ (gx#current-expander-phi))
               (_%ctx120247%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120243%_
           _%phi120245%_
           _%ctx120247%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx120249%_ _%phi120250%_)
        (let ((_%ctx120252%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120249%_
           _%phi120250%_
           _%ctx120252%_))))
    (define gx#resolve-identifier
      (lambda _g122595_
        (let ((_g122594_ (##length _g122595_)))
          (cond ((##fx= _g122594_ 1)
                 (apply gx#resolve-identifier__0 _g122595_))
                ((##fx= _g122594_ 2)
                 (apply gx#resolve-identifier__1 _g122595_))
                ((##fx= _g122594_ 3)
                 (apply gx#resolve-identifier__% _g122595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g122595_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx120184%_
               _%val120185%_
               _%rebind?120186%_
               _%phi120187%_
               _%ctx120188%_)
        (let ((_%rebind?120193%_
               (if (not _%rebind?120186%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?120186%_)
                       _%rebind?120186%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx120184%_)
           _%val120185%_
           _%rebind?120193%_
           _%phi120187%_
           _%ctx120188%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx120198%_ _%val120199%_)
        (let* ((_%rebind?120201%_ '#f)
               (_%phi120203%_ (gx#current-expander-phi))
               (_%ctx120205%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120198%_
           _%val120199%_
           _%rebind?120201%_
           _%phi120203%_
           _%ctx120205%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx120207%_ _%val120208%_ _%rebind?120209%_)
        (let* ((_%phi120211%_ (gx#current-expander-phi))
               (_%ctx120213%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120207%_
           _%val120208%_
           _%rebind?120209%_
           _%phi120211%_
           _%ctx120213%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx120215%_ _%val120216%_ _%rebind?120217%_ _%phi120218%_)
        (let ((_%ctx120220%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120215%_
           _%val120216%_
           _%rebind?120217%_
           _%phi120218%_
           _%ctx120220%_))))
    (define gx#bind-identifier!
      (lambda _g122597_
        (let ((_g122596_ (##length _g122597_)))
          (cond ((##fx= _g122596_ 2) (apply gx#bind-identifier!__0 _g122597_))
                ((##fx= _g122596_ 3) (apply gx#bind-identifier!__1 _g122597_))
                ((##fx= _g122596_ 4) (apply gx#bind-identifier!__2 _g122597_))
                ((##fx= _g122596_ 5) (apply gx#bind-identifier!__% _g122597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g122597_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx120150%_ _%phi120151%_ _%ctx120152%_)
        (let _%lp120154%_ ((_%e120156%_ _%stx120150%_)
                           (_%marks120157%_ (gx#current-expander-marks)))
          (if (symbol? _%e120156%_)
              (gx#core-resolve-binding
               _%e120156%_
               _%phi120151%_
               _%phi120151%_
               _%ctx120152%_
               (reverse _%marks120157%_))
              (if (gx#identifier-quote? _%e120156%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e120156%_ '1 '#f '#f)
                   _%phi120151%_
                   '0
                   (##unchecked-structure-ref _%e120156%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e120156%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e120156%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e120156%_ '1 '#f '#f)
                       _%phi120151%_
                       _%phi120151%_
                       _%ctx120152%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e120156%_ '3 '#f '#f)
                        _%marks120157%_))
                      (if (##structure-direct-instance-of?
                           _%e120156%_
                           'gx#syntax-wrap::t)
                          (_%lp120154%_
                           (##unchecked-structure-ref _%e120156%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e120156%_ '3 '#f '#f)
                            _%marks120157%_))
                          (if (##structure-instance-of?
                               _%e120156%_
                               'gerbil#AST::t)
                              (_%lp120154%_
                               (##unchecked-structure-ref
                                _%e120156%_
                                '1
                                '#f
                                '#f)
                               _%marks120157%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx120150%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx120168%_)
        (let* ((_%phi120170%_ (gx#current-expander-phi))
               (_%ctx120172%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120168%_
           _%phi120170%_
           _%ctx120172%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx120174%_ _%phi120175%_)
        (let ((_%ctx120177%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120174%_
           _%phi120175%_
           _%ctx120177%_))))
    (define gx#core-resolve-identifier
      (lambda _g122599_
        (let ((_g122598_ (##length _g122599_)))
          (cond ((##fx= _g122598_ 1)
                 (apply gx#core-resolve-identifier__0 _g122599_))
                ((##fx= _g122598_ 2)
                 (apply gx#core-resolve-identifier__1 _g122599_))
                ((##fx= _g122598_ 3)
                 (apply gx#core-resolve-identifier__% _g122599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g122599_))))))
    (define gx#core-resolve-binding
      (lambda (_%id120060%_
               _%phi120061%_
               _%src-phi120062%_
               _%ctx120063%_
               _%marks120064%_)
        (letrec ((_%resolve120066%_
                  (lambda (_%ctx120134%_ _%src-phi120135%_ _%key120136%_)
                    (let _%lp120138%_ ((_%ctx120140%_
                                        (gx#core-context-shift
                                         _%ctx120134%_
                                         _%phi120061%_))
                                       (_%dphi120141%_
                                        (fx- _%phi120061%_ _%src-phi120135%_)))
                      (let ((_%$e120143%_
                             (gx#core-context-resolve
                              _%ctx120140%_
                              _%key120136%_)))
                        (if _%$e120143%_
                            _%$e120143%_
                            (if (fxzero? _%dphi120141%_)
                                '#f
                                (if (fxpositive? _%dphi120141%_)
                                    (_%lp120138%_
                                     (gx#core-context-shift _%ctx120140%_ '-1)
                                     (##fx- _%dphi120141%_ '1))
                                    (_%lp120138%_
                                     (gx#core-context-shift _%ctx120140%_ '1)
                                     (##fx+ _%dphi120141%_ '1))))))))))
          (let _%lp120068%_ ((_%ctx120070%_ _%ctx120063%_)
                             (_%src-phi120071%_ _%src-phi120062%_)
                             (_%rest120072%_ _%marks120064%_))
            (let* ((_%rest120073120081%_ _%rest120072%_)
                   (_%else120075120089%_
                    (lambda ()
                      (_%resolve120066%_
                       _%ctx120070%_
                       _%src-phi120071%_
                       _%id120060%_)))
                   (_%K120077120122%_
                    (lambda (_%rest120092%_ _%hd120093%_)
                      (let* ((_%hd120094120100%_ _%hd120093%_)
                             (_%E120096120104%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd120094120100%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K120097120114%_
                              (lambda (_%subst120107%_)
                                (let ((_%$e120111%_
                                       (let ((_%key120109%_
                                              (if _%subst120107%_
                                                  (hash-get
                                                   _%subst120107%_
                                                   _%id120060%_)
                                                  '#f)))
                                         (if _%key120109%_
                                             (_%resolve120066%_
                                              _%ctx120070%_
                                              _%src-phi120071%_
                                              _%key120109%_)
                                             '#f))))
                                  (if _%$e120111%_
                                      _%$e120111%_
                                      (_%lp120068%_
                                       (##unchecked-structure-ref
                                        _%hd120093%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd120093%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest120092%_))))))
                        (if (##structure-instance-of?
                             _%hd120094120100%_
                             'gx#expander-mark::t)
                            (let* ((_%e120098120117%_
                                    (##unchecked-structure-ref
                                     _%hd120094120100%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst120120%_ _%e120098120117%_))
                              (_%K120097120114%_ _%subst120120%_))
                            (_%E120096120104%_))))))
              (if (pair? _%rest120073120081%_)
                  (let ((_%hd120078120125%_ (##car _%rest120073120081%_))
                        (_%tl120079120127%_ (##cdr _%rest120073120081%_)))
                    (let* ((_%hd120130%_ _%hd120078120125%_)
                           (_%rest120132%_ _%tl120079120127%_))
                      (_%K120077120122%_ _%rest120132%_ _%hd120130%_)))
                  (_%else120075120089%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key119930%_
               _%val119931%_
               _%rebind?119932%_
               _%phi119933%_
               _%ctx119934%_)
        (letrec ((_%update-binding119936%_
                  (lambda (_%xval120009%_)
                    (if (or (_%rebind?119932%_
                             _%ctx119934%_
                             _%xval120009%_
                             _%val119931%_)
                            (and (##structure-direct-instance-of?
                                  _%xval120009%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval120009%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val119931%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val119931%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval120009%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val119931%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val119931%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval120009%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val119931%_
                        (if (and (##structure-direct-instance-of?
                                  _%val119931%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val119931%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval120009%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val119931%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval120009%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval120009%_
                            (if (and (##structure-direct-instance-of?
                                      _%val119931%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval120009%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key119930%_
                                 (cons (##unchecked-structure-ref
                                        _%val119931%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val119931%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval120009%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval120009%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval120009%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval120009%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key119930%_
                                 _%val119931%_
                                 _%xval120009%_))))))
                 (_%gensubst119937%_
                  (lambda (_%subst120004%_ _%id120005%_)
                    (let ((_%eid120007%_
                           (gensym (if (uninterned-symbol? _%id120005%_)
                                       '%
                                       _%id120005%_))))
                      (hash-put! _%subst120004%_ _%id120005%_ _%eid120007%_)
                      _%eid120007%_)))
                 (_%subst!119938%_
                  (lambda (_%key119940%_)
                    (let* ((_%key119941119949%_ _%key119940%_)
                           (_%else119943119957%_ (lambda () _%key119940%_))
                           (_%K119945119992%_
                            (lambda (_%mark119960%_ _%id119961%_)
                              (let* ((_%mark119962119968%_ _%mark119960%_)
                                     (_%E119964119972%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark119962119968%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K119965119984%_
                                      (lambda (_%subst119975%_)
                                        (if (not _%subst119975%_)
                                            (let ((_%subst119978%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark119960%_
                                               _%subst119978%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst119937%_
                                               _%subst119978%_
                                               _%id119961%_))
                                            (let ((_%$e119980%_
                                                   (hash-get
                                                    _%subst119975%_
                                                    _%id119961%_)))
                                              (if _%$e119980%_
                                                  _%$e119980%_
                                                  (_%gensubst119937%_
                                                   _%subst119975%_
                                                   _%id119961%_)))))))
                                (if (##structure-instance-of?
                                     _%mark119962119968%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e119966119987%_
                                            (##unchecked-structure-ref
                                             _%mark119962119968%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst119990%_ _%e119966119987%_))
                                      (_%K119965119984%_ _%subst119990%_))
                                    (_%E119964119972%_))))))
                      (if (pair? _%key119941119949%_)
                          (let ((_%hd119946119995%_
                                 (##car _%key119941119949%_))
                                (_%tl119947119997%_
                                 (##cdr _%key119941119949%_)))
                            (let* ((_%id120000%_ _%hd119946119995%_)
                                   (_%mark120002%_ _%tl119947119997%_))
                              (_%K119945119992%_ _%mark120002%_ _%id120000%_)))
                          (_%else119943119957%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx119934%_ _%phi119933%_)
           (_%subst!119938%_ _%key119930%_)
           _%val119931%_
           _%update-binding119936%_))))
    (define gx#core-bind!__0
      (lambda (_%key120030%_ _%val120031%_)
        (let* ((_%rebind?120033%_ false)
               (_%phi120035%_ (gx#current-expander-phi))
               (_%ctx120037%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key120030%_
           _%val120031%_
           _%rebind?120033%_
           _%phi120035%_
           _%ctx120037%_))))
    (define gx#core-bind!__1
      (lambda (_%key120039%_ _%val120040%_ _%rebind?120041%_)
        (let* ((_%phi120043%_ (gx#current-expander-phi))
               (_%ctx120045%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key120039%_
           _%val120040%_
           _%rebind?120041%_
           _%phi120043%_
           _%ctx120045%_))))
    (define gx#core-bind!__2
      (lambda (_%key120047%_ _%val120048%_ _%rebind?120049%_ _%phi120050%_)
        (let ((_%ctx120052%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key120047%_
           _%val120048%_
           _%rebind?120049%_
           _%phi120050%_
           _%ctx120052%_))))
    (define gx#core-bind!
      (lambda _g122601_
        (let ((_g122600_ (##length _g122601_)))
          (cond ((##fx= _g122600_ 2) (apply gx#core-bind!__0 _g122601_))
                ((##fx= _g122600_ 3) (apply gx#core-bind!__1 _g122601_))
                ((##fx= _g122600_ 4) (apply gx#core-bind!__2 _g122601_))
                ((##fx= _g122600_ 5) (apply gx#core-bind!__% _g122601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g122601_))))))
    (define gx#core-identifier-key
      (lambda (_%stx119861%_)
        (if (symbol? _%stx119861%_)
            (let* ((_%g119863119871%_ (gx#current-expander-marks))
                   (_%else119865119879%_ (lambda () _%stx119861%_))
                   (_%K119867119884%_
                    (lambda (_%hd119882%_) (cons _%stx119861%_ _%hd119882%_))))
              (if (pair? _%g119863119871%_)
                  (let* ((_%hd119868119887%_ (##car _%g119863119871%_))
                         (_%hd119890%_ _%hd119868119887%_))
                    (_%K119867119884%_ _%hd119890%_))
                  (_%else119865119879%_)))
            (if (gx#identifier? _%stx119861%_)
                (let* ((_%id119893%_ (gx#syntax-local-unwrap _%stx119861%_))
                       (_%eid119895%_ (gx#stx-e _%id119893%_))
                       (_%marks119897%_
                        (gx#stx-identifier-marks* _%id119893%_))
                       (_%marks119899119907%_ _%marks119897%_)
                       (_%else119901119915%_ (lambda () _%eid119895%_))
                       (_%K119903119920%_
                        (lambda (_%hd119918%_)
                          (cons _%eid119895%_ _%hd119918%_))))
                  (if (pair? _%marks119899119907%_)
                      (let* ((_%hd119904119923%_ (##car _%marks119899119907%_))
                             (_%hd119926%_ _%hd119904119923%_))
                        (_%K119903119920%_ _%hd119926%_))
                      (_%else119901119915%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx119861%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx119800%_ _%phi119801%_)
        (letrec ((_%make-phi119803%_
                  (lambda (_%super119859%_)
                    (let ((__obj122573
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj122573
                       (##gensym 'phi)
                       _%super119859%_)
                      __obj122573)))
                 (_%make-phi/up119804%_
                  (lambda (_%ctx119854%_ _%super119855%_)
                    (let ((_%ctx+1119857%_
                           (_%make-phi119803%_ _%super119855%_)))
                      (##unchecked-structure-set!
                       _%ctx119854%_
                       _%ctx+1119857%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1119857%_
                       _%ctx119854%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1119857%_)))
                 (_%make-phi/down119805%_
                  (lambda (_%ctx119849%_ _%super119850%_)
                    (let ((_%ctx-1119852%_
                           (_%make-phi119803%_ _%super119850%_)))
                      (##unchecked-structure-set!
                       _%ctx-1119852%_
                       _%ctx119849%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx119849%_
                       _%ctx-1119852%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1119852%_)))
                 (_%shift119806%_
                  (lambda (_%ctx119832%_
                           _%delta119833%_
                           _%make-delta-context119834%_
                           _%phi119835%_
                           _%K119836%_)
                    (let ((_%$e119838%_
                           (##unchecked-structure-ref
                            _%ctx119832%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e119838%_
                          ((lambda (_%super119841%_)
                             (let* ((_%super119843%_
                                     (_%K119836%_
                                      _%super119841%_
                                      _%delta119833%_))
                                    (_%ctx+d119845%_
                                     (_%make-delta-context119834%_
                                      _%ctx119832%_
                                      _%super119843%_)))
                               (_%K119836%_
                                _%ctx+d119845%_
                                (fx- _%phi119835%_ _%delta119833%_))))
                           _%$e119838%_)
                          (error '"Bad context" _%ctx119832%_))))))
          (let _%K119808%_ ((_%ctx119810%_ _%ctx119800%_)
                            (_%phi119811%_ _%phi119801%_))
            (if (fxzero? _%phi119811%_)
                _%ctx119810%_
                (if (##structure-instance-of? _%ctx119810%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi119811%_)
                        (let ((_%$e119815%_
                               (##unchecked-structure-ref
                                _%ctx119810%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e119815%_
                              ((lambda (_%g119817119819%_)
                                 (_%K119808%_
                                  _%g119817119819%_
                                  (##fx- _%phi119811%_ '1)))
                               _%$e119815%_)
                              (_%shift119806%_
                               _%ctx119810%_
                               '1
                               _%make-phi/up119804%_
                               _%phi119811%_
                               _%K119808%_)))
                        (let ((_%$e119823%_
                               (##unchecked-structure-ref
                                _%ctx119810%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e119823%_
                              ((lambda (_%g119825119827%_)
                                 (_%K119808%_
                                  _%g119825119827%_
                                  (##fx+ _%phi119811%_ '1)))
                               _%$e119823%_)
                              (_%shift119806%_
                               _%ctx119810%_
                               '-1
                               _%make-phi/down119805%_
                               _%phi119811%_
                               _%K119808%_))))
                    _%ctx119810%_))))))
    (define gx#core-context-get
      (lambda (_%ctx119797%_ _%key119798%_)
        (hash-get
         (##unchecked-structure-ref _%ctx119797%_ '2 '#f '#f)
         _%key119798%_)))
    (define gx#core-context-put!
      (lambda (_%ctx119793%_ _%key119794%_ _%val119795%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx119793%_ '2 '#f '#f)
         _%key119794%_
         _%val119795%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx119779%_ _%key119780%_)
        (let _%lp119782%_ ((_%ctx119784%_ _%ctx119779%_))
          (let ((_%$e119786%_
                 (gx#core-context-get _%ctx119784%_ _%key119780%_)))
            (if _%$e119786%_
                _%$e119786%_
                (let ((_%$e119789%_
                       (if (##structure-instance-of?
                            _%ctx119784%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx119784%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e119789%_ (_%lp119782%_ _%$e119789%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx119768%_ _%key119769%_ _%val119770%_ _%rebind119771%_)
        (let ((_%$e119773%_ (gx#core-context-get _%ctx119768%_ _%key119769%_)))
          (if _%$e119773%_
              ((lambda (_%xval119776%_)
                 (gx#core-context-put!
                  _%ctx119768%_
                  _%key119769%_
                  (_%rebind119771%_ _%xval119776%_)))
               _%$e119773%_)
              (gx#core-context-put!
               _%ctx119768%_
               _%key119769%_
               _%val119770%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx119743%_ _%stop?119744%_)
        (let _%lp119746%_ ((_%ctx119748%_ _%ctx119743%_))
          (if (_%stop?119744%_ _%ctx119748%_)
              _%ctx119748%_
              (if (##structure-instance-of? _%ctx119748%_ 'gx#phi-context::t)
                  (_%lp119746%_
                   (##unchecked-structure-ref _%ctx119748%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx119757%_ (gx#current-expander-context))
               (_%stop?119759%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119757%_ _%stop?119759%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx119761%_)
        (let ((_%stop?119763%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119761%_ _%stop?119763%_))))
    (define gx#core-context-top
      (lambda _g122603_
        (let ((_g122602_ (##length _g122603_)))
          (cond ((##fx= _g122602_ 0) (apply gx#core-context-top__0 _g122603_))
                ((##fx= _g122602_ 1) (apply gx#core-context-top__1 _g122603_))
                ((##fx= _g122602_ 2) (apply gx#core-context-top__% _g122603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g122603_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx119728%_)
        (let _%lp119730%_ ((_%ctx119732%_ _%ctx119728%_))
          (if (##structure-instance-of? _%ctx119732%_ 'gx#phi-context::t)
              (_%lp119730%_
               (##unchecked-structure-ref _%ctx119732%_ '3 '#f '#f))
              _%ctx119732%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx119738%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx119738%_))))
    (define gx#core-context-root
      (lambda _g122605_
        (let ((_g122604_ (##length _g122605_)))
          (cond ((##fx= _g122604_ 0) (apply gx#core-context-root__0 _g122605_))
                ((##fx= _g122604_ 1) (apply gx#core-context-root__% _g122605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g122605_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx119710%_ . _%ignore119711%_)
        (let ((_%$e119713%_ (gx#current-expander-allow-rebind?)))
          (if _%$e119713%_
              _%$e119713%_
              (if (##structure-instance-of? _%ctx119710%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx119710%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx119710%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx119720%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx119720%_))))
    (define gx#core-context-rebind?
      (lambda _g122607_
        (let ((_g122606_ (##length _g122607_)))
          (cond ((##fx= _g122606_ 0)
                 (apply gx#core-context-rebind?__0 _g122607_))
                ((##fx= _g122606_ 1)
                 (apply gx#core-context-rebind?__% _g122607_))
                ((##fx>= _g122606_ 1)
                 (apply gx#core-context-rebind?__% _g122607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g122607_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx119693%_)
        (let ((_%$e119695%_ (gx#core-context-top__1 _%ctx119693%_)))
          (if _%$e119695%_
              ((lambda (_%ctx119698%_)
                 (if (##structure-instance-of?
                      _%ctx119698%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx119698%_ '6 '#f '#f)
                     '#f))
               _%$e119695%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx119705%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx119705%_))))
    (define gx#core-context-namespace
      (lambda _g122609_
        (let ((_g122608_ (##length _g122609_)))
          (cond ((##fx= _g122608_ 0)
                 (apply gx#core-context-namespace__0 _g122609_))
                ((##fx= _g122608_ 1)
                 (apply gx#core-context-namespace__% _g122609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g122609_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind119679%_ _%is?119680%_)
        (if (##structure-direct-instance-of?
             _%bind119679%_
             'gx#syntax-binding::t)
            (_%is?119680%_
             (##unchecked-structure-ref _%bind119679%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind119685%_)
        (let ((_%is?119687%_ gx#expander?))
          (gx#expander-binding?__% _%bind119685%_ _%is?119687%_))))
    (define gx#expander-binding?
      (lambda _g122611_
        (let ((_g122610_ (##length _g122611_)))
          (cond ((##fx= _g122610_ 1) (apply gx#expander-binding?__0 _g122611_))
                ((##fx= _g122610_ 2) (apply gx#expander-binding?__% _g122611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g122611_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind119676%_)
        (gx#expander-binding?__% _%bind119676%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind119674%_)
        (gx#expander-binding?__% _%bind119674%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind119668%_)
        (letrec ((_%direct-special-form?119670%_
                  (lambda (_%obj119672%_)
                    (##structure-direct-instance-of?
                     _%obj119672%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind119668%_
           _%direct-special-form?119670%_))))
    (define gx#special-form-binding?
      (lambda (_%bind119666%_)
        (gx#expander-binding?__% _%bind119666%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind119657%_)
        (letrec ((_%feature?119659%_
                  (lambda (_%e119661%_)
                    (let ((_%$e119663%_
                           (##structure-instance-of?
                            _%e119661%_
                            'gx#feature-expander::t)))
                      (if _%$e119663%_
                          _%$e119663%_
                          (##structure-instance-of?
                           _%e119661%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind119657%_ _%feature?119659%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind119655%_)
        (gx#expander-binding?__% _%bind119655%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id119642%_ _%bound?119643%_)
        (if (gx#identifier? _%id119642%_)
            (_%bound?119643%_ (gx#resolve-identifier__0 _%id119642%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id119648%_)
        (let ((_%bound?119650%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id119648%_ _%bound?119650%_))))
    (define gx#core-bound-identifier?
      (lambda _g122613_
        (let ((_g122612_ (##length _g122613_)))
          (cond ((##fx= _g122612_ 1)
                 (apply gx#core-bound-identifier?__0 _g122613_))
                ((##fx= _g122612_ 2)
                 (apply gx#core-bound-identifier?__% _g122613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g122613_))))))
    (define gx#core-identifier=?
      (lambda (_%x119632%_ _%y119633%_)
        (letrec ((_%y=?119635%_
                  (lambda (_%xid119639%_)
                    ((if (list? _%y119633%_) memq eq?)
                     _%xid119639%_
                     _%y119633%_))))
          (let ((_%bind119637%_ (gx#resolve-identifier__0 _%x119632%_)))
            (if (##structure-instance-of? _%bind119637%_ 'gx#binding::t)
                (_%y=?119635%_
                 (##unchecked-structure-ref _%bind119637%_ '1 '#f '#f))
                (_%y=?119635%_ (gx#stx-e _%x119632%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e119630%_)
        (if (interned-symbol? _%e119630%_)
            (string-index__0 (symbol->string _%e119630%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx119583%_ _%src119584%_ _%ctx119585%_ _%marks119586%_)
        (if (##structure? _%stx119583%_)
            (let ((_%$e119588%_ (gx#sealed-syntax-unwrap _%stx119583%_)))
              (if _%$e119588%_
                  _%$e119588%_
                  (if (gx#identifier? _%stx119583%_)
                      (let ((_%id119592%_
                             (gx#stx-unwrap__% _%stx119583%_ _%marks119586%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id119592%_ '1 '#f '#f)
                         (let ((_%$e119594%_
                                (##unchecked-structure-ref
                                 _%id119592%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e119594%_ _%$e119594%_ _%src119584%_))
                         _%ctx119585%_
                         (##unchecked-structure-ref _%id119592%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx119583%_)
                       (let ((_%$e119598%_ (gx#stx-source _%stx119583%_)))
                         (if _%$e119598%_ _%$e119598%_ _%src119584%_))
                       _%ctx119585%_
                       (reverse _%marks119586%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx119583%_
             _%src119584%_
             _%ctx119585%_
             (reverse _%marks119586%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx119604%_)
        (let* ((_%src119606%_ '#f)
               (_%ctx119608%_ (gx#current-expander-context))
               (_%marks119610%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119604%_
           _%src119606%_
           _%ctx119608%_
           _%marks119610%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx119612%_ _%src119613%_)
        (let* ((_%ctx119615%_ (gx#current-expander-context))
               (_%marks119617%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119612%_
           _%src119613%_
           _%ctx119615%_
           _%marks119617%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx119619%_ _%src119620%_ _%ctx119621%_)
        (let ((_%marks119623%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119619%_
           _%src119620%_
           _%ctx119621%_
           _%marks119623%_))))
    (define gx#core-quote-syntax
      (lambda _g122615_
        (let ((_g122614_ (##length _g122615_)))
          (cond ((##fx= _g122614_ 1) (apply gx#core-quote-syntax__0 _g122615_))
                ((##fx= _g122614_ 2) (apply gx#core-quote-syntax__1 _g122615_))
                ((##fx= _g122614_ 3) (apply gx#core-quote-syntax__2 _g122615_))
                ((##fx= _g122614_ 4) (apply gx#core-quote-syntax__% _g122615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g122615_))))))
    (define gx#core-cons
      (lambda (_%hd119579%_ _%tl119580%_)
        (cons (gx#core-quote-syntax__0 _%hd119579%_) _%tl119580%_)))
    (define gx#core-list
      (lambda (_%hd119576%_ . _%rest119577%_)
        (cons (gx#core-quote-syntax__0 _%hd119576%_) _%rest119577%_)))
    (define gx#core-cons*
      (lambda (_%hd119573%_ . _%rest119574%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd119573%_) _%rest119574%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path119542%_ _%rel119543%_)
        (let ((_%path119560%_ (gx#stx-e _%stx-path119542%_))
              (_%reldir119561%_
               (let _%lp119545%_ ((_%relsrc119547%_
                                   (let ((_%$e119557%_
                                          (gx#stx-source _%stx-path119542%_)))
                                     (if _%$e119557%_
                                         _%$e119557%_
                                         _%rel119543%_))))
                 (if (##structure-instance-of? _%relsrc119547%_ 'gerbil#AST::t)
                     (_%lp119545%_
                      (let ((_%$e119550%_ (gx#stx-source _%relsrc119547%_)))
                        (if _%$e119550%_
                            _%$e119550%_
                            (gx#stx-e _%relsrc119547%_))))
                     (if (source-location-path? _%relsrc119547%_)
                         (path-directory
                          (source-location-path _%relsrc119547%_))
                         (if (string? _%relsrc119547%_)
                             (path-directory _%relsrc119547%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path119560%_ (path-normalize _%reldir119561%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path119566%_)
        (let ((_%rel119568%_ '#f))
          (gx#core-resolve-path__% _%stx-path119566%_ _%rel119568%_))))
    (define gx#core-resolve-path
      (lambda _g122617_
        (let ((_g122616_ (##length _g122617_)))
          (cond ((##fx= _g122616_ 1) (apply gx#core-resolve-path__0 _g122617_))
                ((##fx= _g122616_ 2) (apply gx#core-resolve-path__% _g122617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g122617_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr119498%_ _%ctx119499%_)
        (let* ((_%repr119500119507%_ _%repr119498%_)
               (_%E119502119511%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr119500119507%_
                         '([phi . subs]))
                  '#!void))
               (_%K119503119519%_
                (lambda (_%subs119514%_ _%phi119515%_)
                  (let ((_%subst119517%_
                         (if (null? _%subs119514%_)
                             '#f
                             (list->hash-table-eq _%subs119514%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst119517%_
                     _%ctx119499%_
                     _%phi119515%_
                     '#f)))))
          (if (pair? _%repr119500119507%_)
              (let ((_%hd119504119522%_ (##car _%repr119500119507%_))
                    (_%tl119505119524%_ (##cdr _%repr119500119507%_)))
                (let* ((_%phi119527%_ _%hd119504119522%_)
                       (_%subs119529%_ _%tl119505119524%_))
                  (_%K119503119519%_ _%subs119529%_ _%phi119527%_)))
              (_%E119502119511%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr119534%_)
        (let ((_%ctx119536%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr119534%_ _%ctx119536%_))))
    (define gx#core-deserialize-mark
      (lambda _g122619_
        (let ((_g122618_ (##length _g122619_)))
          (cond ((##fx= _g122618_ 1)
                 (apply gx#core-deserialize-mark__0 _g122619_))
                ((##fx= _g122618_ 2)
                 (apply gx#core-deserialize-mark__% _g122619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g122619_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx119495%_)
        (gx#stx-rewrap _%stx119495%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx119493%_)
        (gx#stx-unwrap__% _%stx119493%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx119463%_)
        (let* ((_%g119464119472%_ (gx#current-expander-marks))
               (_%else119466119480%_ (lambda () _%stx119463%_))
               (_%K119468119485%_
                (lambda (_%hd119483%_)
                  (gx#stx-apply-mark _%stx119463%_ _%hd119483%_))))
          (if (pair? _%g119464119472%_)
              (let* ((_%hd119469119488%_ (##car _%g119464119472%_))
                     (_%hd119491%_ _%hd119469119488%_))
                (_%K119468119485%_ _%hd119491%_))
              (_%else119466119480%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx119448%_ _%E119449%_)
        (let ((_%bind119451%_ (gx#resolve-identifier__0 _%stx119448%_)))
          (if (##structure-direct-instance-of?
               _%bind119451%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind119451%_ '4 '#f '#f)
              (_%E119449%_ _%stx119448%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx119456%_)
        (let ((_%E119458%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx119456%_ _%E119458%_))))
    (define gx#syntax-local-e
      (lambda _g122621_
        (let ((_g122620_ (##length _g122621_)))
          (cond ((##fx= _g122620_ 1) (apply gx#syntax-local-e__0 _g122621_))
                ((##fx= _g122620_ 2) (apply gx#syntax-local-e__% _g122621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g122621_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx119432%_ _%E119433%_)
        (let ((_%e119435%_ (gx#syntax-local-e__% _%stx119432%_ _%E119433%_)))
          (if (##structure-instance-of? _%e119435%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e119435%_ '1 '#f '#f)
              _%e119435%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx119440%_)
        (let ((_%E119442%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx119440%_ _%E119442%_))))
    (define gx#syntax-local-value
      (lambda _g122623_
        (let ((_g122622_ (##length _g122623_)))
          (cond ((##fx= _g122622_ 1)
                 (apply gx#syntax-local-value__0 _g122623_))
                ((##fx= _g122622_ 2)
                 (apply gx#syntax-local-value__% _g122623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g122623_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx119429%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx119429%_)))))
