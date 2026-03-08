(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1773009267)
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
      (lambda _%$args178785%_
        (apply make-instance gx#expander-context::t _%$args178785%_)))
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
      (lambda _%$args178782%_
        (apply make-instance gx#root-context::t _%$args178782%_)))
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
      (lambda _%$args178779%_
        (apply make-instance gx#phi-context::t _%$args178779%_)))
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
      (lambda _%$args178776%_
        (apply make-instance gx#top-context::t _%$args178776%_)))
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
      (lambda _%$args178773%_
        (apply make-instance gx#module-context::t _%$args178773%_)))
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
      (lambda _%$args178770%_
        (apply make-instance gx#prelude-context::t _%$args178770%_)))
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
      (lambda _%$args178767%_
        (apply make-instance gx#local-context::t _%$args178767%_)))
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
      (lambda (_%self178740%_ _%id178741%_ _%super178742%_)
        (let ((_%self178745%_ _%self178740%_))
          (if (##fx< '3 (##structure-length _%self178745%_))
              (begin
                (##unchecked-structure-set!
                 _%self178745%_
                 _%id178741%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178745%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178745%_
                 _%super178742%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self178745%_
                     '3
                     (##structure-length _%self178745%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self178758%_ _%id178759%_)
        (let ((_%super178761%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self178758%_
           _%id178759%_
           _%super178761%_))))
    (define gx#phi-context:::init!
      (lambda _g178827_
        (let ((_g178828_ (##length _g178827_)))
          (cond ((##fx= _g178828_ 2)
                 (apply gx#phi-context:::init!__0 _g178827_))
                ((##fx= _g178828_ 3)
                 (apply gx#phi-context:::init!__% _g178827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g178827_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self178593%_ _%super178594%_)
        (let ((_%self178597%_ _%self178593%_))
          (if (##fx< '3 (##structure-length _%self178597%_))
              (begin
                (##unchecked-structure-set!
                 _%self178597%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178597%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178597%_
                 _%super178594%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self178597%_
                     '3
                     (##structure-length _%self178597%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self178610%_)
        (let ((_%super178612%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self178610%_ _%super178612%_))))
    (define gx#local-context:::init!
      (lambda _g178829_
        (let ((_g178830_ (##length _g178829_)))
          (cond ((##fx= _g178830_ 1)
                 (apply gx#local-context:::init!__0 _g178829_))
                ((##fx= _g178830_ 2)
                 (apply gx#local-context:::init!__% _g178829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g178829_))))))
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
      (lambda _%$args178467%_
        (apply make-instance gx#binding::t _%$args178467%_)))
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
      (lambda (_%self178450%_ _%id178451%_ _%key178452%_ _%phi178453%_)
        (let ((_%self178456%_ _%self178450%_))
          (##unchecked-structure-set! _%self178456%_ _%id178451%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self178456%_ _%key178452%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self178456%_
           _%phi178453%_
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
      (lambda _%$args178325%_
        (apply make-instance gx#runtime-binding::t _%$args178325%_)))
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
      (lambda _%$args178322%_
        (apply make-instance gx#local-binding::t _%$args178322%_)))
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
      (lambda _%$args178319%_
        (apply make-instance gx#top-binding::t _%$args178319%_)))
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
      (lambda _%$args178316%_
        (apply make-instance gx#module-binding::t _%$args178316%_)))
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
      (lambda _%$args178313%_
        (apply make-instance gx#extern-binding::t _%$args178313%_)))
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
      (lambda (_%self177929%_
               _%id177930%_
               _%key177931%_
               _%phi177932%_
               _%ctx177933%_)
        (let ((_%self177936%_ _%self177929%_))
          (gx#binding:::init!
           _%self177936%_
           _%id177930%_
           _%key177931%_
           _%phi177932%_)
          (##unchecked-structure-set!
           _%self177936%_
           _%ctx177933%_
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
      (lambda _%$args177682%_
        (apply make-instance gx#syntax-binding::t _%$args177682%_)))
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
      (lambda _%$args177679%_
        (apply make-instance gx#import-binding::t _%$args177679%_)))
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
      (lambda _%$args177676%_
        (apply make-instance gx#alias-binding::t _%$args177676%_)))
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
      (lambda (_%self177658%_
               _%id177659%_
               _%key177660%_
               _%phi177661%_
               _%e177662%_)
        (let ((_%self177665%_ _%self177658%_))
          (gx#binding:::init!
           _%self177665%_
           _%id177659%_
           _%key177660%_
           _%phi177661%_)
          (##unchecked-structure-set! _%self177665%_ _%e177662%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self177516%_
               _%id177517%_
               _%key177518%_
               _%phi177519%_
               _%e177520%_
               _%ctx177521%_
               _%weak?177522%_)
        (let ((_%self177525%_ _%self177516%_))
          (gx#binding:::init!
           _%self177525%_
           _%id177517%_
           _%key177518%_
           _%phi177519%_)
          (##unchecked-structure-set! _%self177525%_ _%e177520%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self177525%_ _%ctx177521%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self177525%_
           _%weak?177522%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self177376%_
               _%id177377%_
               _%key177378%_
               _%phi177379%_
               _%e177380%_)
        (let ((_%self177383%_ _%self177376%_))
          (gx#binding:::init!
           _%self177383%_
           _%id177377%_
           _%key177378%_
           _%phi177379%_)
          (##unchecked-structure-set! _%self177383%_ _%e177380%_ '5 '#f '#f))))
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
      (lambda _%$args177251%_
        (apply make-instance gx#expander::t _%$args177251%_)))
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
      (lambda _%$args177248%_
        (apply make-instance gx#core-expander::t _%$args177248%_)))
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
      (lambda _%$args177245%_
        (apply make-instance gx#expression-form::t _%$args177245%_)))
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
      (lambda _%$args177242%_
        (apply make-instance gx#special-form::t _%$args177242%_)))
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
      (lambda _%$args177239%_
        (apply make-instance gx#definition-form::t _%$args177239%_)))
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
      (lambda _%$args177236%_
        (apply make-instance gx#top-special-form::t _%$args177236%_)))
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
      (lambda _%$args177233%_
        (apply make-instance gx#module-special-form::t _%$args177233%_)))
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
      (lambda _%$args177230%_
        (apply make-instance gx#feature-expander::t _%$args177230%_)))
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
      (lambda _%$args177227%_
        (apply make-instance gx#private-feature-expander::t _%$args177227%_)))
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
      (lambda _%$args177224%_
        (apply make-instance gx#reserved-expander::t _%$args177224%_)))
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
      (lambda _%$args177221%_
        (apply make-instance gx#macro-expander::t _%$args177221%_)))
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
      (lambda _%$args177218%_
        (apply make-instance gx#rename-macro-expander::t _%$args177218%_)))
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
      (lambda _%$args177215%_
        (apply make-instance gx#user-expander::t _%$args177215%_)))
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
      (lambda _%$args177212%_
        (apply make-instance gx#expander-mark::t _%$args177212%_)))
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
      (lambda (_%ctx177196%_
               _%message177197%_
               _%stx177198%_
               .
               _%details177199%_)
        (let ((_%ctx177210%_
               (let ((_%$e177201%_ _%ctx177196%_))
                 (if _%$e177201%_
                     _%$e177201%_
                     (let ((_%$e177204%_ (gx#core-context-top__0)))
                       (if _%$e177204%_
                           ((lambda (_%ctx177207%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx177207%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e177204%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message177197%_
                  (cons _%stx177198%_ _%details177199%_)
                  _%ctx177210%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx177183%_ _%expression?177184%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx177183%_ _%expression?177184%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx177189%_)
        (let ((_%expression?177191%_ '#f))
          (gx#eval-syntax__% _%stx177189%_ _%expression?177191%_))))
    (define gx#eval-syntax
      (lambda _g178831_
        (let ((_g178832_ (##length _g178831_)))
          (cond ((##fx= _g178832_ 1) (apply gx#eval-syntax__0 _g178831_))
                ((##fx= _g178832_ 2) (apply gx#eval-syntax__% _g178831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g178831_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx177168%_ _%expression?177169%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx177168%_ _%expression?177169%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx177175%_)
        (let ((_%expression?177177%_ '#f))
          (gx#eval-syntax+1__% _%stx177175%_ _%expression?177177%_))))
    (define gx#eval-syntax+1
      (lambda _g178833_
        (let ((_g178834_ (##length _g178833_)))
          (cond ((##fx= _g178834_ 1) (apply gx#eval-syntax+1__0 _g178833_))
                ((##fx= _g178834_ 2) (apply gx#eval-syntax+1__% _g178833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g178833_))))))
    (define gx#eval-expression+1
      (lambda (_%stx177165%_) (gx#eval-syntax+1__% _%stx177165%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx177163%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx177163%_))))
    (define gx#core-expand__%
      (lambda (_%stx177150%_ _%expression?177151%_)
        (if _%expression?177151%_
            (gx#core-expand-expression _%stx177150%_)
            (gx#core-expand-top _%stx177150%_))))
    (define gx#core-expand__0
      (lambda (_%stx177156%_)
        (let ((_%expression?177158%_ '#f))
          (gx#core-expand__% _%stx177156%_ _%expression?177158%_))))
    (define gx#core-expand
      (lambda _g178835_
        (let ((_g178836_ (##length _g178835_)))
          (cond ((##fx= _g178836_ 1) (apply gx#core-expand__0 _g178835_))
                ((##fx= _g178836_ 2) (apply gx#core-expand__% _g178835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g178835_))))))
    (define gx#core-expand-top
      (lambda (_%stx177117%_)
        (let* ((_%stx177119%_ (gx#core-expand*__0 _%stx177117%_))
               (_%e177120177127%_ _%stx177119%_)
               (_%E177122177131%_
                (lambda () (gx#core-expand-expression _%stx177119%_)))
               (_%E177121177145%_
                (lambda ()
                  (if (gx#stx-pair? _%e177120177127%_)
                      (let ((_%e177123177135%_
                             (gx#syntax-e _%e177120177127%_)))
                        (let ((_%hd177124177138%_ (##car _%e177123177135%_))
                              (_%tl177125177140%_ (##cdr _%e177123177135%_)))
                          (let ((_%form177143%_ _%hd177124177138%_))
                            (if (gx#core-bound-identifier?__0 _%form177143%_)
                                _%stx177119%_
                                (_%E177122177131%_)))))
                      (_%E177122177131%_)))))
          (_%E177121177145%_))))
    (define gx#core-expand-expression
      (lambda (_%stx177049%_)
        (letrec ((_%sealed-expression?177051%_
                  (lambda (_%hd177087%_)
                    (if (gx#sealed-syntax? _%hd177087%_)
                        (let* ((_%e177088177095%_ _%hd177087%_)
                               (_%E177090177099%_ (lambda () '#f))
                               (_%E177089177113%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e177088177095%_)
                                      (let ((_%e177091177103%_
                                             (gx#syntax-e _%e177088177095%_)))
                                        (let ((_%hd177092177106%_
                                               (##car _%e177091177103%_))
                                              (_%tl177093177108%_
                                               (##cdr _%e177091177103%_)))
                                          (let ((_%form177111%_
                                                 _%hd177092177106%_))
                                            (gx#core-bound-identifier?__%
                                             _%form177111%_
                                             gx#expression-form-binding?))))
                                      (_%E177090177099%_)))))
                          (_%E177089177113%_))
                        '#f)))
                 (_%illegal-expression177052%_
                  (lambda (_%hd177084%_ . _%_177085%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx177049%_
                     _%hd177084%_)))
                 (_%expand-e177053%_
                  (lambda (_%form177076%_ _%hd177077%_)
                    (let ((_%bind177079%_
                           (if (##structure-instance-of?
                                _%form177076%_
                                'gx#binding::t)
                               _%form177076%_
                               (gx#resolve-identifier__0 _%form177076%_))))
                      (if (gx#core-expander-binding? _%bind177079%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind177079%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd177077%_
                            (gx#stx-source _%stx177049%_)))
                          (if (##structure-direct-instance-of?
                               _%bind177079%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind177079%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd177077%_
                                 (gx#stx-source _%stx177049%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx177049%_
                               _%form177076%_)))))))
          (let ((_%hd177055%_ (gx#core-expand-head _%stx177049%_)))
            (if (_%sealed-expression?177051%_ _%hd177055%_)
                _%hd177055%_
                (if (gx#stx-pair? _%hd177055%_)
                    (let* ((_%form177059%_ (gx#stx-car _%hd177055%_))
                           (_%bind177061%_
                            (if (gx#identifier? _%form177059%_)
                                (gx#resolve-identifier__0 _%form177059%_)
                                '#f)))
                      (if (or (not _%bind177061%_)
                              (not (gx#core-expander-binding? _%bind177061%_)))
                          (_%expand-e177053%_
                           '%%app
                           (cons '%%app _%hd177055%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind177061%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd177055%_
                               _%illegal-expression177052%_)
                              (if (gx#expression-form-binding? _%bind177061%_)
                                  (_%expand-e177053%_
                                   _%bind177061%_
                                   _%hd177055%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind177061%_)
                                      (gx#core-expand-expression
                                       (_%expand-e177053%_
                                        _%bind177061%_
                                        _%hd177055%_))
                                      (_%illegal-expression177052%_
                                       _%hd177055%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd177055%_)
                        (_%illegal-expression177052%_ _%hd177055%_)
                        (if (gx#identifier? _%hd177055%_)
                            (_%expand-e177053%_
                             '%%ref
                             (cons '%%ref (cons _%hd177055%_ '())))
                            (if (gx#stx-datum? _%hd177055%_)
                                (_%expand-e177053%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd177055%_ '())))
                                (_%illegal-expression177052%_
                                 _%hd177055%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx177044%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx177047%_ (gx#core-expand-expression _%stx177044%_)))
             (values _%stx177047%_ (gx#eval-syntax* _%stx177047%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx177025%_ _%stop?177026%_)
        (let _%lp177028%_ ((_%stx177030%_ _%stx177025%_))
          (if (_%stop?177026%_ _%stx177030%_)
              _%stx177030%_
              (let ((_%rstx177032%_ (gx#core-expand1 _%stx177030%_)))
                (if (eq? _%stx177030%_ _%rstx177032%_)
                    _%stx177030%_
                    (_%lp177028%_ _%rstx177032%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx177037%_)
        (let ((_%stop?177039%_ false))
          (gx#core-expand*__% _%stx177037%_ _%stop?177039%_))))
    (define gx#core-expand*
      (lambda _g178837_
        (let ((_g178838_ (##length _g178837_)))
          (cond ((##fx= _g178838_ 1) (apply gx#core-expand*__0 _g178837_))
                ((##fx= _g178838_ 2) (apply gx#core-expand*__% _g178837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g178837_))))))
    (define gx#core-expand1
      (lambda (_%stx176977%_)
        (letrec ((_%step176979%_
                  (lambda (_%hd177016%_)
                    (let ((_%bind177018%_
                           (gx#resolve-identifier__0 _%hd177016%_)))
                      (if (##structure-instance-of?
                           _%bind177018%_
                           'gx#runtime-binding::t)
                          _%stx176977%_
                          (if (##structure-direct-instance-of?
                               _%bind177018%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind177018%_
                                '5
                                '#f
                                '#f)
                               _%stx176977%_)
                              (if (not _%bind177018%_)
                                  _%stx176977%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx176977%_))))))))
          (let* ((_%e176980176988%_ _%stx176977%_)
                 (_%E176986176992%_ (lambda () _%stx176977%_))
                 (_%E176982176998%_
                  (lambda ()
                    (let ((_%hd176996%_ _%e176980176988%_))
                      (if (gx#identifier? _%hd176996%_)
                          (_%step176979%_ _%hd176996%_)
                          (_%E176986176992%_)))))
                 (_%E176981177012%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176980176988%_)
                        (let ((_%e176983177002%_
                               (gx#syntax-e _%e176980176988%_)))
                          (let ((_%hd176984177005%_ (##car _%e176983177002%_))
                                (_%tl176985177007%_ (##cdr _%e176983177002%_)))
                            (let ((_%hd177010%_ _%hd176984177005%_))
                              (if (gx#identifier? _%hd177010%_)
                                  (_%step176979%_ _%hd177010%_)
                                  (_%E176982176998%_)))))
                        (_%E176982176998%_)))))
            (_%E176981177012%_)))))
    (define gx#core-expand-head
      (lambda (_%stx176943%_)
        (letrec ((_%stop?176945%_
                  (lambda (_%stx176947%_)
                    (let* ((_%e176948176955%_ _%stx176947%_)
                           (_%E176950176959%_ (lambda () '#f))
                           (_%E176949176973%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176948176955%_)
                                  (let ((_%e176951176963%_
                                         (gx#syntax-e _%e176948176955%_)))
                                    (let ((_%hd176952176966%_
                                           (##car _%e176951176963%_))
                                          (_%tl176953176968%_
                                           (##cdr _%e176951176963%_)))
                                      (let ((_%hd176971%_ _%hd176952176966%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd176971%_))))
                                  (_%E176950176959%_)))))
                      (_%E176949176973%_)))))
          (gx#core-expand*__% _%stx176943%_ _%stop?176945%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx176749%_
               _%expand-special176750%_
               _%begin-form176751%_
               _%expand-e176752%_)
        (letrec ((_%expand-splice176754%_
                  (lambda (_%hd176917%_
                           _%body176918%_
                           _%rest176919%_
                           _%r176920%_)
                    (if (gx#stx-list? _%body176918%_)
                        (_%K176758%_
                         (gx#stx-foldr cons _%rest176919%_ _%body176918%_)
                         _%r176920%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx176749%_
                         _%hd176917%_))))
                 (_%expand-cond-expand176755%_
                  (lambda (_%hd176913%_ _%rest176914%_ _%r176915%_)
                    (_%K176758%_
                     (cons (gx#core-expand-cond-expand% _%hd176913%_)
                           _%rest176914%_)
                     _%r176915%_)))
                 (_%expand-include176756%_
                  (lambda (_%hd176862%_ _%rest176863%_ _%r176864%_)
                    (let* ((_%e176865176875%_ _%hd176862%_)
                           (_%E176867176879%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176865176875%_)))
                           (_%E176866176909%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176865176875%_)
                                  (let ((_%e176868176883%_
                                         (gx#syntax-e _%e176865176875%_)))
                                    (let ((_%hd176869176886%_
                                           (##car _%e176868176883%_))
                                          (_%tl176870176888%_
                                           (##cdr _%e176868176883%_)))
                                      (if (gx#stx-pair? _%tl176870176888%_)
                                          (let ((_%e176871176891%_
                                                 (gx#syntax-e
                                                  _%tl176870176888%_)))
                                            (let ((_%hd176872176894%_
                                                   (##car _%e176871176891%_))
                                                  (_%tl176873176896%_
                                                   (##cdr _%e176871176891%_)))
                                              (let ((_%path176899%_
                                                     _%hd176872176894%_))
                                                (if (gx#stx-null?
                                                     _%tl176873176896%_)
                                                    (if (gx#stx-string?
                                                         _%path176899%_)
                                                        (let* ((_%rpath176901%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path176899%_
                         (gx#stx-source _%hd176862%_)))
                       (_%block176903%_
                        (gx#core-expand-include%__%
                         _%hd176862%_
                         _%rpath176901%_))
                       (_%rbody176906%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block176903%_
                            _%expand-special176750%_
                            '#f
                            _%expand-e176752%_))
                         gx#current-expander-path
                         (cons _%rpath176901%_ (gx#current-expander-path)))))
                  (_%K176758%_
                   _%rest176863%_
                   (foldr__0 cons _%r176864%_ _%rbody176906%_)))
                (_%E176867176879%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176867176879%_)))))
                                          (_%E176867176879%_))))
                                  (_%E176867176879%_)))))
                      (_%E176866176909%_))))
                 (_%expand-expression176757%_
                  (lambda (_%hd176858%_ _%rest176859%_ _%r176860%_)
                    (_%K176758%_
                     _%rest176859%_
                     (cons (_%expand-e176752%_ _%hd176858%_) _%r176860%_))))
                 (_%K176758%_
                  (lambda (_%rest176788%_ _%r176789%_)
                    (let* ((_%e176790176797%_ _%rest176788%_)
                           (_%E176792176801%_
                            (lambda ()
                              (if _%begin-form176751%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form176751%_
                                    (reverse _%r176789%_))
                                   (gx#stx-source _%stx176749%_))
                                  _%r176789%_)))
                           (_%E176791176854%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176790176797%_)
                                  (let ((_%e176793176805%_
                                         (gx#syntax-e _%e176790176797%_)))
                                    (let ((_%hd176794176808%_
                                           (##car _%e176793176805%_))
                                          (_%tl176795176810%_
                                           (##cdr _%e176793176805%_)))
                                      (let* ((_%hd176813%_ _%hd176794176808%_)
                                             (_%rest176815%_
                                              _%tl176795176810%_)
                                             (_%hd176817%_
                                              (gx#core-expand-head
                                               _%hd176813%_))
                                             (_%e176818176825%_ _%hd176817%_)
                                             (_%E176820176829%_
                                              (lambda ()
                                                (_%expand-expression176757%_
                                                 _%hd176817%_
                                                 _%rest176815%_
                                                 _%r176789%_)))
                                             (_%E176819176850%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e176818176825%_)
                                                    (let ((_%e176821176833%_
                                                           (gx#syntax-e
                                                            _%e176818176825%_)))
                                                      (let ((_%hd176822176836%_
                                                             (##car _%e176821176833%_))
                                                            (_%tl176823176838%_
                                                             (##cdr _%e176821176833%_)))
                                                        (let* ((_%form176841%_
                                                                _%hd176822176836%_)
                                                               (_%body176843%_
                                                                _%tl176823176838%_)
                                                               (_%bind176845%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form176841%_)
                            (gx#resolve-identifier__0 _%form176841%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind176845%_)
                      (let ((_%$e176847%_
                             (##unchecked-structure-ref
                              _%bind176845%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e176847%_)
                            (_%expand-splice176754%_
                             _%hd176817%_
                             _%body176843%_
                             _%rest176815%_
                             _%r176789%_)
                            (if (eq? '%#cond-expand _%$e176847%_)
                                (_%expand-cond-expand176755%_
                                 _%hd176817%_
                                 _%rest176815%_
                                 _%r176789%_)
                                (if (eq? '%#include _%$e176847%_)
                                    (_%expand-include176756%_
                                     _%hd176817%_
                                     _%rest176815%_
                                     _%r176789%_)
                                    (_%expand-special176750%_
                                     _%hd176817%_
                                     _%K176758%_
                                     _%rest176815%_
                                     _%r176789%_)))))
                      (_%expand-expression176757%_
                       _%hd176817%_
                       _%rest176815%_
                       _%r176789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176820176829%_)))))
                                        (_%E176819176850%_))))
                                  (_%E176792176801%_)))))
                      (_%E176791176854%_)))))
          (let* ((_%e176759176766%_ _%stx176749%_)
                 (_%E176761176770%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176759176766%_)))
                 (_%E176760176784%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176759176766%_)
                        (let ((_%e176762176774%_
                               (gx#syntax-e _%e176759176766%_)))
                          (let ((_%hd176763176777%_ (##car _%e176762176774%_))
                                (_%tl176764176779%_ (##cdr _%e176762176774%_)))
                            (let ((_%body176782%_ _%tl176764176779%_))
                              (if (gx#stx-list? _%body176782%_)
                                  (_%K176758%_ _%body176782%_ '())
                                  (_%E176761176770%_)))))
                        (_%E176761176770%_)))))
            (_%E176760176784%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx176925%_ _%expand-special176926%_)
        (let* ((_%begin-form176928%_ '%#begin)
               (_%expand-e176930%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx176925%_
           _%expand-special176926%_
           _%begin-form176928%_
           _%expand-e176930%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx176932%_ _%expand-special176933%_ _%begin-form176934%_)
        (let ((_%expand-e176936%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx176932%_
           _%expand-special176933%_
           _%begin-form176934%_
           _%expand-e176936%_))))
    (define gx#core-expand-block
      (lambda _g178839_
        (let ((_g178840_ (##length _g178839_)))
          (cond ((##fx= _g178840_ 2) (apply gx#core-expand-block__0 _g178839_))
                ((##fx= _g178840_ 3) (apply gx#core-expand-block__1 _g178839_))
                ((##fx= _g178840_ 4) (apply gx#core-expand-block__% _g178839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g178839_))))))
    (define gx#core-expand-block*
      (lambda (_%stx176697%_ _%expand-special176698%_)
        (let* ((_%g176699176710%_
                (gx#core-expand-block__1
                 _%stx176697%_
                 _%expand-special176698%_
                 '#f))
               (_%E176703176714%_
                (lambda ()
                  (error '"No clause matching"
                         _%g176699176710%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K176708176745%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx176697%_)))
                (_%K176705176731%_ (lambda (_%expr176729%_) _%expr176729%_))
                (_%K176704176720%_
                 (lambda (_%body176718%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body176718%_))
                    (gx#stx-source _%stx176697%_)))))
            (let ((_%try-match176701176741%_
                   (lambda ()
                     (if (pair? _%g176699176710%_)
                         (let ((_%tl176707176736%_ (##cdr _%g176699176710%_))
                               (_%hd176706176734%_ (##car _%g176699176710%_)))
                           (if (null? _%tl176707176736%_)
                               (let ((_%expr176739%_ _%hd176706176734%_))
                                 (_%K176705176731%_ _%expr176739%_))
                               (let ((_%body176723%_ _%g176699176710%_))
                                 (_%K176704176720%_ _%body176723%_))))
                         (let ((_%body176723%_ _%g176699176710%_))
                           (_%K176704176720%_ _%body176723%_))))))
              (if (null? _%g176699176710%_)
                  (_%K176708176745%_)
                  (_%try-match176701176741%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx176523%_)
        (letrec ((_%satisfied?176525%_
                  (lambda (_%condition176626%_)
                    (let* ((_%e176627176642%_ _%condition176626%_)
                           (_%E176637176646%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176627176642%_)))
                           (_%E176630176665%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176627176642%_)
                                  (let ((_%e176638176650%_
                                         (gx#syntax-e _%e176627176642%_)))
                                    (let ((_%hd176639176653%_
                                           (##car _%e176638176650%_))
                                          (_%tl176640176655%_
                                           (##cdr _%e176638176650%_)))
                                      (let* ((_%combinator176658%_
                                              _%hd176639176653%_)
                                             (_%body176660%_
                                              _%tl176640176655%_))
                                        (if (gx#stx-list? _%body176660%_)
                                            (let ((_%$e176662%_
                                                   (gx#stx-e
                                                    _%combinator176658%_)))
                                              (if (eq? 'not _%$e176662%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?176525%_
                                                        _%body176660%_))
                                                  (if (eq? 'and _%$e176662%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?176525%_
                                                       _%body176660%_)
                                                      (if (eq? 'or
                                                               _%$e176662%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?176525%_
                                                           _%body176660%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e176662%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body176660%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx176523%_
                       _%combinator176658%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176637176646%_)))))
                                  (_%E176637176646%_))))
                           (_%E176629176687%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176627176642%_)
                                  (let ((_%e176631176669%_
                                         (gx#syntax-e _%e176627176642%_)))
                                    (let ((_%hd176632176672%_
                                           (##car _%e176631176669%_))
                                          (_%tl176633176674%_
                                           (##cdr _%e176631176669%_)))
                                      (if (and (gx#identifier?
                                                _%hd176632176672%_)
                                               (gx#core-identifier=?
                                                _%hd176632176672%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl176633176674%_)
                                              (let ((_%e176634176677%_
                                                     (gx#syntax-e
                                                      _%tl176633176674%_)))
                                                (let ((_%hd176635176680%_
                                                       (##car _%e176634176677%_))
                                                      (_%tl176636176682%_
                                                       (##cdr _%e176634176677%_)))
                                                  (let ((_%expr176685%_
                                                         _%hd176635176680%_))
                                                    (if (gx#stx-null?
                                                         _%tl176636176682%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr176685%_)
                                                        (_%E176630176665%_)))))
                                              (_%E176630176665%_))
                                          (_%E176630176665%_))))
                                  (_%E176630176665%_))))
                           (_%E176628176693%_
                            (lambda ()
                              (let ((_%id176691%_ _%e176627176642%_))
                                (if (gx#identifier? _%id176691%_)
                                    (gx#core-bound-identifier?__%
                                     _%id176691%_
                                     gx#feature-binding?)
                                    (_%E176629176687%_))))))
                      (_%E176628176693%_))))
                 (_%loop176526%_
                  (lambda (_%rest176556%_)
                    (let* ((_%e176557176565%_ _%rest176556%_)
                           (_%E176563176569%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176557176565%_)))
                           (_%E176559176573%_
                            (lambda ()
                              (if (gx#stx-null? _%e176557176565%_)
                                  '()
                                  (_%E176563176569%_))))
                           (_%E176558176622%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176557176565%_)
                                  (let ((_%e176560176577%_
                                         (gx#syntax-e _%e176557176565%_)))
                                    (let ((_%hd176561176580%_
                                           (##car _%e176560176577%_))
                                          (_%tl176562176582%_
                                           (##cdr _%e176560176577%_)))
                                      (let* ((_%hd176585%_ _%hd176561176580%_)
                                             (_%rest176587%_
                                              _%tl176562176582%_)
                                             (_%e176588176595%_ _%hd176585%_)
                                             (_%E176590176599%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e176588176595%_)))
                                             (_%E176589176618%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e176588176595%_)
                                                    (let ((_%e176591176603%_
                                                           (gx#syntax-e
                                                            _%e176588176595%_)))
                                                      (let ((_%hd176592176606%_
                                                             (##car _%e176591176603%_))
                                                            (_%tl176593176608%_
                                                             (##cdr _%e176591176603%_)))
                                                        (let* ((_%condition176611%_
                                                                _%hd176592176606%_)
                                                               (_%body176613%_
                                                                _%tl176593176608%_))
                                                          (if (gx#stx-eq?
                                                               _%condition176611%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest176587%_)
                          _%body176613%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx176523%_
                           _%hd176585%_))
                      (if (_%satisfied?176525%_ _%condition176611%_)
                          _%body176613%_
                          (_%loop176526%_ _%rest176587%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176590176599%_)))))
                                        (_%E176589176618%_))))
                                  (_%E176559176573%_)))))
                      (_%E176558176622%_)))))
          (let* ((_%e176527176534%_ _%stx176523%_)
                 (_%E176529176538%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176527176534%_)))
                 (_%E176528176552%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176527176534%_)
                        (let ((_%e176530176542%_
                               (gx#syntax-e _%e176527176534%_)))
                          (let ((_%hd176531176545%_ (##car _%e176530176542%_))
                                (_%tl176532176547%_ (##cdr _%e176530176542%_)))
                            (let ((_%clauses176550%_ _%tl176532176547%_))
                              (if (gx#stx-list? _%clauses176550%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop176526%_ _%clauses176550%_))
                                  (_%E176529176538%_)))))
                        (_%E176529176538%_)))))
            (_%E176528176552%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx176466%_ _%rpath176467%_)
        (let* ((_%e176468176478%_ _%stx176466%_)
               (_%E176470176482%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176468176478%_)))
               (_%E176469176509%_
                (lambda ()
                  (if (gx#stx-pair? _%e176468176478%_)
                      (let ((_%e176471176486%_
                             (gx#syntax-e _%e176468176478%_)))
                        (let ((_%hd176472176489%_ (##car _%e176471176486%_))
                              (_%tl176473176491%_ (##cdr _%e176471176486%_)))
                          (if (gx#stx-pair? _%tl176473176491%_)
                              (let ((_%e176474176494%_
                                     (gx#syntax-e _%tl176473176491%_)))
                                (let ((_%hd176475176497%_
                                       (##car _%e176474176494%_))
                                      (_%tl176476176499%_
                                       (##cdr _%e176474176494%_)))
                                  (let ((_%path176502%_ _%hd176475176497%_))
                                    (if (gx#stx-null? _%tl176476176499%_)
                                        (if (gx#stx-string? _%path176502%_)
                                            (let ((_%rpath176507%_
                                                   (let ((_%$e176504%_
                                                          _%rpath176467%_))
                                                     (if _%$e176504%_
                                                         _%$e176504%_
                                                         (gx#core-resolve-path__%
                                                          _%path176502%_
                                                          (gx#stx-source
                                                           _%stx176466%_))))))
                                              (if (member _%rpath176507%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx176466%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath176507%_))
                                                    (gx#stx-source
                                                     _%stx176466%_)))))
                                            (_%E176470176482%_))
                                        (_%E176470176482%_)))))
                              (_%E176470176482%_))))
                      (_%E176470176482%_)))))
          (_%E176469176509%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx176516%_)
        (let ((_%rpath176518%_ '#f))
          (gx#core-expand-include%__% _%stx176516%_ _%rpath176518%_))))
    (define gx#core-expand-include%
      (lambda _g178841_
        (let ((_g178842_ (##length _g178841_)))
          (cond ((##fx= _g178842_ 1)
                 (apply gx#core-expand-include%__0 _g178841_))
                ((##fx= _g178842_ 2)
                 (apply gx#core-expand-include%__% _g178841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g178841_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K176432%_ _%stx176433%_ _%method176434%_)
        (if (procedure? _%K176432%_)
            (let ((_%$e176437%_ (gx#stx-source _%stx176433%_)))
              (if _%$e176437%_
                  ((lambda (_%g176439176441%_)
                     (gx#stx-wrap-source
                      (_%K176432%_ _%stx176433%_)
                      _%g176439176441%_))
                   _%$e176437%_)
                  (_%K176432%_ _%stx176433%_)))
            (let ((_%$e176445%_
                   (bound-method-ref _%K176432%_ _%method176434%_)))
              (if _%$e176445%_
                  ((lambda (_%g176447176449%_)
                     (gx#core-apply-expander__%
                      _%g176447176449%_
                      _%stx176433%_
                      _%method176434%_))
                   _%$e176445%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx176433%_
                   _%method176434%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K176456%_ _%stx176457%_)
        (let ((_%method176459%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K176456%_
           _%stx176457%_
           _%method176459%_))))
    (define gx#core-apply-expander
      (lambda _g178843_
        (let ((_g178844_ (##length _g178843_)))
          (cond ((##fx= _g178844_ 2)
                 (apply gx#core-apply-expander__0 _g178843_))
                ((##fx= _g178844_ 3)
                 (apply gx#core-apply-expander__% _g178843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g178843_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self176417%_ _%stx176418%_)
        (let ((_%self176421%_ _%self176417%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx176418%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self176260%_ _%stx176261%_)
        (let* ((_%self176264%_ _%self176260%_)
               (_%self176273176279%_ _%self176264%_)
               (_%E176275176282%_
                (lambda ()
                  (error '"No clause matching"
                         _%self176273176279%_
                         '((macro-expander K)))
                  '#!void))
               (_%K176276176287%_
                (lambda (_%K176285%_)
                  (gx#core-apply-expander__0 _%K176285%_ _%stx176261%_)))
               (_%e176277176290%_
                (##unchecked-structure-ref _%self176273176279%_ '1 '#f '#f))
               (_%K176293%_ _%e176277176290%_))
          (_%K176276176287%_ _%K176293%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self176103%_ _%stx176104%_)
        (let ((_%self176107%_ _%self176103%_))
          (if (gx#sealed-syntax? _%stx176104%_)
              _%stx176104%_
              (let* ((_%self176116176122%_ _%self176107%_)
                     (_%E176118176125%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self176116176122%_
                               '((core-expander K)))
                        '#!void))
                     (_%K176119176130%_
                      (lambda (_%K176128%_)
                        (gx#core-apply-expander__0 _%K176128%_ _%stx176104%_)))
                     (_%e176120176133%_
                      (##unchecked-structure-ref
                       _%self176116176122%_
                       '1
                       '#f
                       '#f))
                     (_%K176136%_ _%e176120176133%_))
                (_%K176119176130%_ _%K176136%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self175954%_ _%stx175955%_ _%top?175956%_)
        (let ((_%self175959%_ _%self175954%_))
          (if (_%top?175956%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self175959%_
               _%stx175955%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx175955%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self175972%_ _%stx175973%_)
        (let ((_%top?175975%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self175972%_
           _%stx175973%_
           _%top?175975%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g178845_
        (let ((_g178846_ (##length _g178845_)))
          (cond ((##fx= _g178846_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g178845_))
                ((##fx= _g178846_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g178845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g178845_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self175817%_ _%stx175818%_)
        (let ((_%self175821%_ _%self175817%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self175821%_
           _%stx175818%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self175632%_ _%stx175633%_)
        (let* ((_%self175636%_ _%self175632%_)
               (_%self175645175651%_ _%self175636%_)
               (_%E175647175654%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175645175651%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K175648175687%_
                (lambda (_%id175657%_)
                  (let* ((_%e175658175665%_ _%stx175633%_)
                         (_%E175660175669%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e175658175665%_)))
                         (_%E175659175683%_
                          (lambda ()
                            (if (gx#stx-pair? _%e175658175665%_)
                                (let ((_%e175661175673%_
                                       (gx#syntax-e _%e175658175665%_)))
                                  (let ((_%hd175662175676%_
                                         (##car _%e175661175673%_))
                                        (_%tl175663175678%_
                                         (##cdr _%e175661175673%_)))
                                    (let ((_%body175681%_ _%tl175663175678%_))
                                      (gx#core-cons
                                       _%id175657%_
                                       _%body175681%_))))
                                (_%E175660175669%_)))))
                    (_%E175659175683%_))))
               (_%e175649175690%_
                (##unchecked-structure-ref _%self175645175651%_ '1 '#f '#f))
               (_%id175693%_ _%e175649175690%_))
          (_%K175648175687%_ _%id175693%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self175459%_ _%stx175460%_ _%method175461%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx175460%_))
              (force-output))
            '#!void)
        (let* ((_%self175462175470%_ _%self175459%_)
               (_%E175464175473%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175462175470%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K175465175480%_
                (lambda (_%phi175476%_ _%ctx175477%_ _%K175478%_)
                  (gx#core-apply-user-macro
                   _%K175478%_
                   _%stx175460%_
                   _%ctx175477%_
                   _%phi175476%_
                   _%method175461%_))))
          (if (##structure-instance-of?
               _%self175462175470%_
               'gx#user-expander::t)
              (let* ((_%e175466175483%_
                      (##unchecked-structure-ref
                       _%self175462175470%_
                       '1
                       '#f
                       '#f))
                     (_%K175486%_ _%e175466175483%_)
                     (_%e175467175488%_
                      (##unchecked-structure-ref
                       _%self175462175470%_
                       '2
                       '#f
                       '#f))
                     (_%ctx175491%_ _%e175467175488%_)
                     (_%e175468175493%_
                      (##unchecked-structure-ref
                       _%self175462175470%_
                       '3
                       '#f
                       '#f))
                     (_%phi175496%_ _%e175468175493%_))
                (_%K175465175480%_ _%phi175496%_ _%ctx175491%_ _%K175486%_))
              (_%E175464175473%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self175501%_ _%stx175502%_)
        (let ((_%method175504%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self175501%_
           _%stx175502%_
           _%method175504%_))))
    (define gx#core-apply-user-expander
      (lambda _g178847_
        (let ((_g178848_ (##length _g178847_)))
          (cond ((##fx= _g178848_ 2)
                 (apply gx#core-apply-user-expander__0 _g178847_))
                ((##fx= _g178848_ 3)
                 (apply gx#core-apply-user-expander__% _g178847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g178847_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K175449%_
               _%stx175450%_
               _%ctx175451%_
               _%phi175452%_
               _%method175453%_)
        (let ((_%mark175455%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx175451%_
                _%phi175452%_
                _%stx175450%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K175449%_
               (gx#stx-apply-mark _%stx175450%_ _%mark175455%_)
               _%method175453%_)
              _%mark175455%_))
           gx#current-expander-marks
           (cons _%mark175455%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx175297%_ _%phi175298%_ _%ctx175299%_)
        (let _%lp175301%_ ((_%bind175303%_
                            (gx#core-resolve-identifier__%
                             _%stx175297%_
                             _%phi175298%_
                             _%ctx175299%_)))
          (if (##structure-direct-instance-of?
               _%bind175303%_
               'gx#import-binding::t)
              (_%lp175301%_
               (##unchecked-structure-ref _%bind175303%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind175303%_
                   'gx#alias-binding::t)
                  (_%lp175301%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind175303%_ '5 '#f '#f)
                    _%phi175298%_
                    _%ctx175299%_))
                  _%bind175303%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx175311%_)
        (let* ((_%phi175313%_ (gx#current-expander-phi))
               (_%ctx175315%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx175311%_
           _%phi175313%_
           _%ctx175315%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx175317%_ _%phi175318%_)
        (let ((_%ctx175320%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx175317%_
           _%phi175318%_
           _%ctx175320%_))))
    (define gx#resolve-identifier
      (lambda _g178849_
        (let ((_g178850_ (##length _g178849_)))
          (cond ((##fx= _g178850_ 1)
                 (apply gx#resolve-identifier__0 _g178849_))
                ((##fx= _g178850_ 2)
                 (apply gx#resolve-identifier__1 _g178849_))
                ((##fx= _g178850_ 3)
                 (apply gx#resolve-identifier__% _g178849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g178849_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx175252%_
               _%val175253%_
               _%rebind?175254%_
               _%phi175255%_
               _%ctx175256%_)
        (let ((_%rebind?175261%_
               (if (not _%rebind?175254%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?175254%_)
                       _%rebind?175254%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx175252%_)
           _%val175253%_
           _%rebind?175261%_
           _%phi175255%_
           _%ctx175256%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx175266%_ _%val175267%_)
        (let* ((_%rebind?175269%_ '#f)
               (_%phi175271%_ (gx#current-expander-phi))
               (_%ctx175273%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx175266%_
           _%val175267%_
           _%rebind?175269%_
           _%phi175271%_
           _%ctx175273%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx175275%_ _%val175276%_ _%rebind?175277%_)
        (let* ((_%phi175279%_ (gx#current-expander-phi))
               (_%ctx175281%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx175275%_
           _%val175276%_
           _%rebind?175277%_
           _%phi175279%_
           _%ctx175281%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx175283%_ _%val175284%_ _%rebind?175285%_ _%phi175286%_)
        (let ((_%ctx175288%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx175283%_
           _%val175284%_
           _%rebind?175285%_
           _%phi175286%_
           _%ctx175288%_))))
    (define gx#bind-identifier!
      (lambda _g178851_
        (let ((_g178852_ (##length _g178851_)))
          (cond ((##fx= _g178852_ 2) (apply gx#bind-identifier!__0 _g178851_))
                ((##fx= _g178852_ 3) (apply gx#bind-identifier!__1 _g178851_))
                ((##fx= _g178852_ 4) (apply gx#bind-identifier!__2 _g178851_))
                ((##fx= _g178852_ 5) (apply gx#bind-identifier!__% _g178851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g178851_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx175218%_ _%phi175219%_ _%ctx175220%_)
        (let _%lp175222%_ ((_%e175224%_ _%stx175218%_)
                           (_%marks175225%_ (gx#current-expander-marks)))
          (if (symbol? _%e175224%_)
              (gx#core-resolve-binding
               _%e175224%_
               _%phi175219%_
               _%phi175219%_
               _%ctx175220%_
               (reverse _%marks175225%_))
              (if (gx#identifier-quote? _%e175224%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e175224%_ '1 '#f '#f)
                   _%phi175219%_
                   '0
                   (##unchecked-structure-ref _%e175224%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e175224%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e175224%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e175224%_ '1 '#f '#f)
                       _%phi175219%_
                       _%phi175219%_
                       _%ctx175220%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e175224%_ '3 '#f '#f)
                        _%marks175225%_))
                      (if (##structure-direct-instance-of?
                           _%e175224%_
                           'gx#syntax-wrap::t)
                          (_%lp175222%_
                           (##unchecked-structure-ref _%e175224%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e175224%_ '3 '#f '#f)
                            _%marks175225%_))
                          (if (##structure-instance-of?
                               _%e175224%_
                               'gerbil#AST::t)
                              (_%lp175222%_
                               (##unchecked-structure-ref
                                _%e175224%_
                                '1
                                '#f
                                '#f)
                               _%marks175225%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx175218%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx175236%_)
        (let* ((_%phi175238%_ (gx#current-expander-phi))
               (_%ctx175240%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx175236%_
           _%phi175238%_
           _%ctx175240%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx175242%_ _%phi175243%_)
        (let ((_%ctx175245%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx175242%_
           _%phi175243%_
           _%ctx175245%_))))
    (define gx#core-resolve-identifier
      (lambda _g178853_
        (let ((_g178854_ (##length _g178853_)))
          (cond ((##fx= _g178854_ 1)
                 (apply gx#core-resolve-identifier__0 _g178853_))
                ((##fx= _g178854_ 2)
                 (apply gx#core-resolve-identifier__1 _g178853_))
                ((##fx= _g178854_ 3)
                 (apply gx#core-resolve-identifier__% _g178853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g178853_))))))
    (define gx#core-resolve-binding
      (lambda (_%id175129%_
               _%phi175130%_
               _%src-phi175131%_
               _%ctx175132%_
               _%marks175133%_)
        (letrec ((_%resolve175135%_
                  (lambda (_%ctx175202%_ _%src-phi175203%_ _%key175204%_)
                    (let _%lp175206%_ ((_%ctx175208%_
                                        (gx#core-context-shift
                                         _%ctx175202%_
                                         _%phi175130%_))
                                       (_%dphi175209%_
                                        (fx- _%phi175130%_ _%src-phi175203%_)))
                      (let ((_%$e175211%_
                             (gx#core-context-resolve
                              _%ctx175208%_
                              _%key175204%_)))
                        (if _%$e175211%_
                            _%$e175211%_
                            (if (fxzero? _%dphi175209%_)
                                '#f
                                (if (fxpositive? _%dphi175209%_)
                                    (_%lp175206%_
                                     (gx#core-context-shift _%ctx175208%_ '-1)
                                     (##fx- _%dphi175209%_ '1))
                                    (_%lp175206%_
                                     (gx#core-context-shift _%ctx175208%_ '1)
                                     (##fx+ _%dphi175209%_ '1))))))))))
          (let _%lp175137%_ ((_%ctx175139%_ _%ctx175132%_)
                             (_%src-phi175140%_ _%src-phi175131%_)
                             (_%rest175141%_ _%marks175133%_))
            (let* ((_%rest175142175150%_ _%rest175141%_)
                   (_%else175144175158%_
                    (lambda ()
                      (_%resolve175135%_
                       _%ctx175139%_
                       _%src-phi175140%_
                       _%id175129%_)))
                   (_%K175146175190%_
                    (lambda (_%rest175161%_ _%hd175162%_)
                      (let* ((_%hd175163175169%_ _%hd175162%_)
                             (_%E175165175172%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd175163175169%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K175166175182%_
                              (lambda (_%subst175175%_)
                                (let ((_%$e175179%_
                                       (let ((_%key175177%_
                                              (if _%subst175175%_
                                                  (hash-get
                                                   _%subst175175%_
                                                   _%id175129%_)
                                                  '#f)))
                                         (if _%key175177%_
                                             (_%resolve175135%_
                                              _%ctx175139%_
                                              _%src-phi175140%_
                                              _%key175177%_)
                                             '#f))))
                                  (if _%$e175179%_
                                      _%$e175179%_
                                      (_%lp175137%_
                                       (##unchecked-structure-ref
                                        _%hd175162%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd175162%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest175161%_))))))
                        (if (##structure-instance-of?
                             _%hd175163175169%_
                             'gx#expander-mark::t)
                            (let* ((_%e175167175185%_
                                    (##unchecked-structure-ref
                                     _%hd175163175169%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst175188%_ _%e175167175185%_))
                              (_%K175166175182%_ _%subst175188%_))
                            (_%E175165175172%_))))))
              (if (pair? _%rest175142175150%_)
                  (let ((_%hd175147175193%_ (##car _%rest175142175150%_))
                        (_%tl175148175195%_ (##cdr _%rest175142175150%_)))
                    (let* ((_%hd175198%_ _%hd175147175193%_)
                           (_%rest175200%_ _%tl175148175195%_))
                      (_%K175146175190%_ _%rest175200%_ _%hd175198%_)))
                  (_%else175144175158%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key175000%_
               _%val175001%_
               _%rebind?175002%_
               _%phi175003%_
               _%ctx175004%_)
        (letrec ((_%update-binding175006%_
                  (lambda (_%xval175078%_)
                    (if (or (_%rebind?175002%_
                             _%ctx175004%_
                             _%xval175078%_
                             _%val175001%_)
                            (and (##structure-direct-instance-of?
                                  _%xval175078%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval175078%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val175001%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val175001%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval175078%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val175001%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val175001%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval175078%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val175001%_
                        (if (and (##structure-direct-instance-of?
                                  _%val175001%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val175001%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval175078%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val175001%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval175078%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval175078%_
                            (if (and (##structure-direct-instance-of?
                                      _%val175001%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval175078%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key175000%_
                                 (cons (##unchecked-structure-ref
                                        _%val175001%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val175001%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval175078%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval175078%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval175078%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval175078%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key175000%_
                                 _%val175001%_
                                 _%xval175078%_))))))
                 (_%gensubst175007%_
                  (lambda (_%subst175073%_ _%id175074%_)
                    (let ((_%eid175076%_
                           (gensym (if (uninterned-symbol? _%id175074%_)
                                       '%
                                       _%id175074%_))))
                      (hash-put! _%subst175073%_ _%id175074%_ _%eid175076%_)
                      _%eid175076%_)))
                 (_%subst!175008%_
                  (lambda (_%key175010%_)
                    (let* ((_%key175011175019%_ _%key175010%_)
                           (_%else175013175027%_ (lambda () _%key175010%_))
                           (_%K175015175061%_
                            (lambda (_%mark175030%_ _%id175031%_)
                              (let* ((_%mark175032175038%_ _%mark175030%_)
                                     (_%E175034175041%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark175032175038%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K175035175053%_
                                      (lambda (_%subst175044%_)
                                        (if (not _%subst175044%_)
                                            (let ((_%subst175047%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark175030%_
                                               _%subst175047%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst175007%_
                                               _%subst175047%_
                                               _%id175031%_))
                                            (let ((_%$e175049%_
                                                   (hash-get
                                                    _%subst175044%_
                                                    _%id175031%_)))
                                              (if _%$e175049%_
                                                  _%$e175049%_
                                                  (_%gensubst175007%_
                                                   _%subst175044%_
                                                   _%id175031%_)))))))
                                (if (##structure-instance-of?
                                     _%mark175032175038%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e175036175056%_
                                            (##unchecked-structure-ref
                                             _%mark175032175038%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst175059%_ _%e175036175056%_))
                                      (_%K175035175053%_ _%subst175059%_))
                                    (_%E175034175041%_))))))
                      (if (pair? _%key175011175019%_)
                          (let ((_%hd175016175064%_
                                 (##car _%key175011175019%_))
                                (_%tl175017175066%_
                                 (##cdr _%key175011175019%_)))
                            (let* ((_%id175069%_ _%hd175016175064%_)
                                   (_%mark175071%_ _%tl175017175066%_))
                              (_%K175015175061%_ _%mark175071%_ _%id175069%_)))
                          (_%else175013175027%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx175004%_ _%phi175003%_)
           (_%subst!175008%_ _%key175000%_)
           _%val175001%_
           _%update-binding175006%_))))
    (define gx#core-bind!__0
      (lambda (_%key175099%_ _%val175100%_)
        (let* ((_%rebind?175102%_ false)
               (_%phi175104%_ (gx#current-expander-phi))
               (_%ctx175106%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175099%_
           _%val175100%_
           _%rebind?175102%_
           _%phi175104%_
           _%ctx175106%_))))
    (define gx#core-bind!__1
      (lambda (_%key175108%_ _%val175109%_ _%rebind?175110%_)
        (let* ((_%phi175112%_ (gx#current-expander-phi))
               (_%ctx175114%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175108%_
           _%val175109%_
           _%rebind?175110%_
           _%phi175112%_
           _%ctx175114%_))))
    (define gx#core-bind!__2
      (lambda (_%key175116%_ _%val175117%_ _%rebind?175118%_ _%phi175119%_)
        (let ((_%ctx175121%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175116%_
           _%val175117%_
           _%rebind?175118%_
           _%phi175119%_
           _%ctx175121%_))))
    (define gx#core-bind!
      (lambda _g178855_
        (let ((_g178856_ (##length _g178855_)))
          (cond ((##fx= _g178856_ 2) (apply gx#core-bind!__0 _g178855_))
                ((##fx= _g178856_ 3) (apply gx#core-bind!__1 _g178855_))
                ((##fx= _g178856_ 4) (apply gx#core-bind!__2 _g178855_))
                ((##fx= _g178856_ 5) (apply gx#core-bind!__% _g178855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g178855_))))))
    (define gx#core-identifier-key
      (lambda (_%stx174931%_)
        (if (symbol? _%stx174931%_)
            (let* ((_%g174933174941%_ (gx#current-expander-marks))
                   (_%else174935174949%_ (lambda () _%stx174931%_))
                   (_%K174937174954%_
                    (lambda (_%hd174952%_) (cons _%stx174931%_ _%hd174952%_))))
              (if (pair? _%g174933174941%_)
                  (let* ((_%hd174938174957%_ (##car _%g174933174941%_))
                         (_%hd174960%_ _%hd174938174957%_))
                    (_%K174937174954%_ _%hd174960%_))
                  (_%else174935174949%_)))
            (if (gx#identifier? _%stx174931%_)
                (let* ((_%id174963%_ (gx#syntax-local-unwrap _%stx174931%_))
                       (_%eid174965%_ (gx#stx-e _%id174963%_))
                       (_%marks174967%_
                        (gx#stx-identifier-marks* _%id174963%_))
                       (_%marks174969174977%_ _%marks174967%_)
                       (_%else174971174985%_ (lambda () _%eid174965%_))
                       (_%K174973174990%_
                        (lambda (_%hd174988%_)
                          (cons _%eid174965%_ _%hd174988%_))))
                  (if (pair? _%marks174969174977%_)
                      (let* ((_%hd174974174993%_ (##car _%marks174969174977%_))
                             (_%hd174996%_ _%hd174974174993%_))
                        (_%K174973174990%_ _%hd174996%_))
                      (_%else174971174985%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx174931%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx174870%_ _%phi174871%_)
        (letrec ((_%make-phi174873%_
                  (lambda (_%super174929%_)
                    (let ((__obj178826
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj178826
                       (##gensym 'phi)
                       _%super174929%_)
                      __obj178826)))
                 (_%make-phi/up174874%_
                  (lambda (_%ctx174924%_ _%super174925%_)
                    (let ((_%ctx+1174927%_
                           (_%make-phi174873%_ _%super174925%_)))
                      (##unchecked-structure-set!
                       _%ctx174924%_
                       _%ctx+1174927%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1174927%_
                       _%ctx174924%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1174927%_)))
                 (_%make-phi/down174875%_
                  (lambda (_%ctx174919%_ _%super174920%_)
                    (let ((_%ctx-1174922%_
                           (_%make-phi174873%_ _%super174920%_)))
                      (##unchecked-structure-set!
                       _%ctx-1174922%_
                       _%ctx174919%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx174919%_
                       _%ctx-1174922%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1174922%_)))
                 (_%shift174876%_
                  (lambda (_%ctx174902%_
                           _%delta174903%_
                           _%make-delta-context174904%_
                           _%phi174905%_
                           _%K174906%_)
                    (let ((_%$e174908%_
                           (##unchecked-structure-ref
                            _%ctx174902%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e174908%_
                          ((lambda (_%super174911%_)
                             (let* ((_%super174913%_
                                     (_%K174906%_
                                      _%super174911%_
                                      _%delta174903%_))
                                    (_%ctx+d174915%_
                                     (_%make-delta-context174904%_
                                      _%ctx174902%_
                                      _%super174913%_)))
                               (_%K174906%_
                                _%ctx+d174915%_
                                (fx- _%phi174905%_ _%delta174903%_))))
                           _%$e174908%_)
                          (error '"Bad context" _%ctx174902%_))))))
          (let _%K174878%_ ((_%ctx174880%_ _%ctx174870%_)
                            (_%phi174881%_ _%phi174871%_))
            (if (fxzero? _%phi174881%_)
                _%ctx174880%_
                (if (##structure-instance-of? _%ctx174880%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi174881%_)
                        (let ((_%$e174885%_
                               (##unchecked-structure-ref
                                _%ctx174880%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e174885%_
                              ((lambda (_%g174887174889%_)
                                 (_%K174878%_
                                  _%g174887174889%_
                                  (##fx- _%phi174881%_ '1)))
                               _%$e174885%_)
                              (_%shift174876%_
                               _%ctx174880%_
                               '1
                               _%make-phi/up174874%_
                               _%phi174881%_
                               _%K174878%_)))
                        (let ((_%$e174893%_
                               (##unchecked-structure-ref
                                _%ctx174880%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e174893%_
                              ((lambda (_%g174895174897%_)
                                 (_%K174878%_
                                  _%g174895174897%_
                                  (##fx+ _%phi174881%_ '1)))
                               _%$e174893%_)
                              (_%shift174876%_
                               _%ctx174880%_
                               '-1
                               _%make-phi/down174875%_
                               _%phi174881%_
                               _%K174878%_))))
                    _%ctx174880%_))))))
    (define gx#core-context-get
      (lambda (_%ctx174867%_ _%key174868%_)
        (hash-get
         (##unchecked-structure-ref _%ctx174867%_ '2 '#f '#f)
         _%key174868%_)))
    (define gx#core-context-put!
      (lambda (_%ctx174863%_ _%key174864%_ _%val174865%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx174863%_ '2 '#f '#f)
         _%key174864%_
         _%val174865%_)
        _%val174865%_))
    (define gx#core-context-resolve
      (lambda (_%ctx174849%_ _%key174850%_)
        (let _%lp174852%_ ((_%ctx174854%_ _%ctx174849%_))
          (let ((_%$e174856%_
                 (gx#core-context-get _%ctx174854%_ _%key174850%_)))
            (if _%$e174856%_
                _%$e174856%_
                (let ((_%$e174859%_
                       (if (##structure-instance-of?
                            _%ctx174854%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx174854%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e174859%_ (_%lp174852%_ _%$e174859%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx174838%_ _%key174839%_ _%val174840%_ _%rebind174841%_)
        (let ((_%$e174843%_ (gx#core-context-get _%ctx174838%_ _%key174839%_)))
          (if _%$e174843%_
              ((lambda (_%xval174846%_)
                 (gx#core-context-put!
                  _%ctx174838%_
                  _%key174839%_
                  (_%rebind174841%_ _%xval174846%_)))
               _%$e174843%_)
              (gx#core-context-put!
               _%ctx174838%_
               _%key174839%_
               _%val174840%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx174813%_ _%stop?174814%_)
        (let _%lp174816%_ ((_%ctx174818%_ _%ctx174813%_))
          (if (_%stop?174814%_ _%ctx174818%_)
              _%ctx174818%_
              (if (##structure-instance-of? _%ctx174818%_ 'gx#phi-context::t)
                  (_%lp174816%_
                   (##unchecked-structure-ref _%ctx174818%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx174827%_ (gx#current-expander-context))
               (_%stop?174829%_ gx#top-context?))
          (gx#core-context-top__% _%ctx174827%_ _%stop?174829%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx174831%_)
        (let ((_%stop?174833%_ gx#top-context?))
          (gx#core-context-top__% _%ctx174831%_ _%stop?174833%_))))
    (define gx#core-context-top
      (lambda _g178857_
        (let ((_g178858_ (##length _g178857_)))
          (cond ((##fx= _g178858_ 0) (apply gx#core-context-top__0 _g178857_))
                ((##fx= _g178858_ 1) (apply gx#core-context-top__1 _g178857_))
                ((##fx= _g178858_ 2) (apply gx#core-context-top__% _g178857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g178857_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx174798%_)
        (let _%lp174800%_ ((_%ctx174802%_ _%ctx174798%_))
          (if (##structure-instance-of? _%ctx174802%_ 'gx#phi-context::t)
              (_%lp174800%_
               (##unchecked-structure-ref _%ctx174802%_ '3 '#f '#f))
              _%ctx174802%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx174808%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx174808%_))))
    (define gx#core-context-root
      (lambda _g178859_
        (let ((_g178860_ (##length _g178859_)))
          (cond ((##fx= _g178860_ 0) (apply gx#core-context-root__0 _g178859_))
                ((##fx= _g178860_ 1) (apply gx#core-context-root__% _g178859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g178859_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx174780%_ . _%ignore174781%_)
        (let ((_%$e174783%_ (gx#current-expander-allow-rebind?)))
          (if _%$e174783%_
              _%$e174783%_
              (if (##structure-instance-of? _%ctx174780%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx174780%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx174780%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx174790%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx174790%_))))
    (define gx#core-context-rebind?
      (lambda _g178861_
        (let ((_g178862_ (##length _g178861_)))
          (cond ((##fx= _g178862_ 0)
                 (apply gx#core-context-rebind?__0 _g178861_))
                ((##fx= _g178862_ 1)
                 (apply gx#core-context-rebind?__% _g178861_))
                ((##fx>= _g178862_ 1)
                 (apply gx#core-context-rebind?__% _g178861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g178861_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx174763%_)
        (let ((_%$e174765%_ (gx#core-context-top__1 _%ctx174763%_)))
          (if _%$e174765%_
              ((lambda (_%ctx174768%_)
                 (if (##structure-instance-of?
                      _%ctx174768%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx174768%_ '6 '#f '#f)
                     '#f))
               _%$e174765%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx174775%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx174775%_))))
    (define gx#core-context-namespace
      (lambda _g178863_
        (let ((_g178864_ (##length _g178863_)))
          (cond ((##fx= _g178864_ 0)
                 (apply gx#core-context-namespace__0 _g178863_))
                ((##fx= _g178864_ 1)
                 (apply gx#core-context-namespace__% _g178863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g178863_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind174749%_ _%is?174750%_)
        (if (##structure-direct-instance-of?
             _%bind174749%_
             'gx#syntax-binding::t)
            (_%is?174750%_
             (##unchecked-structure-ref _%bind174749%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind174755%_)
        (let ((_%is?174757%_ gx#expander?))
          (gx#expander-binding?__% _%bind174755%_ _%is?174757%_))))
    (define gx#expander-binding?
      (lambda _g178865_
        (let ((_g178866_ (##length _g178865_)))
          (cond ((##fx= _g178866_ 1) (apply gx#expander-binding?__0 _g178865_))
                ((##fx= _g178866_ 2) (apply gx#expander-binding?__% _g178865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g178865_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind174746%_)
        (gx#expander-binding?__% _%bind174746%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind174744%_)
        (gx#expander-binding?__% _%bind174744%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind174738%_)
        (letrec ((_%direct-special-form?174740%_
                  (lambda (_%obj174742%_)
                    (##structure-direct-instance-of?
                     _%obj174742%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind174738%_
           _%direct-special-form?174740%_))))
    (define gx#special-form-binding?
      (lambda (_%bind174736%_)
        (gx#expander-binding?__% _%bind174736%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind174727%_)
        (letrec ((_%feature?174729%_
                  (lambda (_%e174731%_)
                    (let ((_%$e174733%_
                           (##structure-instance-of?
                            _%e174731%_
                            'gx#feature-expander::t)))
                      (if _%$e174733%_
                          _%$e174733%_
                          (##structure-instance-of?
                           _%e174731%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind174727%_ _%feature?174729%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind174725%_)
        (gx#expander-binding?__% _%bind174725%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id174712%_ _%bound?174713%_)
        (if (gx#identifier? _%id174712%_)
            (_%bound?174713%_ (gx#resolve-identifier__0 _%id174712%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id174718%_)
        (let ((_%bound?174720%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id174718%_ _%bound?174720%_))))
    (define gx#core-bound-identifier?
      (lambda _g178867_
        (let ((_g178868_ (##length _g178867_)))
          (cond ((##fx= _g178868_ 1)
                 (apply gx#core-bound-identifier?__0 _g178867_))
                ((##fx= _g178868_ 2)
                 (apply gx#core-bound-identifier?__% _g178867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g178867_))))))
    (define gx#core-identifier=?
      (lambda (_%x174702%_ _%y174703%_)
        (letrec ((_%y=?174705%_
                  (lambda (_%xid174709%_)
                    ((if (list? _%y174703%_) memq eq?)
                     _%xid174709%_
                     _%y174703%_))))
          (let ((_%bind174707%_ (gx#resolve-identifier__0 _%x174702%_)))
            (if (##structure-instance-of? _%bind174707%_ 'gx#binding::t)
                (_%y=?174705%_
                 (##unchecked-structure-ref _%bind174707%_ '1 '#f '#f))
                (_%y=?174705%_ (gx#stx-e _%x174702%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e174700%_)
        (if (interned-symbol? _%e174700%_)
            (string-index__0 (symbol->string _%e174700%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx174653%_ _%src174654%_ _%ctx174655%_ _%marks174656%_)
        (if (##structure? _%stx174653%_)
            (let ((_%$e174658%_ (gx#sealed-syntax-unwrap _%stx174653%_)))
              (if _%$e174658%_
                  _%$e174658%_
                  (if (gx#identifier? _%stx174653%_)
                      (let ((_%id174662%_
                             (gx#stx-unwrap__% _%stx174653%_ _%marks174656%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id174662%_ '1 '#f '#f)
                         (let ((_%$e174664%_
                                (##unchecked-structure-ref
                                 _%id174662%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e174664%_ _%$e174664%_ _%src174654%_))
                         _%ctx174655%_
                         (##unchecked-structure-ref _%id174662%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx174653%_)
                       (let ((_%$e174668%_ (gx#stx-source _%stx174653%_)))
                         (if _%$e174668%_ _%$e174668%_ _%src174654%_))
                       _%ctx174655%_
                       (reverse _%marks174656%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx174653%_
             _%src174654%_
             _%ctx174655%_
             (reverse _%marks174656%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx174674%_)
        (let* ((_%src174676%_ '#f)
               (_%ctx174678%_ (gx#current-expander-context))
               (_%marks174680%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174674%_
           _%src174676%_
           _%ctx174678%_
           _%marks174680%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx174682%_ _%src174683%_)
        (let* ((_%ctx174685%_ (gx#current-expander-context))
               (_%marks174687%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174682%_
           _%src174683%_
           _%ctx174685%_
           _%marks174687%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx174689%_ _%src174690%_ _%ctx174691%_)
        (let ((_%marks174693%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174689%_
           _%src174690%_
           _%ctx174691%_
           _%marks174693%_))))
    (define gx#core-quote-syntax
      (lambda _g178869_
        (let ((_g178870_ (##length _g178869_)))
          (cond ((##fx= _g178870_ 1) (apply gx#core-quote-syntax__0 _g178869_))
                ((##fx= _g178870_ 2) (apply gx#core-quote-syntax__1 _g178869_))
                ((##fx= _g178870_ 3) (apply gx#core-quote-syntax__2 _g178869_))
                ((##fx= _g178870_ 4) (apply gx#core-quote-syntax__% _g178869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g178869_))))))
    (define gx#core-cons
      (lambda (_%hd174649%_ _%tl174650%_)
        (cons (gx#core-quote-syntax__0 _%hd174649%_) _%tl174650%_)))
    (define gx#core-list
      (lambda (_%hd174646%_ . _%rest174647%_)
        (cons (gx#core-quote-syntax__0 _%hd174646%_) _%rest174647%_)))
    (define gx#core-cons*
      (lambda (_%hd174643%_ . _%rest174644%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd174643%_) _%rest174644%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path174612%_ _%rel174613%_)
        (let ((_%path174630%_ (gx#stx-e _%stx-path174612%_))
              (_%reldir174631%_
               (let _%lp174615%_ ((_%relsrc174617%_
                                   (let ((_%$e174627%_
                                          (gx#stx-source _%stx-path174612%_)))
                                     (if _%$e174627%_
                                         _%$e174627%_
                                         _%rel174613%_))))
                 (if (##structure-instance-of? _%relsrc174617%_ 'gerbil#AST::t)
                     (_%lp174615%_
                      (let ((_%$e174620%_ (gx#stx-source _%relsrc174617%_)))
                        (if _%$e174620%_
                            _%$e174620%_
                            (gx#stx-e _%relsrc174617%_))))
                     (if (source-location-path? _%relsrc174617%_)
                         (path-directory
                          (source-location-path _%relsrc174617%_))
                         (if (string? _%relsrc174617%_)
                             (path-directory _%relsrc174617%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path174630%_ (path-normalize _%reldir174631%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path174636%_)
        (let ((_%rel174638%_ '#f))
          (gx#core-resolve-path__% _%stx-path174636%_ _%rel174638%_))))
    (define gx#core-resolve-path
      (lambda _g178871_
        (let ((_g178872_ (##length _g178871_)))
          (cond ((##fx= _g178872_ 1) (apply gx#core-resolve-path__0 _g178871_))
                ((##fx= _g178872_ 2) (apply gx#core-resolve-path__% _g178871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g178871_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr174568%_ _%ctx174569%_)
        (let* ((_%repr174570174577%_ _%repr174568%_)
               (_%E174572174581%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr174570174577%_
                         '([phi . subs]))
                  '#!void))
               (_%K174573174589%_
                (lambda (_%subs174584%_ _%phi174585%_)
                  (let ((_%subst174587%_
                         (if (null? _%subs174584%_)
                             '#f
                             (list->hash-table-eq _%subs174584%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst174587%_
                     _%ctx174569%_
                     _%phi174585%_
                     '#f)))))
          (if (pair? _%repr174570174577%_)
              (let ((_%hd174574174592%_ (##car _%repr174570174577%_))
                    (_%tl174575174594%_ (##cdr _%repr174570174577%_)))
                (let* ((_%phi174597%_ _%hd174574174592%_)
                       (_%subs174599%_ _%tl174575174594%_))
                  (_%K174573174589%_ _%subs174599%_ _%phi174597%_)))
              (_%E174572174581%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr174604%_)
        (let ((_%ctx174606%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr174604%_ _%ctx174606%_))))
    (define gx#core-deserialize-mark
      (lambda _g178873_
        (let ((_g178874_ (##length _g178873_)))
          (cond ((##fx= _g178874_ 1)
                 (apply gx#core-deserialize-mark__0 _g178873_))
                ((##fx= _g178874_ 2)
                 (apply gx#core-deserialize-mark__% _g178873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g178873_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx174565%_)
        (gx#stx-rewrap _%stx174565%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx174563%_)
        (gx#stx-unwrap__% _%stx174563%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx174533%_)
        (let* ((_%g174534174542%_ (gx#current-expander-marks))
               (_%else174536174550%_ (lambda () _%stx174533%_))
               (_%K174538174555%_
                (lambda (_%hd174553%_)
                  (gx#stx-apply-mark _%stx174533%_ _%hd174553%_))))
          (if (pair? _%g174534174542%_)
              (let* ((_%hd174539174558%_ (##car _%g174534174542%_))
                     (_%hd174561%_ _%hd174539174558%_))
                (_%K174538174555%_ _%hd174561%_))
              (_%else174536174550%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym174531%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym174531%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx174516%_ _%E174517%_)
        (let ((_%bind174519%_ (gx#resolve-identifier__0 _%stx174516%_)))
          (if (##structure-direct-instance-of?
               _%bind174519%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind174519%_ '5 '#f '#f)
              (_%E174517%_ _%stx174516%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx174524%_)
        (let ((_%E174526%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx174524%_ _%E174526%_))))
    (define gx#syntax-local-e
      (lambda _g178875_
        (let ((_g178876_ (##length _g178875_)))
          (cond ((##fx= _g178876_ 1) (apply gx#syntax-local-e__0 _g178875_))
                ((##fx= _g178876_ 2) (apply gx#syntax-local-e__% _g178875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g178875_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx174500%_ _%E174501%_)
        (let ((_%e174503%_ (gx#syntax-local-e__% _%stx174500%_ _%E174501%_)))
          (if (##structure-instance-of? _%e174503%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e174503%_ '1 '#f '#f)
              _%e174503%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx174508%_)
        (let ((_%E174510%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx174508%_ _%E174510%_))))
    (define gx#syntax-local-value
      (lambda _g178877_
        (let ((_g178878_ (##length _g178877_)))
          (cond ((##fx= _g178878_ 1)
                 (apply gx#syntax-local-value__0 _g178877_))
                ((##fx= _g178878_ 2)
                 (apply gx#syntax-local-value__% _g178877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g178877_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx174497%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx174497%_)))))
