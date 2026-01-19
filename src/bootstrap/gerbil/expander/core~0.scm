(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1768864948)
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
      (lambda _%$args133264%_
        (apply make-instance gx#expander-context::t _%$args133264%_)))
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
      (lambda _%$args133261%_
        (apply make-instance gx#root-context::t _%$args133261%_)))
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
      (lambda _%$args133258%_
        (apply make-instance gx#phi-context::t _%$args133258%_)))
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
      (lambda _%$args133255%_
        (apply make-instance gx#top-context::t _%$args133255%_)))
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
      (lambda _%$args133252%_
        (apply make-instance gx#module-context::t _%$args133252%_)))
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
      (lambda _%$args133249%_
        (apply make-instance gx#prelude-context::t _%$args133249%_)))
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
      (lambda _%$args133246%_
        (apply make-instance gx#local-context::t _%$args133246%_)))
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
      (lambda (_%self133219%_ _%id133220%_ _%super133221%_)
        (let ((_%self133224%_ _%self133219%_))
          (if (##fx< '3 (##structure-length _%self133224%_))
              (begin
                (##unchecked-structure-set!
                 _%self133224%_
                 _%id133220%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133224%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133224%_
                 _%super133221%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133224%_
                     '3
                     (##structure-length _%self133224%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self133237%_ _%id133238%_)
        (let ((_%super133240%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self133237%_
           _%id133238%_
           _%super133240%_))))
    (define gx#phi-context:::init!
      (lambda _g133306_
        (let ((_g133307_ (##length _g133306_)))
          (cond ((##fx= _g133307_ 2)
                 (apply gx#phi-context:::init!__0 _g133306_))
                ((##fx= _g133307_ 3)
                 (apply gx#phi-context:::init!__% _g133306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g133306_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self133072%_ _%super133073%_)
        (let ((_%self133076%_ _%self133072%_))
          (if (##fx< '3 (##structure-length _%self133076%_))
              (begin
                (##unchecked-structure-set!
                 _%self133076%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133076%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133076%_
                 _%super133073%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133076%_
                     '3
                     (##structure-length _%self133076%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self133089%_)
        (let ((_%super133091%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self133089%_ _%super133091%_))))
    (define gx#local-context:::init!
      (lambda _g133308_
        (let ((_g133309_ (##length _g133308_)))
          (cond ((##fx= _g133309_ 1)
                 (apply gx#local-context:::init!__0 _g133308_))
                ((##fx= _g133309_ 2)
                 (apply gx#local-context:::init!__% _g133308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g133308_))))))
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
      (lambda _%$args132946%_
        (apply make-instance gx#binding::t _%$args132946%_)))
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
      (lambda _%$args132943%_
        (apply make-instance gx#runtime-binding::t _%$args132943%_)))
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
      (lambda _%$args132940%_
        (apply make-instance gx#local-binding::t _%$args132940%_)))
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
      (lambda _%$args132937%_
        (apply make-instance gx#top-binding::t _%$args132937%_)))
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
      (lambda _%$args132934%_
        (apply make-instance gx#module-binding::t _%$args132934%_)))
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
      (lambda _%$args132931%_
        (apply make-instance gx#extern-binding::t _%$args132931%_)))
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
      (lambda _%$args132928%_
        (apply make-instance gx#syntax-binding::t _%$args132928%_)))
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
      (lambda _%$args132925%_
        (apply make-instance gx#import-binding::t _%$args132925%_)))
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
      (lambda _%$args132922%_
        (apply make-instance gx#alias-binding::t _%$args132922%_)))
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
      (lambda _%$args132919%_
        (apply make-instance gx#expander::t _%$args132919%_)))
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
      (lambda _%$args132916%_
        (apply make-instance gx#core-expander::t _%$args132916%_)))
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
      (lambda _%$args132913%_
        (apply make-instance gx#expression-form::t _%$args132913%_)))
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
      (lambda _%$args132910%_
        (apply make-instance gx#special-form::t _%$args132910%_)))
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
      (lambda _%$args132907%_
        (apply make-instance gx#definition-form::t _%$args132907%_)))
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
      (lambda _%$args132904%_
        (apply make-instance gx#top-special-form::t _%$args132904%_)))
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
      (lambda _%$args132901%_
        (apply make-instance gx#module-special-form::t _%$args132901%_)))
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
      (lambda _%$args132898%_
        (apply make-instance gx#feature-expander::t _%$args132898%_)))
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
      (lambda _%$args132895%_
        (apply make-instance gx#private-feature-expander::t _%$args132895%_)))
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
      (lambda _%$args132892%_
        (apply make-instance gx#reserved-expander::t _%$args132892%_)))
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
      (lambda _%$args132889%_
        (apply make-instance gx#macro-expander::t _%$args132889%_)))
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
      (lambda _%$args132886%_
        (apply make-instance gx#rename-macro-expander::t _%$args132886%_)))
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
      (lambda _%$args132883%_
        (apply make-instance gx#user-expander::t _%$args132883%_)))
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
      (lambda _%$args132880%_
        (apply make-instance gx#expander-mark::t _%$args132880%_)))
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
      (lambda (_%ctx132864%_
               _%message132865%_
               _%stx132866%_
               .
               _%details132867%_)
        (let ((_%ctx132878%_
               (let ((_%$e132869%_ _%ctx132864%_))
                 (if _%$e132869%_
                     _%$e132869%_
                     (let ((_%$e132872%_ (gx#core-context-top__0)))
                       (if _%$e132872%_
                           ((lambda (_%ctx132875%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx132875%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e132872%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message132865%_
                  (cons _%stx132866%_ _%details132867%_)
                  _%ctx132878%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx132851%_ _%expression?132852%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx132851%_ _%expression?132852%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx132857%_)
        (let ((_%expression?132859%_ '#f))
          (gx#eval-syntax__% _%stx132857%_ _%expression?132859%_))))
    (define gx#eval-syntax
      (lambda _g133310_
        (let ((_g133311_ (##length _g133310_)))
          (cond ((##fx= _g133311_ 1) (apply gx#eval-syntax__0 _g133310_))
                ((##fx= _g133311_ 2) (apply gx#eval-syntax__% _g133310_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g133310_))))))
    (define gx#eval-syntax*
      (lambda (_%stx132848%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx132848%_))))
    (define gx#core-expand__%
      (lambda (_%stx132835%_ _%expression?132836%_)
        (if _%expression?132836%_
            (gx#core-expand-expression _%stx132835%_)
            (gx#core-expand-top _%stx132835%_))))
    (define gx#core-expand__0
      (lambda (_%stx132841%_)
        (let ((_%expression?132843%_ '#f))
          (gx#core-expand__% _%stx132841%_ _%expression?132843%_))))
    (define gx#core-expand
      (lambda _g133312_
        (let ((_g133313_ (##length _g133312_)))
          (cond ((##fx= _g133313_ 1) (apply gx#core-expand__0 _g133312_))
                ((##fx= _g133313_ 2) (apply gx#core-expand__% _g133312_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g133312_))))))
    (define gx#core-expand-top
      (lambda (_%stx132802%_)
        (let* ((_%stx132804%_ (gx#core-expand*__0 _%stx132802%_))
               (_%e132805132812%_ _%stx132804%_)
               (_%E132807132816%_
                (lambda () (gx#core-expand-expression _%stx132804%_)))
               (_%E132806132830%_
                (lambda ()
                  (if (gx#stx-pair? _%e132805132812%_)
                      (let ((_%e132808132820%_
                             (gx#syntax-e _%e132805132812%_)))
                        (let ((_%hd132809132823%_ (##car _%e132808132820%_))
                              (_%tl132810132825%_ (##cdr _%e132808132820%_)))
                          (let ((_%form132828%_ _%hd132809132823%_))
                            (if (gx#core-bound-identifier?__0 _%form132828%_)
                                _%stx132804%_
                                (_%E132807132816%_)))))
                      (_%E132807132816%_)))))
          (_%E132806132830%_))))
    (define gx#core-expand-expression
      (lambda (_%stx132734%_)
        (letrec ((_%sealed-expression?132736%_
                  (lambda (_%hd132772%_)
                    (if (gx#sealed-syntax? _%hd132772%_)
                        (let* ((_%e132773132780%_ _%hd132772%_)
                               (_%E132775132784%_ (lambda () '#f))
                               (_%E132774132798%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e132773132780%_)
                                      (let ((_%e132776132788%_
                                             (gx#syntax-e _%e132773132780%_)))
                                        (let ((_%hd132777132791%_
                                               (##car _%e132776132788%_))
                                              (_%tl132778132793%_
                                               (##cdr _%e132776132788%_)))
                                          (let ((_%form132796%_
                                                 _%hd132777132791%_))
                                            (gx#core-bound-identifier?__%
                                             _%form132796%_
                                             gx#expression-form-binding?))))
                                      (_%E132775132784%_)))))
                          (_%E132774132798%_))
                        '#f)))
                 (_%illegal-expression132737%_
                  (lambda (_%hd132769%_ . _%_132770%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx132734%_
                     _%hd132769%_)))
                 (_%expand-e132738%_
                  (lambda (_%form132761%_ _%hd132762%_)
                    (let ((_%bind132764%_
                           (if (##structure-instance-of?
                                _%form132761%_
                                'gx#binding::t)
                               _%form132761%_
                               (gx#resolve-identifier__0 _%form132761%_))))
                      (if (gx#core-expander-binding? _%bind132764%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind132764%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd132762%_
                            (gx#stx-source _%stx132734%_)))
                          (if (##structure-direct-instance-of?
                               _%bind132764%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind132764%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd132762%_
                                 (gx#stx-source _%stx132734%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx132734%_
                               _%form132761%_)))))))
          (let ((_%hd132740%_ (gx#core-expand-head _%stx132734%_)))
            (if (_%sealed-expression?132736%_ _%hd132740%_)
                _%hd132740%_
                (if (gx#stx-pair? _%hd132740%_)
                    (let* ((_%form132744%_ (gx#stx-car _%hd132740%_))
                           (_%bind132746%_
                            (if (gx#identifier? _%form132744%_)
                                (gx#resolve-identifier__0 _%form132744%_)
                                '#f)))
                      (if (or (not _%bind132746%_)
                              (not (gx#core-expander-binding? _%bind132746%_)))
                          (_%expand-e132738%_
                           '%%app
                           (cons '%%app _%hd132740%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind132746%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd132740%_
                               _%illegal-expression132737%_)
                              (if (gx#expression-form-binding? _%bind132746%_)
                                  (_%expand-e132738%_
                                   _%bind132746%_
                                   _%hd132740%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind132746%_)
                                      (gx#core-expand-expression
                                       (_%expand-e132738%_
                                        _%bind132746%_
                                        _%hd132740%_))
                                      (_%illegal-expression132737%_
                                       _%hd132740%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd132740%_)
                        (_%illegal-expression132737%_ _%hd132740%_)
                        (if (gx#identifier? _%hd132740%_)
                            (_%expand-e132738%_
                             '%%ref
                             (cons '%%ref (cons _%hd132740%_ '())))
                            (if (gx#stx-datum? _%hd132740%_)
                                (_%expand-e132738%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd132740%_ '())))
                                (_%illegal-expression132737%_
                                 _%hd132740%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx132729%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx132732%_ (gx#core-expand-expression _%stx132729%_)))
             (values _%stx132732%_ (gx#eval-syntax* _%stx132732%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx132710%_ _%stop?132711%_)
        (let _%lp132713%_ ((_%stx132715%_ _%stx132710%_))
          (if (_%stop?132711%_ _%stx132715%_)
              _%stx132715%_
              (let ((_%rstx132717%_ (gx#core-expand1 _%stx132715%_)))
                (if (eq? _%stx132715%_ _%rstx132717%_)
                    _%stx132715%_
                    (_%lp132713%_ _%rstx132717%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx132722%_)
        (let ((_%stop?132724%_ false))
          (gx#core-expand*__% _%stx132722%_ _%stop?132724%_))))
    (define gx#core-expand*
      (lambda _g133314_
        (let ((_g133315_ (##length _g133314_)))
          (cond ((##fx= _g133315_ 1) (apply gx#core-expand*__0 _g133314_))
                ((##fx= _g133315_ 2) (apply gx#core-expand*__% _g133314_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g133314_))))))
    (define gx#core-expand1
      (lambda (_%stx132662%_)
        (letrec ((_%step132664%_
                  (lambda (_%hd132701%_)
                    (let ((_%bind132703%_
                           (gx#resolve-identifier__0 _%hd132701%_)))
                      (if (##structure-instance-of?
                           _%bind132703%_
                           'gx#runtime-binding::t)
                          _%stx132662%_
                          (if (##structure-direct-instance-of?
                               _%bind132703%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind132703%_
                                '4
                                '#f
                                '#f)
                               _%stx132662%_)
                              (if (not _%bind132703%_)
                                  _%stx132662%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx132662%_))))))))
          (let* ((_%e132665132673%_ _%stx132662%_)
                 (_%E132671132677%_ (lambda () _%stx132662%_))
                 (_%E132667132683%_
                  (lambda ()
                    (let ((_%hd132681%_ _%e132665132673%_))
                      (if (gx#identifier? _%hd132681%_)
                          (_%step132664%_ _%hd132681%_)
                          (_%E132671132677%_)))))
                 (_%E132666132697%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132665132673%_)
                        (let ((_%e132668132687%_
                               (gx#syntax-e _%e132665132673%_)))
                          (let ((_%hd132669132690%_ (##car _%e132668132687%_))
                                (_%tl132670132692%_ (##cdr _%e132668132687%_)))
                            (let ((_%hd132695%_ _%hd132669132690%_))
                              (if (gx#identifier? _%hd132695%_)
                                  (_%step132664%_ _%hd132695%_)
                                  (_%E132667132683%_)))))
                        (_%E132667132683%_)))))
            (_%E132666132697%_)))))
    (define gx#core-expand-head
      (lambda (_%stx132628%_)
        (letrec ((_%stop?132630%_
                  (lambda (_%stx132632%_)
                    (let* ((_%e132633132640%_ _%stx132632%_)
                           (_%E132635132644%_ (lambda () '#f))
                           (_%E132634132658%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132633132640%_)
                                  (let ((_%e132636132648%_
                                         (gx#syntax-e _%e132633132640%_)))
                                    (let ((_%hd132637132651%_
                                           (##car _%e132636132648%_))
                                          (_%tl132638132653%_
                                           (##cdr _%e132636132648%_)))
                                      (let ((_%hd132656%_ _%hd132637132651%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd132656%_))))
                                  (_%E132635132644%_)))))
                      (_%E132634132658%_)))))
          (gx#core-expand*__% _%stx132628%_ _%stop?132630%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx132434%_
               _%expand-special132435%_
               _%begin-form132436%_
               _%expand-e132437%_)
        (letrec ((_%expand-splice132439%_
                  (lambda (_%hd132602%_
                           _%body132603%_
                           _%rest132604%_
                           _%r132605%_)
                    (if (gx#stx-list? _%body132603%_)
                        (_%K132443%_
                         (gx#stx-foldr cons _%rest132604%_ _%body132603%_)
                         _%r132605%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx132434%_
                         _%hd132602%_))))
                 (_%expand-cond-expand132440%_
                  (lambda (_%hd132598%_ _%rest132599%_ _%r132600%_)
                    (_%K132443%_
                     (cons (gx#core-expand-cond-expand% _%hd132598%_)
                           _%rest132599%_)
                     _%r132600%_)))
                 (_%expand-include132441%_
                  (lambda (_%hd132547%_ _%rest132548%_ _%r132549%_)
                    (let* ((_%e132550132560%_ _%hd132547%_)
                           (_%E132552132564%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132550132560%_)))
                           (_%E132551132594%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132550132560%_)
                                  (let ((_%e132553132568%_
                                         (gx#syntax-e _%e132550132560%_)))
                                    (let ((_%hd132554132571%_
                                           (##car _%e132553132568%_))
                                          (_%tl132555132573%_
                                           (##cdr _%e132553132568%_)))
                                      (if (gx#stx-pair? _%tl132555132573%_)
                                          (let ((_%e132556132576%_
                                                 (gx#syntax-e
                                                  _%tl132555132573%_)))
                                            (let ((_%hd132557132579%_
                                                   (##car _%e132556132576%_))
                                                  (_%tl132558132581%_
                                                   (##cdr _%e132556132576%_)))
                                              (let ((_%path132584%_
                                                     _%hd132557132579%_))
                                                (if (gx#stx-null?
                                                     _%tl132558132581%_)
                                                    (if (gx#stx-string?
                                                         _%path132584%_)
                                                        (let* ((_%rpath132586%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path132584%_
                         (gx#stx-source _%hd132547%_)))
                       (_%block132588%_
                        (gx#core-expand-include%__%
                         _%hd132547%_
                         _%rpath132586%_))
                       (_%rbody132591%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block132588%_
                            _%expand-special132435%_
                            '#f
                            _%expand-e132437%_))
                         gx#current-expander-path
                         (cons _%rpath132586%_ (gx#current-expander-path)))))
                  (_%K132443%_
                   _%rest132548%_
                   (__foldr1 cons _%r132549%_ _%rbody132591%_)))
                (_%E132552132564%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132552132564%_)))))
                                          (_%E132552132564%_))))
                                  (_%E132552132564%_)))))
                      (_%E132551132594%_))))
                 (_%expand-expression132442%_
                  (lambda (_%hd132543%_ _%rest132544%_ _%r132545%_)
                    (_%K132443%_
                     _%rest132544%_
                     (cons (_%expand-e132437%_ _%hd132543%_) _%r132545%_))))
                 (_%K132443%_
                  (lambda (_%rest132473%_ _%r132474%_)
                    (let* ((_%e132475132482%_ _%rest132473%_)
                           (_%E132477132486%_
                            (lambda ()
                              (if _%begin-form132436%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form132436%_
                                    (reverse _%r132474%_))
                                   (gx#stx-source _%stx132434%_))
                                  _%r132474%_)))
                           (_%E132476132539%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132475132482%_)
                                  (let ((_%e132478132490%_
                                         (gx#syntax-e _%e132475132482%_)))
                                    (let ((_%hd132479132493%_
                                           (##car _%e132478132490%_))
                                          (_%tl132480132495%_
                                           (##cdr _%e132478132490%_)))
                                      (let* ((_%hd132498%_ _%hd132479132493%_)
                                             (_%rest132500%_
                                              _%tl132480132495%_)
                                             (_%hd132502%_
                                              (gx#core-expand-head
                                               _%hd132498%_))
                                             (_%e132503132510%_ _%hd132502%_)
                                             (_%E132505132514%_
                                              (lambda ()
                                                (_%expand-expression132442%_
                                                 _%hd132502%_
                                                 _%rest132500%_
                                                 _%r132474%_)))
                                             (_%E132504132535%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e132503132510%_)
                                                    (let ((_%e132506132518%_
                                                           (gx#syntax-e
                                                            _%e132503132510%_)))
                                                      (let ((_%hd132507132521%_
                                                             (##car _%e132506132518%_))
                                                            (_%tl132508132523%_
                                                             (##cdr _%e132506132518%_)))
                                                        (let* ((_%form132526%_
                                                                _%hd132507132521%_)
                                                               (_%body132528%_
                                                                _%tl132508132523%_)
                                                               (_%bind132530%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form132526%_)
                            (gx#resolve-identifier__0 _%form132526%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind132530%_)
                      (let ((_%$e132532%_
                             (##unchecked-structure-ref
                              _%bind132530%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e132532%_)
                            (_%expand-splice132439%_
                             _%hd132502%_
                             _%body132528%_
                             _%rest132500%_
                             _%r132474%_)
                            (if (eq? '%#cond-expand _%$e132532%_)
                                (_%expand-cond-expand132440%_
                                 _%hd132502%_
                                 _%rest132500%_
                                 _%r132474%_)
                                (if (eq? '%#include _%$e132532%_)
                                    (_%expand-include132441%_
                                     _%hd132502%_
                                     _%rest132500%_
                                     _%r132474%_)
                                    (_%expand-special132435%_
                                     _%hd132502%_
                                     _%K132443%_
                                     _%rest132500%_
                                     _%r132474%_)))))
                      (_%expand-expression132442%_
                       _%hd132502%_
                       _%rest132500%_
                       _%r132474%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132505132514%_)))))
                                        (_%E132504132535%_))))
                                  (_%E132477132486%_)))))
                      (_%E132476132539%_)))))
          (let* ((_%e132444132451%_ _%stx132434%_)
                 (_%E132446132455%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e132444132451%_)))
                 (_%E132445132469%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132444132451%_)
                        (let ((_%e132447132459%_
                               (gx#syntax-e _%e132444132451%_)))
                          (let ((_%hd132448132462%_ (##car _%e132447132459%_))
                                (_%tl132449132464%_ (##cdr _%e132447132459%_)))
                            (let ((_%body132467%_ _%tl132449132464%_))
                              (if (gx#stx-list? _%body132467%_)
                                  (_%K132443%_ _%body132467%_ '())
                                  (_%E132446132455%_)))))
                        (_%E132446132455%_)))))
            (_%E132445132469%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx132610%_ _%expand-special132611%_)
        (let* ((_%begin-form132613%_ '%#begin)
               (_%expand-e132615%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx132610%_
           _%expand-special132611%_
           _%begin-form132613%_
           _%expand-e132615%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx132617%_ _%expand-special132618%_ _%begin-form132619%_)
        (let ((_%expand-e132621%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx132617%_
           _%expand-special132618%_
           _%begin-form132619%_
           _%expand-e132621%_))))
    (define gx#core-expand-block
      (lambda _g133316_
        (let ((_g133317_ (##length _g133316_)))
          (cond ((##fx= _g133317_ 2) (apply gx#core-expand-block__0 _g133316_))
                ((##fx= _g133317_ 3) (apply gx#core-expand-block__1 _g133316_))
                ((##fx= _g133317_ 4) (apply gx#core-expand-block__% _g133316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g133316_))))))
    (define gx#core-expand-block*
      (lambda (_%stx132382%_ _%expand-special132383%_)
        (let* ((_%g132384132395%_
                (gx#core-expand-block__1
                 _%stx132382%_
                 _%expand-special132383%_
                 '#f))
               (_%E132388132399%_
                (lambda ()
                  (error '"No clause matching"
                         _%g132384132395%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K132393132430%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx132382%_)))
                (_%K132390132416%_ (lambda (_%expr132414%_) _%expr132414%_))
                (_%K132389132405%_
                 (lambda (_%body132403%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body132403%_))
                    (gx#stx-source _%stx132382%_)))))
            (let ((_%try-match132386132426%_
                   (lambda ()
                     (if (pair? _%g132384132395%_)
                         (let ((_%tl132392132421%_ (##cdr _%g132384132395%_))
                               (_%hd132391132419%_ (##car _%g132384132395%_)))
                           (if (null? _%tl132392132421%_)
                               (let ((_%expr132424%_ _%hd132391132419%_))
                                 (_%K132390132416%_ _%expr132424%_))
                               (let ((_%body132408%_ _%g132384132395%_))
                                 (_%K132389132405%_ _%body132408%_))))
                         (let ((_%body132408%_ _%g132384132395%_))
                           (_%K132389132405%_ _%body132408%_))))))
              (if (null? _%g132384132395%_)
                  (_%K132393132430%_)
                  (_%try-match132386132426%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx132207%_)
        (letrec ((_%satisfied?132209%_
                  (lambda (_%condition132310%_)
                    (let* ((_%e132311132326%_ _%condition132310%_)
                           (_%E132321132330%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132311132326%_)))
                           (_%E132314132349%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132311132326%_)
                                  (let ((_%e132322132334%_
                                         (gx#syntax-e _%e132311132326%_)))
                                    (let ((_%hd132323132337%_
                                           (##car _%e132322132334%_))
                                          (_%tl132324132339%_
                                           (##cdr _%e132322132334%_)))
                                      (let* ((_%combinator132342%_
                                              _%hd132323132337%_)
                                             (_%body132344%_
                                              _%tl132324132339%_))
                                        (if (gx#stx-list? _%body132344%_)
                                            (let ((_%$e132346%_
                                                   (gx#stx-e
                                                    _%combinator132342%_)))
                                              (if (eq? 'not _%$e132346%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?132209%_
                                                        _%body132344%_))
                                                  (if (eq? 'and _%$e132346%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?132209%_
                                                       _%body132344%_)
                                                      (if (eq? 'or
                                                               _%$e132346%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?132209%_
                                                           _%body132344%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e132346%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body132344%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx132207%_
                       _%combinator132342%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E132321132330%_)))))
                                  (_%E132321132330%_))))
                           (_%E132313132372%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132311132326%_)
                                  (let ((_%e132315132353%_
                                         (gx#syntax-e _%e132311132326%_)))
                                    (let ((_%hd132316132356%_
                                           (##car _%e132315132353%_))
                                          (_%tl132317132358%_
                                           (##cdr _%e132315132353%_)))
                                      (if (and (gx#identifier?
                                                _%hd132316132356%_)
                                               (gx#core-identifier=?
                                                _%hd132316132356%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl132317132358%_)
                                              (let ((_%e132318132361%_
                                                     (gx#syntax-e
                                                      _%tl132317132358%_)))
                                                (let ((_%hd132319132364%_
                                                       (##car _%e132318132361%_))
                                                      (_%tl132320132366%_
                                                       (##cdr _%e132318132361%_)))
                                                  (let ((_%expr132369%_
                                                         _%hd132319132364%_))
                                                    (if (gx#stx-null?
                                                         _%tl132320132366%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr132369%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E132314132349%_)))))
                                              (_%E132314132349%_))
                                          (_%E132314132349%_))))
                                  (_%E132314132349%_))))
                           (_%E132312132378%_
                            (lambda ()
                              (let ((_%id132376%_ _%e132311132326%_))
                                (if (gx#identifier? _%id132376%_)
                                    (gx#core-bound-identifier?__%
                                     _%id132376%_
                                     gx#feature-binding?)
                                    (_%E132313132372%_))))))
                      (_%E132312132378%_))))
                 (_%loop132210%_
                  (lambda (_%rest132240%_)
                    (let* ((_%e132241132249%_ _%rest132240%_)
                           (_%E132247132253%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132241132249%_)))
                           (_%E132243132257%_
                            (lambda ()
                              (if (gx#stx-null? _%e132241132249%_)
                                  '()
                                  (_%E132247132253%_))))
                           (_%E132242132306%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132241132249%_)
                                  (let ((_%e132244132261%_
                                         (gx#syntax-e _%e132241132249%_)))
                                    (let ((_%hd132245132264%_
                                           (##car _%e132244132261%_))
                                          (_%tl132246132266%_
                                           (##cdr _%e132244132261%_)))
                                      (let* ((_%hd132269%_ _%hd132245132264%_)
                                             (_%rest132271%_
                                              _%tl132246132266%_)
                                             (_%e132272132279%_ _%hd132269%_)
                                             (_%E132274132283%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e132272132279%_)))
                                             (_%E132273132302%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e132272132279%_)
                                                    (let ((_%e132275132287%_
                                                           (gx#syntax-e
                                                            _%e132272132279%_)))
                                                      (let ((_%hd132276132290%_
                                                             (##car _%e132275132287%_))
                                                            (_%tl132277132292%_
                                                             (##cdr _%e132275132287%_)))
                                                        (let* ((_%condition132295%_
                                                                _%hd132276132290%_)
                                                               (_%body132297%_
                                                                _%tl132277132292%_))
                                                          (if (gx#stx-eq?
                                                               _%condition132295%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest132271%_)
                          _%body132297%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx132207%_
                           _%hd132269%_))
                      (if (_%satisfied?132209%_ _%condition132295%_)
                          _%body132297%_
                          (_%loop132210%_ _%rest132271%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132274132283%_)))))
                                        (_%E132273132302%_))))
                                  (_%E132243132257%_)))))
                      (_%E132242132306%_)))))
          (let* ((_%e132211132218%_ _%stx132207%_)
                 (_%E132213132222%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e132211132218%_)))
                 (_%E132212132236%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132211132218%_)
                        (let ((_%e132214132226%_
                               (gx#syntax-e _%e132211132218%_)))
                          (let ((_%hd132215132229%_ (##car _%e132214132226%_))
                                (_%tl132216132231%_ (##cdr _%e132214132226%_)))
                            (let ((_%clauses132234%_ _%tl132216132231%_))
                              (if (gx#stx-list? _%clauses132234%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop132210%_ _%clauses132234%_))
                                  (_%E132213132222%_)))))
                        (_%E132213132222%_)))))
            (_%E132212132236%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx132150%_ _%rpath132151%_)
        (let* ((_%e132152132162%_ _%stx132150%_)
               (_%E132154132166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132152132162%_)))
               (_%E132153132193%_
                (lambda ()
                  (if (gx#stx-pair? _%e132152132162%_)
                      (let ((_%e132155132170%_
                             (gx#syntax-e _%e132152132162%_)))
                        (let ((_%hd132156132173%_ (##car _%e132155132170%_))
                              (_%tl132157132175%_ (##cdr _%e132155132170%_)))
                          (if (gx#stx-pair? _%tl132157132175%_)
                              (let ((_%e132158132178%_
                                     (gx#syntax-e _%tl132157132175%_)))
                                (let ((_%hd132159132181%_
                                       (##car _%e132158132178%_))
                                      (_%tl132160132183%_
                                       (##cdr _%e132158132178%_)))
                                  (let ((_%path132186%_ _%hd132159132181%_))
                                    (if (gx#stx-null? _%tl132160132183%_)
                                        (if (gx#stx-string? _%path132186%_)
                                            (let ((_%rpath132191%_
                                                   (let ((_%$e132188%_
                                                          _%rpath132151%_))
                                                     (if _%$e132188%_
                                                         _%$e132188%_
                                                         (gx#core-resolve-path__%
                                                          _%path132186%_
                                                          (gx#stx-source
                                                           _%stx132150%_))))))
                                              (if (member _%rpath132191%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx132150%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath132191%_))
                                                    (gx#stx-source
                                                     _%stx132150%_)))))
                                            (_%E132154132166%_))
                                        (_%E132154132166%_)))))
                              (_%E132154132166%_))))
                      (_%E132154132166%_)))))
          (_%E132153132193%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx132200%_)
        (let ((_%rpath132202%_ '#f))
          (gx#core-expand-include%__% _%stx132200%_ _%rpath132202%_))))
    (define gx#core-expand-include%
      (lambda _g133318_
        (let ((_g133319_ (##length _g133318_)))
          (cond ((##fx= _g133319_ 1)
                 (apply gx#core-expand-include%__0 _g133318_))
                ((##fx= _g133319_ 2)
                 (apply gx#core-expand-include%__% _g133318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g133318_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K132116%_ _%stx132117%_ _%method132118%_)
        (if (procedure? _%K132116%_)
            (let ((_%$e132121%_ (gx#stx-source _%stx132117%_)))
              (if _%$e132121%_
                  ((lambda (_%g132123132125%_)
                     (gx#stx-wrap-source
                      (_%K132116%_ _%stx132117%_)
                      _%g132123132125%_))
                   _%$e132121%_)
                  (_%K132116%_ _%stx132117%_)))
            (let ((_%$e132129%_
                   (bound-method-ref _%K132116%_ _%method132118%_)))
              (if _%$e132129%_
                  ((lambda (_%g132131132133%_)
                     (gx#core-apply-expander__%
                      _%g132131132133%_
                      _%stx132117%_
                      _%method132118%_))
                   _%$e132129%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx132117%_
                   _%method132118%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K132140%_ _%stx132141%_)
        (let ((_%method132143%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K132140%_
           _%stx132141%_
           _%method132143%_))))
    (define gx#core-apply-expander
      (lambda _g133320_
        (let ((_g133321_ (##length _g133320_)))
          (cond ((##fx= _g133321_ 2)
                 (apply gx#core-apply-expander__0 _g133320_))
                ((##fx= _g133321_ 3)
                 (apply gx#core-apply-expander__% _g133320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g133320_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self132101%_ _%stx132102%_)
        (let ((_%self132105%_ _%self132101%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx132102%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self131943%_ _%stx131944%_)
        (let* ((_%self131947%_ _%self131943%_)
               (_%self131956131962%_ _%self131947%_)
               (_%E131958131966%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131956131962%_
                         '((macro-expander K)))
                  '#!void))
               (_%K131959131971%_
                (lambda (_%K131969%_)
                  (gx#core-apply-expander__0 _%K131969%_ _%stx131944%_)))
               (_%e131960131974%_
                (##unchecked-structure-ref _%self131956131962%_ '1 '#f '#f))
               (_%K131977%_ _%e131960131974%_))
          (_%K131959131971%_ _%K131977%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self131785%_ _%stx131786%_)
        (let ((_%self131789%_ _%self131785%_))
          (if (gx#sealed-syntax? _%stx131786%_)
              _%stx131786%_
              (let* ((_%self131798131804%_ _%self131789%_)
                     (_%E131800131808%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self131798131804%_
                               '((core-expander K)))
                        '#!void))
                     (_%K131801131813%_
                      (lambda (_%K131811%_)
                        (gx#core-apply-expander__0 _%K131811%_ _%stx131786%_)))
                     (_%e131802131816%_
                      (##unchecked-structure-ref
                       _%self131798131804%_
                       '1
                       '#f
                       '#f))
                     (_%K131819%_ _%e131802131816%_))
                (_%K131801131813%_ _%K131819%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self131636%_ _%stx131637%_ _%top?131638%_)
        (let ((_%self131641%_ _%self131636%_))
          (if (_%top?131638%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self131641%_
               _%stx131637%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx131637%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self131654%_ _%stx131655%_)
        (let ((_%top?131657%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self131654%_
           _%stx131655%_
           _%top?131657%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g133322_
        (let ((_g133323_ (##length _g133322_)))
          (cond ((##fx= _g133323_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g133322_))
                ((##fx= _g133323_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g133322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g133322_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self131499%_ _%stx131500%_)
        (let ((_%self131503%_ _%self131499%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self131503%_
           _%stx131500%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self131313%_ _%stx131314%_)
        (let* ((_%self131317%_ _%self131313%_)
               (_%self131326131332%_ _%self131317%_)
               (_%E131328131336%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131326131332%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K131329131369%_
                (lambda (_%id131339%_)
                  (let* ((_%e131340131347%_ _%stx131314%_)
                         (_%E131342131351%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e131340131347%_)))
                         (_%E131341131365%_
                          (lambda ()
                            (if (gx#stx-pair? _%e131340131347%_)
                                (let ((_%e131343131355%_
                                       (gx#syntax-e _%e131340131347%_)))
                                  (let ((_%hd131344131358%_
                                         (##car _%e131343131355%_))
                                        (_%tl131345131360%_
                                         (##cdr _%e131343131355%_)))
                                    (let ((_%body131363%_ _%tl131345131360%_))
                                      (gx#core-cons
                                       _%id131339%_
                                       _%body131363%_))))
                                (_%E131342131351%_)))))
                    (_%E131341131365%_))))
               (_%e131330131372%_
                (##unchecked-structure-ref _%self131326131332%_ '1 '#f '#f))
               (_%id131375%_ _%e131330131372%_))
          (_%K131329131369%_ _%id131375%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self131139%_ _%stx131140%_ _%method131141%_)
        (let* ((_%self131142131150%_ _%self131139%_)
               (_%E131144131154%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131142131150%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K131145131161%_
                (lambda (_%phi131157%_ _%ctx131158%_ _%K131159%_)
                  (gx#core-apply-user-macro
                   _%K131159%_
                   _%stx131140%_
                   _%ctx131158%_
                   _%phi131157%_
                   _%method131141%_))))
          (if (##structure-instance-of?
               _%self131142131150%_
               'gx#user-expander::t)
              (let* ((_%e131146131164%_
                      (##unchecked-structure-ref
                       _%self131142131150%_
                       '1
                       '#f
                       '#f))
                     (_%K131167%_ _%e131146131164%_)
                     (_%e131147131169%_
                      (##unchecked-structure-ref
                       _%self131142131150%_
                       '2
                       '#f
                       '#f))
                     (_%ctx131172%_ _%e131147131169%_)
                     (_%e131148131174%_
                      (##unchecked-structure-ref
                       _%self131142131150%_
                       '3
                       '#f
                       '#f))
                     (_%phi131177%_ _%e131148131174%_))
                (_%K131145131161%_ _%phi131177%_ _%ctx131172%_ _%K131167%_))
              (_%E131144131154%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self131182%_ _%stx131183%_)
        (let ((_%method131185%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self131182%_
           _%stx131183%_
           _%method131185%_))))
    (define gx#core-apply-user-expander
      (lambda _g133324_
        (let ((_g133325_ (##length _g133324_)))
          (cond ((##fx= _g133325_ 2)
                 (apply gx#core-apply-user-expander__0 _g133324_))
                ((##fx= _g133325_ 3)
                 (apply gx#core-apply-user-expander__% _g133324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g133324_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K131129%_
               _%stx131130%_
               _%ctx131131%_
               _%phi131132%_
               _%method131133%_)
        (let ((_%mark131135%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx131131%_
                _%phi131132%_
                _%stx131130%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K131129%_
               (gx#stx-apply-mark _%stx131130%_ _%mark131135%_)
               _%method131133%_)
              _%mark131135%_))
           gx#current-expander-marks
           (cons _%mark131135%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx130977%_ _%phi130978%_ _%ctx130979%_)
        (let _%lp130981%_ ((_%bind130983%_
                            (gx#core-resolve-identifier__%
                             _%stx130977%_
                             _%phi130978%_
                             _%ctx130979%_)))
          (if (##structure-direct-instance-of?
               _%bind130983%_
               'gx#import-binding::t)
              (_%lp130981%_
               (##unchecked-structure-ref _%bind130983%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind130983%_
                   'gx#alias-binding::t)
                  (_%lp130981%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind130983%_ '4 '#f '#f)
                    _%phi130978%_
                    _%ctx130979%_))
                  _%bind130983%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx130991%_)
        (let* ((_%phi130993%_ (gx#current-expander-phi))
               (_%ctx130995%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx130991%_
           _%phi130993%_
           _%ctx130995%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx130997%_ _%phi130998%_)
        (let ((_%ctx131000%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx130997%_
           _%phi130998%_
           _%ctx131000%_))))
    (define gx#resolve-identifier
      (lambda _g133326_
        (let ((_g133327_ (##length _g133326_)))
          (cond ((##fx= _g133327_ 1)
                 (apply gx#resolve-identifier__0 _g133326_))
                ((##fx= _g133327_ 2)
                 (apply gx#resolve-identifier__1 _g133326_))
                ((##fx= _g133327_ 3)
                 (apply gx#resolve-identifier__% _g133326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g133326_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx130932%_
               _%val130933%_
               _%rebind?130934%_
               _%phi130935%_
               _%ctx130936%_)
        (let ((_%rebind?130941%_
               (if (not _%rebind?130934%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?130934%_)
                       _%rebind?130934%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx130932%_)
           _%val130933%_
           _%rebind?130941%_
           _%phi130935%_
           _%ctx130936%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx130946%_ _%val130947%_)
        (let* ((_%rebind?130949%_ '#f)
               (_%phi130951%_ (gx#current-expander-phi))
               (_%ctx130953%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx130946%_
           _%val130947%_
           _%rebind?130949%_
           _%phi130951%_
           _%ctx130953%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx130955%_ _%val130956%_ _%rebind?130957%_)
        (let* ((_%phi130959%_ (gx#current-expander-phi))
               (_%ctx130961%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx130955%_
           _%val130956%_
           _%rebind?130957%_
           _%phi130959%_
           _%ctx130961%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx130963%_ _%val130964%_ _%rebind?130965%_ _%phi130966%_)
        (let ((_%ctx130968%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx130963%_
           _%val130964%_
           _%rebind?130965%_
           _%phi130966%_
           _%ctx130968%_))))
    (define gx#bind-identifier!
      (lambda _g133328_
        (let ((_g133329_ (##length _g133328_)))
          (cond ((##fx= _g133329_ 2) (apply gx#bind-identifier!__0 _g133328_))
                ((##fx= _g133329_ 3) (apply gx#bind-identifier!__1 _g133328_))
                ((##fx= _g133329_ 4) (apply gx#bind-identifier!__2 _g133328_))
                ((##fx= _g133329_ 5) (apply gx#bind-identifier!__% _g133328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g133328_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx130898%_ _%phi130899%_ _%ctx130900%_)
        (let _%lp130902%_ ((_%e130904%_ _%stx130898%_)
                           (_%marks130905%_ (gx#current-expander-marks)))
          (if (symbol? _%e130904%_)
              (gx#core-resolve-binding
               _%e130904%_
               _%phi130899%_
               _%phi130899%_
               _%ctx130900%_
               (reverse _%marks130905%_))
              (if (gx#identifier-quote? _%e130904%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e130904%_ '1 '#f '#f)
                   _%phi130899%_
                   '0
                   (##unchecked-structure-ref _%e130904%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e130904%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e130904%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e130904%_ '1 '#f '#f)
                       _%phi130899%_
                       _%phi130899%_
                       _%ctx130900%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e130904%_ '3 '#f '#f)
                        _%marks130905%_))
                      (if (##structure-direct-instance-of?
                           _%e130904%_
                           'gx#syntax-wrap::t)
                          (_%lp130902%_
                           (##unchecked-structure-ref _%e130904%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e130904%_ '3 '#f '#f)
                            _%marks130905%_))
                          (if (##structure-instance-of?
                               _%e130904%_
                               'gerbil#AST::t)
                              (_%lp130902%_
                               (##unchecked-structure-ref
                                _%e130904%_
                                '1
                                '#f
                                '#f)
                               _%marks130905%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx130898%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx130916%_)
        (let* ((_%phi130918%_ (gx#current-expander-phi))
               (_%ctx130920%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx130916%_
           _%phi130918%_
           _%ctx130920%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx130922%_ _%phi130923%_)
        (let ((_%ctx130925%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx130922%_
           _%phi130923%_
           _%ctx130925%_))))
    (define gx#core-resolve-identifier
      (lambda _g133330_
        (let ((_g133331_ (##length _g133330_)))
          (cond ((##fx= _g133331_ 1)
                 (apply gx#core-resolve-identifier__0 _g133330_))
                ((##fx= _g133331_ 2)
                 (apply gx#core-resolve-identifier__1 _g133330_))
                ((##fx= _g133331_ 3)
                 (apply gx#core-resolve-identifier__% _g133330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g133330_))))))
    (define gx#core-resolve-binding
      (lambda (_%id130808%_
               _%phi130809%_
               _%src-phi130810%_
               _%ctx130811%_
               _%marks130812%_)
        (letrec ((_%resolve130814%_
                  (lambda (_%ctx130882%_ _%src-phi130883%_ _%key130884%_)
                    (let _%lp130886%_ ((_%ctx130888%_
                                        (gx#core-context-shift
                                         _%ctx130882%_
                                         _%phi130809%_))
                                       (_%dphi130889%_
                                        (fx- _%phi130809%_ _%src-phi130883%_)))
                      (let ((_%$e130891%_
                             (gx#core-context-resolve
                              _%ctx130888%_
                              _%key130884%_)))
                        (if _%$e130891%_
                            _%$e130891%_
                            (if (fxzero? _%dphi130889%_)
                                '#f
                                (if (fxpositive? _%dphi130889%_)
                                    (_%lp130886%_
                                     (gx#core-context-shift _%ctx130888%_ '-1)
                                     (##fx- _%dphi130889%_ '1))
                                    (_%lp130886%_
                                     (gx#core-context-shift _%ctx130888%_ '1)
                                     (##fx+ _%dphi130889%_ '1))))))))))
          (let _%lp130816%_ ((_%ctx130818%_ _%ctx130811%_)
                             (_%src-phi130819%_ _%src-phi130810%_)
                             (_%rest130820%_ _%marks130812%_))
            (let* ((_%rest130821130829%_ _%rest130820%_)
                   (_%else130823130837%_
                    (lambda ()
                      (_%resolve130814%_
                       _%ctx130818%_
                       _%src-phi130819%_
                       _%id130808%_)))
                   (_%K130825130870%_
                    (lambda (_%rest130840%_ _%hd130841%_)
                      (let* ((_%hd130842130848%_ _%hd130841%_)
                             (_%E130844130852%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd130842130848%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K130845130862%_
                              (lambda (_%subst130855%_)
                                (let ((_%$e130859%_
                                       (let ((_%key130857%_
                                              (if _%subst130855%_
                                                  (hash-get
                                                   _%subst130855%_
                                                   _%id130808%_)
                                                  '#f)))
                                         (if _%key130857%_
                                             (_%resolve130814%_
                                              _%ctx130818%_
                                              _%src-phi130819%_
                                              _%key130857%_)
                                             '#f))))
                                  (if _%$e130859%_
                                      _%$e130859%_
                                      (_%lp130816%_
                                       (##unchecked-structure-ref
                                        _%hd130841%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd130841%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest130840%_))))))
                        (if (##structure-instance-of?
                             _%hd130842130848%_
                             'gx#expander-mark::t)
                            (let* ((_%e130846130865%_
                                    (##unchecked-structure-ref
                                     _%hd130842130848%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst130868%_ _%e130846130865%_))
                              (_%K130845130862%_ _%subst130868%_))
                            (_%E130844130852%_))))))
              (if (pair? _%rest130821130829%_)
                  (let ((_%hd130826130873%_ (##car _%rest130821130829%_))
                        (_%tl130827130875%_ (##cdr _%rest130821130829%_)))
                    (let* ((_%hd130878%_ _%hd130826130873%_)
                           (_%rest130880%_ _%tl130827130875%_))
                      (_%K130825130870%_ _%rest130880%_ _%hd130878%_)))
                  (_%else130823130837%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key130678%_
               _%val130679%_
               _%rebind?130680%_
               _%phi130681%_
               _%ctx130682%_)
        (letrec ((_%update-binding130684%_
                  (lambda (_%xval130757%_)
                    (if (or (_%rebind?130680%_
                             _%ctx130682%_
                             _%xval130757%_
                             _%val130679%_)
                            (and (##structure-direct-instance-of?
                                  _%xval130757%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval130757%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val130679%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val130679%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval130757%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val130679%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val130679%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval130757%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val130679%_
                        (if (and (##structure-direct-instance-of?
                                  _%val130679%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val130679%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval130757%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val130679%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval130757%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval130757%_
                            (if (and (##structure-direct-instance-of?
                                      _%val130679%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval130757%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key130678%_
                                 (cons (##unchecked-structure-ref
                                        _%val130679%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val130679%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval130757%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval130757%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval130757%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval130757%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key130678%_
                                 _%val130679%_
                                 _%xval130757%_))))))
                 (_%gensubst130685%_
                  (lambda (_%subst130752%_ _%id130753%_)
                    (let ((_%eid130755%_
                           (gensym (if (uninterned-symbol? _%id130753%_)
                                       '%
                                       _%id130753%_))))
                      (hash-put! _%subst130752%_ _%id130753%_ _%eid130755%_)
                      _%eid130755%_)))
                 (_%subst!130686%_
                  (lambda (_%key130688%_)
                    (let* ((_%key130689130697%_ _%key130688%_)
                           (_%else130691130705%_ (lambda () _%key130688%_))
                           (_%K130693130740%_
                            (lambda (_%mark130708%_ _%id130709%_)
                              (let* ((_%mark130710130716%_ _%mark130708%_)
                                     (_%E130712130720%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark130710130716%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K130713130732%_
                                      (lambda (_%subst130723%_)
                                        (if (not _%subst130723%_)
                                            (let ((_%subst130726%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark130708%_
                                               _%subst130726%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst130685%_
                                               _%subst130726%_
                                               _%id130709%_))
                                            (let ((_%$e130728%_
                                                   (hash-get
                                                    _%subst130723%_
                                                    _%id130709%_)))
                                              (if _%$e130728%_
                                                  _%$e130728%_
                                                  (_%gensubst130685%_
                                                   _%subst130723%_
                                                   _%id130709%_)))))))
                                (if (##structure-instance-of?
                                     _%mark130710130716%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e130714130735%_
                                            (##unchecked-structure-ref
                                             _%mark130710130716%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst130738%_ _%e130714130735%_))
                                      (_%K130713130732%_ _%subst130738%_))
                                    (_%E130712130720%_))))))
                      (if (pair? _%key130689130697%_)
                          (let ((_%hd130694130743%_
                                 (##car _%key130689130697%_))
                                (_%tl130695130745%_
                                 (##cdr _%key130689130697%_)))
                            (let* ((_%id130748%_ _%hd130694130743%_)
                                   (_%mark130750%_ _%tl130695130745%_))
                              (_%K130693130740%_ _%mark130750%_ _%id130748%_)))
                          (_%else130691130705%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx130682%_ _%phi130681%_)
           (_%subst!130686%_ _%key130678%_)
           _%val130679%_
           _%update-binding130684%_))))
    (define gx#core-bind!__0
      (lambda (_%key130778%_ _%val130779%_)
        (let* ((_%rebind?130781%_ false)
               (_%phi130783%_ (gx#current-expander-phi))
               (_%ctx130785%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key130778%_
           _%val130779%_
           _%rebind?130781%_
           _%phi130783%_
           _%ctx130785%_))))
    (define gx#core-bind!__1
      (lambda (_%key130787%_ _%val130788%_ _%rebind?130789%_)
        (let* ((_%phi130791%_ (gx#current-expander-phi))
               (_%ctx130793%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key130787%_
           _%val130788%_
           _%rebind?130789%_
           _%phi130791%_
           _%ctx130793%_))))
    (define gx#core-bind!__2
      (lambda (_%key130795%_ _%val130796%_ _%rebind?130797%_ _%phi130798%_)
        (let ((_%ctx130800%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key130795%_
           _%val130796%_
           _%rebind?130797%_
           _%phi130798%_
           _%ctx130800%_))))
    (define gx#core-bind!
      (lambda _g133332_
        (let ((_g133333_ (##length _g133332_)))
          (cond ((##fx= _g133333_ 2) (apply gx#core-bind!__0 _g133332_))
                ((##fx= _g133333_ 3) (apply gx#core-bind!__1 _g133332_))
                ((##fx= _g133333_ 4) (apply gx#core-bind!__2 _g133332_))
                ((##fx= _g133333_ 5) (apply gx#core-bind!__% _g133332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g133332_))))))
    (define gx#core-identifier-key
      (lambda (_%stx130609%_)
        (if (symbol? _%stx130609%_)
            (let* ((_%g130611130619%_ (gx#current-expander-marks))
                   (_%else130613130627%_ (lambda () _%stx130609%_))
                   (_%K130615130632%_
                    (lambda (_%hd130630%_) (cons _%stx130609%_ _%hd130630%_))))
              (if (pair? _%g130611130619%_)
                  (let* ((_%hd130616130635%_ (##car _%g130611130619%_))
                         (_%hd130638%_ _%hd130616130635%_))
                    (_%K130615130632%_ _%hd130638%_))
                  (_%else130613130627%_)))
            (if (gx#identifier? _%stx130609%_)
                (let* ((_%id130641%_ (gx#syntax-local-unwrap _%stx130609%_))
                       (_%eid130643%_ (gx#stx-e _%id130641%_))
                       (_%marks130645%_
                        (gx#stx-identifier-marks* _%id130641%_))
                       (_%marks130647130655%_ _%marks130645%_)
                       (_%else130649130663%_ (lambda () _%eid130643%_))
                       (_%K130651130668%_
                        (lambda (_%hd130666%_)
                          (cons _%eid130643%_ _%hd130666%_))))
                  (if (pair? _%marks130647130655%_)
                      (let* ((_%hd130652130671%_ (##car _%marks130647130655%_))
                             (_%hd130674%_ _%hd130652130671%_))
                        (_%K130651130668%_ _%hd130674%_))
                      (_%else130649130663%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx130609%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx130548%_ _%phi130549%_)
        (letrec ((_%make-phi130551%_
                  (lambda (_%super130607%_)
                    (let ((__obj133305
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj133305
                       (##gensym 'phi)
                       _%super130607%_)
                      __obj133305)))
                 (_%make-phi/up130552%_
                  (lambda (_%ctx130602%_ _%super130603%_)
                    (let ((_%ctx+1130605%_
                           (_%make-phi130551%_ _%super130603%_)))
                      (##unchecked-structure-set!
                       _%ctx130602%_
                       _%ctx+1130605%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1130605%_
                       _%ctx130602%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1130605%_)))
                 (_%make-phi/down130553%_
                  (lambda (_%ctx130597%_ _%super130598%_)
                    (let ((_%ctx-1130600%_
                           (_%make-phi130551%_ _%super130598%_)))
                      (##unchecked-structure-set!
                       _%ctx-1130600%_
                       _%ctx130597%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx130597%_
                       _%ctx-1130600%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1130600%_)))
                 (_%shift130554%_
                  (lambda (_%ctx130580%_
                           _%delta130581%_
                           _%make-delta-context130582%_
                           _%phi130583%_
                           _%K130584%_)
                    (let ((_%$e130586%_
                           (##unchecked-structure-ref
                            _%ctx130580%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e130586%_
                          ((lambda (_%super130589%_)
                             (let* ((_%super130591%_
                                     (_%K130584%_
                                      _%super130589%_
                                      _%delta130581%_))
                                    (_%ctx+d130593%_
                                     (_%make-delta-context130582%_
                                      _%ctx130580%_
                                      _%super130591%_)))
                               (_%K130584%_
                                _%ctx+d130593%_
                                (fx- _%phi130583%_ _%delta130581%_))))
                           _%$e130586%_)
                          (error '"Bad context" _%ctx130580%_))))))
          (let _%K130556%_ ((_%ctx130558%_ _%ctx130548%_)
                            (_%phi130559%_ _%phi130549%_))
            (if (fxzero? _%phi130559%_)
                _%ctx130558%_
                (if (##structure-instance-of? _%ctx130558%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi130559%_)
                        (let ((_%$e130563%_
                               (##unchecked-structure-ref
                                _%ctx130558%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e130563%_
                              ((lambda (_%g130565130567%_)
                                 (_%K130556%_
                                  _%g130565130567%_
                                  (##fx- _%phi130559%_ '1)))
                               _%$e130563%_)
                              (_%shift130554%_
                               _%ctx130558%_
                               '1
                               _%make-phi/up130552%_
                               _%phi130559%_
                               _%K130556%_)))
                        (let ((_%$e130571%_
                               (##unchecked-structure-ref
                                _%ctx130558%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e130571%_
                              ((lambda (_%g130573130575%_)
                                 (_%K130556%_
                                  _%g130573130575%_
                                  (##fx+ _%phi130559%_ '1)))
                               _%$e130571%_)
                              (_%shift130554%_
                               _%ctx130558%_
                               '-1
                               _%make-phi/down130553%_
                               _%phi130559%_
                               _%K130556%_))))
                    _%ctx130558%_))))))
    (define gx#core-context-get
      (lambda (_%ctx130545%_ _%key130546%_)
        (hash-get
         (##unchecked-structure-ref _%ctx130545%_ '2 '#f '#f)
         _%key130546%_)))
    (define gx#core-context-put!
      (lambda (_%ctx130541%_ _%key130542%_ _%val130543%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx130541%_ '2 '#f '#f)
         _%key130542%_
         _%val130543%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx130527%_ _%key130528%_)
        (let _%lp130530%_ ((_%ctx130532%_ _%ctx130527%_))
          (let ((_%$e130534%_
                 (gx#core-context-get _%ctx130532%_ _%key130528%_)))
            (if _%$e130534%_
                _%$e130534%_
                (let ((_%$e130537%_
                       (if (##structure-instance-of?
                            _%ctx130532%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx130532%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e130537%_ (_%lp130530%_ _%$e130537%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx130516%_ _%key130517%_ _%val130518%_ _%rebind130519%_)
        (let ((_%$e130521%_ (gx#core-context-get _%ctx130516%_ _%key130517%_)))
          (if _%$e130521%_
              ((lambda (_%xval130524%_)
                 (gx#core-context-put!
                  _%ctx130516%_
                  _%key130517%_
                  (_%rebind130519%_ _%xval130524%_)))
               _%$e130521%_)
              (gx#core-context-put!
               _%ctx130516%_
               _%key130517%_
               _%val130518%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx130491%_ _%stop?130492%_)
        (let _%lp130494%_ ((_%ctx130496%_ _%ctx130491%_))
          (if (_%stop?130492%_ _%ctx130496%_)
              _%ctx130496%_
              (if (##structure-instance-of? _%ctx130496%_ 'gx#phi-context::t)
                  (_%lp130494%_
                   (##unchecked-structure-ref _%ctx130496%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx130505%_ (gx#current-expander-context))
               (_%stop?130507%_ gx#top-context?))
          (gx#core-context-top__% _%ctx130505%_ _%stop?130507%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx130509%_)
        (let ((_%stop?130511%_ gx#top-context?))
          (gx#core-context-top__% _%ctx130509%_ _%stop?130511%_))))
    (define gx#core-context-top
      (lambda _g133334_
        (let ((_g133335_ (##length _g133334_)))
          (cond ((##fx= _g133335_ 0) (apply gx#core-context-top__0 _g133334_))
                ((##fx= _g133335_ 1) (apply gx#core-context-top__1 _g133334_))
                ((##fx= _g133335_ 2) (apply gx#core-context-top__% _g133334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g133334_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx130476%_)
        (let _%lp130478%_ ((_%ctx130480%_ _%ctx130476%_))
          (if (##structure-instance-of? _%ctx130480%_ 'gx#phi-context::t)
              (_%lp130478%_
               (##unchecked-structure-ref _%ctx130480%_ '3 '#f '#f))
              _%ctx130480%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx130486%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx130486%_))))
    (define gx#core-context-root
      (lambda _g133336_
        (let ((_g133337_ (##length _g133336_)))
          (cond ((##fx= _g133337_ 0) (apply gx#core-context-root__0 _g133336_))
                ((##fx= _g133337_ 1) (apply gx#core-context-root__% _g133336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g133336_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx130458%_ . _%ignore130459%_)
        (let ((_%$e130461%_ (gx#current-expander-allow-rebind?)))
          (if _%$e130461%_
              _%$e130461%_
              (if (##structure-instance-of? _%ctx130458%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx130458%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx130458%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx130468%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx130468%_))))
    (define gx#core-context-rebind?
      (lambda _g133338_
        (let ((_g133339_ (##length _g133338_)))
          (cond ((##fx= _g133339_ 0)
                 (apply gx#core-context-rebind?__0 _g133338_))
                ((##fx= _g133339_ 1)
                 (apply gx#core-context-rebind?__% _g133338_))
                ((##fx>= _g133339_ 1)
                 (apply gx#core-context-rebind?__% _g133338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g133338_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx130441%_)
        (let ((_%$e130443%_ (gx#core-context-top__1 _%ctx130441%_)))
          (if _%$e130443%_
              ((lambda (_%ctx130446%_)
                 (if (##structure-instance-of?
                      _%ctx130446%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx130446%_ '6 '#f '#f)
                     '#f))
               _%$e130443%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx130453%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx130453%_))))
    (define gx#core-context-namespace
      (lambda _g133340_
        (let ((_g133341_ (##length _g133340_)))
          (cond ((##fx= _g133341_ 0)
                 (apply gx#core-context-namespace__0 _g133340_))
                ((##fx= _g133341_ 1)
                 (apply gx#core-context-namespace__% _g133340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g133340_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind130427%_ _%is?130428%_)
        (if (##structure-direct-instance-of?
             _%bind130427%_
             'gx#syntax-binding::t)
            (_%is?130428%_
             (##unchecked-structure-ref _%bind130427%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind130433%_)
        (let ((_%is?130435%_ gx#expander?))
          (gx#expander-binding?__% _%bind130433%_ _%is?130435%_))))
    (define gx#expander-binding?
      (lambda _g133342_
        (let ((_g133343_ (##length _g133342_)))
          (cond ((##fx= _g133343_ 1) (apply gx#expander-binding?__0 _g133342_))
                ((##fx= _g133343_ 2) (apply gx#expander-binding?__% _g133342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g133342_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind130424%_)
        (gx#expander-binding?__% _%bind130424%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind130422%_)
        (gx#expander-binding?__% _%bind130422%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind130416%_)
        (letrec ((_%direct-special-form?130418%_
                  (lambda (_%obj130420%_)
                    (##structure-direct-instance-of?
                     _%obj130420%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind130416%_
           _%direct-special-form?130418%_))))
    (define gx#special-form-binding?
      (lambda (_%bind130414%_)
        (gx#expander-binding?__% _%bind130414%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind130405%_)
        (letrec ((_%feature?130407%_
                  (lambda (_%e130409%_)
                    (let ((_%$e130411%_
                           (##structure-instance-of?
                            _%e130409%_
                            'gx#feature-expander::t)))
                      (if _%$e130411%_
                          _%$e130411%_
                          (##structure-instance-of?
                           _%e130409%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind130405%_ _%feature?130407%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind130403%_)
        (gx#expander-binding?__% _%bind130403%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id130390%_ _%bound?130391%_)
        (if (gx#identifier? _%id130390%_)
            (_%bound?130391%_ (gx#resolve-identifier__0 _%id130390%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id130396%_)
        (let ((_%bound?130398%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id130396%_ _%bound?130398%_))))
    (define gx#core-bound-identifier?
      (lambda _g133344_
        (let ((_g133345_ (##length _g133344_)))
          (cond ((##fx= _g133345_ 1)
                 (apply gx#core-bound-identifier?__0 _g133344_))
                ((##fx= _g133345_ 2)
                 (apply gx#core-bound-identifier?__% _g133344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g133344_))))))
    (define gx#core-identifier=?
      (lambda (_%x130380%_ _%y130381%_)
        (letrec ((_%y=?130383%_
                  (lambda (_%xid130387%_)
                    ((if (list? _%y130381%_) memq eq?)
                     _%xid130387%_
                     _%y130381%_))))
          (let ((_%bind130385%_ (gx#resolve-identifier__0 _%x130380%_)))
            (if (##structure-instance-of? _%bind130385%_ 'gx#binding::t)
                (_%y=?130383%_
                 (##unchecked-structure-ref _%bind130385%_ '1 '#f '#f))
                (_%y=?130383%_ (gx#stx-e _%x130380%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e130378%_)
        (if (interned-symbol? _%e130378%_)
            (string-index__0 (symbol->string _%e130378%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx130331%_ _%src130332%_ _%ctx130333%_ _%marks130334%_)
        (if (##structure? _%stx130331%_)
            (let ((_%$e130336%_ (gx#sealed-syntax-unwrap _%stx130331%_)))
              (if _%$e130336%_
                  _%$e130336%_
                  (if (gx#identifier? _%stx130331%_)
                      (let ((_%id130340%_
                             (gx#stx-unwrap__% _%stx130331%_ _%marks130334%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id130340%_ '1 '#f '#f)
                         (let ((_%$e130342%_
                                (##unchecked-structure-ref
                                 _%id130340%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e130342%_ _%$e130342%_ _%src130332%_))
                         _%ctx130333%_
                         (##unchecked-structure-ref _%id130340%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx130331%_)
                       (let ((_%$e130346%_ (gx#stx-source _%stx130331%_)))
                         (if _%$e130346%_ _%$e130346%_ _%src130332%_))
                       _%ctx130333%_
                       (reverse _%marks130334%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx130331%_
             _%src130332%_
             _%ctx130333%_
             (reverse _%marks130334%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx130352%_)
        (let* ((_%src130354%_ '#f)
               (_%ctx130356%_ (gx#current-expander-context))
               (_%marks130358%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130352%_
           _%src130354%_
           _%ctx130356%_
           _%marks130358%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx130360%_ _%src130361%_)
        (let* ((_%ctx130363%_ (gx#current-expander-context))
               (_%marks130365%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130360%_
           _%src130361%_
           _%ctx130363%_
           _%marks130365%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx130367%_ _%src130368%_ _%ctx130369%_)
        (let ((_%marks130371%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130367%_
           _%src130368%_
           _%ctx130369%_
           _%marks130371%_))))
    (define gx#core-quote-syntax
      (lambda _g133346_
        (let ((_g133347_ (##length _g133346_)))
          (cond ((##fx= _g133347_ 1) (apply gx#core-quote-syntax__0 _g133346_))
                ((##fx= _g133347_ 2) (apply gx#core-quote-syntax__1 _g133346_))
                ((##fx= _g133347_ 3) (apply gx#core-quote-syntax__2 _g133346_))
                ((##fx= _g133347_ 4) (apply gx#core-quote-syntax__% _g133346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g133346_))))))
    (define gx#core-cons
      (lambda (_%hd130327%_ _%tl130328%_)
        (cons (gx#core-quote-syntax__0 _%hd130327%_) _%tl130328%_)))
    (define gx#core-list
      (lambda (_%hd130324%_ . _%rest130325%_)
        (cons (gx#core-quote-syntax__0 _%hd130324%_) _%rest130325%_)))
    (define gx#core-cons*
      (lambda (_%hd130321%_ . _%rest130322%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd130321%_) _%rest130322%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path130290%_ _%rel130291%_)
        (let ((_%path130308%_ (gx#stx-e _%stx-path130290%_))
              (_%reldir130309%_
               (let _%lp130293%_ ((_%relsrc130295%_
                                   (let ((_%$e130305%_
                                          (gx#stx-source _%stx-path130290%_)))
                                     (if _%$e130305%_
                                         _%$e130305%_
                                         _%rel130291%_))))
                 (if (##structure-instance-of? _%relsrc130295%_ 'gerbil#AST::t)
                     (_%lp130293%_
                      (let ((_%$e130298%_ (gx#stx-source _%relsrc130295%_)))
                        (if _%$e130298%_
                            _%$e130298%_
                            (gx#stx-e _%relsrc130295%_))))
                     (if (source-location-path? _%relsrc130295%_)
                         (path-directory
                          (source-location-path _%relsrc130295%_))
                         (if (string? _%relsrc130295%_)
                             (path-directory _%relsrc130295%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path130308%_ (path-normalize _%reldir130309%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path130314%_)
        (let ((_%rel130316%_ '#f))
          (gx#core-resolve-path__% _%stx-path130314%_ _%rel130316%_))))
    (define gx#core-resolve-path
      (lambda _g133348_
        (let ((_g133349_ (##length _g133348_)))
          (cond ((##fx= _g133349_ 1) (apply gx#core-resolve-path__0 _g133348_))
                ((##fx= _g133349_ 2) (apply gx#core-resolve-path__% _g133348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g133348_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr130246%_ _%ctx130247%_)
        (let* ((_%repr130248130255%_ _%repr130246%_)
               (_%E130250130259%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr130248130255%_
                         '([phi . subs]))
                  '#!void))
               (_%K130251130267%_
                (lambda (_%subs130262%_ _%phi130263%_)
                  (let ((_%subst130265%_
                         (if (null? _%subs130262%_)
                             '#f
                             (list->hash-table-eq _%subs130262%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst130265%_
                     _%ctx130247%_
                     _%phi130263%_
                     '#f)))))
          (if (pair? _%repr130248130255%_)
              (let ((_%hd130252130270%_ (##car _%repr130248130255%_))
                    (_%tl130253130272%_ (##cdr _%repr130248130255%_)))
                (let* ((_%phi130275%_ _%hd130252130270%_)
                       (_%subs130277%_ _%tl130253130272%_))
                  (_%K130251130267%_ _%subs130277%_ _%phi130275%_)))
              (_%E130250130259%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr130282%_)
        (let ((_%ctx130284%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr130282%_ _%ctx130284%_))))
    (define gx#core-deserialize-mark
      (lambda _g133350_
        (let ((_g133351_ (##length _g133350_)))
          (cond ((##fx= _g133351_ 1)
                 (apply gx#core-deserialize-mark__0 _g133350_))
                ((##fx= _g133351_ 2)
                 (apply gx#core-deserialize-mark__% _g133350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g133350_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx130243%_)
        (gx#stx-rewrap _%stx130243%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx130241%_)
        (gx#stx-unwrap__% _%stx130241%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx130211%_)
        (let* ((_%g130212130220%_ (gx#current-expander-marks))
               (_%else130214130228%_ (lambda () _%stx130211%_))
               (_%K130216130233%_
                (lambda (_%hd130231%_)
                  (gx#stx-apply-mark _%stx130211%_ _%hd130231%_))))
          (if (pair? _%g130212130220%_)
              (let* ((_%hd130217130236%_ (##car _%g130212130220%_))
                     (_%hd130239%_ _%hd130217130236%_))
                (_%K130216130233%_ _%hd130239%_))
              (_%else130214130228%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx130196%_ _%E130197%_)
        (let ((_%bind130199%_ (gx#resolve-identifier__0 _%stx130196%_)))
          (if (##structure-direct-instance-of?
               _%bind130199%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind130199%_ '4 '#f '#f)
              (_%E130197%_ _%stx130196%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx130204%_)
        (let ((_%E130206%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx130204%_ _%E130206%_))))
    (define gx#syntax-local-e
      (lambda _g133352_
        (let ((_g133353_ (##length _g133352_)))
          (cond ((##fx= _g133353_ 1) (apply gx#syntax-local-e__0 _g133352_))
                ((##fx= _g133353_ 2) (apply gx#syntax-local-e__% _g133352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g133352_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx130180%_ _%E130181%_)
        (let ((_%e130183%_ (gx#syntax-local-e__% _%stx130180%_ _%E130181%_)))
          (if (##structure-instance-of? _%e130183%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e130183%_ '1 '#f '#f)
              _%e130183%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx130188%_)
        (let ((_%E130190%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx130188%_ _%E130190%_))))
    (define gx#syntax-local-value
      (lambda _g133354_
        (let ((_g133355_ (##length _g133354_)))
          (cond ((##fx= _g133355_ 1)
                 (apply gx#syntax-local-value__0 _g133354_))
                ((##fx= _g133355_ 2)
                 (apply gx#syntax-local-value__% _g133354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g133354_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx130177%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx130177%_)))))
