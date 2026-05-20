(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1779274770)
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
      (lambda _%$args179074%_
        (apply make-instance gx#expander-context::t _%$args179074%_)))
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
      (lambda _%$args179071%_
        (apply make-instance gx#root-context::t _%$args179071%_)))
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
      (lambda _%$args179068%_
        (apply make-instance gx#phi-context::t _%$args179068%_)))
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
      (lambda _%$args179065%_
        (apply make-instance gx#top-context::t _%$args179065%_)))
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
      (lambda _%$args179062%_
        (apply make-instance gx#module-context::t _%$args179062%_)))
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
      (lambda _%$args179059%_
        (apply make-instance gx#prelude-context::t _%$args179059%_)))
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
      (lambda _%$args179056%_
        (apply make-instance gx#local-context::t _%$args179056%_)))
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
      (lambda (_%self179029%_ _%id179030%_ _%super179031%_)
        (let ((_%self179034%_ _%self179029%_))
          (if (##fx< '3 (##structure-length _%self179034%_))
              (begin
                (##unchecked-structure-set!
                 _%self179034%_
                 _%id179030%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179034%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179034%_
                 _%super179031%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self179034%_
                     '3
                     (##structure-length _%self179034%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self179047%_ _%id179048%_)
        (let ((_%super179050%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self179047%_
           _%id179048%_
           _%super179050%_))))
    (define gx#phi-context:::init!
      (lambda _g179116_
        (let ((_g179117_ (##length _g179116_)))
          (cond ((##fx= _g179117_ 2)
                 (apply gx#phi-context:::init!__0 _g179116_))
                ((##fx= _g179117_ 3)
                 (apply gx#phi-context:::init!__% _g179116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g179116_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self178882%_ _%super178883%_)
        (let ((_%self178886%_ _%self178882%_))
          (if (##fx< '3 (##structure-length _%self178886%_))
              (begin
                (##unchecked-structure-set!
                 _%self178886%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178886%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178886%_
                 _%super178883%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self178886%_
                     '3
                     (##structure-length _%self178886%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self178899%_)
        (let ((_%super178901%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self178899%_ _%super178901%_))))
    (define gx#local-context:::init!
      (lambda _g179118_
        (let ((_g179119_ (##length _g179118_)))
          (cond ((##fx= _g179119_ 1)
                 (apply gx#local-context:::init!__0 _g179118_))
                ((##fx= _g179119_ 2)
                 (apply gx#local-context:::init!__% _g179118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g179118_))))))
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
      (lambda _%$args178756%_
        (apply make-instance gx#binding::t _%$args178756%_)))
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
      (lambda (_%self178739%_ _%id178740%_ _%key178741%_ _%phi178742%_)
        (let ((_%self178745%_ _%self178739%_))
          (##unchecked-structure-set! _%self178745%_ _%id178740%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self178745%_ _%key178741%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self178745%_
           _%phi178742%_
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
      (lambda _%$args178614%_
        (apply make-instance gx#runtime-binding::t _%$args178614%_)))
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
      (lambda _%$args178611%_
        (apply make-instance gx#local-binding::t _%$args178611%_)))
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
      (lambda _%$args178608%_
        (apply make-instance gx#top-binding::t _%$args178608%_)))
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
      (lambda _%$args178605%_
        (apply make-instance gx#module-binding::t _%$args178605%_)))
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
      (lambda _%$args178602%_
        (apply make-instance gx#extern-binding::t _%$args178602%_)))
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
      (lambda (_%self178218%_
               _%id178219%_
               _%key178220%_
               _%phi178221%_
               _%ctx178222%_)
        (let ((_%self178225%_ _%self178218%_))
          (gx#binding:::init!
           _%self178225%_
           _%id178219%_
           _%key178220%_
           _%phi178221%_)
          (##unchecked-structure-set!
           _%self178225%_
           _%ctx178222%_
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
      (lambda _%$args177971%_
        (apply make-instance gx#syntax-binding::t _%$args177971%_)))
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
      (lambda _%$args177968%_
        (apply make-instance gx#import-binding::t _%$args177968%_)))
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
      (lambda _%$args177965%_
        (apply make-instance gx#alias-binding::t _%$args177965%_)))
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
      (lambda (_%self177947%_
               _%id177948%_
               _%key177949%_
               _%phi177950%_
               _%e177951%_)
        (let ((_%self177954%_ _%self177947%_))
          (gx#binding:::init!
           _%self177954%_
           _%id177948%_
           _%key177949%_
           _%phi177950%_)
          (##unchecked-structure-set! _%self177954%_ _%e177951%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self177805%_
               _%id177806%_
               _%key177807%_
               _%phi177808%_
               _%e177809%_
               _%ctx177810%_
               _%weak?177811%_)
        (let ((_%self177814%_ _%self177805%_))
          (gx#binding:::init!
           _%self177814%_
           _%id177806%_
           _%key177807%_
           _%phi177808%_)
          (##unchecked-structure-set! _%self177814%_ _%e177809%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self177814%_ _%ctx177810%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self177814%_
           _%weak?177811%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self177665%_
               _%id177666%_
               _%key177667%_
               _%phi177668%_
               _%e177669%_)
        (let ((_%self177672%_ _%self177665%_))
          (gx#binding:::init!
           _%self177672%_
           _%id177666%_
           _%key177667%_
           _%phi177668%_)
          (##unchecked-structure-set! _%self177672%_ _%e177669%_ '5 '#f '#f))))
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
      (lambda _%$args177540%_
        (apply make-instance gx#expander::t _%$args177540%_)))
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
      (lambda _%$args177537%_
        (apply make-instance gx#core-expander::t _%$args177537%_)))
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
      (lambda _%$args177534%_
        (apply make-instance gx#expression-form::t _%$args177534%_)))
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
      (lambda _%$args177531%_
        (apply make-instance gx#special-form::t _%$args177531%_)))
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
      (lambda _%$args177528%_
        (apply make-instance gx#definition-form::t _%$args177528%_)))
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
      (lambda _%$args177525%_
        (apply make-instance gx#top-special-form::t _%$args177525%_)))
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
      (lambda _%$args177522%_
        (apply make-instance gx#module-special-form::t _%$args177522%_)))
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
      (lambda _%$args177519%_
        (apply make-instance gx#feature-expander::t _%$args177519%_)))
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
      (lambda _%$args177516%_
        (apply make-instance gx#private-feature-expander::t _%$args177516%_)))
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
      (lambda _%$args177513%_
        (apply make-instance gx#reserved-expander::t _%$args177513%_)))
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
      (lambda _%$args177510%_
        (apply make-instance gx#macro-expander::t _%$args177510%_)))
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
      (lambda _%$args177507%_
        (apply make-instance gx#rename-macro-expander::t _%$args177507%_)))
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
      (lambda _%$args177504%_
        (apply make-instance gx#user-expander::t _%$args177504%_)))
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
      (lambda _%$args177501%_
        (apply make-instance gx#expander-mark::t _%$args177501%_)))
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
      (lambda (_%ctx177485%_
               _%message177486%_
               _%stx177487%_
               .
               _%details177488%_)
        (let ((_%ctx177499%_
               (let ((_%$e177490%_ _%ctx177485%_))
                 (if _%$e177490%_
                     _%$e177490%_
                     (let ((_%$e177493%_ (gx#core-context-top__0)))
                       (if _%$e177493%_
                           ((lambda (_%ctx177496%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx177496%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e177493%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message177486%_
                  (cons _%stx177487%_ _%details177488%_)
                  _%ctx177499%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx177472%_ _%expression?177473%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx177472%_ _%expression?177473%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx177478%_)
        (let ((_%expression?177480%_ '#f))
          (gx#eval-syntax__% _%stx177478%_ _%expression?177480%_))))
    (define gx#eval-syntax
      (lambda _g179120_
        (let ((_g179121_ (##length _g179120_)))
          (cond ((##fx= _g179121_ 1) (apply gx#eval-syntax__0 _g179120_))
                ((##fx= _g179121_ 2) (apply gx#eval-syntax__% _g179120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g179120_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx177457%_ _%expression?177458%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx177457%_ _%expression?177458%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx177464%_)
        (let ((_%expression?177466%_ '#f))
          (gx#eval-syntax+1__% _%stx177464%_ _%expression?177466%_))))
    (define gx#eval-syntax+1
      (lambda _g179122_
        (let ((_g179123_ (##length _g179122_)))
          (cond ((##fx= _g179123_ 1) (apply gx#eval-syntax+1__0 _g179122_))
                ((##fx= _g179123_ 2) (apply gx#eval-syntax+1__% _g179122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g179122_))))))
    (define gx#eval-expression+1
      (lambda (_%stx177454%_) (gx#eval-syntax+1__% _%stx177454%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx177452%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx177452%_))))
    (define gx#core-expand__%
      (lambda (_%stx177439%_ _%expression?177440%_)
        (if _%expression?177440%_
            (gx#core-expand-expression _%stx177439%_)
            (gx#core-expand-top _%stx177439%_))))
    (define gx#core-expand__0
      (lambda (_%stx177445%_)
        (let ((_%expression?177447%_ '#f))
          (gx#core-expand__% _%stx177445%_ _%expression?177447%_))))
    (define gx#core-expand
      (lambda _g179124_
        (let ((_g179125_ (##length _g179124_)))
          (cond ((##fx= _g179125_ 1) (apply gx#core-expand__0 _g179124_))
                ((##fx= _g179125_ 2) (apply gx#core-expand__% _g179124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g179124_))))))
    (define gx#core-expand-top
      (lambda (_%stx177406%_)
        (let* ((_%stx177408%_ (gx#core-expand*__0 _%stx177406%_))
               (_%e177409177416%_ _%stx177408%_)
               (_%E177411177420%_
                (lambda () (gx#core-expand-expression _%stx177408%_)))
               (_%E177410177434%_
                (lambda ()
                  (if (gx#stx-pair? _%e177409177416%_)
                      (let ((_%e177412177424%_
                             (gx#syntax-e _%e177409177416%_)))
                        (let ((_%hd177413177427%_ (##car _%e177412177424%_))
                              (_%tl177414177429%_ (##cdr _%e177412177424%_)))
                          (let ((_%form177432%_ _%hd177413177427%_))
                            (if (gx#core-bound-identifier?__0 _%form177432%_)
                                _%stx177408%_
                                (_%E177411177420%_)))))
                      (_%E177411177420%_)))))
          (_%E177410177434%_))))
    (define gx#core-expand-expression
      (lambda (_%stx177338%_)
        (letrec ((_%sealed-expression?177340%_
                  (lambda (_%hd177376%_)
                    (if (gx#sealed-syntax? _%hd177376%_)
                        (let* ((_%e177377177384%_ _%hd177376%_)
                               (_%E177379177388%_ (lambda () '#f))
                               (_%E177378177402%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e177377177384%_)
                                      (let ((_%e177380177392%_
                                             (gx#syntax-e _%e177377177384%_)))
                                        (let ((_%hd177381177395%_
                                               (##car _%e177380177392%_))
                                              (_%tl177382177397%_
                                               (##cdr _%e177380177392%_)))
                                          (let ((_%form177400%_
                                                 _%hd177381177395%_))
                                            (gx#core-bound-identifier?__%
                                             _%form177400%_
                                             gx#expression-form-binding?))))
                                      (_%E177379177388%_)))))
                          (_%E177378177402%_))
                        '#f)))
                 (_%illegal-expression177341%_
                  (lambda (_%hd177373%_ . _%_177374%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx177338%_
                     _%hd177373%_)))
                 (_%expand-e177342%_
                  (lambda (_%form177365%_ _%hd177366%_)
                    (let ((_%bind177368%_
                           (if (##structure-instance-of?
                                _%form177365%_
                                'gx#binding::t)
                               _%form177365%_
                               (gx#resolve-identifier__0 _%form177365%_))))
                      (if (gx#core-expander-binding? _%bind177368%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind177368%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd177366%_
                            (gx#stx-source _%stx177338%_)))
                          (if (##structure-direct-instance-of?
                               _%bind177368%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind177368%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd177366%_
                                 (gx#stx-source _%stx177338%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx177338%_
                               _%form177365%_)))))))
          (let ((_%hd177344%_ (gx#core-expand-head _%stx177338%_)))
            (if (_%sealed-expression?177340%_ _%hd177344%_)
                _%hd177344%_
                (if (gx#stx-pair? _%hd177344%_)
                    (let* ((_%form177348%_ (gx#stx-car _%hd177344%_))
                           (_%bind177350%_
                            (if (gx#identifier? _%form177348%_)
                                (gx#resolve-identifier__0 _%form177348%_)
                                '#f)))
                      (if (or (not _%bind177350%_)
                              (not (gx#core-expander-binding? _%bind177350%_)))
                          (_%expand-e177342%_
                           '%%app
                           (cons '%%app _%hd177344%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind177350%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd177344%_
                               _%illegal-expression177341%_)
                              (if (gx#expression-form-binding? _%bind177350%_)
                                  (_%expand-e177342%_
                                   _%bind177350%_
                                   _%hd177344%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind177350%_)
                                      (gx#core-expand-expression
                                       (_%expand-e177342%_
                                        _%bind177350%_
                                        _%hd177344%_))
                                      (_%illegal-expression177341%_
                                       _%hd177344%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd177344%_)
                        (_%illegal-expression177341%_ _%hd177344%_)
                        (if (gx#identifier? _%hd177344%_)
                            (_%expand-e177342%_
                             '%%ref
                             (cons '%%ref (cons _%hd177344%_ '())))
                            (if (gx#stx-datum? _%hd177344%_)
                                (_%expand-e177342%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd177344%_ '())))
                                (_%illegal-expression177341%_
                                 _%hd177344%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx177333%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx177336%_ (gx#core-expand-expression _%stx177333%_)))
             (values _%stx177336%_ (gx#eval-syntax* _%stx177336%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx177314%_ _%stop?177315%_)
        (let _%lp177317%_ ((_%stx177319%_ _%stx177314%_))
          (if (_%stop?177315%_ _%stx177319%_)
              _%stx177319%_
              (let ((_%rstx177321%_ (gx#core-expand1 _%stx177319%_)))
                (if (eq? _%stx177319%_ _%rstx177321%_)
                    _%stx177319%_
                    (_%lp177317%_ _%rstx177321%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx177326%_)
        (let ((_%stop?177328%_ false))
          (gx#core-expand*__% _%stx177326%_ _%stop?177328%_))))
    (define gx#core-expand*
      (lambda _g179126_
        (let ((_g179127_ (##length _g179126_)))
          (cond ((##fx= _g179127_ 1) (apply gx#core-expand*__0 _g179126_))
                ((##fx= _g179127_ 2) (apply gx#core-expand*__% _g179126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g179126_))))))
    (define gx#core-expand1
      (lambda (_%stx177266%_)
        (letrec ((_%step177268%_
                  (lambda (_%hd177305%_)
                    (let ((_%bind177307%_
                           (gx#resolve-identifier__0 _%hd177305%_)))
                      (if (##structure-instance-of?
                           _%bind177307%_
                           'gx#runtime-binding::t)
                          _%stx177266%_
                          (if (##structure-direct-instance-of?
                               _%bind177307%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind177307%_
                                '5
                                '#f
                                '#f)
                               _%stx177266%_)
                              (if (not _%bind177307%_)
                                  _%stx177266%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx177266%_))))))))
          (let* ((_%e177269177277%_ _%stx177266%_)
                 (_%E177275177281%_ (lambda () _%stx177266%_))
                 (_%E177271177287%_
                  (lambda ()
                    (let ((_%hd177285%_ _%e177269177277%_))
                      (if (gx#identifier? _%hd177285%_)
                          (_%step177268%_ _%hd177285%_)
                          (_%E177275177281%_)))))
                 (_%E177270177301%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177269177277%_)
                        (let ((_%e177272177291%_
                               (gx#syntax-e _%e177269177277%_)))
                          (let ((_%hd177273177294%_ (##car _%e177272177291%_))
                                (_%tl177274177296%_ (##cdr _%e177272177291%_)))
                            (let ((_%hd177299%_ _%hd177273177294%_))
                              (if (gx#identifier? _%hd177299%_)
                                  (_%step177268%_ _%hd177299%_)
                                  (_%E177271177287%_)))))
                        (_%E177271177287%_)))))
            (_%E177270177301%_)))))
    (define gx#core-expand-head
      (lambda (_%stx177232%_)
        (letrec ((_%stop?177234%_
                  (lambda (_%stx177236%_)
                    (let* ((_%e177237177244%_ _%stx177236%_)
                           (_%E177239177248%_ (lambda () '#f))
                           (_%E177238177262%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177237177244%_)
                                  (let ((_%e177240177252%_
                                         (gx#syntax-e _%e177237177244%_)))
                                    (let ((_%hd177241177255%_
                                           (##car _%e177240177252%_))
                                          (_%tl177242177257%_
                                           (##cdr _%e177240177252%_)))
                                      (let ((_%hd177260%_ _%hd177241177255%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd177260%_))))
                                  (_%E177239177248%_)))))
                      (_%E177238177262%_)))))
          (gx#core-expand*__% _%stx177232%_ _%stop?177234%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx177038%_
               _%expand-special177039%_
               _%begin-form177040%_
               _%expand-e177041%_)
        (letrec ((_%expand-splice177043%_
                  (lambda (_%hd177206%_
                           _%body177207%_
                           _%rest177208%_
                           _%r177209%_)
                    (if (gx#stx-list? _%body177207%_)
                        (_%K177047%_
                         (gx#stx-foldr cons _%rest177208%_ _%body177207%_)
                         _%r177209%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx177038%_
                         _%hd177206%_))))
                 (_%expand-cond-expand177044%_
                  (lambda (_%hd177202%_ _%rest177203%_ _%r177204%_)
                    (_%K177047%_
                     (cons (gx#core-expand-cond-expand% _%hd177202%_)
                           _%rest177203%_)
                     _%r177204%_)))
                 (_%expand-include177045%_
                  (lambda (_%hd177151%_ _%rest177152%_ _%r177153%_)
                    (let* ((_%e177154177164%_ _%hd177151%_)
                           (_%E177156177168%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e177154177164%_)))
                           (_%E177155177198%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177154177164%_)
                                  (let ((_%e177157177172%_
                                         (gx#syntax-e _%e177154177164%_)))
                                    (let ((_%hd177158177175%_
                                           (##car _%e177157177172%_))
                                          (_%tl177159177177%_
                                           (##cdr _%e177157177172%_)))
                                      (if (gx#stx-pair? _%tl177159177177%_)
                                          (let ((_%e177160177180%_
                                                 (gx#syntax-e
                                                  _%tl177159177177%_)))
                                            (let ((_%hd177161177183%_
                                                   (##car _%e177160177180%_))
                                                  (_%tl177162177185%_
                                                   (##cdr _%e177160177180%_)))
                                              (let ((_%path177188%_
                                                     _%hd177161177183%_))
                                                (if (gx#stx-null?
                                                     _%tl177162177185%_)
                                                    (if (gx#stx-string?
                                                         _%path177188%_)
                                                        (let* ((_%rpath177190%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path177188%_
                         (gx#stx-source _%hd177151%_)))
                       (_%block177192%_
                        (gx#core-expand-include%__%
                         _%hd177151%_
                         _%rpath177190%_))
                       (_%rbody177195%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block177192%_
                            _%expand-special177039%_
                            '#f
                            _%expand-e177041%_))
                         gx#current-expander-path
                         (cons _%rpath177190%_ (gx#current-expander-path)))))
                  (_%K177047%_
                   _%rest177152%_
                   (foldr__0 cons _%r177153%_ _%rbody177195%_)))
                (_%E177156177168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177156177168%_)))))
                                          (_%E177156177168%_))))
                                  (_%E177156177168%_)))))
                      (_%E177155177198%_))))
                 (_%expand-expression177046%_
                  (lambda (_%hd177147%_ _%rest177148%_ _%r177149%_)
                    (_%K177047%_
                     _%rest177148%_
                     (cons (_%expand-e177041%_ _%hd177147%_) _%r177149%_))))
                 (_%K177047%_
                  (lambda (_%rest177077%_ _%r177078%_)
                    (let* ((_%e177079177086%_ _%rest177077%_)
                           (_%E177081177090%_
                            (lambda ()
                              (if _%begin-form177040%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form177040%_
                                    (reverse _%r177078%_))
                                   (gx#stx-source _%stx177038%_))
                                  _%r177078%_)))
                           (_%E177080177143%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177079177086%_)
                                  (let ((_%e177082177094%_
                                         (gx#syntax-e _%e177079177086%_)))
                                    (let ((_%hd177083177097%_
                                           (##car _%e177082177094%_))
                                          (_%tl177084177099%_
                                           (##cdr _%e177082177094%_)))
                                      (let* ((_%hd177102%_ _%hd177083177097%_)
                                             (_%rest177104%_
                                              _%tl177084177099%_)
                                             (_%hd177106%_
                                              (gx#core-expand-head
                                               _%hd177102%_))
                                             (_%e177107177114%_ _%hd177106%_)
                                             (_%E177109177118%_
                                              (lambda ()
                                                (_%expand-expression177046%_
                                                 _%hd177106%_
                                                 _%rest177104%_
                                                 _%r177078%_)))
                                             (_%E177108177139%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e177107177114%_)
                                                    (let ((_%e177110177122%_
                                                           (gx#syntax-e
                                                            _%e177107177114%_)))
                                                      (let ((_%hd177111177125%_
                                                             (##car _%e177110177122%_))
                                                            (_%tl177112177127%_
                                                             (##cdr _%e177110177122%_)))
                                                        (let* ((_%form177130%_
                                                                _%hd177111177125%_)
                                                               (_%body177132%_
                                                                _%tl177112177127%_)
                                                               (_%bind177134%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form177130%_)
                            (gx#resolve-identifier__0 _%form177130%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind177134%_)
                      (let ((_%$e177136%_
                             (##unchecked-structure-ref
                              _%bind177134%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e177136%_)
                            (_%expand-splice177043%_
                             _%hd177106%_
                             _%body177132%_
                             _%rest177104%_
                             _%r177078%_)
                            (if (eq? '%#cond-expand _%$e177136%_)
                                (_%expand-cond-expand177044%_
                                 _%hd177106%_
                                 _%rest177104%_
                                 _%r177078%_)
                                (if (eq? '%#include _%$e177136%_)
                                    (_%expand-include177045%_
                                     _%hd177106%_
                                     _%rest177104%_
                                     _%r177078%_)
                                    (_%expand-special177039%_
                                     _%hd177106%_
                                     _%K177047%_
                                     _%rest177104%_
                                     _%r177078%_)))))
                      (_%expand-expression177046%_
                       _%hd177106%_
                       _%rest177104%_
                       _%r177078%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177109177118%_)))))
                                        (_%E177108177139%_))))
                                  (_%E177081177090%_)))))
                      (_%E177080177143%_)))))
          (let* ((_%e177048177055%_ _%stx177038%_)
                 (_%E177050177059%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e177048177055%_)))
                 (_%E177049177073%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177048177055%_)
                        (let ((_%e177051177063%_
                               (gx#syntax-e _%e177048177055%_)))
                          (let ((_%hd177052177066%_ (##car _%e177051177063%_))
                                (_%tl177053177068%_ (##cdr _%e177051177063%_)))
                            (let ((_%body177071%_ _%tl177053177068%_))
                              (if (gx#stx-list? _%body177071%_)
                                  (_%K177047%_ _%body177071%_ '())
                                  (_%E177050177059%_)))))
                        (_%E177050177059%_)))))
            (_%E177049177073%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx177214%_ _%expand-special177215%_)
        (let* ((_%begin-form177217%_ '%#begin)
               (_%expand-e177219%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx177214%_
           _%expand-special177215%_
           _%begin-form177217%_
           _%expand-e177219%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx177221%_ _%expand-special177222%_ _%begin-form177223%_)
        (let ((_%expand-e177225%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx177221%_
           _%expand-special177222%_
           _%begin-form177223%_
           _%expand-e177225%_))))
    (define gx#core-expand-block
      (lambda _g179128_
        (let ((_g179129_ (##length _g179128_)))
          (cond ((##fx= _g179129_ 2) (apply gx#core-expand-block__0 _g179128_))
                ((##fx= _g179129_ 3) (apply gx#core-expand-block__1 _g179128_))
                ((##fx= _g179129_ 4) (apply gx#core-expand-block__% _g179128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g179128_))))))
    (define gx#core-expand-block*
      (lambda (_%stx176986%_ _%expand-special176987%_)
        (let* ((_%g176988176999%_
                (gx#core-expand-block__1
                 _%stx176986%_
                 _%expand-special176987%_
                 '#f))
               (_%E176992177003%_
                (lambda ()
                  (error '"No clause matching"
                         _%g176988176999%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K176997177034%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx176986%_)))
                (_%K176994177020%_ (lambda (_%expr177018%_) _%expr177018%_))
                (_%K176993177009%_
                 (lambda (_%body177007%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body177007%_))
                    (gx#stx-source _%stx176986%_)))))
            (let ((_%try-match176990177030%_
                   (lambda ()
                     (if (pair? _%g176988176999%_)
                         (let ((_%tl176996177025%_ (##cdr _%g176988176999%_))
                               (_%hd176995177023%_ (##car _%g176988176999%_)))
                           (if (null? _%tl176996177025%_)
                               (let ((_%expr177028%_ _%hd176995177023%_))
                                 (_%K176994177020%_ _%expr177028%_))
                               (let ((_%body177012%_ _%g176988176999%_))
                                 (_%K176993177009%_ _%body177012%_))))
                         (let ((_%body177012%_ _%g176988176999%_))
                           (_%K176993177009%_ _%body177012%_))))))
              (if (null? _%g176988176999%_)
                  (_%K176997177034%_)
                  (_%try-match176990177030%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx176812%_)
        (letrec ((_%satisfied?176814%_
                  (lambda (_%condition176915%_)
                    (let* ((_%e176916176931%_ _%condition176915%_)
                           (_%E176926176935%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176916176931%_)))
                           (_%E176919176954%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176916176931%_)
                                  (let ((_%e176927176939%_
                                         (gx#syntax-e _%e176916176931%_)))
                                    (let ((_%hd176928176942%_
                                           (##car _%e176927176939%_))
                                          (_%tl176929176944%_
                                           (##cdr _%e176927176939%_)))
                                      (let* ((_%combinator176947%_
                                              _%hd176928176942%_)
                                             (_%body176949%_
                                              _%tl176929176944%_))
                                        (if (gx#stx-list? _%body176949%_)
                                            (let ((_%$e176951%_
                                                   (gx#stx-e
                                                    _%combinator176947%_)))
                                              (if (eq? 'not _%$e176951%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?176814%_
                                                        _%body176949%_))
                                                  (if (eq? 'and _%$e176951%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?176814%_
                                                       _%body176949%_)
                                                      (if (eq? 'or
                                                               _%$e176951%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?176814%_
                                                           _%body176949%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e176951%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body176949%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx176812%_
                       _%combinator176947%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176926176935%_)))))
                                  (_%E176926176935%_))))
                           (_%E176918176976%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176916176931%_)
                                  (let ((_%e176920176958%_
                                         (gx#syntax-e _%e176916176931%_)))
                                    (let ((_%hd176921176961%_
                                           (##car _%e176920176958%_))
                                          (_%tl176922176963%_
                                           (##cdr _%e176920176958%_)))
                                      (if (and (gx#identifier?
                                                _%hd176921176961%_)
                                               (gx#core-identifier=?
                                                _%hd176921176961%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl176922176963%_)
                                              (let ((_%e176923176966%_
                                                     (gx#syntax-e
                                                      _%tl176922176963%_)))
                                                (let ((_%hd176924176969%_
                                                       (##car _%e176923176966%_))
                                                      (_%tl176925176971%_
                                                       (##cdr _%e176923176966%_)))
                                                  (let ((_%expr176974%_
                                                         _%hd176924176969%_))
                                                    (if (gx#stx-null?
                                                         _%tl176925176971%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr176974%_)
                                                        (_%E176919176954%_)))))
                                              (_%E176919176954%_))
                                          (_%E176919176954%_))))
                                  (_%E176919176954%_))))
                           (_%E176917176982%_
                            (lambda ()
                              (let ((_%id176980%_ _%e176916176931%_))
                                (if (gx#identifier? _%id176980%_)
                                    (gx#core-bound-identifier?__%
                                     _%id176980%_
                                     gx#feature-binding?)
                                    (_%E176918176976%_))))))
                      (_%E176917176982%_))))
                 (_%loop176815%_
                  (lambda (_%rest176845%_)
                    (let* ((_%e176846176854%_ _%rest176845%_)
                           (_%E176852176858%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176846176854%_)))
                           (_%E176848176862%_
                            (lambda ()
                              (if (gx#stx-null? _%e176846176854%_)
                                  '()
                                  (_%E176852176858%_))))
                           (_%E176847176911%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176846176854%_)
                                  (let ((_%e176849176866%_
                                         (gx#syntax-e _%e176846176854%_)))
                                    (let ((_%hd176850176869%_
                                           (##car _%e176849176866%_))
                                          (_%tl176851176871%_
                                           (##cdr _%e176849176866%_)))
                                      (let* ((_%hd176874%_ _%hd176850176869%_)
                                             (_%rest176876%_
                                              _%tl176851176871%_)
                                             (_%e176877176884%_ _%hd176874%_)
                                             (_%E176879176888%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e176877176884%_)))
                                             (_%E176878176907%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e176877176884%_)
                                                    (let ((_%e176880176892%_
                                                           (gx#syntax-e
                                                            _%e176877176884%_)))
                                                      (let ((_%hd176881176895%_
                                                             (##car _%e176880176892%_))
                                                            (_%tl176882176897%_
                                                             (##cdr _%e176880176892%_)))
                                                        (let* ((_%condition176900%_
                                                                _%hd176881176895%_)
                                                               (_%body176902%_
                                                                _%tl176882176897%_))
                                                          (if (gx#stx-eq?
                                                               _%condition176900%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest176876%_)
                          _%body176902%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx176812%_
                           _%hd176874%_))
                      (if (_%satisfied?176814%_ _%condition176900%_)
                          _%body176902%_
                          (_%loop176815%_ _%rest176876%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176879176888%_)))))
                                        (_%E176878176907%_))))
                                  (_%E176848176862%_)))))
                      (_%E176847176911%_)))))
          (let* ((_%e176816176823%_ _%stx176812%_)
                 (_%E176818176827%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176816176823%_)))
                 (_%E176817176841%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176816176823%_)
                        (let ((_%e176819176831%_
                               (gx#syntax-e _%e176816176823%_)))
                          (let ((_%hd176820176834%_ (##car _%e176819176831%_))
                                (_%tl176821176836%_ (##cdr _%e176819176831%_)))
                            (let ((_%clauses176839%_ _%tl176821176836%_))
                              (if (gx#stx-list? _%clauses176839%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop176815%_ _%clauses176839%_))
                                  (_%E176818176827%_)))))
                        (_%E176818176827%_)))))
            (_%E176817176841%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx176755%_ _%rpath176756%_)
        (let* ((_%e176757176767%_ _%stx176755%_)
               (_%E176759176771%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176757176767%_)))
               (_%E176758176798%_
                (lambda ()
                  (if (gx#stx-pair? _%e176757176767%_)
                      (let ((_%e176760176775%_
                             (gx#syntax-e _%e176757176767%_)))
                        (let ((_%hd176761176778%_ (##car _%e176760176775%_))
                              (_%tl176762176780%_ (##cdr _%e176760176775%_)))
                          (if (gx#stx-pair? _%tl176762176780%_)
                              (let ((_%e176763176783%_
                                     (gx#syntax-e _%tl176762176780%_)))
                                (let ((_%hd176764176786%_
                                       (##car _%e176763176783%_))
                                      (_%tl176765176788%_
                                       (##cdr _%e176763176783%_)))
                                  (let ((_%path176791%_ _%hd176764176786%_))
                                    (if (gx#stx-null? _%tl176765176788%_)
                                        (if (gx#stx-string? _%path176791%_)
                                            (let ((_%rpath176796%_
                                                   (let ((_%$e176793%_
                                                          _%rpath176756%_))
                                                     (if _%$e176793%_
                                                         _%$e176793%_
                                                         (gx#core-resolve-path__%
                                                          _%path176791%_
                                                          (gx#stx-source
                                                           _%stx176755%_))))))
                                              (if (member _%rpath176796%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx176755%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath176796%_))
                                                    (gx#stx-source
                                                     _%stx176755%_)))))
                                            (_%E176759176771%_))
                                        (_%E176759176771%_)))))
                              (_%E176759176771%_))))
                      (_%E176759176771%_)))))
          (_%E176758176798%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx176805%_)
        (let ((_%rpath176807%_ '#f))
          (gx#core-expand-include%__% _%stx176805%_ _%rpath176807%_))))
    (define gx#core-expand-include%
      (lambda _g179130_
        (let ((_g179131_ (##length _g179130_)))
          (cond ((##fx= _g179131_ 1)
                 (apply gx#core-expand-include%__0 _g179130_))
                ((##fx= _g179131_ 2)
                 (apply gx#core-expand-include%__% _g179130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g179130_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K176721%_ _%stx176722%_ _%method176723%_)
        (if (procedure? _%K176721%_)
            (let ((_%$e176726%_ (gx#stx-source _%stx176722%_)))
              (if _%$e176726%_
                  ((lambda (_%g176728176730%_)
                     (gx#stx-wrap-source
                      (_%K176721%_ _%stx176722%_)
                      _%g176728176730%_))
                   _%$e176726%_)
                  (_%K176721%_ _%stx176722%_)))
            (let ((_%$e176734%_
                   (bound-method-ref _%K176721%_ _%method176723%_)))
              (if _%$e176734%_
                  ((lambda (_%g176736176738%_)
                     (gx#core-apply-expander__%
                      _%g176736176738%_
                      _%stx176722%_
                      _%method176723%_))
                   _%$e176734%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx176722%_
                   _%method176723%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K176745%_ _%stx176746%_)
        (let ((_%method176748%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K176745%_
           _%stx176746%_
           _%method176748%_))))
    (define gx#core-apply-expander
      (lambda _g179132_
        (let ((_g179133_ (##length _g179132_)))
          (cond ((##fx= _g179133_ 2)
                 (apply gx#core-apply-expander__0 _g179132_))
                ((##fx= _g179133_ 3)
                 (apply gx#core-apply-expander__% _g179132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g179132_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self176706%_ _%stx176707%_)
        (let ((_%self176710%_ _%self176706%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx176707%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self176549%_ _%stx176550%_)
        (let* ((_%self176553%_ _%self176549%_)
               (_%self176562176568%_ _%self176553%_)
               (_%E176564176571%_
                (lambda ()
                  (error '"No clause matching"
                         _%self176562176568%_
                         '((macro-expander K)))
                  '#!void))
               (_%K176565176576%_
                (lambda (_%K176574%_)
                  (gx#core-apply-expander__0 _%K176574%_ _%stx176550%_)))
               (_%e176566176579%_
                (##unchecked-structure-ref _%self176562176568%_ '1 '#f '#f))
               (_%K176582%_ _%e176566176579%_))
          (_%K176565176576%_ _%K176582%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self176392%_ _%stx176393%_)
        (let ((_%self176396%_ _%self176392%_))
          (if (gx#sealed-syntax? _%stx176393%_)
              _%stx176393%_
              (let* ((_%self176405176411%_ _%self176396%_)
                     (_%E176407176414%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self176405176411%_
                               '((core-expander K)))
                        '#!void))
                     (_%K176408176419%_
                      (lambda (_%K176417%_)
                        (gx#core-apply-expander__0 _%K176417%_ _%stx176393%_)))
                     (_%e176409176422%_
                      (##unchecked-structure-ref
                       _%self176405176411%_
                       '1
                       '#f
                       '#f))
                     (_%K176425%_ _%e176409176422%_))
                (_%K176408176419%_ _%K176425%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self176243%_ _%stx176244%_ _%top?176245%_)
        (let ((_%self176248%_ _%self176243%_))
          (if (_%top?176245%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self176248%_
               _%stx176244%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx176244%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self176261%_ _%stx176262%_)
        (let ((_%top?176264%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self176261%_
           _%stx176262%_
           _%top?176264%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g179134_
        (let ((_g179135_ (##length _g179134_)))
          (cond ((##fx= _g179135_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g179134_))
                ((##fx= _g179135_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g179134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g179134_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self176106%_ _%stx176107%_)
        (let ((_%self176110%_ _%self176106%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self176110%_
           _%stx176107%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self175921%_ _%stx175922%_)
        (let* ((_%self175925%_ _%self175921%_)
               (_%self175934175940%_ _%self175925%_)
               (_%E175936175943%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175934175940%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K175937175976%_
                (lambda (_%id175946%_)
                  (let* ((_%e175947175954%_ _%stx175922%_)
                         (_%E175949175958%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e175947175954%_)))
                         (_%E175948175972%_
                          (lambda ()
                            (if (gx#stx-pair? _%e175947175954%_)
                                (let ((_%e175950175962%_
                                       (gx#syntax-e _%e175947175954%_)))
                                  (let ((_%hd175951175965%_
                                         (##car _%e175950175962%_))
                                        (_%tl175952175967%_
                                         (##cdr _%e175950175962%_)))
                                    (let ((_%body175970%_ _%tl175952175967%_))
                                      (gx#core-cons
                                       _%id175946%_
                                       _%body175970%_))))
                                (_%E175949175958%_)))))
                    (_%E175948175972%_))))
               (_%e175938175979%_
                (##unchecked-structure-ref _%self175934175940%_ '1 '#f '#f))
               (_%id175982%_ _%e175938175979%_))
          (_%K175937175976%_ _%id175982%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self175748%_ _%stx175749%_ _%method175750%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx175749%_))
              (force-output))
            '#!void)
        (let* ((_%self175751175759%_ _%self175748%_)
               (_%E175753175762%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175751175759%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K175754175769%_
                (lambda (_%phi175765%_ _%ctx175766%_ _%K175767%_)
                  (gx#core-apply-user-macro
                   _%K175767%_
                   _%stx175749%_
                   _%ctx175766%_
                   _%phi175765%_
                   _%method175750%_))))
          (if (##structure-instance-of?
               _%self175751175759%_
               'gx#user-expander::t)
              (let* ((_%e175755175772%_
                      (##unchecked-structure-ref
                       _%self175751175759%_
                       '1
                       '#f
                       '#f))
                     (_%K175775%_ _%e175755175772%_)
                     (_%e175756175777%_
                      (##unchecked-structure-ref
                       _%self175751175759%_
                       '2
                       '#f
                       '#f))
                     (_%ctx175780%_ _%e175756175777%_)
                     (_%e175757175782%_
                      (##unchecked-structure-ref
                       _%self175751175759%_
                       '3
                       '#f
                       '#f))
                     (_%phi175785%_ _%e175757175782%_))
                (_%K175754175769%_ _%phi175785%_ _%ctx175780%_ _%K175775%_))
              (_%E175753175762%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self175790%_ _%stx175791%_)
        (let ((_%method175793%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self175790%_
           _%stx175791%_
           _%method175793%_))))
    (define gx#core-apply-user-expander
      (lambda _g179136_
        (let ((_g179137_ (##length _g179136_)))
          (cond ((##fx= _g179137_ 2)
                 (apply gx#core-apply-user-expander__0 _g179136_))
                ((##fx= _g179137_ 3)
                 (apply gx#core-apply-user-expander__% _g179136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g179136_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K175738%_
               _%stx175739%_
               _%ctx175740%_
               _%phi175741%_
               _%method175742%_)
        (let ((_%mark175744%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx175740%_
                _%phi175741%_
                _%stx175739%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K175738%_
               (gx#stx-apply-mark _%stx175739%_ _%mark175744%_)
               _%method175742%_)
              _%mark175744%_))
           gx#current-expander-marks
           (cons _%mark175744%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx175586%_ _%phi175587%_ _%ctx175588%_)
        (let _%lp175590%_ ((_%bind175592%_
                            (gx#core-resolve-identifier__%
                             _%stx175586%_
                             _%phi175587%_
                             _%ctx175588%_)))
          (if (##structure-direct-instance-of?
               _%bind175592%_
               'gx#import-binding::t)
              (_%lp175590%_
               (##unchecked-structure-ref _%bind175592%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind175592%_
                   'gx#alias-binding::t)
                  (_%lp175590%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind175592%_ '5 '#f '#f)
                    _%phi175587%_
                    _%ctx175588%_))
                  _%bind175592%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx175600%_)
        (let* ((_%phi175602%_ (gx#current-expander-phi))
               (_%ctx175604%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx175600%_
           _%phi175602%_
           _%ctx175604%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx175606%_ _%phi175607%_)
        (let ((_%ctx175609%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx175606%_
           _%phi175607%_
           _%ctx175609%_))))
    (define gx#resolve-identifier
      (lambda _g179138_
        (let ((_g179139_ (##length _g179138_)))
          (cond ((##fx= _g179139_ 1)
                 (apply gx#resolve-identifier__0 _g179138_))
                ((##fx= _g179139_ 2)
                 (apply gx#resolve-identifier__1 _g179138_))
                ((##fx= _g179139_ 3)
                 (apply gx#resolve-identifier__% _g179138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g179138_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx175541%_
               _%val175542%_
               _%rebind?175543%_
               _%phi175544%_
               _%ctx175545%_)
        (let ((_%rebind?175550%_
               (if (not _%rebind?175543%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?175543%_)
                       _%rebind?175543%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx175541%_)
           _%val175542%_
           _%rebind?175550%_
           _%phi175544%_
           _%ctx175545%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx175555%_ _%val175556%_)
        (let* ((_%rebind?175558%_ '#f)
               (_%phi175560%_ (gx#current-expander-phi))
               (_%ctx175562%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx175555%_
           _%val175556%_
           _%rebind?175558%_
           _%phi175560%_
           _%ctx175562%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx175564%_ _%val175565%_ _%rebind?175566%_)
        (let* ((_%phi175568%_ (gx#current-expander-phi))
               (_%ctx175570%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx175564%_
           _%val175565%_
           _%rebind?175566%_
           _%phi175568%_
           _%ctx175570%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx175572%_ _%val175573%_ _%rebind?175574%_ _%phi175575%_)
        (let ((_%ctx175577%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx175572%_
           _%val175573%_
           _%rebind?175574%_
           _%phi175575%_
           _%ctx175577%_))))
    (define gx#bind-identifier!
      (lambda _g179140_
        (let ((_g179141_ (##length _g179140_)))
          (cond ((##fx= _g179141_ 2) (apply gx#bind-identifier!__0 _g179140_))
                ((##fx= _g179141_ 3) (apply gx#bind-identifier!__1 _g179140_))
                ((##fx= _g179141_ 4) (apply gx#bind-identifier!__2 _g179140_))
                ((##fx= _g179141_ 5) (apply gx#bind-identifier!__% _g179140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g179140_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx175507%_ _%phi175508%_ _%ctx175509%_)
        (let _%lp175511%_ ((_%e175513%_ _%stx175507%_)
                           (_%marks175514%_ (gx#current-expander-marks)))
          (if (symbol? _%e175513%_)
              (gx#core-resolve-binding
               _%e175513%_
               _%phi175508%_
               _%phi175508%_
               _%ctx175509%_
               (reverse _%marks175514%_))
              (if (gx#identifier-quote? _%e175513%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e175513%_ '1 '#f '#f)
                   _%phi175508%_
                   '0
                   (##unchecked-structure-ref _%e175513%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e175513%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e175513%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e175513%_ '1 '#f '#f)
                       _%phi175508%_
                       _%phi175508%_
                       _%ctx175509%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e175513%_ '3 '#f '#f)
                        _%marks175514%_))
                      (if (##structure-direct-instance-of?
                           _%e175513%_
                           'gx#syntax-wrap::t)
                          (_%lp175511%_
                           (##unchecked-structure-ref _%e175513%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e175513%_ '3 '#f '#f)
                            _%marks175514%_))
                          (if (##structure-instance-of?
                               _%e175513%_
                               'gerbil#AST::t)
                              (_%lp175511%_
                               (##unchecked-structure-ref
                                _%e175513%_
                                '1
                                '#f
                                '#f)
                               _%marks175514%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx175507%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx175525%_)
        (let* ((_%phi175527%_ (gx#current-expander-phi))
               (_%ctx175529%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx175525%_
           _%phi175527%_
           _%ctx175529%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx175531%_ _%phi175532%_)
        (let ((_%ctx175534%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx175531%_
           _%phi175532%_
           _%ctx175534%_))))
    (define gx#core-resolve-identifier
      (lambda _g179142_
        (let ((_g179143_ (##length _g179142_)))
          (cond ((##fx= _g179143_ 1)
                 (apply gx#core-resolve-identifier__0 _g179142_))
                ((##fx= _g179143_ 2)
                 (apply gx#core-resolve-identifier__1 _g179142_))
                ((##fx= _g179143_ 3)
                 (apply gx#core-resolve-identifier__% _g179142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g179142_))))))
    (define gx#core-resolve-binding
      (lambda (_%id175418%_
               _%phi175419%_
               _%src-phi175420%_
               _%ctx175421%_
               _%marks175422%_)
        (letrec ((_%resolve175424%_
                  (lambda (_%ctx175491%_ _%src-phi175492%_ _%key175493%_)
                    (let _%lp175495%_ ((_%ctx175497%_
                                        (gx#core-context-shift
                                         _%ctx175491%_
                                         _%phi175419%_))
                                       (_%dphi175498%_
                                        (fx- _%phi175419%_ _%src-phi175492%_)))
                      (let ((_%$e175500%_
                             (gx#core-context-resolve
                              _%ctx175497%_
                              _%key175493%_)))
                        (if _%$e175500%_
                            _%$e175500%_
                            (if (fxzero? _%dphi175498%_)
                                '#f
                                (if (fxpositive? _%dphi175498%_)
                                    (_%lp175495%_
                                     (gx#core-context-shift _%ctx175497%_ '-1)
                                     (##fx- _%dphi175498%_ '1))
                                    (_%lp175495%_
                                     (gx#core-context-shift _%ctx175497%_ '1)
                                     (##fx+ _%dphi175498%_ '1))))))))))
          (let _%lp175426%_ ((_%ctx175428%_ _%ctx175421%_)
                             (_%src-phi175429%_ _%src-phi175420%_)
                             (_%rest175430%_ _%marks175422%_))
            (let* ((_%rest175431175439%_ _%rest175430%_)
                   (_%else175433175447%_
                    (lambda ()
                      (_%resolve175424%_
                       _%ctx175428%_
                       _%src-phi175429%_
                       _%id175418%_)))
                   (_%K175435175479%_
                    (lambda (_%rest175450%_ _%hd175451%_)
                      (let* ((_%hd175452175458%_ _%hd175451%_)
                             (_%E175454175461%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd175452175458%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K175455175471%_
                              (lambda (_%subst175464%_)
                                (let ((_%$e175468%_
                                       (let ((_%key175466%_
                                              (if _%subst175464%_
                                                  (hash-get
                                                   _%subst175464%_
                                                   _%id175418%_)
                                                  '#f)))
                                         (if _%key175466%_
                                             (_%resolve175424%_
                                              _%ctx175428%_
                                              _%src-phi175429%_
                                              _%key175466%_)
                                             '#f))))
                                  (if _%$e175468%_
                                      _%$e175468%_
                                      (_%lp175426%_
                                       (##unchecked-structure-ref
                                        _%hd175451%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd175451%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest175450%_))))))
                        (if (##structure-instance-of?
                             _%hd175452175458%_
                             'gx#expander-mark::t)
                            (let* ((_%e175456175474%_
                                    (##unchecked-structure-ref
                                     _%hd175452175458%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst175477%_ _%e175456175474%_))
                              (_%K175455175471%_ _%subst175477%_))
                            (_%E175454175461%_))))))
              (if (pair? _%rest175431175439%_)
                  (let ((_%hd175436175482%_ (##car _%rest175431175439%_))
                        (_%tl175437175484%_ (##cdr _%rest175431175439%_)))
                    (let* ((_%hd175487%_ _%hd175436175482%_)
                           (_%rest175489%_ _%tl175437175484%_))
                      (_%K175435175479%_ _%rest175489%_ _%hd175487%_)))
                  (_%else175433175447%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key175289%_
               _%val175290%_
               _%rebind?175291%_
               _%phi175292%_
               _%ctx175293%_)
        (letrec ((_%update-binding175295%_
                  (lambda (_%xval175367%_)
                    (if (or (_%rebind?175291%_
                             _%ctx175293%_
                             _%xval175367%_
                             _%val175290%_)
                            (and (##structure-direct-instance-of?
                                  _%xval175367%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval175367%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val175290%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val175290%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval175367%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val175290%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val175290%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval175367%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val175290%_
                        (if (and (##structure-direct-instance-of?
                                  _%val175290%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val175290%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval175367%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val175290%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval175367%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval175367%_
                            (if (and (##structure-direct-instance-of?
                                      _%val175290%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval175367%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key175289%_
                                 (cons (##unchecked-structure-ref
                                        _%val175290%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val175290%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval175367%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval175367%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval175367%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval175367%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key175289%_
                                 _%val175290%_
                                 _%xval175367%_))))))
                 (_%gensubst175296%_
                  (lambda (_%subst175362%_ _%id175363%_)
                    (let ((_%eid175365%_
                           (gensym (if (uninterned-symbol? _%id175363%_)
                                       '%
                                       _%id175363%_))))
                      (hash-put! _%subst175362%_ _%id175363%_ _%eid175365%_)
                      _%eid175365%_)))
                 (_%subst!175297%_
                  (lambda (_%key175299%_)
                    (let* ((_%key175300175308%_ _%key175299%_)
                           (_%else175302175316%_ (lambda () _%key175299%_))
                           (_%K175304175350%_
                            (lambda (_%mark175319%_ _%id175320%_)
                              (let* ((_%mark175321175327%_ _%mark175319%_)
                                     (_%E175323175330%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark175321175327%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K175324175342%_
                                      (lambda (_%subst175333%_)
                                        (if (not _%subst175333%_)
                                            (let ((_%subst175336%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark175319%_
                                               _%subst175336%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst175296%_
                                               _%subst175336%_
                                               _%id175320%_))
                                            (let ((_%$e175338%_
                                                   (hash-get
                                                    _%subst175333%_
                                                    _%id175320%_)))
                                              (if _%$e175338%_
                                                  _%$e175338%_
                                                  (_%gensubst175296%_
                                                   _%subst175333%_
                                                   _%id175320%_)))))))
                                (if (##structure-instance-of?
                                     _%mark175321175327%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e175325175345%_
                                            (##unchecked-structure-ref
                                             _%mark175321175327%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst175348%_ _%e175325175345%_))
                                      (_%K175324175342%_ _%subst175348%_))
                                    (_%E175323175330%_))))))
                      (if (pair? _%key175300175308%_)
                          (let ((_%hd175305175353%_
                                 (##car _%key175300175308%_))
                                (_%tl175306175355%_
                                 (##cdr _%key175300175308%_)))
                            (let* ((_%id175358%_ _%hd175305175353%_)
                                   (_%mark175360%_ _%tl175306175355%_))
                              (_%K175304175350%_ _%mark175360%_ _%id175358%_)))
                          (_%else175302175316%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx175293%_ _%phi175292%_)
           (_%subst!175297%_ _%key175289%_)
           _%val175290%_
           _%update-binding175295%_))))
    (define gx#core-bind!__0
      (lambda (_%key175388%_ _%val175389%_)
        (let* ((_%rebind?175391%_ false)
               (_%phi175393%_ (gx#current-expander-phi))
               (_%ctx175395%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175388%_
           _%val175389%_
           _%rebind?175391%_
           _%phi175393%_
           _%ctx175395%_))))
    (define gx#core-bind!__1
      (lambda (_%key175397%_ _%val175398%_ _%rebind?175399%_)
        (let* ((_%phi175401%_ (gx#current-expander-phi))
               (_%ctx175403%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175397%_
           _%val175398%_
           _%rebind?175399%_
           _%phi175401%_
           _%ctx175403%_))))
    (define gx#core-bind!__2
      (lambda (_%key175405%_ _%val175406%_ _%rebind?175407%_ _%phi175408%_)
        (let ((_%ctx175410%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175405%_
           _%val175406%_
           _%rebind?175407%_
           _%phi175408%_
           _%ctx175410%_))))
    (define gx#core-bind!
      (lambda _g179144_
        (let ((_g179145_ (##length _g179144_)))
          (cond ((##fx= _g179145_ 2) (apply gx#core-bind!__0 _g179144_))
                ((##fx= _g179145_ 3) (apply gx#core-bind!__1 _g179144_))
                ((##fx= _g179145_ 4) (apply gx#core-bind!__2 _g179144_))
                ((##fx= _g179145_ 5) (apply gx#core-bind!__% _g179144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g179144_))))))
    (define gx#core-identifier-key
      (lambda (_%stx175220%_)
        (if (symbol? _%stx175220%_)
            (let* ((_%g175222175230%_ (gx#current-expander-marks))
                   (_%else175224175238%_ (lambda () _%stx175220%_))
                   (_%K175226175243%_
                    (lambda (_%hd175241%_) (cons _%stx175220%_ _%hd175241%_))))
              (if (pair? _%g175222175230%_)
                  (let* ((_%hd175227175246%_ (##car _%g175222175230%_))
                         (_%hd175249%_ _%hd175227175246%_))
                    (_%K175226175243%_ _%hd175249%_))
                  (_%else175224175238%_)))
            (if (gx#identifier? _%stx175220%_)
                (let* ((_%id175252%_ (gx#syntax-local-unwrap _%stx175220%_))
                       (_%eid175254%_ (gx#stx-e _%id175252%_))
                       (_%marks175256%_
                        (gx#stx-identifier-marks* _%id175252%_))
                       (_%marks175258175266%_ _%marks175256%_)
                       (_%else175260175274%_ (lambda () _%eid175254%_))
                       (_%K175262175279%_
                        (lambda (_%hd175277%_)
                          (cons _%eid175254%_ _%hd175277%_))))
                  (if (pair? _%marks175258175266%_)
                      (let* ((_%hd175263175282%_ (##car _%marks175258175266%_))
                             (_%hd175285%_ _%hd175263175282%_))
                        (_%K175262175279%_ _%hd175285%_))
                      (_%else175260175274%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx175220%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx175159%_ _%phi175160%_)
        (letrec ((_%make-phi175162%_
                  (lambda (_%super175218%_)
                    (let ((__obj179115
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj179115
                       (##gensym 'phi)
                       _%super175218%_)
                      __obj179115)))
                 (_%make-phi/up175163%_
                  (lambda (_%ctx175213%_ _%super175214%_)
                    (let ((_%ctx+1175216%_
                           (_%make-phi175162%_ _%super175214%_)))
                      (##unchecked-structure-set!
                       _%ctx175213%_
                       _%ctx+1175216%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1175216%_
                       _%ctx175213%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1175216%_)))
                 (_%make-phi/down175164%_
                  (lambda (_%ctx175208%_ _%super175209%_)
                    (let ((_%ctx-1175211%_
                           (_%make-phi175162%_ _%super175209%_)))
                      (##unchecked-structure-set!
                       _%ctx-1175211%_
                       _%ctx175208%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx175208%_
                       _%ctx-1175211%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1175211%_)))
                 (_%shift175165%_
                  (lambda (_%ctx175191%_
                           _%delta175192%_
                           _%make-delta-context175193%_
                           _%phi175194%_
                           _%K175195%_)
                    (let ((_%$e175197%_
                           (##unchecked-structure-ref
                            _%ctx175191%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e175197%_
                          ((lambda (_%super175200%_)
                             (let* ((_%super175202%_
                                     (_%K175195%_
                                      _%super175200%_
                                      _%delta175192%_))
                                    (_%ctx+d175204%_
                                     (_%make-delta-context175193%_
                                      _%ctx175191%_
                                      _%super175202%_)))
                               (_%K175195%_
                                _%ctx+d175204%_
                                (fx- _%phi175194%_ _%delta175192%_))))
                           _%$e175197%_)
                          (error '"Bad context" _%ctx175191%_))))))
          (let _%K175167%_ ((_%ctx175169%_ _%ctx175159%_)
                            (_%phi175170%_ _%phi175160%_))
            (if (fxzero? _%phi175170%_)
                _%ctx175169%_
                (if (##structure-instance-of? _%ctx175169%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi175170%_)
                        (let ((_%$e175174%_
                               (##unchecked-structure-ref
                                _%ctx175169%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e175174%_
                              ((lambda (_%g175176175178%_)
                                 (_%K175167%_
                                  _%g175176175178%_
                                  (##fx- _%phi175170%_ '1)))
                               _%$e175174%_)
                              (_%shift175165%_
                               _%ctx175169%_
                               '1
                               _%make-phi/up175163%_
                               _%phi175170%_
                               _%K175167%_)))
                        (let ((_%$e175182%_
                               (##unchecked-structure-ref
                                _%ctx175169%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e175182%_
                              ((lambda (_%g175184175186%_)
                                 (_%K175167%_
                                  _%g175184175186%_
                                  (##fx+ _%phi175170%_ '1)))
                               _%$e175182%_)
                              (_%shift175165%_
                               _%ctx175169%_
                               '-1
                               _%make-phi/down175164%_
                               _%phi175170%_
                               _%K175167%_))))
                    _%ctx175169%_))))))
    (define gx#core-context-get
      (lambda (_%ctx175156%_ _%key175157%_)
        (hash-get
         (##unchecked-structure-ref _%ctx175156%_ '2 '#f '#f)
         _%key175157%_)))
    (define gx#core-context-put!
      (lambda (_%ctx175152%_ _%key175153%_ _%val175154%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx175152%_ '2 '#f '#f)
         _%key175153%_
         _%val175154%_)
        _%val175154%_))
    (define gx#core-context-resolve
      (lambda (_%ctx175138%_ _%key175139%_)
        (let _%lp175141%_ ((_%ctx175143%_ _%ctx175138%_))
          (let ((_%$e175145%_
                 (gx#core-context-get _%ctx175143%_ _%key175139%_)))
            (if _%$e175145%_
                _%$e175145%_
                (let ((_%$e175148%_
                       (if (##structure-instance-of?
                            _%ctx175143%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx175143%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e175148%_ (_%lp175141%_ _%$e175148%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx175127%_ _%key175128%_ _%val175129%_ _%rebind175130%_)
        (let ((_%$e175132%_ (gx#core-context-get _%ctx175127%_ _%key175128%_)))
          (if _%$e175132%_
              ((lambda (_%xval175135%_)
                 (gx#core-context-put!
                  _%ctx175127%_
                  _%key175128%_
                  (_%rebind175130%_ _%xval175135%_)))
               _%$e175132%_)
              (gx#core-context-put!
               _%ctx175127%_
               _%key175128%_
               _%val175129%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx175102%_ _%stop?175103%_)
        (let _%lp175105%_ ((_%ctx175107%_ _%ctx175102%_))
          (if (_%stop?175103%_ _%ctx175107%_)
              _%ctx175107%_
              (if (##structure-instance-of? _%ctx175107%_ 'gx#phi-context::t)
                  (_%lp175105%_
                   (##unchecked-structure-ref _%ctx175107%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx175116%_ (gx#current-expander-context))
               (_%stop?175118%_ gx#top-context?))
          (gx#core-context-top__% _%ctx175116%_ _%stop?175118%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx175120%_)
        (let ((_%stop?175122%_ gx#top-context?))
          (gx#core-context-top__% _%ctx175120%_ _%stop?175122%_))))
    (define gx#core-context-top
      (lambda _g179146_
        (let ((_g179147_ (##length _g179146_)))
          (cond ((##fx= _g179147_ 0) (apply gx#core-context-top__0 _g179146_))
                ((##fx= _g179147_ 1) (apply gx#core-context-top__1 _g179146_))
                ((##fx= _g179147_ 2) (apply gx#core-context-top__% _g179146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g179146_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx175087%_)
        (let _%lp175089%_ ((_%ctx175091%_ _%ctx175087%_))
          (if (##structure-instance-of? _%ctx175091%_ 'gx#phi-context::t)
              (_%lp175089%_
               (##unchecked-structure-ref _%ctx175091%_ '3 '#f '#f))
              _%ctx175091%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx175097%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx175097%_))))
    (define gx#core-context-root
      (lambda _g179148_
        (let ((_g179149_ (##length _g179148_)))
          (cond ((##fx= _g179149_ 0) (apply gx#core-context-root__0 _g179148_))
                ((##fx= _g179149_ 1) (apply gx#core-context-root__% _g179148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g179148_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx175069%_ . _%ignore175070%_)
        (let ((_%$e175072%_ (gx#current-expander-allow-rebind?)))
          (if _%$e175072%_
              _%$e175072%_
              (if (##structure-instance-of? _%ctx175069%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx175069%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx175069%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx175079%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx175079%_))))
    (define gx#core-context-rebind?
      (lambda _g179150_
        (let ((_g179151_ (##length _g179150_)))
          (cond ((##fx= _g179151_ 0)
                 (apply gx#core-context-rebind?__0 _g179150_))
                ((##fx= _g179151_ 1)
                 (apply gx#core-context-rebind?__% _g179150_))
                ((##fx>= _g179151_ 1)
                 (apply gx#core-context-rebind?__% _g179150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g179150_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx175052%_)
        (let ((_%$e175054%_ (gx#core-context-top__1 _%ctx175052%_)))
          (if _%$e175054%_
              ((lambda (_%ctx175057%_)
                 (if (##structure-instance-of?
                      _%ctx175057%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx175057%_ '6 '#f '#f)
                     '#f))
               _%$e175054%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx175064%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx175064%_))))
    (define gx#core-context-namespace
      (lambda _g179152_
        (let ((_g179153_ (##length _g179152_)))
          (cond ((##fx= _g179153_ 0)
                 (apply gx#core-context-namespace__0 _g179152_))
                ((##fx= _g179153_ 1)
                 (apply gx#core-context-namespace__% _g179152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g179152_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind175038%_ _%is?175039%_)
        (if (##structure-direct-instance-of?
             _%bind175038%_
             'gx#syntax-binding::t)
            (_%is?175039%_
             (##unchecked-structure-ref _%bind175038%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind175044%_)
        (let ((_%is?175046%_ gx#expander?))
          (gx#expander-binding?__% _%bind175044%_ _%is?175046%_))))
    (define gx#expander-binding?
      (lambda _g179154_
        (let ((_g179155_ (##length _g179154_)))
          (cond ((##fx= _g179155_ 1) (apply gx#expander-binding?__0 _g179154_))
                ((##fx= _g179155_ 2) (apply gx#expander-binding?__% _g179154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g179154_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind175035%_)
        (gx#expander-binding?__% _%bind175035%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind175033%_)
        (gx#expander-binding?__% _%bind175033%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind175027%_)
        (letrec ((_%direct-special-form?175029%_
                  (lambda (_%obj175031%_)
                    (##structure-direct-instance-of?
                     _%obj175031%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind175027%_
           _%direct-special-form?175029%_))))
    (define gx#special-form-binding?
      (lambda (_%bind175025%_)
        (gx#expander-binding?__% _%bind175025%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind175016%_)
        (letrec ((_%feature?175018%_
                  (lambda (_%e175020%_)
                    (let ((_%$e175022%_
                           (##structure-instance-of?
                            _%e175020%_
                            'gx#feature-expander::t)))
                      (if _%$e175022%_
                          _%$e175022%_
                          (##structure-instance-of?
                           _%e175020%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind175016%_ _%feature?175018%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind175014%_)
        (gx#expander-binding?__% _%bind175014%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id175001%_ _%bound?175002%_)
        (if (gx#identifier? _%id175001%_)
            (_%bound?175002%_ (gx#resolve-identifier__0 _%id175001%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id175007%_)
        (let ((_%bound?175009%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id175007%_ _%bound?175009%_))))
    (define gx#core-bound-identifier?
      (lambda _g179156_
        (let ((_g179157_ (##length _g179156_)))
          (cond ((##fx= _g179157_ 1)
                 (apply gx#core-bound-identifier?__0 _g179156_))
                ((##fx= _g179157_ 2)
                 (apply gx#core-bound-identifier?__% _g179156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g179156_))))))
    (define gx#core-identifier=?
      (lambda (_%x174991%_ _%y174992%_)
        (letrec ((_%y=?174994%_
                  (lambda (_%xid174998%_)
                    ((if (list? _%y174992%_) memq eq?)
                     _%xid174998%_
                     _%y174992%_))))
          (let ((_%bind174996%_ (gx#resolve-identifier__0 _%x174991%_)))
            (if (##structure-instance-of? _%bind174996%_ 'gx#binding::t)
                (_%y=?174994%_
                 (##unchecked-structure-ref _%bind174996%_ '1 '#f '#f))
                (_%y=?174994%_ (gx#stx-e _%x174991%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e174989%_)
        (if (interned-symbol? _%e174989%_)
            (string-index__0 (symbol->string _%e174989%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx174942%_ _%src174943%_ _%ctx174944%_ _%marks174945%_)
        (if (##structure? _%stx174942%_)
            (let ((_%$e174947%_ (gx#sealed-syntax-unwrap _%stx174942%_)))
              (if _%$e174947%_
                  _%$e174947%_
                  (if (gx#identifier? _%stx174942%_)
                      (let ((_%id174951%_
                             (gx#stx-unwrap__% _%stx174942%_ _%marks174945%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id174951%_ '1 '#f '#f)
                         (let ((_%$e174953%_
                                (##unchecked-structure-ref
                                 _%id174951%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e174953%_ _%$e174953%_ _%src174943%_))
                         _%ctx174944%_
                         (##unchecked-structure-ref _%id174951%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx174942%_)
                       (let ((_%$e174957%_ (gx#stx-source _%stx174942%_)))
                         (if _%$e174957%_ _%$e174957%_ _%src174943%_))
                       _%ctx174944%_
                       (reverse _%marks174945%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx174942%_
             _%src174943%_
             _%ctx174944%_
             (reverse _%marks174945%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx174963%_)
        (let* ((_%src174965%_ '#f)
               (_%ctx174967%_ (gx#current-expander-context))
               (_%marks174969%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174963%_
           _%src174965%_
           _%ctx174967%_
           _%marks174969%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx174971%_ _%src174972%_)
        (let* ((_%ctx174974%_ (gx#current-expander-context))
               (_%marks174976%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174971%_
           _%src174972%_
           _%ctx174974%_
           _%marks174976%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx174978%_ _%src174979%_ _%ctx174980%_)
        (let ((_%marks174982%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174978%_
           _%src174979%_
           _%ctx174980%_
           _%marks174982%_))))
    (define gx#core-quote-syntax
      (lambda _g179158_
        (let ((_g179159_ (##length _g179158_)))
          (cond ((##fx= _g179159_ 1) (apply gx#core-quote-syntax__0 _g179158_))
                ((##fx= _g179159_ 2) (apply gx#core-quote-syntax__1 _g179158_))
                ((##fx= _g179159_ 3) (apply gx#core-quote-syntax__2 _g179158_))
                ((##fx= _g179159_ 4) (apply gx#core-quote-syntax__% _g179158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g179158_))))))
    (define gx#core-cons
      (lambda (_%hd174938%_ _%tl174939%_)
        (cons (gx#core-quote-syntax__0 _%hd174938%_) _%tl174939%_)))
    (define gx#core-list
      (lambda (_%hd174935%_ . _%rest174936%_)
        (cons (gx#core-quote-syntax__0 _%hd174935%_) _%rest174936%_)))
    (define gx#core-cons*
      (lambda (_%hd174932%_ . _%rest174933%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd174932%_) _%rest174933%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path174901%_ _%rel174902%_)
        (let ((_%path174919%_ (gx#stx-e _%stx-path174901%_))
              (_%reldir174920%_
               (let _%lp174904%_ ((_%relsrc174906%_
                                   (let ((_%$e174916%_
                                          (gx#stx-source _%stx-path174901%_)))
                                     (if _%$e174916%_
                                         _%$e174916%_
                                         _%rel174902%_))))
                 (if (##structure-instance-of? _%relsrc174906%_ 'gerbil#AST::t)
                     (_%lp174904%_
                      (let ((_%$e174909%_ (gx#stx-source _%relsrc174906%_)))
                        (if _%$e174909%_
                            _%$e174909%_
                            (gx#stx-e _%relsrc174906%_))))
                     (if (source-location-path? _%relsrc174906%_)
                         (path-directory
                          (source-location-path _%relsrc174906%_))
                         (if (string? _%relsrc174906%_)
                             (path-directory _%relsrc174906%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path174919%_ (path-normalize _%reldir174920%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path174925%_)
        (let ((_%rel174927%_ '#f))
          (gx#core-resolve-path__% _%stx-path174925%_ _%rel174927%_))))
    (define gx#core-resolve-path
      (lambda _g179160_
        (let ((_g179161_ (##length _g179160_)))
          (cond ((##fx= _g179161_ 1) (apply gx#core-resolve-path__0 _g179160_))
                ((##fx= _g179161_ 2) (apply gx#core-resolve-path__% _g179160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g179160_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr174857%_ _%ctx174858%_)
        (let* ((_%repr174859174866%_ _%repr174857%_)
               (_%E174861174870%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr174859174866%_
                         '([phi . subs]))
                  '#!void))
               (_%K174862174878%_
                (lambda (_%subs174873%_ _%phi174874%_)
                  (let ((_%subst174876%_
                         (if (null? _%subs174873%_)
                             '#f
                             (list->hash-table-eq _%subs174873%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst174876%_
                     _%ctx174858%_
                     _%phi174874%_
                     '#f)))))
          (if (pair? _%repr174859174866%_)
              (let ((_%hd174863174881%_ (##car _%repr174859174866%_))
                    (_%tl174864174883%_ (##cdr _%repr174859174866%_)))
                (let* ((_%phi174886%_ _%hd174863174881%_)
                       (_%subs174888%_ _%tl174864174883%_))
                  (_%K174862174878%_ _%subs174888%_ _%phi174886%_)))
              (_%E174861174870%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr174893%_)
        (let ((_%ctx174895%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr174893%_ _%ctx174895%_))))
    (define gx#core-deserialize-mark
      (lambda _g179162_
        (let ((_g179163_ (##length _g179162_)))
          (cond ((##fx= _g179163_ 1)
                 (apply gx#core-deserialize-mark__0 _g179162_))
                ((##fx= _g179163_ 2)
                 (apply gx#core-deserialize-mark__% _g179162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g179162_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx174854%_)
        (gx#stx-rewrap _%stx174854%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx174852%_)
        (gx#stx-unwrap__% _%stx174852%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx174822%_)
        (let* ((_%g174823174831%_ (gx#current-expander-marks))
               (_%else174825174839%_ (lambda () _%stx174822%_))
               (_%K174827174844%_
                (lambda (_%hd174842%_)
                  (gx#stx-apply-mark _%stx174822%_ _%hd174842%_))))
          (if (pair? _%g174823174831%_)
              (let* ((_%hd174828174847%_ (##car _%g174823174831%_))
                     (_%hd174850%_ _%hd174828174847%_))
                (_%K174827174844%_ _%hd174850%_))
              (_%else174825174839%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym174820%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym174820%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx174805%_ _%E174806%_)
        (let ((_%bind174808%_ (gx#resolve-identifier__0 _%stx174805%_)))
          (if (##structure-direct-instance-of?
               _%bind174808%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind174808%_ '5 '#f '#f)
              (_%E174806%_ _%stx174805%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx174813%_)
        (let ((_%E174815%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx174813%_ _%E174815%_))))
    (define gx#syntax-local-e
      (lambda _g179164_
        (let ((_g179165_ (##length _g179164_)))
          (cond ((##fx= _g179165_ 1) (apply gx#syntax-local-e__0 _g179164_))
                ((##fx= _g179165_ 2) (apply gx#syntax-local-e__% _g179164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g179164_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx174789%_ _%E174790%_)
        (let ((_%e174792%_ (gx#syntax-local-e__% _%stx174789%_ _%E174790%_)))
          (if (##structure-instance-of? _%e174792%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e174792%_ '1 '#f '#f)
              _%e174792%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx174797%_)
        (let ((_%E174799%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx174797%_ _%E174799%_))))
    (define gx#syntax-local-value
      (lambda _g179166_
        (let ((_g179167_ (##length _g179166_)))
          (cond ((##fx= _g179167_ 1)
                 (apply gx#syntax-local-value__0 _g179166_))
                ((##fx= _g179167_ 2)
                 (apply gx#syntax-local-value__% _g179166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g179166_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx174786%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx174786%_)))))
