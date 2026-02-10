(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1770744576)
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
      (lambda _%$args175822%_
        (apply make-instance gx#expander-context::t _%$args175822%_)))
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
      (lambda _%$args175819%_
        (apply make-instance gx#root-context::t _%$args175819%_)))
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
      (lambda _%$args175816%_
        (apply make-instance gx#phi-context::t _%$args175816%_)))
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
      (lambda _%$args175813%_
        (apply make-instance gx#top-context::t _%$args175813%_)))
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
      (lambda _%$args175810%_
        (apply make-instance gx#module-context::t _%$args175810%_)))
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
      (lambda _%$args175807%_
        (apply make-instance gx#prelude-context::t _%$args175807%_)))
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
      (lambda _%$args175804%_
        (apply make-instance gx#local-context::t _%$args175804%_)))
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
      (lambda (_%self175777%_ _%id175778%_ _%super175779%_)
        (let ((_%self175782%_ _%self175777%_))
          (if (##fx< '3 (##structure-length _%self175782%_))
              (begin
                (##unchecked-structure-set!
                 _%self175782%_
                 _%id175778%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self175782%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self175782%_
                 _%super175779%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self175782%_
                     '3
                     (##structure-length _%self175782%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self175795%_ _%id175796%_)
        (let ((_%super175798%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self175795%_
           _%id175796%_
           _%super175798%_))))
    (define gx#phi-context:::init!
      (lambda _g175864_
        (let ((_g175865_ (##length _g175864_)))
          (cond ((##fx= _g175865_ 2)
                 (apply gx#phi-context:::init!__0 _g175864_))
                ((##fx= _g175865_ 3)
                 (apply gx#phi-context:::init!__% _g175864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g175864_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self175630%_ _%super175631%_)
        (let ((_%self175634%_ _%self175630%_))
          (if (##fx< '3 (##structure-length _%self175634%_))
              (begin
                (##unchecked-structure-set!
                 _%self175634%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self175634%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self175634%_
                 _%super175631%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self175634%_
                     '3
                     (##structure-length _%self175634%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self175647%_)
        (let ((_%super175649%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self175647%_ _%super175649%_))))
    (define gx#local-context:::init!
      (lambda _g175866_
        (let ((_g175867_ (##length _g175866_)))
          (cond ((##fx= _g175867_ 1)
                 (apply gx#local-context:::init!__0 _g175866_))
                ((##fx= _g175867_ 2)
                 (apply gx#local-context:::init!__% _g175866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g175866_))))))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args175504%_
        (apply make-instance gx#binding::t _%$args175504%_)))
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
      (lambda (_%self175487%_ _%id175488%_ _%key175489%_ _%phi175490%_)
        (let ((_%self175493%_ _%self175487%_))
          (##unchecked-structure-set! _%self175493%_ _%id175488%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self175493%_ _%key175489%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self175493%_
           _%phi175490%_
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args175362%_
        (apply make-instance gx#runtime-binding::t _%$args175362%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args175359%_
        (apply make-instance gx#local-binding::t _%$args175359%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args175356%_
        (apply make-instance gx#top-binding::t _%$args175356%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args175353%_
        (apply make-instance gx#module-binding::t _%$args175353%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args175350%_
        (apply make-instance gx#extern-binding::t _%$args175350%_)))
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
      (lambda (_%self174966%_
               _%id174967%_
               _%key174968%_
               _%phi174969%_
               _%ctx174970%_)
        (let ((_%self174973%_ _%self174966%_))
          (gx#binding:::init!
           _%self174973%_
           _%id174967%_
           _%key174968%_
           _%phi174969%_)
          (##unchecked-structure-set!
           _%self174973%_
           _%ctx174970%_
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args174719%_
        (apply make-instance gx#syntax-binding::t _%$args174719%_)))
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args174716%_
        (apply make-instance gx#import-binding::t _%$args174716%_)))
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args174713%_
        (apply make-instance gx#alias-binding::t _%$args174713%_)))
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
      (lambda (_%self174695%_
               _%id174696%_
               _%key174697%_
               _%phi174698%_
               _%e174699%_)
        (let ((_%self174702%_ _%self174695%_))
          (gx#binding:::init!
           _%self174702%_
           _%id174696%_
           _%key174697%_
           _%phi174698%_)
          (##unchecked-structure-set! _%self174702%_ _%e174699%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self174553%_
               _%id174554%_
               _%key174555%_
               _%phi174556%_
               _%e174557%_
               _%ctx174558%_
               _%weak?174559%_)
        (let ((_%self174562%_ _%self174553%_))
          (gx#binding:::init!
           _%self174562%_
           _%id174554%_
           _%key174555%_
           _%phi174556%_)
          (##unchecked-structure-set! _%self174562%_ _%e174557%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self174562%_ _%ctx174558%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self174562%_
           _%weak?174559%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self174413%_
               _%id174414%_
               _%key174415%_
               _%phi174416%_
               _%e174417%_)
        (let ((_%self174420%_ _%self174413%_))
          (gx#binding:::init!
           _%self174420%_
           _%id174414%_
           _%key174415%_
           _%phi174416%_)
          (##unchecked-structure-set! _%self174420%_ _%e174417%_ '5 '#f '#f))))
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
      (lambda _%$args174288%_
        (apply make-instance gx#expander::t _%$args174288%_)))
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
      (lambda _%$args174285%_
        (apply make-instance gx#core-expander::t _%$args174285%_)))
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
      (lambda _%$args174282%_
        (apply make-instance gx#expression-form::t _%$args174282%_)))
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
      (lambda _%$args174279%_
        (apply make-instance gx#special-form::t _%$args174279%_)))
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
      (lambda _%$args174276%_
        (apply make-instance gx#definition-form::t _%$args174276%_)))
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
      (lambda _%$args174273%_
        (apply make-instance gx#top-special-form::t _%$args174273%_)))
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
      (lambda _%$args174270%_
        (apply make-instance gx#module-special-form::t _%$args174270%_)))
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
      (lambda _%$args174267%_
        (apply make-instance gx#feature-expander::t _%$args174267%_)))
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
      (lambda _%$args174264%_
        (apply make-instance gx#private-feature-expander::t _%$args174264%_)))
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
      (lambda _%$args174261%_
        (apply make-instance gx#reserved-expander::t _%$args174261%_)))
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
      (lambda _%$args174258%_
        (apply make-instance gx#macro-expander::t _%$args174258%_)))
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
      (lambda _%$args174255%_
        (apply make-instance gx#rename-macro-expander::t _%$args174255%_)))
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
      (lambda _%$args174252%_
        (apply make-instance gx#user-expander::t _%$args174252%_)))
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
      (lambda _%$args174249%_
        (apply make-instance gx#expander-mark::t _%$args174249%_)))
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
      (lambda (_%ctx174233%_
               _%message174234%_
               _%stx174235%_
               .
               _%details174236%_)
        (let ((_%ctx174247%_
               (let ((_%$e174238%_ _%ctx174233%_))
                 (if _%$e174238%_
                     _%$e174238%_
                     (let ((_%$e174241%_ (gx#core-context-top__0)))
                       (if _%$e174241%_
                           ((lambda (_%ctx174244%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx174244%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e174241%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message174234%_
                  (cons _%stx174235%_ _%details174236%_)
                  _%ctx174247%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx174220%_ _%expression?174221%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx174220%_ _%expression?174221%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx174226%_)
        (let ((_%expression?174228%_ '#f))
          (gx#eval-syntax__% _%stx174226%_ _%expression?174228%_))))
    (define gx#eval-syntax
      (lambda _g175868_
        (let ((_g175869_ (##length _g175868_)))
          (cond ((##fx= _g175869_ 1) (apply gx#eval-syntax__0 _g175868_))
                ((##fx= _g175869_ 2) (apply gx#eval-syntax__% _g175868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g175868_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx174205%_ _%expression?174206%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx174205%_ _%expression?174206%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx174212%_)
        (let ((_%expression?174214%_ '#f))
          (gx#eval-syntax+1__% _%stx174212%_ _%expression?174214%_))))
    (define gx#eval-syntax+1
      (lambda _g175870_
        (let ((_g175871_ (##length _g175870_)))
          (cond ((##fx= _g175871_ 1) (apply gx#eval-syntax+1__0 _g175870_))
                ((##fx= _g175871_ 2) (apply gx#eval-syntax+1__% _g175870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g175870_))))))
    (define gx#eval-expression+1
      (lambda (_%stx174202%_) (gx#eval-syntax+1__% _%stx174202%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx174200%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx174200%_))))
    (define gx#core-expand__%
      (lambda (_%stx174187%_ _%expression?174188%_)
        (if _%expression?174188%_
            (gx#core-expand-expression _%stx174187%_)
            (gx#core-expand-top _%stx174187%_))))
    (define gx#core-expand__0
      (lambda (_%stx174193%_)
        (let ((_%expression?174195%_ '#f))
          (gx#core-expand__% _%stx174193%_ _%expression?174195%_))))
    (define gx#core-expand
      (lambda _g175872_
        (let ((_g175873_ (##length _g175872_)))
          (cond ((##fx= _g175873_ 1) (apply gx#core-expand__0 _g175872_))
                ((##fx= _g175873_ 2) (apply gx#core-expand__% _g175872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g175872_))))))
    (define gx#core-expand-top
      (lambda (_%stx174154%_)
        (let* ((_%stx174156%_ (gx#core-expand*__0 _%stx174154%_))
               (_%e174157174164%_ _%stx174156%_)
               (_%E174159174168%_
                (lambda () (gx#core-expand-expression _%stx174156%_)))
               (_%E174158174182%_
                (lambda ()
                  (if (gx#stx-pair? _%e174157174164%_)
                      (let ((_%e174160174172%_
                             (gx#syntax-e _%e174157174164%_)))
                        (let ((_%hd174161174175%_ (##car _%e174160174172%_))
                              (_%tl174162174177%_ (##cdr _%e174160174172%_)))
                          (let ((_%form174180%_ _%hd174161174175%_))
                            (if (gx#core-bound-identifier?__0 _%form174180%_)
                                _%stx174156%_
                                (_%E174159174168%_)))))
                      (_%E174159174168%_)))))
          (_%E174158174182%_))))
    (define gx#core-expand-expression
      (lambda (_%stx174086%_)
        (letrec ((_%sealed-expression?174088%_
                  (lambda (_%hd174124%_)
                    (if (gx#sealed-syntax? _%hd174124%_)
                        (let* ((_%e174125174132%_ _%hd174124%_)
                               (_%E174127174136%_ (lambda () '#f))
                               (_%E174126174150%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e174125174132%_)
                                      (let ((_%e174128174140%_
                                             (gx#syntax-e _%e174125174132%_)))
                                        (let ((_%hd174129174143%_
                                               (##car _%e174128174140%_))
                                              (_%tl174130174145%_
                                               (##cdr _%e174128174140%_)))
                                          (let ((_%form174148%_
                                                 _%hd174129174143%_))
                                            (gx#core-bound-identifier?__%
                                             _%form174148%_
                                             gx#expression-form-binding?))))
                                      (_%E174127174136%_)))))
                          (_%E174126174150%_))
                        '#f)))
                 (_%illegal-expression174089%_
                  (lambda (_%hd174121%_ . _%_174122%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx174086%_
                     _%hd174121%_)))
                 (_%expand-e174090%_
                  (lambda (_%form174113%_ _%hd174114%_)
                    (let ((_%bind174116%_
                           (if (##structure-instance-of?
                                _%form174113%_
                                'gx#binding::t)
                               _%form174113%_
                               (gx#resolve-identifier__0 _%form174113%_))))
                      (if (gx#core-expander-binding? _%bind174116%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind174116%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd174114%_
                            (gx#stx-source _%stx174086%_)))
                          (if (##structure-direct-instance-of?
                               _%bind174116%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind174116%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd174114%_
                                 (gx#stx-source _%stx174086%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx174086%_
                               _%form174113%_)))))))
          (let ((_%hd174092%_ (gx#core-expand-head _%stx174086%_)))
            (if (_%sealed-expression?174088%_ _%hd174092%_)
                _%hd174092%_
                (if (gx#stx-pair? _%hd174092%_)
                    (let* ((_%form174096%_ (gx#stx-car _%hd174092%_))
                           (_%bind174098%_
                            (if (gx#identifier? _%form174096%_)
                                (gx#resolve-identifier__0 _%form174096%_)
                                '#f)))
                      (if (or (not _%bind174098%_)
                              (not (gx#core-expander-binding? _%bind174098%_)))
                          (_%expand-e174090%_
                           '%%app
                           (cons '%%app _%hd174092%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind174098%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd174092%_
                               _%illegal-expression174089%_)
                              (if (gx#expression-form-binding? _%bind174098%_)
                                  (_%expand-e174090%_
                                   _%bind174098%_
                                   _%hd174092%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind174098%_)
                                      (gx#core-expand-expression
                                       (_%expand-e174090%_
                                        _%bind174098%_
                                        _%hd174092%_))
                                      (_%illegal-expression174089%_
                                       _%hd174092%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd174092%_)
                        (_%illegal-expression174089%_ _%hd174092%_)
                        (if (gx#identifier? _%hd174092%_)
                            (_%expand-e174090%_
                             '%%ref
                             (cons '%%ref (cons _%hd174092%_ '())))
                            (if (gx#stx-datum? _%hd174092%_)
                                (_%expand-e174090%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd174092%_ '())))
                                (_%illegal-expression174089%_
                                 _%hd174092%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx174081%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx174084%_ (gx#core-expand-expression _%stx174081%_)))
             (values _%stx174084%_ (gx#eval-syntax* _%stx174084%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx174062%_ _%stop?174063%_)
        (let _%lp174065%_ ((_%stx174067%_ _%stx174062%_))
          (if (_%stop?174063%_ _%stx174067%_)
              _%stx174067%_
              (let ((_%rstx174069%_ (gx#core-expand1 _%stx174067%_)))
                (if (eq? _%stx174067%_ _%rstx174069%_)
                    _%stx174067%_
                    (_%lp174065%_ _%rstx174069%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx174074%_)
        (let ((_%stop?174076%_ false))
          (gx#core-expand*__% _%stx174074%_ _%stop?174076%_))))
    (define gx#core-expand*
      (lambda _g175874_
        (let ((_g175875_ (##length _g175874_)))
          (cond ((##fx= _g175875_ 1) (apply gx#core-expand*__0 _g175874_))
                ((##fx= _g175875_ 2) (apply gx#core-expand*__% _g175874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g175874_))))))
    (define gx#core-expand1
      (lambda (_%stx174014%_)
        (letrec ((_%step174016%_
                  (lambda (_%hd174053%_)
                    (let ((_%bind174055%_
                           (gx#resolve-identifier__0 _%hd174053%_)))
                      (if (##structure-instance-of?
                           _%bind174055%_
                           'gx#runtime-binding::t)
                          _%stx174014%_
                          (if (##structure-direct-instance-of?
                               _%bind174055%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind174055%_
                                '5
                                '#f
                                '#f)
                               _%stx174014%_)
                              (if (not _%bind174055%_)
                                  _%stx174014%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx174014%_))))))))
          (let* ((_%e174017174025%_ _%stx174014%_)
                 (_%E174023174029%_ (lambda () _%stx174014%_))
                 (_%E174019174035%_
                  (lambda ()
                    (let ((_%hd174033%_ _%e174017174025%_))
                      (if (gx#identifier? _%hd174033%_)
                          (_%step174016%_ _%hd174033%_)
                          (_%E174023174029%_)))))
                 (_%E174018174049%_
                  (lambda ()
                    (if (gx#stx-pair? _%e174017174025%_)
                        (let ((_%e174020174039%_
                               (gx#syntax-e _%e174017174025%_)))
                          (let ((_%hd174021174042%_ (##car _%e174020174039%_))
                                (_%tl174022174044%_ (##cdr _%e174020174039%_)))
                            (let ((_%hd174047%_ _%hd174021174042%_))
                              (if (gx#identifier? _%hd174047%_)
                                  (_%step174016%_ _%hd174047%_)
                                  (_%E174019174035%_)))))
                        (_%E174019174035%_)))))
            (_%E174018174049%_)))))
    (define gx#core-expand-head
      (lambda (_%stx173980%_)
        (letrec ((_%stop?173982%_
                  (lambda (_%stx173984%_)
                    (let* ((_%e173985173992%_ _%stx173984%_)
                           (_%E173987173996%_ (lambda () '#f))
                           (_%E173986174010%_
                            (lambda ()
                              (if (gx#stx-pair? _%e173985173992%_)
                                  (let ((_%e173988174000%_
                                         (gx#syntax-e _%e173985173992%_)))
                                    (let ((_%hd173989174003%_
                                           (##car _%e173988174000%_))
                                          (_%tl173990174005%_
                                           (##cdr _%e173988174000%_)))
                                      (let ((_%hd174008%_ _%hd173989174003%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd174008%_))))
                                  (_%E173987173996%_)))))
                      (_%E173986174010%_)))))
          (gx#core-expand*__% _%stx173980%_ _%stop?173982%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx173786%_
               _%expand-special173787%_
               _%begin-form173788%_
               _%expand-e173789%_)
        (letrec ((_%expand-splice173791%_
                  (lambda (_%hd173954%_
                           _%body173955%_
                           _%rest173956%_
                           _%r173957%_)
                    (if (gx#stx-list? _%body173955%_)
                        (_%K173795%_
                         (gx#stx-foldr cons _%rest173956%_ _%body173955%_)
                         _%r173957%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx173786%_
                         _%hd173954%_))))
                 (_%expand-cond-expand173792%_
                  (lambda (_%hd173950%_ _%rest173951%_ _%r173952%_)
                    (_%K173795%_
                     (cons (gx#core-expand-cond-expand% _%hd173950%_)
                           _%rest173951%_)
                     _%r173952%_)))
                 (_%expand-include173793%_
                  (lambda (_%hd173899%_ _%rest173900%_ _%r173901%_)
                    (let* ((_%e173902173912%_ _%hd173899%_)
                           (_%E173904173916%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e173902173912%_)))
                           (_%E173903173946%_
                            (lambda ()
                              (if (gx#stx-pair? _%e173902173912%_)
                                  (let ((_%e173905173920%_
                                         (gx#syntax-e _%e173902173912%_)))
                                    (let ((_%hd173906173923%_
                                           (##car _%e173905173920%_))
                                          (_%tl173907173925%_
                                           (##cdr _%e173905173920%_)))
                                      (if (gx#stx-pair? _%tl173907173925%_)
                                          (let ((_%e173908173928%_
                                                 (gx#syntax-e
                                                  _%tl173907173925%_)))
                                            (let ((_%hd173909173931%_
                                                   (##car _%e173908173928%_))
                                                  (_%tl173910173933%_
                                                   (##cdr _%e173908173928%_)))
                                              (let ((_%path173936%_
                                                     _%hd173909173931%_))
                                                (if (gx#stx-null?
                                                     _%tl173910173933%_)
                                                    (if (gx#stx-string?
                                                         _%path173936%_)
                                                        (let* ((_%rpath173938%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path173936%_
                         (gx#stx-source _%hd173899%_)))
                       (_%block173940%_
                        (gx#core-expand-include%__%
                         _%hd173899%_
                         _%rpath173938%_))
                       (_%rbody173943%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block173940%_
                            _%expand-special173787%_
                            '#f
                            _%expand-e173789%_))
                         gx#current-expander-path
                         (cons _%rpath173938%_ (gx#current-expander-path)))))
                  (_%K173795%_
                   _%rest173900%_
                   (foldr__0 cons _%r173901%_ _%rbody173943%_)))
                (_%E173904173916%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E173904173916%_)))))
                                          (_%E173904173916%_))))
                                  (_%E173904173916%_)))))
                      (_%E173903173946%_))))
                 (_%expand-expression173794%_
                  (lambda (_%hd173895%_ _%rest173896%_ _%r173897%_)
                    (_%K173795%_
                     _%rest173896%_
                     (cons (_%expand-e173789%_ _%hd173895%_) _%r173897%_))))
                 (_%K173795%_
                  (lambda (_%rest173825%_ _%r173826%_)
                    (let* ((_%e173827173834%_ _%rest173825%_)
                           (_%E173829173838%_
                            (lambda ()
                              (if _%begin-form173788%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form173788%_
                                    (reverse _%r173826%_))
                                   (gx#stx-source _%stx173786%_))
                                  _%r173826%_)))
                           (_%E173828173891%_
                            (lambda ()
                              (if (gx#stx-pair? _%e173827173834%_)
                                  (let ((_%e173830173842%_
                                         (gx#syntax-e _%e173827173834%_)))
                                    (let ((_%hd173831173845%_
                                           (##car _%e173830173842%_))
                                          (_%tl173832173847%_
                                           (##cdr _%e173830173842%_)))
                                      (let* ((_%hd173850%_ _%hd173831173845%_)
                                             (_%rest173852%_
                                              _%tl173832173847%_)
                                             (_%hd173854%_
                                              (gx#core-expand-head
                                               _%hd173850%_))
                                             (_%e173855173862%_ _%hd173854%_)
                                             (_%E173857173866%_
                                              (lambda ()
                                                (_%expand-expression173794%_
                                                 _%hd173854%_
                                                 _%rest173852%_
                                                 _%r173826%_)))
                                             (_%E173856173887%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e173855173862%_)
                                                    (let ((_%e173858173870%_
                                                           (gx#syntax-e
                                                            _%e173855173862%_)))
                                                      (let ((_%hd173859173873%_
                                                             (##car _%e173858173870%_))
                                                            (_%tl173860173875%_
                                                             (##cdr _%e173858173870%_)))
                                                        (let* ((_%form173878%_
                                                                _%hd173859173873%_)
                                                               (_%body173880%_
                                                                _%tl173860173875%_)
                                                               (_%bind173882%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form173878%_)
                            (gx#resolve-identifier__0 _%form173878%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind173882%_)
                      (let ((_%$e173884%_
                             (##unchecked-structure-ref
                              _%bind173882%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e173884%_)
                            (_%expand-splice173791%_
                             _%hd173854%_
                             _%body173880%_
                             _%rest173852%_
                             _%r173826%_)
                            (if (eq? '%#cond-expand _%$e173884%_)
                                (_%expand-cond-expand173792%_
                                 _%hd173854%_
                                 _%rest173852%_
                                 _%r173826%_)
                                (if (eq? '%#include _%$e173884%_)
                                    (_%expand-include173793%_
                                     _%hd173854%_
                                     _%rest173852%_
                                     _%r173826%_)
                                    (_%expand-special173787%_
                                     _%hd173854%_
                                     _%K173795%_
                                     _%rest173852%_
                                     _%r173826%_)))))
                      (_%expand-expression173794%_
                       _%hd173854%_
                       _%rest173852%_
                       _%r173826%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E173857173866%_)))))
                                        (_%E173856173887%_))))
                                  (_%E173829173838%_)))))
                      (_%E173828173891%_)))))
          (let* ((_%e173796173803%_ _%stx173786%_)
                 (_%E173798173807%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e173796173803%_)))
                 (_%E173797173821%_
                  (lambda ()
                    (if (gx#stx-pair? _%e173796173803%_)
                        (let ((_%e173799173811%_
                               (gx#syntax-e _%e173796173803%_)))
                          (let ((_%hd173800173814%_ (##car _%e173799173811%_))
                                (_%tl173801173816%_ (##cdr _%e173799173811%_)))
                            (let ((_%body173819%_ _%tl173801173816%_))
                              (if (gx#stx-list? _%body173819%_)
                                  (_%K173795%_ _%body173819%_ '())
                                  (_%E173798173807%_)))))
                        (_%E173798173807%_)))))
            (_%E173797173821%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx173962%_ _%expand-special173963%_)
        (let* ((_%begin-form173965%_ '%#begin)
               (_%expand-e173967%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx173962%_
           _%expand-special173963%_
           _%begin-form173965%_
           _%expand-e173967%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx173969%_ _%expand-special173970%_ _%begin-form173971%_)
        (let ((_%expand-e173973%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx173969%_
           _%expand-special173970%_
           _%begin-form173971%_
           _%expand-e173973%_))))
    (define gx#core-expand-block
      (lambda _g175876_
        (let ((_g175877_ (##length _g175876_)))
          (cond ((##fx= _g175877_ 2) (apply gx#core-expand-block__0 _g175876_))
                ((##fx= _g175877_ 3) (apply gx#core-expand-block__1 _g175876_))
                ((##fx= _g175877_ 4) (apply gx#core-expand-block__% _g175876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g175876_))))))
    (define gx#core-expand-block*
      (lambda (_%stx173734%_ _%expand-special173735%_)
        (let* ((_%g173736173747%_
                (gx#core-expand-block__1
                 _%stx173734%_
                 _%expand-special173735%_
                 '#f))
               (_%E173740173751%_
                (lambda ()
                  (error '"No clause matching"
                         _%g173736173747%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K173745173782%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx173734%_)))
                (_%K173742173768%_ (lambda (_%expr173766%_) _%expr173766%_))
                (_%K173741173757%_
                 (lambda (_%body173755%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body173755%_))
                    (gx#stx-source _%stx173734%_)))))
            (let ((_%try-match173738173778%_
                   (lambda ()
                     (if (pair? _%g173736173747%_)
                         (let ((_%tl173744173773%_ (##cdr _%g173736173747%_))
                               (_%hd173743173771%_ (##car _%g173736173747%_)))
                           (if (null? _%tl173744173773%_)
                               (let ((_%expr173776%_ _%hd173743173771%_))
                                 (_%K173742173768%_ _%expr173776%_))
                               (let ((_%body173760%_ _%g173736173747%_))
                                 (_%K173741173757%_ _%body173760%_))))
                         (let ((_%body173760%_ _%g173736173747%_))
                           (_%K173741173757%_ _%body173760%_))))))
              (if (null? _%g173736173747%_)
                  (_%K173745173782%_)
                  (_%try-match173738173778%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx173560%_)
        (letrec ((_%satisfied?173562%_
                  (lambda (_%condition173663%_)
                    (let* ((_%e173664173679%_ _%condition173663%_)
                           (_%E173674173683%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e173664173679%_)))
                           (_%E173667173702%_
                            (lambda ()
                              (if (gx#stx-pair? _%e173664173679%_)
                                  (let ((_%e173675173687%_
                                         (gx#syntax-e _%e173664173679%_)))
                                    (let ((_%hd173676173690%_
                                           (##car _%e173675173687%_))
                                          (_%tl173677173692%_
                                           (##cdr _%e173675173687%_)))
                                      (let* ((_%combinator173695%_
                                              _%hd173676173690%_)
                                             (_%body173697%_
                                              _%tl173677173692%_))
                                        (if (gx#stx-list? _%body173697%_)
                                            (let ((_%$e173699%_
                                                   (gx#stx-e
                                                    _%combinator173695%_)))
                                              (if (eq? 'not _%$e173699%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?173562%_
                                                        _%body173697%_))
                                                  (if (eq? 'and _%$e173699%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?173562%_
                                                       _%body173697%_)
                                                      (if (eq? 'or
                                                               _%$e173699%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?173562%_
                                                           _%body173697%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e173699%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body173697%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx173560%_
                       _%combinator173695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E173674173683%_)))))
                                  (_%E173674173683%_))))
                           (_%E173666173724%_
                            (lambda ()
                              (if (gx#stx-pair? _%e173664173679%_)
                                  (let ((_%e173668173706%_
                                         (gx#syntax-e _%e173664173679%_)))
                                    (let ((_%hd173669173709%_
                                           (##car _%e173668173706%_))
                                          (_%tl173670173711%_
                                           (##cdr _%e173668173706%_)))
                                      (if (and (gx#identifier?
                                                _%hd173669173709%_)
                                               (gx#core-identifier=?
                                                _%hd173669173709%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl173670173711%_)
                                              (let ((_%e173671173714%_
                                                     (gx#syntax-e
                                                      _%tl173670173711%_)))
                                                (let ((_%hd173672173717%_
                                                       (##car _%e173671173714%_))
                                                      (_%tl173673173719%_
                                                       (##cdr _%e173671173714%_)))
                                                  (let ((_%expr173722%_
                                                         _%hd173672173717%_))
                                                    (if (gx#stx-null?
                                                         _%tl173673173719%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr173722%_)
                                                        (_%E173667173702%_)))))
                                              (_%E173667173702%_))
                                          (_%E173667173702%_))))
                                  (_%E173667173702%_))))
                           (_%E173665173730%_
                            (lambda ()
                              (let ((_%id173728%_ _%e173664173679%_))
                                (if (gx#identifier? _%id173728%_)
                                    (gx#core-bound-identifier?__%
                                     _%id173728%_
                                     gx#feature-binding?)
                                    (_%E173666173724%_))))))
                      (_%E173665173730%_))))
                 (_%loop173563%_
                  (lambda (_%rest173593%_)
                    (let* ((_%e173594173602%_ _%rest173593%_)
                           (_%E173600173606%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e173594173602%_)))
                           (_%E173596173610%_
                            (lambda ()
                              (if (gx#stx-null? _%e173594173602%_)
                                  '()
                                  (_%E173600173606%_))))
                           (_%E173595173659%_
                            (lambda ()
                              (if (gx#stx-pair? _%e173594173602%_)
                                  (let ((_%e173597173614%_
                                         (gx#syntax-e _%e173594173602%_)))
                                    (let ((_%hd173598173617%_
                                           (##car _%e173597173614%_))
                                          (_%tl173599173619%_
                                           (##cdr _%e173597173614%_)))
                                      (let* ((_%hd173622%_ _%hd173598173617%_)
                                             (_%rest173624%_
                                              _%tl173599173619%_)
                                             (_%e173625173632%_ _%hd173622%_)
                                             (_%E173627173636%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e173625173632%_)))
                                             (_%E173626173655%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e173625173632%_)
                                                    (let ((_%e173628173640%_
                                                           (gx#syntax-e
                                                            _%e173625173632%_)))
                                                      (let ((_%hd173629173643%_
                                                             (##car _%e173628173640%_))
                                                            (_%tl173630173645%_
                                                             (##cdr _%e173628173640%_)))
                                                        (let* ((_%condition173648%_
                                                                _%hd173629173643%_)
                                                               (_%body173650%_
                                                                _%tl173630173645%_))
                                                          (if (gx#stx-eq?
                                                               _%condition173648%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest173624%_)
                          _%body173650%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx173560%_
                           _%hd173622%_))
                      (if (_%satisfied?173562%_ _%condition173648%_)
                          _%body173650%_
                          (_%loop173563%_ _%rest173624%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E173627173636%_)))))
                                        (_%E173626173655%_))))
                                  (_%E173596173610%_)))))
                      (_%E173595173659%_)))))
          (let* ((_%e173564173571%_ _%stx173560%_)
                 (_%E173566173575%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e173564173571%_)))
                 (_%E173565173589%_
                  (lambda ()
                    (if (gx#stx-pair? _%e173564173571%_)
                        (let ((_%e173567173579%_
                               (gx#syntax-e _%e173564173571%_)))
                          (let ((_%hd173568173582%_ (##car _%e173567173579%_))
                                (_%tl173569173584%_ (##cdr _%e173567173579%_)))
                            (let ((_%clauses173587%_ _%tl173569173584%_))
                              (if (gx#stx-list? _%clauses173587%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop173563%_ _%clauses173587%_))
                                  (_%E173566173575%_)))))
                        (_%E173566173575%_)))))
            (_%E173565173589%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx173503%_ _%rpath173504%_)
        (let* ((_%e173505173515%_ _%stx173503%_)
               (_%E173507173519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e173505173515%_)))
               (_%E173506173546%_
                (lambda ()
                  (if (gx#stx-pair? _%e173505173515%_)
                      (let ((_%e173508173523%_
                             (gx#syntax-e _%e173505173515%_)))
                        (let ((_%hd173509173526%_ (##car _%e173508173523%_))
                              (_%tl173510173528%_ (##cdr _%e173508173523%_)))
                          (if (gx#stx-pair? _%tl173510173528%_)
                              (let ((_%e173511173531%_
                                     (gx#syntax-e _%tl173510173528%_)))
                                (let ((_%hd173512173534%_
                                       (##car _%e173511173531%_))
                                      (_%tl173513173536%_
                                       (##cdr _%e173511173531%_)))
                                  (let ((_%path173539%_ _%hd173512173534%_))
                                    (if (gx#stx-null? _%tl173513173536%_)
                                        (if (gx#stx-string? _%path173539%_)
                                            (let ((_%rpath173544%_
                                                   (let ((_%$e173541%_
                                                          _%rpath173504%_))
                                                     (if _%$e173541%_
                                                         _%$e173541%_
                                                         (gx#core-resolve-path__%
                                                          _%path173539%_
                                                          (gx#stx-source
                                                           _%stx173503%_))))))
                                              (if (member _%rpath173544%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx173503%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath173544%_))
                                                    (gx#stx-source
                                                     _%stx173503%_)))))
                                            (_%E173507173519%_))
                                        (_%E173507173519%_)))))
                              (_%E173507173519%_))))
                      (_%E173507173519%_)))))
          (_%E173506173546%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx173553%_)
        (let ((_%rpath173555%_ '#f))
          (gx#core-expand-include%__% _%stx173553%_ _%rpath173555%_))))
    (define gx#core-expand-include%
      (lambda _g175878_
        (let ((_g175879_ (##length _g175878_)))
          (cond ((##fx= _g175879_ 1)
                 (apply gx#core-expand-include%__0 _g175878_))
                ((##fx= _g175879_ 2)
                 (apply gx#core-expand-include%__% _g175878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g175878_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K173469%_ _%stx173470%_ _%method173471%_)
        (if (procedure? _%K173469%_)
            (let ((_%$e173474%_ (gx#stx-source _%stx173470%_)))
              (if _%$e173474%_
                  ((lambda (_%g173476173478%_)
                     (gx#stx-wrap-source
                      (_%K173469%_ _%stx173470%_)
                      _%g173476173478%_))
                   _%$e173474%_)
                  (_%K173469%_ _%stx173470%_)))
            (let ((_%$e173482%_
                   (bound-method-ref _%K173469%_ _%method173471%_)))
              (if _%$e173482%_
                  ((lambda (_%g173484173486%_)
                     (gx#core-apply-expander__%
                      _%g173484173486%_
                      _%stx173470%_
                      _%method173471%_))
                   _%$e173482%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx173470%_
                   _%method173471%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K173493%_ _%stx173494%_)
        (let ((_%method173496%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K173493%_
           _%stx173494%_
           _%method173496%_))))
    (define gx#core-apply-expander
      (lambda _g175880_
        (let ((_g175881_ (##length _g175880_)))
          (cond ((##fx= _g175881_ 2)
                 (apply gx#core-apply-expander__0 _g175880_))
                ((##fx= _g175881_ 3)
                 (apply gx#core-apply-expander__% _g175880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g175880_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self173454%_ _%stx173455%_)
        (let ((_%self173458%_ _%self173454%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx173455%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self173297%_ _%stx173298%_)
        (let* ((_%self173301%_ _%self173297%_)
               (_%self173310173316%_ _%self173301%_)
               (_%E173312173319%_
                (lambda ()
                  (error '"No clause matching"
                         _%self173310173316%_
                         '((macro-expander K)))
                  '#!void))
               (_%K173313173324%_
                (lambda (_%K173322%_)
                  (gx#core-apply-expander__0 _%K173322%_ _%stx173298%_)))
               (_%e173314173327%_
                (##unchecked-structure-ref _%self173310173316%_ '1 '#f '#f))
               (_%K173330%_ _%e173314173327%_))
          (_%K173313173324%_ _%K173330%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self173140%_ _%stx173141%_)
        (let ((_%self173144%_ _%self173140%_))
          (if (gx#sealed-syntax? _%stx173141%_)
              _%stx173141%_
              (let* ((_%self173153173159%_ _%self173144%_)
                     (_%E173155173162%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self173153173159%_
                               '((core-expander K)))
                        '#!void))
                     (_%K173156173167%_
                      (lambda (_%K173165%_)
                        (gx#core-apply-expander__0 _%K173165%_ _%stx173141%_)))
                     (_%e173157173170%_
                      (##unchecked-structure-ref
                       _%self173153173159%_
                       '1
                       '#f
                       '#f))
                     (_%K173173%_ _%e173157173170%_))
                (_%K173156173167%_ _%K173173%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self172991%_ _%stx172992%_ _%top?172993%_)
        (let ((_%self172996%_ _%self172991%_))
          (if (_%top?172993%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self172996%_
               _%stx172992%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx172992%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self173009%_ _%stx173010%_)
        (let ((_%top?173012%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self173009%_
           _%stx173010%_
           _%top?173012%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g175882_
        (let ((_g175883_ (##length _g175882_)))
          (cond ((##fx= _g175883_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g175882_))
                ((##fx= _g175883_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g175882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g175882_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self172854%_ _%stx172855%_)
        (let ((_%self172858%_ _%self172854%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self172858%_
           _%stx172855%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self172669%_ _%stx172670%_)
        (let* ((_%self172673%_ _%self172669%_)
               (_%self172682172688%_ _%self172673%_)
               (_%E172684172691%_
                (lambda ()
                  (error '"No clause matching"
                         _%self172682172688%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K172685172724%_
                (lambda (_%id172694%_)
                  (let* ((_%e172695172702%_ _%stx172670%_)
                         (_%E172697172706%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e172695172702%_)))
                         (_%E172696172720%_
                          (lambda ()
                            (if (gx#stx-pair? _%e172695172702%_)
                                (let ((_%e172698172710%_
                                       (gx#syntax-e _%e172695172702%_)))
                                  (let ((_%hd172699172713%_
                                         (##car _%e172698172710%_))
                                        (_%tl172700172715%_
                                         (##cdr _%e172698172710%_)))
                                    (let ((_%body172718%_ _%tl172700172715%_))
                                      (gx#core-cons
                                       _%id172694%_
                                       _%body172718%_))))
                                (_%E172697172706%_)))))
                    (_%E172696172720%_))))
               (_%e172686172727%_
                (##unchecked-structure-ref _%self172682172688%_ '1 '#f '#f))
               (_%id172730%_ _%e172686172727%_))
          (_%K172685172724%_ _%id172730%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self172496%_ _%stx172497%_ _%method172498%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx172497%_))
              (force-output))
            '#!void)
        (let* ((_%self172499172507%_ _%self172496%_)
               (_%E172501172510%_
                (lambda ()
                  (error '"No clause matching"
                         _%self172499172507%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K172502172517%_
                (lambda (_%phi172513%_ _%ctx172514%_ _%K172515%_)
                  (gx#core-apply-user-macro
                   _%K172515%_
                   _%stx172497%_
                   _%ctx172514%_
                   _%phi172513%_
                   _%method172498%_))))
          (if (##structure-instance-of?
               _%self172499172507%_
               'gx#user-expander::t)
              (let* ((_%e172503172520%_
                      (##unchecked-structure-ref
                       _%self172499172507%_
                       '1
                       '#f
                       '#f))
                     (_%K172523%_ _%e172503172520%_)
                     (_%e172504172525%_
                      (##unchecked-structure-ref
                       _%self172499172507%_
                       '2
                       '#f
                       '#f))
                     (_%ctx172528%_ _%e172504172525%_)
                     (_%e172505172530%_
                      (##unchecked-structure-ref
                       _%self172499172507%_
                       '3
                       '#f
                       '#f))
                     (_%phi172533%_ _%e172505172530%_))
                (_%K172502172517%_ _%phi172533%_ _%ctx172528%_ _%K172523%_))
              (_%E172501172510%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self172538%_ _%stx172539%_)
        (let ((_%method172541%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self172538%_
           _%stx172539%_
           _%method172541%_))))
    (define gx#core-apply-user-expander
      (lambda _g175884_
        (let ((_g175885_ (##length _g175884_)))
          (cond ((##fx= _g175885_ 2)
                 (apply gx#core-apply-user-expander__0 _g175884_))
                ((##fx= _g175885_ 3)
                 (apply gx#core-apply-user-expander__% _g175884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g175884_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K172486%_
               _%stx172487%_
               _%ctx172488%_
               _%phi172489%_
               _%method172490%_)
        (let ((_%mark172492%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx172488%_
                _%phi172489%_
                _%stx172487%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K172486%_
               (gx#stx-apply-mark _%stx172487%_ _%mark172492%_)
               _%method172490%_)
              _%mark172492%_))
           gx#current-expander-marks
           (cons _%mark172492%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx172334%_ _%phi172335%_ _%ctx172336%_)
        (let _%lp172338%_ ((_%bind172340%_
                            (gx#core-resolve-identifier__%
                             _%stx172334%_
                             _%phi172335%_
                             _%ctx172336%_)))
          (if (##structure-direct-instance-of?
               _%bind172340%_
               'gx#import-binding::t)
              (_%lp172338%_
               (##unchecked-structure-ref _%bind172340%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind172340%_
                   'gx#alias-binding::t)
                  (_%lp172338%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind172340%_ '5 '#f '#f)
                    _%phi172335%_
                    _%ctx172336%_))
                  _%bind172340%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx172348%_)
        (let* ((_%phi172350%_ (gx#current-expander-phi))
               (_%ctx172352%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx172348%_
           _%phi172350%_
           _%ctx172352%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx172354%_ _%phi172355%_)
        (let ((_%ctx172357%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx172354%_
           _%phi172355%_
           _%ctx172357%_))))
    (define gx#resolve-identifier
      (lambda _g175886_
        (let ((_g175887_ (##length _g175886_)))
          (cond ((##fx= _g175887_ 1)
                 (apply gx#resolve-identifier__0 _g175886_))
                ((##fx= _g175887_ 2)
                 (apply gx#resolve-identifier__1 _g175886_))
                ((##fx= _g175887_ 3)
                 (apply gx#resolve-identifier__% _g175886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g175886_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx172289%_
               _%val172290%_
               _%rebind?172291%_
               _%phi172292%_
               _%ctx172293%_)
        (let ((_%rebind?172298%_
               (if (not _%rebind?172291%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?172291%_)
                       _%rebind?172291%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx172289%_)
           _%val172290%_
           _%rebind?172298%_
           _%phi172292%_
           _%ctx172293%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx172303%_ _%val172304%_)
        (let* ((_%rebind?172306%_ '#f)
               (_%phi172308%_ (gx#current-expander-phi))
               (_%ctx172310%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx172303%_
           _%val172304%_
           _%rebind?172306%_
           _%phi172308%_
           _%ctx172310%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx172312%_ _%val172313%_ _%rebind?172314%_)
        (let* ((_%phi172316%_ (gx#current-expander-phi))
               (_%ctx172318%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx172312%_
           _%val172313%_
           _%rebind?172314%_
           _%phi172316%_
           _%ctx172318%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx172320%_ _%val172321%_ _%rebind?172322%_ _%phi172323%_)
        (let ((_%ctx172325%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx172320%_
           _%val172321%_
           _%rebind?172322%_
           _%phi172323%_
           _%ctx172325%_))))
    (define gx#bind-identifier!
      (lambda _g175888_
        (let ((_g175889_ (##length _g175888_)))
          (cond ((##fx= _g175889_ 2) (apply gx#bind-identifier!__0 _g175888_))
                ((##fx= _g175889_ 3) (apply gx#bind-identifier!__1 _g175888_))
                ((##fx= _g175889_ 4) (apply gx#bind-identifier!__2 _g175888_))
                ((##fx= _g175889_ 5) (apply gx#bind-identifier!__% _g175888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g175888_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx172255%_ _%phi172256%_ _%ctx172257%_)
        (let _%lp172259%_ ((_%e172261%_ _%stx172255%_)
                           (_%marks172262%_ (gx#current-expander-marks)))
          (if (symbol? _%e172261%_)
              (gx#core-resolve-binding
               _%e172261%_
               _%phi172256%_
               _%phi172256%_
               _%ctx172257%_
               (reverse _%marks172262%_))
              (if (gx#identifier-quote? _%e172261%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e172261%_ '1 '#f '#f)
                   _%phi172256%_
                   '0
                   (##unchecked-structure-ref _%e172261%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e172261%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e172261%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e172261%_ '1 '#f '#f)
                       _%phi172256%_
                       _%phi172256%_
                       _%ctx172257%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e172261%_ '3 '#f '#f)
                        _%marks172262%_))
                      (if (##structure-direct-instance-of?
                           _%e172261%_
                           'gx#syntax-wrap::t)
                          (_%lp172259%_
                           (##unchecked-structure-ref _%e172261%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e172261%_ '3 '#f '#f)
                            _%marks172262%_))
                          (if (##structure-instance-of?
                               _%e172261%_
                               'gerbil#AST::t)
                              (_%lp172259%_
                               (##unchecked-structure-ref
                                _%e172261%_
                                '1
                                '#f
                                '#f)
                               _%marks172262%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx172255%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx172273%_)
        (let* ((_%phi172275%_ (gx#current-expander-phi))
               (_%ctx172277%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx172273%_
           _%phi172275%_
           _%ctx172277%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx172279%_ _%phi172280%_)
        (let ((_%ctx172282%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx172279%_
           _%phi172280%_
           _%ctx172282%_))))
    (define gx#core-resolve-identifier
      (lambda _g175890_
        (let ((_g175891_ (##length _g175890_)))
          (cond ((##fx= _g175891_ 1)
                 (apply gx#core-resolve-identifier__0 _g175890_))
                ((##fx= _g175891_ 2)
                 (apply gx#core-resolve-identifier__1 _g175890_))
                ((##fx= _g175891_ 3)
                 (apply gx#core-resolve-identifier__% _g175890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g175890_))))))
    (define gx#core-resolve-binding
      (lambda (_%id172166%_
               _%phi172167%_
               _%src-phi172168%_
               _%ctx172169%_
               _%marks172170%_)
        (letrec ((_%resolve172172%_
                  (lambda (_%ctx172239%_ _%src-phi172240%_ _%key172241%_)
                    (let _%lp172243%_ ((_%ctx172245%_
                                        (gx#core-context-shift
                                         _%ctx172239%_
                                         _%phi172167%_))
                                       (_%dphi172246%_
                                        (fx- _%phi172167%_ _%src-phi172240%_)))
                      (let ((_%$e172248%_
                             (gx#core-context-resolve
                              _%ctx172245%_
                              _%key172241%_)))
                        (if _%$e172248%_
                            _%$e172248%_
                            (if (fxzero? _%dphi172246%_)
                                '#f
                                (if (fxpositive? _%dphi172246%_)
                                    (_%lp172243%_
                                     (gx#core-context-shift _%ctx172245%_ '-1)
                                     (##fx- _%dphi172246%_ '1))
                                    (_%lp172243%_
                                     (gx#core-context-shift _%ctx172245%_ '1)
                                     (##fx+ _%dphi172246%_ '1))))))))))
          (let _%lp172174%_ ((_%ctx172176%_ _%ctx172169%_)
                             (_%src-phi172177%_ _%src-phi172168%_)
                             (_%rest172178%_ _%marks172170%_))
            (let* ((_%rest172179172187%_ _%rest172178%_)
                   (_%else172181172195%_
                    (lambda ()
                      (_%resolve172172%_
                       _%ctx172176%_
                       _%src-phi172177%_
                       _%id172166%_)))
                   (_%K172183172227%_
                    (lambda (_%rest172198%_ _%hd172199%_)
                      (let* ((_%hd172200172206%_ _%hd172199%_)
                             (_%E172202172209%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd172200172206%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K172203172219%_
                              (lambda (_%subst172212%_)
                                (let ((_%$e172216%_
                                       (let ((_%key172214%_
                                              (if _%subst172212%_
                                                  (hash-get
                                                   _%subst172212%_
                                                   _%id172166%_)
                                                  '#f)))
                                         (if _%key172214%_
                                             (_%resolve172172%_
                                              _%ctx172176%_
                                              _%src-phi172177%_
                                              _%key172214%_)
                                             '#f))))
                                  (if _%$e172216%_
                                      _%$e172216%_
                                      (_%lp172174%_
                                       (##unchecked-structure-ref
                                        _%hd172199%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd172199%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest172198%_))))))
                        (if (##structure-instance-of?
                             _%hd172200172206%_
                             'gx#expander-mark::t)
                            (let* ((_%e172204172222%_
                                    (##unchecked-structure-ref
                                     _%hd172200172206%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst172225%_ _%e172204172222%_))
                              (_%K172203172219%_ _%subst172225%_))
                            (_%E172202172209%_))))))
              (if (pair? _%rest172179172187%_)
                  (let ((_%hd172184172230%_ (##car _%rest172179172187%_))
                        (_%tl172185172232%_ (##cdr _%rest172179172187%_)))
                    (let* ((_%hd172235%_ _%hd172184172230%_)
                           (_%rest172237%_ _%tl172185172232%_))
                      (_%K172183172227%_ _%rest172237%_ _%hd172235%_)))
                  (_%else172181172195%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key172037%_
               _%val172038%_
               _%rebind?172039%_
               _%phi172040%_
               _%ctx172041%_)
        (letrec ((_%update-binding172043%_
                  (lambda (_%xval172115%_)
                    (if (or (_%rebind?172039%_
                             _%ctx172041%_
                             _%xval172115%_
                             _%val172038%_)
                            (and (##structure-direct-instance-of?
                                  _%xval172115%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval172115%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val172038%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val172038%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval172115%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val172038%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val172038%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval172115%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val172038%_
                        (if (and (##structure-direct-instance-of?
                                  _%val172038%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val172038%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval172115%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val172038%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval172115%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval172115%_
                            (if (and (##structure-direct-instance-of?
                                      _%val172038%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval172115%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key172037%_
                                 (cons (##unchecked-structure-ref
                                        _%val172038%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val172038%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval172115%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval172115%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval172115%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval172115%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key172037%_
                                 _%val172038%_
                                 _%xval172115%_))))))
                 (_%gensubst172044%_
                  (lambda (_%subst172110%_ _%id172111%_)
                    (let ((_%eid172113%_
                           (gensym (if (uninterned-symbol? _%id172111%_)
                                       '%
                                       _%id172111%_))))
                      (hash-put! _%subst172110%_ _%id172111%_ _%eid172113%_)
                      _%eid172113%_)))
                 (_%subst!172045%_
                  (lambda (_%key172047%_)
                    (let* ((_%key172048172056%_ _%key172047%_)
                           (_%else172050172064%_ (lambda () _%key172047%_))
                           (_%K172052172098%_
                            (lambda (_%mark172067%_ _%id172068%_)
                              (let* ((_%mark172069172075%_ _%mark172067%_)
                                     (_%E172071172078%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark172069172075%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K172072172090%_
                                      (lambda (_%subst172081%_)
                                        (if (not _%subst172081%_)
                                            (let ((_%subst172084%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark172067%_
                                               _%subst172084%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst172044%_
                                               _%subst172084%_
                                               _%id172068%_))
                                            (let ((_%$e172086%_
                                                   (hash-get
                                                    _%subst172081%_
                                                    _%id172068%_)))
                                              (if _%$e172086%_
                                                  _%$e172086%_
                                                  (_%gensubst172044%_
                                                   _%subst172081%_
                                                   _%id172068%_)))))))
                                (if (##structure-instance-of?
                                     _%mark172069172075%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e172073172093%_
                                            (##unchecked-structure-ref
                                             _%mark172069172075%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst172096%_ _%e172073172093%_))
                                      (_%K172072172090%_ _%subst172096%_))
                                    (_%E172071172078%_))))))
                      (if (pair? _%key172048172056%_)
                          (let ((_%hd172053172101%_
                                 (##car _%key172048172056%_))
                                (_%tl172054172103%_
                                 (##cdr _%key172048172056%_)))
                            (let* ((_%id172106%_ _%hd172053172101%_)
                                   (_%mark172108%_ _%tl172054172103%_))
                              (_%K172052172098%_ _%mark172108%_ _%id172106%_)))
                          (_%else172050172064%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx172041%_ _%phi172040%_)
           (_%subst!172045%_ _%key172037%_)
           _%val172038%_
           _%update-binding172043%_))))
    (define gx#core-bind!__0
      (lambda (_%key172136%_ _%val172137%_)
        (let* ((_%rebind?172139%_ false)
               (_%phi172141%_ (gx#current-expander-phi))
               (_%ctx172143%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key172136%_
           _%val172137%_
           _%rebind?172139%_
           _%phi172141%_
           _%ctx172143%_))))
    (define gx#core-bind!__1
      (lambda (_%key172145%_ _%val172146%_ _%rebind?172147%_)
        (let* ((_%phi172149%_ (gx#current-expander-phi))
               (_%ctx172151%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key172145%_
           _%val172146%_
           _%rebind?172147%_
           _%phi172149%_
           _%ctx172151%_))))
    (define gx#core-bind!__2
      (lambda (_%key172153%_ _%val172154%_ _%rebind?172155%_ _%phi172156%_)
        (let ((_%ctx172158%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key172153%_
           _%val172154%_
           _%rebind?172155%_
           _%phi172156%_
           _%ctx172158%_))))
    (define gx#core-bind!
      (lambda _g175892_
        (let ((_g175893_ (##length _g175892_)))
          (cond ((##fx= _g175893_ 2) (apply gx#core-bind!__0 _g175892_))
                ((##fx= _g175893_ 3) (apply gx#core-bind!__1 _g175892_))
                ((##fx= _g175893_ 4) (apply gx#core-bind!__2 _g175892_))
                ((##fx= _g175893_ 5) (apply gx#core-bind!__% _g175892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g175892_))))))
    (define gx#core-identifier-key
      (lambda (_%stx171968%_)
        (if (symbol? _%stx171968%_)
            (let* ((_%g171970171978%_ (gx#current-expander-marks))
                   (_%else171972171986%_ (lambda () _%stx171968%_))
                   (_%K171974171991%_
                    (lambda (_%hd171989%_) (cons _%stx171968%_ _%hd171989%_))))
              (if (pair? _%g171970171978%_)
                  (let* ((_%hd171975171994%_ (##car _%g171970171978%_))
                         (_%hd171997%_ _%hd171975171994%_))
                    (_%K171974171991%_ _%hd171997%_))
                  (_%else171972171986%_)))
            (if (gx#identifier? _%stx171968%_)
                (let* ((_%id172000%_ (gx#syntax-local-unwrap _%stx171968%_))
                       (_%eid172002%_ (gx#stx-e _%id172000%_))
                       (_%marks172004%_
                        (gx#stx-identifier-marks* _%id172000%_))
                       (_%marks172006172014%_ _%marks172004%_)
                       (_%else172008172022%_ (lambda () _%eid172002%_))
                       (_%K172010172027%_
                        (lambda (_%hd172025%_)
                          (cons _%eid172002%_ _%hd172025%_))))
                  (if (pair? _%marks172006172014%_)
                      (let* ((_%hd172011172030%_ (##car _%marks172006172014%_))
                             (_%hd172033%_ _%hd172011172030%_))
                        (_%K172010172027%_ _%hd172033%_))
                      (_%else172008172022%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx171968%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx171907%_ _%phi171908%_)
        (letrec ((_%make-phi171910%_
                  (lambda (_%super171966%_)
                    (let ((__obj175863
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj175863
                       (##gensym 'phi)
                       _%super171966%_)
                      __obj175863)))
                 (_%make-phi/up171911%_
                  (lambda (_%ctx171961%_ _%super171962%_)
                    (let ((_%ctx+1171964%_
                           (_%make-phi171910%_ _%super171962%_)))
                      (##unchecked-structure-set!
                       _%ctx171961%_
                       _%ctx+1171964%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1171964%_
                       _%ctx171961%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1171964%_)))
                 (_%make-phi/down171912%_
                  (lambda (_%ctx171956%_ _%super171957%_)
                    (let ((_%ctx-1171959%_
                           (_%make-phi171910%_ _%super171957%_)))
                      (##unchecked-structure-set!
                       _%ctx-1171959%_
                       _%ctx171956%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx171956%_
                       _%ctx-1171959%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1171959%_)))
                 (_%shift171913%_
                  (lambda (_%ctx171939%_
                           _%delta171940%_
                           _%make-delta-context171941%_
                           _%phi171942%_
                           _%K171943%_)
                    (let ((_%$e171945%_
                           (##unchecked-structure-ref
                            _%ctx171939%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e171945%_
                          ((lambda (_%super171948%_)
                             (let* ((_%super171950%_
                                     (_%K171943%_
                                      _%super171948%_
                                      _%delta171940%_))
                                    (_%ctx+d171952%_
                                     (_%make-delta-context171941%_
                                      _%ctx171939%_
                                      _%super171950%_)))
                               (_%K171943%_
                                _%ctx+d171952%_
                                (fx- _%phi171942%_ _%delta171940%_))))
                           _%$e171945%_)
                          (error '"Bad context" _%ctx171939%_))))))
          (let _%K171915%_ ((_%ctx171917%_ _%ctx171907%_)
                            (_%phi171918%_ _%phi171908%_))
            (if (fxzero? _%phi171918%_)
                _%ctx171917%_
                (if (##structure-instance-of? _%ctx171917%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi171918%_)
                        (let ((_%$e171922%_
                               (##unchecked-structure-ref
                                _%ctx171917%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e171922%_
                              ((lambda (_%g171924171926%_)
                                 (_%K171915%_
                                  _%g171924171926%_
                                  (##fx- _%phi171918%_ '1)))
                               _%$e171922%_)
                              (_%shift171913%_
                               _%ctx171917%_
                               '1
                               _%make-phi/up171911%_
                               _%phi171918%_
                               _%K171915%_)))
                        (let ((_%$e171930%_
                               (##unchecked-structure-ref
                                _%ctx171917%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e171930%_
                              ((lambda (_%g171932171934%_)
                                 (_%K171915%_
                                  _%g171932171934%_
                                  (##fx+ _%phi171918%_ '1)))
                               _%$e171930%_)
                              (_%shift171913%_
                               _%ctx171917%_
                               '-1
                               _%make-phi/down171912%_
                               _%phi171918%_
                               _%K171915%_))))
                    _%ctx171917%_))))))
    (define gx#core-context-get
      (lambda (_%ctx171904%_ _%key171905%_)
        (hash-get
         (##unchecked-structure-ref _%ctx171904%_ '2 '#f '#f)
         _%key171905%_)))
    (define gx#core-context-put!
      (lambda (_%ctx171900%_ _%key171901%_ _%val171902%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx171900%_ '2 '#f '#f)
         _%key171901%_
         _%val171902%_)
        _%val171902%_))
    (define gx#core-context-resolve
      (lambda (_%ctx171886%_ _%key171887%_)
        (let _%lp171889%_ ((_%ctx171891%_ _%ctx171886%_))
          (let ((_%$e171893%_
                 (gx#core-context-get _%ctx171891%_ _%key171887%_)))
            (if _%$e171893%_
                _%$e171893%_
                (let ((_%$e171896%_
                       (if (##structure-instance-of?
                            _%ctx171891%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx171891%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e171896%_ (_%lp171889%_ _%$e171896%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx171875%_ _%key171876%_ _%val171877%_ _%rebind171878%_)
        (let ((_%$e171880%_ (gx#core-context-get _%ctx171875%_ _%key171876%_)))
          (if _%$e171880%_
              ((lambda (_%xval171883%_)
                 (gx#core-context-put!
                  _%ctx171875%_
                  _%key171876%_
                  (_%rebind171878%_ _%xval171883%_)))
               _%$e171880%_)
              (gx#core-context-put!
               _%ctx171875%_
               _%key171876%_
               _%val171877%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx171850%_ _%stop?171851%_)
        (let _%lp171853%_ ((_%ctx171855%_ _%ctx171850%_))
          (if (_%stop?171851%_ _%ctx171855%_)
              _%ctx171855%_
              (if (##structure-instance-of? _%ctx171855%_ 'gx#phi-context::t)
                  (_%lp171853%_
                   (##unchecked-structure-ref _%ctx171855%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx171864%_ (gx#current-expander-context))
               (_%stop?171866%_ gx#top-context?))
          (gx#core-context-top__% _%ctx171864%_ _%stop?171866%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx171868%_)
        (let ((_%stop?171870%_ gx#top-context?))
          (gx#core-context-top__% _%ctx171868%_ _%stop?171870%_))))
    (define gx#core-context-top
      (lambda _g175894_
        (let ((_g175895_ (##length _g175894_)))
          (cond ((##fx= _g175895_ 0) (apply gx#core-context-top__0 _g175894_))
                ((##fx= _g175895_ 1) (apply gx#core-context-top__1 _g175894_))
                ((##fx= _g175895_ 2) (apply gx#core-context-top__% _g175894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g175894_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx171835%_)
        (let _%lp171837%_ ((_%ctx171839%_ _%ctx171835%_))
          (if (##structure-instance-of? _%ctx171839%_ 'gx#phi-context::t)
              (_%lp171837%_
               (##unchecked-structure-ref _%ctx171839%_ '3 '#f '#f))
              _%ctx171839%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx171845%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx171845%_))))
    (define gx#core-context-root
      (lambda _g175896_
        (let ((_g175897_ (##length _g175896_)))
          (cond ((##fx= _g175897_ 0) (apply gx#core-context-root__0 _g175896_))
                ((##fx= _g175897_ 1) (apply gx#core-context-root__% _g175896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g175896_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx171817%_ . _%ignore171818%_)
        (let ((_%$e171820%_ (gx#current-expander-allow-rebind?)))
          (if _%$e171820%_
              _%$e171820%_
              (if (##structure-instance-of? _%ctx171817%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx171817%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx171817%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx171827%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx171827%_))))
    (define gx#core-context-rebind?
      (lambda _g175898_
        (let ((_g175899_ (##length _g175898_)))
          (cond ((##fx= _g175899_ 0)
                 (apply gx#core-context-rebind?__0 _g175898_))
                ((##fx= _g175899_ 1)
                 (apply gx#core-context-rebind?__% _g175898_))
                ((##fx>= _g175899_ 1)
                 (apply gx#core-context-rebind?__% _g175898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g175898_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx171800%_)
        (let ((_%$e171802%_ (gx#core-context-top__1 _%ctx171800%_)))
          (if _%$e171802%_
              ((lambda (_%ctx171805%_)
                 (if (##structure-instance-of?
                      _%ctx171805%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx171805%_ '6 '#f '#f)
                     '#f))
               _%$e171802%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx171812%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx171812%_))))
    (define gx#core-context-namespace
      (lambda _g175900_
        (let ((_g175901_ (##length _g175900_)))
          (cond ((##fx= _g175901_ 0)
                 (apply gx#core-context-namespace__0 _g175900_))
                ((##fx= _g175901_ 1)
                 (apply gx#core-context-namespace__% _g175900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g175900_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind171786%_ _%is?171787%_)
        (if (##structure-direct-instance-of?
             _%bind171786%_
             'gx#syntax-binding::t)
            (_%is?171787%_
             (##unchecked-structure-ref _%bind171786%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind171792%_)
        (let ((_%is?171794%_ gx#expander?))
          (gx#expander-binding?__% _%bind171792%_ _%is?171794%_))))
    (define gx#expander-binding?
      (lambda _g175902_
        (let ((_g175903_ (##length _g175902_)))
          (cond ((##fx= _g175903_ 1) (apply gx#expander-binding?__0 _g175902_))
                ((##fx= _g175903_ 2) (apply gx#expander-binding?__% _g175902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g175902_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind171783%_)
        (gx#expander-binding?__% _%bind171783%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind171781%_)
        (gx#expander-binding?__% _%bind171781%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind171775%_)
        (letrec ((_%direct-special-form?171777%_
                  (lambda (_%obj171779%_)
                    (##structure-direct-instance-of?
                     _%obj171779%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind171775%_
           _%direct-special-form?171777%_))))
    (define gx#special-form-binding?
      (lambda (_%bind171773%_)
        (gx#expander-binding?__% _%bind171773%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind171764%_)
        (letrec ((_%feature?171766%_
                  (lambda (_%e171768%_)
                    (let ((_%$e171770%_
                           (##structure-instance-of?
                            _%e171768%_
                            'gx#feature-expander::t)))
                      (if _%$e171770%_
                          _%$e171770%_
                          (##structure-instance-of?
                           _%e171768%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind171764%_ _%feature?171766%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind171762%_)
        (gx#expander-binding?__% _%bind171762%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id171749%_ _%bound?171750%_)
        (if (gx#identifier? _%id171749%_)
            (_%bound?171750%_ (gx#resolve-identifier__0 _%id171749%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id171755%_)
        (let ((_%bound?171757%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id171755%_ _%bound?171757%_))))
    (define gx#core-bound-identifier?
      (lambda _g175904_
        (let ((_g175905_ (##length _g175904_)))
          (cond ((##fx= _g175905_ 1)
                 (apply gx#core-bound-identifier?__0 _g175904_))
                ((##fx= _g175905_ 2)
                 (apply gx#core-bound-identifier?__% _g175904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g175904_))))))
    (define gx#core-identifier=?
      (lambda (_%x171739%_ _%y171740%_)
        (letrec ((_%y=?171742%_
                  (lambda (_%xid171746%_)
                    ((if (list? _%y171740%_) memq eq?)
                     _%xid171746%_
                     _%y171740%_))))
          (let ((_%bind171744%_ (gx#resolve-identifier__0 _%x171739%_)))
            (if (##structure-instance-of? _%bind171744%_ 'gx#binding::t)
                (_%y=?171742%_
                 (##unchecked-structure-ref _%bind171744%_ '1 '#f '#f))
                (_%y=?171742%_ (gx#stx-e _%x171739%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e171737%_)
        (if (interned-symbol? _%e171737%_)
            (string-index__0 (symbol->string _%e171737%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx171690%_ _%src171691%_ _%ctx171692%_ _%marks171693%_)
        (if (##structure? _%stx171690%_)
            (let ((_%$e171695%_ (gx#sealed-syntax-unwrap _%stx171690%_)))
              (if _%$e171695%_
                  _%$e171695%_
                  (if (gx#identifier? _%stx171690%_)
                      (let ((_%id171699%_
                             (gx#stx-unwrap__% _%stx171690%_ _%marks171693%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id171699%_ '1 '#f '#f)
                         (let ((_%$e171701%_
                                (##unchecked-structure-ref
                                 _%id171699%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e171701%_ _%$e171701%_ _%src171691%_))
                         _%ctx171692%_
                         (##unchecked-structure-ref _%id171699%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx171690%_)
                       (let ((_%$e171705%_ (gx#stx-source _%stx171690%_)))
                         (if _%$e171705%_ _%$e171705%_ _%src171691%_))
                       _%ctx171692%_
                       (reverse _%marks171693%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx171690%_
             _%src171691%_
             _%ctx171692%_
             (reverse _%marks171693%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx171711%_)
        (let* ((_%src171713%_ '#f)
               (_%ctx171715%_ (gx#current-expander-context))
               (_%marks171717%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx171711%_
           _%src171713%_
           _%ctx171715%_
           _%marks171717%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx171719%_ _%src171720%_)
        (let* ((_%ctx171722%_ (gx#current-expander-context))
               (_%marks171724%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx171719%_
           _%src171720%_
           _%ctx171722%_
           _%marks171724%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx171726%_ _%src171727%_ _%ctx171728%_)
        (let ((_%marks171730%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx171726%_
           _%src171727%_
           _%ctx171728%_
           _%marks171730%_))))
    (define gx#core-quote-syntax
      (lambda _g175906_
        (let ((_g175907_ (##length _g175906_)))
          (cond ((##fx= _g175907_ 1) (apply gx#core-quote-syntax__0 _g175906_))
                ((##fx= _g175907_ 2) (apply gx#core-quote-syntax__1 _g175906_))
                ((##fx= _g175907_ 3) (apply gx#core-quote-syntax__2 _g175906_))
                ((##fx= _g175907_ 4) (apply gx#core-quote-syntax__% _g175906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g175906_))))))
    (define gx#core-cons
      (lambda (_%hd171686%_ _%tl171687%_)
        (cons (gx#core-quote-syntax__0 _%hd171686%_) _%tl171687%_)))
    (define gx#core-list
      (lambda (_%hd171683%_ . _%rest171684%_)
        (cons (gx#core-quote-syntax__0 _%hd171683%_) _%rest171684%_)))
    (define gx#core-cons*
      (lambda (_%hd171680%_ . _%rest171681%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd171680%_) _%rest171681%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path171649%_ _%rel171650%_)
        (let ((_%path171667%_ (gx#stx-e _%stx-path171649%_))
              (_%reldir171668%_
               (let _%lp171652%_ ((_%relsrc171654%_
                                   (let ((_%$e171664%_
                                          (gx#stx-source _%stx-path171649%_)))
                                     (if _%$e171664%_
                                         _%$e171664%_
                                         _%rel171650%_))))
                 (if (##structure-instance-of? _%relsrc171654%_ 'gerbil#AST::t)
                     (_%lp171652%_
                      (let ((_%$e171657%_ (gx#stx-source _%relsrc171654%_)))
                        (if _%$e171657%_
                            _%$e171657%_
                            (gx#stx-e _%relsrc171654%_))))
                     (if (source-location-path? _%relsrc171654%_)
                         (path-directory
                          (source-location-path _%relsrc171654%_))
                         (if (string? _%relsrc171654%_)
                             (path-directory _%relsrc171654%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path171667%_ (path-normalize _%reldir171668%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path171673%_)
        (let ((_%rel171675%_ '#f))
          (gx#core-resolve-path__% _%stx-path171673%_ _%rel171675%_))))
    (define gx#core-resolve-path
      (lambda _g175908_
        (let ((_g175909_ (##length _g175908_)))
          (cond ((##fx= _g175909_ 1) (apply gx#core-resolve-path__0 _g175908_))
                ((##fx= _g175909_ 2) (apply gx#core-resolve-path__% _g175908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g175908_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr171605%_ _%ctx171606%_)
        (let* ((_%repr171607171614%_ _%repr171605%_)
               (_%E171609171618%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr171607171614%_
                         '([phi . subs]))
                  '#!void))
               (_%K171610171626%_
                (lambda (_%subs171621%_ _%phi171622%_)
                  (let ((_%subst171624%_
                         (if (null? _%subs171621%_)
                             '#f
                             (list->hash-table-eq _%subs171621%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst171624%_
                     _%ctx171606%_
                     _%phi171622%_
                     '#f)))))
          (if (pair? _%repr171607171614%_)
              (let ((_%hd171611171629%_ (##car _%repr171607171614%_))
                    (_%tl171612171631%_ (##cdr _%repr171607171614%_)))
                (let* ((_%phi171634%_ _%hd171611171629%_)
                       (_%subs171636%_ _%tl171612171631%_))
                  (_%K171610171626%_ _%subs171636%_ _%phi171634%_)))
              (_%E171609171618%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr171641%_)
        (let ((_%ctx171643%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr171641%_ _%ctx171643%_))))
    (define gx#core-deserialize-mark
      (lambda _g175910_
        (let ((_g175911_ (##length _g175910_)))
          (cond ((##fx= _g175911_ 1)
                 (apply gx#core-deserialize-mark__0 _g175910_))
                ((##fx= _g175911_ 2)
                 (apply gx#core-deserialize-mark__% _g175910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g175910_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx171602%_)
        (gx#stx-rewrap _%stx171602%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx171600%_)
        (gx#stx-unwrap__% _%stx171600%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx171570%_)
        (let* ((_%g171571171579%_ (gx#current-expander-marks))
               (_%else171573171587%_ (lambda () _%stx171570%_))
               (_%K171575171592%_
                (lambda (_%hd171590%_)
                  (gx#stx-apply-mark _%stx171570%_ _%hd171590%_))))
          (if (pair? _%g171571171579%_)
              (let* ((_%hd171576171595%_ (##car _%g171571171579%_))
                     (_%hd171598%_ _%hd171576171595%_))
                (_%K171575171592%_ _%hd171598%_))
              (_%else171573171587%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym171568%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym171568%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx171553%_ _%E171554%_)
        (let ((_%bind171556%_ (gx#resolve-identifier__0 _%stx171553%_)))
          (if (##structure-direct-instance-of?
               _%bind171556%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind171556%_ '5 '#f '#f)
              (_%E171554%_ _%stx171553%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx171561%_)
        (let ((_%E171563%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx171561%_ _%E171563%_))))
    (define gx#syntax-local-e
      (lambda _g175912_
        (let ((_g175913_ (##length _g175912_)))
          (cond ((##fx= _g175913_ 1) (apply gx#syntax-local-e__0 _g175912_))
                ((##fx= _g175913_ 2) (apply gx#syntax-local-e__% _g175912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g175912_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx171537%_ _%E171538%_)
        (let ((_%e171540%_ (gx#syntax-local-e__% _%stx171537%_ _%E171538%_)))
          (if (##structure-instance-of? _%e171540%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e171540%_ '1 '#f '#f)
              _%e171540%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx171545%_)
        (let ((_%E171547%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx171545%_ _%E171547%_))))
    (define gx#syntax-local-value
      (lambda _g175914_
        (let ((_g175915_ (##length _g175914_)))
          (cond ((##fx= _g175915_ 1)
                 (apply gx#syntax-local-value__0 _g175914_))
                ((##fx= _g175915_ 2)
                 (apply gx#syntax-local-value__% _g175914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g175914_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx171534%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx171534%_)))))
