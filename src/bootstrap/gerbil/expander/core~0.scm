(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1770342548)
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
      (lambda _%$args167243%_
        (apply make-instance gx#expander-context::t _%$args167243%_)))
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
      (lambda _%$args167240%_
        (apply make-instance gx#root-context::t _%$args167240%_)))
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
      (lambda _%$args167237%_
        (apply make-instance gx#phi-context::t _%$args167237%_)))
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
      (lambda _%$args167234%_
        (apply make-instance gx#top-context::t _%$args167234%_)))
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
      (lambda _%$args167231%_
        (apply make-instance gx#module-context::t _%$args167231%_)))
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
      (lambda _%$args167228%_
        (apply make-instance gx#prelude-context::t _%$args167228%_)))
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
      (lambda _%$args167225%_
        (apply make-instance gx#local-context::t _%$args167225%_)))
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
      (lambda (_%self167198%_ _%id167199%_ _%super167200%_)
        (let ((_%self167203%_ _%self167198%_))
          (if (##fx< '3 (##structure-length _%self167203%_))
              (begin
                (##unchecked-structure-set!
                 _%self167203%_
                 _%id167199%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self167203%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self167203%_
                 _%super167200%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self167203%_
                     '3
                     (##structure-length _%self167203%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self167216%_ _%id167217%_)
        (let ((_%super167219%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self167216%_
           _%id167217%_
           _%super167219%_))))
    (define gx#phi-context:::init!
      (lambda _g167285_
        (let ((_g167286_ (##length _g167285_)))
          (cond ((##fx= _g167286_ 2)
                 (apply gx#phi-context:::init!__0 _g167285_))
                ((##fx= _g167286_ 3)
                 (apply gx#phi-context:::init!__% _g167285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g167285_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self167051%_ _%super167052%_)
        (let ((_%self167055%_ _%self167051%_))
          (if (##fx< '3 (##structure-length _%self167055%_))
              (begin
                (##unchecked-structure-set!
                 _%self167055%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self167055%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self167055%_
                 _%super167052%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self167055%_
                     '3
                     (##structure-length _%self167055%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self167068%_)
        (let ((_%super167070%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self167068%_ _%super167070%_))))
    (define gx#local-context:::init!
      (lambda _g167287_
        (let ((_g167288_ (##length _g167287_)))
          (cond ((##fx= _g167288_ 1)
                 (apply gx#local-context:::init!__0 _g167287_))
                ((##fx= _g167288_ 2)
                 (apply gx#local-context:::init!__% _g167287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g167287_))))))
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
      (lambda _%$args166925%_
        (apply make-instance gx#binding::t _%$args166925%_)))
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
      (lambda (_%self166908%_ _%id166909%_ _%key166910%_ _%phi166911%_)
        (let ((_%self166914%_ _%self166908%_))
          (##unchecked-structure-set! _%self166914%_ _%id166909%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self166914%_ _%key166910%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self166914%_
           _%phi166911%_
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
      (lambda _%$args166783%_
        (apply make-instance gx#runtime-binding::t _%$args166783%_)))
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
      (lambda _%$args166780%_
        (apply make-instance gx#local-binding::t _%$args166780%_)))
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
      (lambda _%$args166777%_
        (apply make-instance gx#top-binding::t _%$args166777%_)))
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
      (lambda _%$args166774%_
        (apply make-instance gx#module-binding::t _%$args166774%_)))
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
      (lambda _%$args166771%_
        (apply make-instance gx#extern-binding::t _%$args166771%_)))
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
      (lambda (_%self166387%_
               _%id166388%_
               _%key166389%_
               _%phi166390%_
               _%ctx166391%_)
        (let ((_%self166394%_ _%self166387%_))
          (gx#binding:::init!
           _%self166394%_
           _%id166388%_
           _%key166389%_
           _%phi166390%_)
          (##unchecked-structure-set!
           _%self166394%_
           _%ctx166391%_
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
      (lambda _%$args166140%_
        (apply make-instance gx#syntax-binding::t _%$args166140%_)))
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
      (lambda _%$args166137%_
        (apply make-instance gx#import-binding::t _%$args166137%_)))
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
      (lambda _%$args166134%_
        (apply make-instance gx#alias-binding::t _%$args166134%_)))
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
      (lambda (_%self166116%_
               _%id166117%_
               _%key166118%_
               _%phi166119%_
               _%e166120%_)
        (let ((_%self166123%_ _%self166116%_))
          (gx#binding:::init!
           _%self166123%_
           _%id166117%_
           _%key166118%_
           _%phi166119%_)
          (##unchecked-structure-set! _%self166123%_ _%e166120%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self165974%_
               _%id165975%_
               _%key165976%_
               _%phi165977%_
               _%e165978%_
               _%ctx165979%_
               _%weak?165980%_)
        (let ((_%self165983%_ _%self165974%_))
          (gx#binding:::init!
           _%self165983%_
           _%id165975%_
           _%key165976%_
           _%phi165977%_)
          (##unchecked-structure-set! _%self165983%_ _%e165978%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self165983%_ _%ctx165979%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self165983%_
           _%weak?165980%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self165834%_
               _%id165835%_
               _%key165836%_
               _%phi165837%_
               _%e165838%_)
        (let ((_%self165841%_ _%self165834%_))
          (gx#binding:::init!
           _%self165841%_
           _%id165835%_
           _%key165836%_
           _%phi165837%_)
          (##unchecked-structure-set! _%self165841%_ _%e165838%_ '5 '#f '#f))))
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
      (lambda _%$args165709%_
        (apply make-instance gx#expander::t _%$args165709%_)))
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
      (lambda _%$args165706%_
        (apply make-instance gx#core-expander::t _%$args165706%_)))
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
      (lambda _%$args165703%_
        (apply make-instance gx#expression-form::t _%$args165703%_)))
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
      (lambda _%$args165700%_
        (apply make-instance gx#special-form::t _%$args165700%_)))
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
      (lambda _%$args165697%_
        (apply make-instance gx#definition-form::t _%$args165697%_)))
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
      (lambda _%$args165694%_
        (apply make-instance gx#top-special-form::t _%$args165694%_)))
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
      (lambda _%$args165691%_
        (apply make-instance gx#module-special-form::t _%$args165691%_)))
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
      (lambda _%$args165688%_
        (apply make-instance gx#feature-expander::t _%$args165688%_)))
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
      (lambda _%$args165685%_
        (apply make-instance gx#private-feature-expander::t _%$args165685%_)))
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
      (lambda _%$args165682%_
        (apply make-instance gx#reserved-expander::t _%$args165682%_)))
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
      (lambda _%$args165679%_
        (apply make-instance gx#macro-expander::t _%$args165679%_)))
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
      (lambda _%$args165676%_
        (apply make-instance gx#rename-macro-expander::t _%$args165676%_)))
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
      (lambda _%$args165673%_
        (apply make-instance gx#user-expander::t _%$args165673%_)))
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
      (lambda _%$args165670%_
        (apply make-instance gx#expander-mark::t _%$args165670%_)))
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
      (lambda (_%ctx165654%_
               _%message165655%_
               _%stx165656%_
               .
               _%details165657%_)
        (let ((_%ctx165668%_
               (let ((_%$e165659%_ _%ctx165654%_))
                 (if _%$e165659%_
                     _%$e165659%_
                     (let ((_%$e165662%_ (gx#core-context-top__0)))
                       (if _%$e165662%_
                           ((lambda (_%ctx165665%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx165665%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e165662%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message165655%_
                  (cons _%stx165656%_ _%details165657%_)
                  _%ctx165668%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx165641%_ _%expression?165642%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx165641%_ _%expression?165642%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx165647%_)
        (let ((_%expression?165649%_ '#f))
          (gx#eval-syntax__% _%stx165647%_ _%expression?165649%_))))
    (define gx#eval-syntax
      (lambda _g167289_
        (let ((_g167290_ (##length _g167289_)))
          (cond ((##fx= _g167290_ 1) (apply gx#eval-syntax__0 _g167289_))
                ((##fx= _g167290_ 2) (apply gx#eval-syntax__% _g167289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g167289_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx165626%_ _%expression?165627%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx165626%_ _%expression?165627%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx165633%_)
        (let ((_%expression?165635%_ '#f))
          (gx#eval-syntax+1__% _%stx165633%_ _%expression?165635%_))))
    (define gx#eval-syntax+1
      (lambda _g167291_
        (let ((_g167292_ (##length _g167291_)))
          (cond ((##fx= _g167292_ 1) (apply gx#eval-syntax+1__0 _g167291_))
                ((##fx= _g167292_ 2) (apply gx#eval-syntax+1__% _g167291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g167291_))))))
    (define gx#eval-expression+1
      (lambda (_%stx165623%_) (gx#eval-syntax+1__% _%stx165623%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx165621%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx165621%_))))
    (define gx#core-expand__%
      (lambda (_%stx165608%_ _%expression?165609%_)
        (if _%expression?165609%_
            (gx#core-expand-expression _%stx165608%_)
            (gx#core-expand-top _%stx165608%_))))
    (define gx#core-expand__0
      (lambda (_%stx165614%_)
        (let ((_%expression?165616%_ '#f))
          (gx#core-expand__% _%stx165614%_ _%expression?165616%_))))
    (define gx#core-expand
      (lambda _g167293_
        (let ((_g167294_ (##length _g167293_)))
          (cond ((##fx= _g167294_ 1) (apply gx#core-expand__0 _g167293_))
                ((##fx= _g167294_ 2) (apply gx#core-expand__% _g167293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g167293_))))))
    (define gx#core-expand-top
      (lambda (_%stx165575%_)
        (let* ((_%stx165577%_ (gx#core-expand*__0 _%stx165575%_))
               (_%e165578165585%_ _%stx165577%_)
               (_%E165580165589%_
                (lambda () (gx#core-expand-expression _%stx165577%_)))
               (_%E165579165603%_
                (lambda ()
                  (if (gx#stx-pair? _%e165578165585%_)
                      (let ((_%e165581165593%_
                             (gx#syntax-e _%e165578165585%_)))
                        (let ((_%hd165582165596%_ (##car _%e165581165593%_))
                              (_%tl165583165598%_ (##cdr _%e165581165593%_)))
                          (let ((_%form165601%_ _%hd165582165596%_))
                            (if (gx#core-bound-identifier?__0 _%form165601%_)
                                _%stx165577%_
                                (_%E165580165589%_)))))
                      (_%E165580165589%_)))))
          (_%E165579165603%_))))
    (define gx#core-expand-expression
      (lambda (_%stx165507%_)
        (letrec ((_%sealed-expression?165509%_
                  (lambda (_%hd165545%_)
                    (if (gx#sealed-syntax? _%hd165545%_)
                        (let* ((_%e165546165553%_ _%hd165545%_)
                               (_%E165548165557%_ (lambda () '#f))
                               (_%E165547165571%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e165546165553%_)
                                      (let ((_%e165549165561%_
                                             (gx#syntax-e _%e165546165553%_)))
                                        (let ((_%hd165550165564%_
                                               (##car _%e165549165561%_))
                                              (_%tl165551165566%_
                                               (##cdr _%e165549165561%_)))
                                          (let ((_%form165569%_
                                                 _%hd165550165564%_))
                                            (gx#core-bound-identifier?__%
                                             _%form165569%_
                                             gx#expression-form-binding?))))
                                      (_%E165548165557%_)))))
                          (_%E165547165571%_))
                        '#f)))
                 (_%illegal-expression165510%_
                  (lambda (_%hd165542%_ . _%_165543%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx165507%_
                     _%hd165542%_)))
                 (_%expand-e165511%_
                  (lambda (_%form165534%_ _%hd165535%_)
                    (let ((_%bind165537%_
                           (if (##structure-instance-of?
                                _%form165534%_
                                'gx#binding::t)
                               _%form165534%_
                               (gx#resolve-identifier__0 _%form165534%_))))
                      (if (gx#core-expander-binding? _%bind165537%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind165537%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd165535%_
                            (gx#stx-source _%stx165507%_)))
                          (if (##structure-direct-instance-of?
                               _%bind165537%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind165537%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd165535%_
                                 (gx#stx-source _%stx165507%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx165507%_
                               _%form165534%_)))))))
          (let ((_%hd165513%_ (gx#core-expand-head _%stx165507%_)))
            (if (_%sealed-expression?165509%_ _%hd165513%_)
                _%hd165513%_
                (if (gx#stx-pair? _%hd165513%_)
                    (let* ((_%form165517%_ (gx#stx-car _%hd165513%_))
                           (_%bind165519%_
                            (if (gx#identifier? _%form165517%_)
                                (gx#resolve-identifier__0 _%form165517%_)
                                '#f)))
                      (if (or (not _%bind165519%_)
                              (not (gx#core-expander-binding? _%bind165519%_)))
                          (_%expand-e165511%_
                           '%%app
                           (cons '%%app _%hd165513%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind165519%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd165513%_
                               _%illegal-expression165510%_)
                              (if (gx#expression-form-binding? _%bind165519%_)
                                  (_%expand-e165511%_
                                   _%bind165519%_
                                   _%hd165513%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind165519%_)
                                      (gx#core-expand-expression
                                       (_%expand-e165511%_
                                        _%bind165519%_
                                        _%hd165513%_))
                                      (_%illegal-expression165510%_
                                       _%hd165513%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd165513%_)
                        (_%illegal-expression165510%_ _%hd165513%_)
                        (if (gx#identifier? _%hd165513%_)
                            (_%expand-e165511%_
                             '%%ref
                             (cons '%%ref (cons _%hd165513%_ '())))
                            (if (gx#stx-datum? _%hd165513%_)
                                (_%expand-e165511%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd165513%_ '())))
                                (_%illegal-expression165510%_
                                 _%hd165513%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx165502%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx165505%_ (gx#core-expand-expression _%stx165502%_)))
             (values _%stx165505%_ (gx#eval-syntax* _%stx165505%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx165483%_ _%stop?165484%_)
        (let _%lp165486%_ ((_%stx165488%_ _%stx165483%_))
          (if (_%stop?165484%_ _%stx165488%_)
              _%stx165488%_
              (let ((_%rstx165490%_ (gx#core-expand1 _%stx165488%_)))
                (if (eq? _%stx165488%_ _%rstx165490%_)
                    _%stx165488%_
                    (_%lp165486%_ _%rstx165490%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx165495%_)
        (let ((_%stop?165497%_ false))
          (gx#core-expand*__% _%stx165495%_ _%stop?165497%_))))
    (define gx#core-expand*
      (lambda _g167295_
        (let ((_g167296_ (##length _g167295_)))
          (cond ((##fx= _g167296_ 1) (apply gx#core-expand*__0 _g167295_))
                ((##fx= _g167296_ 2) (apply gx#core-expand*__% _g167295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g167295_))))))
    (define gx#core-expand1
      (lambda (_%stx165435%_)
        (letrec ((_%step165437%_
                  (lambda (_%hd165474%_)
                    (let ((_%bind165476%_
                           (gx#resolve-identifier__0 _%hd165474%_)))
                      (if (##structure-instance-of?
                           _%bind165476%_
                           'gx#runtime-binding::t)
                          _%stx165435%_
                          (if (##structure-direct-instance-of?
                               _%bind165476%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind165476%_
                                '5
                                '#f
                                '#f)
                               _%stx165435%_)
                              (if (not _%bind165476%_)
                                  _%stx165435%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx165435%_))))))))
          (let* ((_%e165438165446%_ _%stx165435%_)
                 (_%E165444165450%_ (lambda () _%stx165435%_))
                 (_%E165440165456%_
                  (lambda ()
                    (let ((_%hd165454%_ _%e165438165446%_))
                      (if (gx#identifier? _%hd165454%_)
                          (_%step165437%_ _%hd165454%_)
                          (_%E165444165450%_)))))
                 (_%E165439165470%_
                  (lambda ()
                    (if (gx#stx-pair? _%e165438165446%_)
                        (let ((_%e165441165460%_
                               (gx#syntax-e _%e165438165446%_)))
                          (let ((_%hd165442165463%_ (##car _%e165441165460%_))
                                (_%tl165443165465%_ (##cdr _%e165441165460%_)))
                            (let ((_%hd165468%_ _%hd165442165463%_))
                              (if (gx#identifier? _%hd165468%_)
                                  (_%step165437%_ _%hd165468%_)
                                  (_%E165440165456%_)))))
                        (_%E165440165456%_)))))
            (_%E165439165470%_)))))
    (define gx#core-expand-head
      (lambda (_%stx165401%_)
        (letrec ((_%stop?165403%_
                  (lambda (_%stx165405%_)
                    (let* ((_%e165406165413%_ _%stx165405%_)
                           (_%E165408165417%_ (lambda () '#f))
                           (_%E165407165431%_
                            (lambda ()
                              (if (gx#stx-pair? _%e165406165413%_)
                                  (let ((_%e165409165421%_
                                         (gx#syntax-e _%e165406165413%_)))
                                    (let ((_%hd165410165424%_
                                           (##car _%e165409165421%_))
                                          (_%tl165411165426%_
                                           (##cdr _%e165409165421%_)))
                                      (let ((_%hd165429%_ _%hd165410165424%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd165429%_))))
                                  (_%E165408165417%_)))))
                      (_%E165407165431%_)))))
          (gx#core-expand*__% _%stx165401%_ _%stop?165403%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx165207%_
               _%expand-special165208%_
               _%begin-form165209%_
               _%expand-e165210%_)
        (letrec ((_%expand-splice165212%_
                  (lambda (_%hd165375%_
                           _%body165376%_
                           _%rest165377%_
                           _%r165378%_)
                    (if (gx#stx-list? _%body165376%_)
                        (_%K165216%_
                         (gx#stx-foldr cons _%rest165377%_ _%body165376%_)
                         _%r165378%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx165207%_
                         _%hd165375%_))))
                 (_%expand-cond-expand165213%_
                  (lambda (_%hd165371%_ _%rest165372%_ _%r165373%_)
                    (_%K165216%_
                     (cons (gx#core-expand-cond-expand% _%hd165371%_)
                           _%rest165372%_)
                     _%r165373%_)))
                 (_%expand-include165214%_
                  (lambda (_%hd165320%_ _%rest165321%_ _%r165322%_)
                    (let* ((_%e165323165333%_ _%hd165320%_)
                           (_%E165325165337%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e165323165333%_)))
                           (_%E165324165367%_
                            (lambda ()
                              (if (gx#stx-pair? _%e165323165333%_)
                                  (let ((_%e165326165341%_
                                         (gx#syntax-e _%e165323165333%_)))
                                    (let ((_%hd165327165344%_
                                           (##car _%e165326165341%_))
                                          (_%tl165328165346%_
                                           (##cdr _%e165326165341%_)))
                                      (if (gx#stx-pair? _%tl165328165346%_)
                                          (let ((_%e165329165349%_
                                                 (gx#syntax-e
                                                  _%tl165328165346%_)))
                                            (let ((_%hd165330165352%_
                                                   (##car _%e165329165349%_))
                                                  (_%tl165331165354%_
                                                   (##cdr _%e165329165349%_)))
                                              (let ((_%path165357%_
                                                     _%hd165330165352%_))
                                                (if (gx#stx-null?
                                                     _%tl165331165354%_)
                                                    (if (gx#stx-string?
                                                         _%path165357%_)
                                                        (let* ((_%rpath165359%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path165357%_
                         (gx#stx-source _%hd165320%_)))
                       (_%block165361%_
                        (gx#core-expand-include%__%
                         _%hd165320%_
                         _%rpath165359%_))
                       (_%rbody165364%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block165361%_
                            _%expand-special165208%_
                            '#f
                            _%expand-e165210%_))
                         gx#current-expander-path
                         (cons _%rpath165359%_ (gx#current-expander-path)))))
                  (_%K165216%_
                   _%rest165321%_
                   (__foldr1 cons _%r165322%_ _%rbody165364%_)))
                (_%E165325165337%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E165325165337%_)))))
                                          (_%E165325165337%_))))
                                  (_%E165325165337%_)))))
                      (_%E165324165367%_))))
                 (_%expand-expression165215%_
                  (lambda (_%hd165316%_ _%rest165317%_ _%r165318%_)
                    (_%K165216%_
                     _%rest165317%_
                     (cons (_%expand-e165210%_ _%hd165316%_) _%r165318%_))))
                 (_%K165216%_
                  (lambda (_%rest165246%_ _%r165247%_)
                    (let* ((_%e165248165255%_ _%rest165246%_)
                           (_%E165250165259%_
                            (lambda ()
                              (if _%begin-form165209%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form165209%_
                                    (reverse _%r165247%_))
                                   (gx#stx-source _%stx165207%_))
                                  _%r165247%_)))
                           (_%E165249165312%_
                            (lambda ()
                              (if (gx#stx-pair? _%e165248165255%_)
                                  (let ((_%e165251165263%_
                                         (gx#syntax-e _%e165248165255%_)))
                                    (let ((_%hd165252165266%_
                                           (##car _%e165251165263%_))
                                          (_%tl165253165268%_
                                           (##cdr _%e165251165263%_)))
                                      (let* ((_%hd165271%_ _%hd165252165266%_)
                                             (_%rest165273%_
                                              _%tl165253165268%_)
                                             (_%hd165275%_
                                              (gx#core-expand-head
                                               _%hd165271%_))
                                             (_%e165276165283%_ _%hd165275%_)
                                             (_%E165278165287%_
                                              (lambda ()
                                                (_%expand-expression165215%_
                                                 _%hd165275%_
                                                 _%rest165273%_
                                                 _%r165247%_)))
                                             (_%E165277165308%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e165276165283%_)
                                                    (let ((_%e165279165291%_
                                                           (gx#syntax-e
                                                            _%e165276165283%_)))
                                                      (let ((_%hd165280165294%_
                                                             (##car _%e165279165291%_))
                                                            (_%tl165281165296%_
                                                             (##cdr _%e165279165291%_)))
                                                        (let* ((_%form165299%_
                                                                _%hd165280165294%_)
                                                               (_%body165301%_
                                                                _%tl165281165296%_)
                                                               (_%bind165303%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form165299%_)
                            (gx#resolve-identifier__0 _%form165299%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind165303%_)
                      (let ((_%$e165305%_
                             (##unchecked-structure-ref
                              _%bind165303%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e165305%_)
                            (_%expand-splice165212%_
                             _%hd165275%_
                             _%body165301%_
                             _%rest165273%_
                             _%r165247%_)
                            (if (eq? '%#cond-expand _%$e165305%_)
                                (_%expand-cond-expand165213%_
                                 _%hd165275%_
                                 _%rest165273%_
                                 _%r165247%_)
                                (if (eq? '%#include _%$e165305%_)
                                    (_%expand-include165214%_
                                     _%hd165275%_
                                     _%rest165273%_
                                     _%r165247%_)
                                    (_%expand-special165208%_
                                     _%hd165275%_
                                     _%K165216%_
                                     _%rest165273%_
                                     _%r165247%_)))))
                      (_%expand-expression165215%_
                       _%hd165275%_
                       _%rest165273%_
                       _%r165247%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E165278165287%_)))))
                                        (_%E165277165308%_))))
                                  (_%E165250165259%_)))))
                      (_%E165249165312%_)))))
          (let* ((_%e165217165224%_ _%stx165207%_)
                 (_%E165219165228%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e165217165224%_)))
                 (_%E165218165242%_
                  (lambda ()
                    (if (gx#stx-pair? _%e165217165224%_)
                        (let ((_%e165220165232%_
                               (gx#syntax-e _%e165217165224%_)))
                          (let ((_%hd165221165235%_ (##car _%e165220165232%_))
                                (_%tl165222165237%_ (##cdr _%e165220165232%_)))
                            (let ((_%body165240%_ _%tl165222165237%_))
                              (if (gx#stx-list? _%body165240%_)
                                  (_%K165216%_ _%body165240%_ '())
                                  (_%E165219165228%_)))))
                        (_%E165219165228%_)))))
            (_%E165218165242%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx165383%_ _%expand-special165384%_)
        (let* ((_%begin-form165386%_ '%#begin)
               (_%expand-e165388%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx165383%_
           _%expand-special165384%_
           _%begin-form165386%_
           _%expand-e165388%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx165390%_ _%expand-special165391%_ _%begin-form165392%_)
        (let ((_%expand-e165394%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx165390%_
           _%expand-special165391%_
           _%begin-form165392%_
           _%expand-e165394%_))))
    (define gx#core-expand-block
      (lambda _g167297_
        (let ((_g167298_ (##length _g167297_)))
          (cond ((##fx= _g167298_ 2) (apply gx#core-expand-block__0 _g167297_))
                ((##fx= _g167298_ 3) (apply gx#core-expand-block__1 _g167297_))
                ((##fx= _g167298_ 4) (apply gx#core-expand-block__% _g167297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g167297_))))))
    (define gx#core-expand-block*
      (lambda (_%stx165155%_ _%expand-special165156%_)
        (let* ((_%g165157165168%_
                (gx#core-expand-block__1
                 _%stx165155%_
                 _%expand-special165156%_
                 '#f))
               (_%E165161165172%_
                (lambda ()
                  (error '"No clause matching"
                         _%g165157165168%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K165166165203%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx165155%_)))
                (_%K165163165189%_ (lambda (_%expr165187%_) _%expr165187%_))
                (_%K165162165178%_
                 (lambda (_%body165176%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body165176%_))
                    (gx#stx-source _%stx165155%_)))))
            (let ((_%try-match165159165199%_
                   (lambda ()
                     (if (pair? _%g165157165168%_)
                         (let ((_%tl165165165194%_ (##cdr _%g165157165168%_))
                               (_%hd165164165192%_ (##car _%g165157165168%_)))
                           (if (null? _%tl165165165194%_)
                               (let ((_%expr165197%_ _%hd165164165192%_))
                                 (_%K165163165189%_ _%expr165197%_))
                               (let ((_%body165181%_ _%g165157165168%_))
                                 (_%K165162165178%_ _%body165181%_))))
                         (let ((_%body165181%_ _%g165157165168%_))
                           (_%K165162165178%_ _%body165181%_))))))
              (if (null? _%g165157165168%_)
                  (_%K165166165203%_)
                  (_%try-match165159165199%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx164981%_)
        (letrec ((_%satisfied?164983%_
                  (lambda (_%condition165084%_)
                    (let* ((_%e165085165100%_ _%condition165084%_)
                           (_%E165095165104%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e165085165100%_)))
                           (_%E165088165123%_
                            (lambda ()
                              (if (gx#stx-pair? _%e165085165100%_)
                                  (let ((_%e165096165108%_
                                         (gx#syntax-e _%e165085165100%_)))
                                    (let ((_%hd165097165111%_
                                           (##car _%e165096165108%_))
                                          (_%tl165098165113%_
                                           (##cdr _%e165096165108%_)))
                                      (let* ((_%combinator165116%_
                                              _%hd165097165111%_)
                                             (_%body165118%_
                                              _%tl165098165113%_))
                                        (if (gx#stx-list? _%body165118%_)
                                            (let ((_%$e165120%_
                                                   (gx#stx-e
                                                    _%combinator165116%_)))
                                              (if (eq? 'not _%$e165120%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?164983%_
                                                        _%body165118%_))
                                                  (if (eq? 'and _%$e165120%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?164983%_
                                                       _%body165118%_)
                                                      (if (eq? 'or
                                                               _%$e165120%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?164983%_
                                                           _%body165118%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e165120%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body165118%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx164981%_
                       _%combinator165116%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E165095165104%_)))))
                                  (_%E165095165104%_))))
                           (_%E165087165145%_
                            (lambda ()
                              (if (gx#stx-pair? _%e165085165100%_)
                                  (let ((_%e165089165127%_
                                         (gx#syntax-e _%e165085165100%_)))
                                    (let ((_%hd165090165130%_
                                           (##car _%e165089165127%_))
                                          (_%tl165091165132%_
                                           (##cdr _%e165089165127%_)))
                                      (if (and (gx#identifier?
                                                _%hd165090165130%_)
                                               (gx#core-identifier=?
                                                _%hd165090165130%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl165091165132%_)
                                              (let ((_%e165092165135%_
                                                     (gx#syntax-e
                                                      _%tl165091165132%_)))
                                                (let ((_%hd165093165138%_
                                                       (##car _%e165092165135%_))
                                                      (_%tl165094165140%_
                                                       (##cdr _%e165092165135%_)))
                                                  (let ((_%expr165143%_
                                                         _%hd165093165138%_))
                                                    (if (gx#stx-null?
                                                         _%tl165094165140%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr165143%_)
                                                        (_%E165088165123%_)))))
                                              (_%E165088165123%_))
                                          (_%E165088165123%_))))
                                  (_%E165088165123%_))))
                           (_%E165086165151%_
                            (lambda ()
                              (let ((_%id165149%_ _%e165085165100%_))
                                (if (gx#identifier? _%id165149%_)
                                    (gx#core-bound-identifier?__%
                                     _%id165149%_
                                     gx#feature-binding?)
                                    (_%E165087165145%_))))))
                      (_%E165086165151%_))))
                 (_%loop164984%_
                  (lambda (_%rest165014%_)
                    (let* ((_%e165015165023%_ _%rest165014%_)
                           (_%E165021165027%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e165015165023%_)))
                           (_%E165017165031%_
                            (lambda ()
                              (if (gx#stx-null? _%e165015165023%_)
                                  '()
                                  (_%E165021165027%_))))
                           (_%E165016165080%_
                            (lambda ()
                              (if (gx#stx-pair? _%e165015165023%_)
                                  (let ((_%e165018165035%_
                                         (gx#syntax-e _%e165015165023%_)))
                                    (let ((_%hd165019165038%_
                                           (##car _%e165018165035%_))
                                          (_%tl165020165040%_
                                           (##cdr _%e165018165035%_)))
                                      (let* ((_%hd165043%_ _%hd165019165038%_)
                                             (_%rest165045%_
                                              _%tl165020165040%_)
                                             (_%e165046165053%_ _%hd165043%_)
                                             (_%E165048165057%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e165046165053%_)))
                                             (_%E165047165076%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e165046165053%_)
                                                    (let ((_%e165049165061%_
                                                           (gx#syntax-e
                                                            _%e165046165053%_)))
                                                      (let ((_%hd165050165064%_
                                                             (##car _%e165049165061%_))
                                                            (_%tl165051165066%_
                                                             (##cdr _%e165049165061%_)))
                                                        (let* ((_%condition165069%_
                                                                _%hd165050165064%_)
                                                               (_%body165071%_
                                                                _%tl165051165066%_))
                                                          (if (gx#stx-eq?
                                                               _%condition165069%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest165045%_)
                          _%body165071%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx164981%_
                           _%hd165043%_))
                      (if (_%satisfied?164983%_ _%condition165069%_)
                          _%body165071%_
                          (_%loop164984%_ _%rest165045%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E165048165057%_)))))
                                        (_%E165047165076%_))))
                                  (_%E165017165031%_)))))
                      (_%E165016165080%_)))))
          (let* ((_%e164985164992%_ _%stx164981%_)
                 (_%E164987164996%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e164985164992%_)))
                 (_%E164986165010%_
                  (lambda ()
                    (if (gx#stx-pair? _%e164985164992%_)
                        (let ((_%e164988165000%_
                               (gx#syntax-e _%e164985164992%_)))
                          (let ((_%hd164989165003%_ (##car _%e164988165000%_))
                                (_%tl164990165005%_ (##cdr _%e164988165000%_)))
                            (let ((_%clauses165008%_ _%tl164990165005%_))
                              (if (gx#stx-list? _%clauses165008%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop164984%_ _%clauses165008%_))
                                  (_%E164987164996%_)))))
                        (_%E164987164996%_)))))
            (_%E164986165010%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx164924%_ _%rpath164925%_)
        (let* ((_%e164926164936%_ _%stx164924%_)
               (_%E164928164940%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e164926164936%_)))
               (_%E164927164967%_
                (lambda ()
                  (if (gx#stx-pair? _%e164926164936%_)
                      (let ((_%e164929164944%_
                             (gx#syntax-e _%e164926164936%_)))
                        (let ((_%hd164930164947%_ (##car _%e164929164944%_))
                              (_%tl164931164949%_ (##cdr _%e164929164944%_)))
                          (if (gx#stx-pair? _%tl164931164949%_)
                              (let ((_%e164932164952%_
                                     (gx#syntax-e _%tl164931164949%_)))
                                (let ((_%hd164933164955%_
                                       (##car _%e164932164952%_))
                                      (_%tl164934164957%_
                                       (##cdr _%e164932164952%_)))
                                  (let ((_%path164960%_ _%hd164933164955%_))
                                    (if (gx#stx-null? _%tl164934164957%_)
                                        (if (gx#stx-string? _%path164960%_)
                                            (let ((_%rpath164965%_
                                                   (let ((_%$e164962%_
                                                          _%rpath164925%_))
                                                     (if _%$e164962%_
                                                         _%$e164962%_
                                                         (gx#core-resolve-path__%
                                                          _%path164960%_
                                                          (gx#stx-source
                                                           _%stx164924%_))))))
                                              (if (member _%rpath164965%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx164924%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath164965%_))
                                                    (gx#stx-source
                                                     _%stx164924%_)))))
                                            (_%E164928164940%_))
                                        (_%E164928164940%_)))))
                              (_%E164928164940%_))))
                      (_%E164928164940%_)))))
          (_%E164927164967%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx164974%_)
        (let ((_%rpath164976%_ '#f))
          (gx#core-expand-include%__% _%stx164974%_ _%rpath164976%_))))
    (define gx#core-expand-include%
      (lambda _g167299_
        (let ((_g167300_ (##length _g167299_)))
          (cond ((##fx= _g167300_ 1)
                 (apply gx#core-expand-include%__0 _g167299_))
                ((##fx= _g167300_ 2)
                 (apply gx#core-expand-include%__% _g167299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g167299_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K164890%_ _%stx164891%_ _%method164892%_)
        (if (procedure? _%K164890%_)
            (let ((_%$e164895%_ (gx#stx-source _%stx164891%_)))
              (if _%$e164895%_
                  ((lambda (_%g164897164899%_)
                     (gx#stx-wrap-source
                      (_%K164890%_ _%stx164891%_)
                      _%g164897164899%_))
                   _%$e164895%_)
                  (_%K164890%_ _%stx164891%_)))
            (let ((_%$e164903%_
                   (bound-method-ref _%K164890%_ _%method164892%_)))
              (if _%$e164903%_
                  ((lambda (_%g164905164907%_)
                     (gx#core-apply-expander__%
                      _%g164905164907%_
                      _%stx164891%_
                      _%method164892%_))
                   _%$e164903%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx164891%_
                   _%method164892%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K164914%_ _%stx164915%_)
        (let ((_%method164917%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K164914%_
           _%stx164915%_
           _%method164917%_))))
    (define gx#core-apply-expander
      (lambda _g167301_
        (let ((_g167302_ (##length _g167301_)))
          (cond ((##fx= _g167302_ 2)
                 (apply gx#core-apply-expander__0 _g167301_))
                ((##fx= _g167302_ 3)
                 (apply gx#core-apply-expander__% _g167301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g167301_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self164875%_ _%stx164876%_)
        (let ((_%self164879%_ _%self164875%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx164876%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self164718%_ _%stx164719%_)
        (let* ((_%self164722%_ _%self164718%_)
               (_%self164731164737%_ _%self164722%_)
               (_%E164733164740%_
                (lambda ()
                  (error '"No clause matching"
                         _%self164731164737%_
                         '((macro-expander K)))
                  '#!void))
               (_%K164734164745%_
                (lambda (_%K164743%_)
                  (gx#core-apply-expander__0 _%K164743%_ _%stx164719%_)))
               (_%e164735164748%_
                (##unchecked-structure-ref _%self164731164737%_ '1 '#f '#f))
               (_%K164751%_ _%e164735164748%_))
          (_%K164734164745%_ _%K164751%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self164561%_ _%stx164562%_)
        (let ((_%self164565%_ _%self164561%_))
          (if (gx#sealed-syntax? _%stx164562%_)
              _%stx164562%_
              (let* ((_%self164574164580%_ _%self164565%_)
                     (_%E164576164583%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self164574164580%_
                               '((core-expander K)))
                        '#!void))
                     (_%K164577164588%_
                      (lambda (_%K164586%_)
                        (gx#core-apply-expander__0 _%K164586%_ _%stx164562%_)))
                     (_%e164578164591%_
                      (##unchecked-structure-ref
                       _%self164574164580%_
                       '1
                       '#f
                       '#f))
                     (_%K164594%_ _%e164578164591%_))
                (_%K164577164588%_ _%K164594%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self164412%_ _%stx164413%_ _%top?164414%_)
        (let ((_%self164417%_ _%self164412%_))
          (if (_%top?164414%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self164417%_
               _%stx164413%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx164413%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self164430%_ _%stx164431%_)
        (let ((_%top?164433%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self164430%_
           _%stx164431%_
           _%top?164433%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g167303_
        (let ((_g167304_ (##length _g167303_)))
          (cond ((##fx= _g167304_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g167303_))
                ((##fx= _g167304_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g167303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g167303_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self164275%_ _%stx164276%_)
        (let ((_%self164279%_ _%self164275%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self164279%_
           _%stx164276%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self164090%_ _%stx164091%_)
        (let* ((_%self164094%_ _%self164090%_)
               (_%self164103164109%_ _%self164094%_)
               (_%E164105164112%_
                (lambda ()
                  (error '"No clause matching"
                         _%self164103164109%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K164106164145%_
                (lambda (_%id164115%_)
                  (let* ((_%e164116164123%_ _%stx164091%_)
                         (_%E164118164127%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e164116164123%_)))
                         (_%E164117164141%_
                          (lambda ()
                            (if (gx#stx-pair? _%e164116164123%_)
                                (let ((_%e164119164131%_
                                       (gx#syntax-e _%e164116164123%_)))
                                  (let ((_%hd164120164134%_
                                         (##car _%e164119164131%_))
                                        (_%tl164121164136%_
                                         (##cdr _%e164119164131%_)))
                                    (let ((_%body164139%_ _%tl164121164136%_))
                                      (gx#core-cons
                                       _%id164115%_
                                       _%body164139%_))))
                                (_%E164118164127%_)))))
                    (_%E164117164141%_))))
               (_%e164107164148%_
                (##unchecked-structure-ref _%self164103164109%_ '1 '#f '#f))
               (_%id164151%_ _%e164107164148%_))
          (_%K164106164145%_ _%id164151%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self163917%_ _%stx163918%_ _%method163919%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx163918%_))
              (force-output))
            '#!void)
        (let* ((_%self163920163928%_ _%self163917%_)
               (_%E163922163931%_
                (lambda ()
                  (error '"No clause matching"
                         _%self163920163928%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K163923163938%_
                (lambda (_%phi163934%_ _%ctx163935%_ _%K163936%_)
                  (gx#core-apply-user-macro
                   _%K163936%_
                   _%stx163918%_
                   _%ctx163935%_
                   _%phi163934%_
                   _%method163919%_))))
          (if (##structure-instance-of?
               _%self163920163928%_
               'gx#user-expander::t)
              (let* ((_%e163924163941%_
                      (##unchecked-structure-ref
                       _%self163920163928%_
                       '1
                       '#f
                       '#f))
                     (_%K163944%_ _%e163924163941%_)
                     (_%e163925163946%_
                      (##unchecked-structure-ref
                       _%self163920163928%_
                       '2
                       '#f
                       '#f))
                     (_%ctx163949%_ _%e163925163946%_)
                     (_%e163926163951%_
                      (##unchecked-structure-ref
                       _%self163920163928%_
                       '3
                       '#f
                       '#f))
                     (_%phi163954%_ _%e163926163951%_))
                (_%K163923163938%_ _%phi163954%_ _%ctx163949%_ _%K163944%_))
              (_%E163922163931%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self163959%_ _%stx163960%_)
        (let ((_%method163962%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self163959%_
           _%stx163960%_
           _%method163962%_))))
    (define gx#core-apply-user-expander
      (lambda _g167305_
        (let ((_g167306_ (##length _g167305_)))
          (cond ((##fx= _g167306_ 2)
                 (apply gx#core-apply-user-expander__0 _g167305_))
                ((##fx= _g167306_ 3)
                 (apply gx#core-apply-user-expander__% _g167305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g167305_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K163907%_
               _%stx163908%_
               _%ctx163909%_
               _%phi163910%_
               _%method163911%_)
        (let ((_%mark163913%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx163909%_
                _%phi163910%_
                _%stx163908%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K163907%_
               (gx#stx-apply-mark _%stx163908%_ _%mark163913%_)
               _%method163911%_)
              _%mark163913%_))
           gx#current-expander-marks
           (cons _%mark163913%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx163755%_ _%phi163756%_ _%ctx163757%_)
        (let _%lp163759%_ ((_%bind163761%_
                            (gx#core-resolve-identifier__%
                             _%stx163755%_
                             _%phi163756%_
                             _%ctx163757%_)))
          (if (##structure-direct-instance-of?
               _%bind163761%_
               'gx#import-binding::t)
              (_%lp163759%_
               (##unchecked-structure-ref _%bind163761%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind163761%_
                   'gx#alias-binding::t)
                  (_%lp163759%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind163761%_ '5 '#f '#f)
                    _%phi163756%_
                    _%ctx163757%_))
                  _%bind163761%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx163769%_)
        (let* ((_%phi163771%_ (gx#current-expander-phi))
               (_%ctx163773%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx163769%_
           _%phi163771%_
           _%ctx163773%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx163775%_ _%phi163776%_)
        (let ((_%ctx163778%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx163775%_
           _%phi163776%_
           _%ctx163778%_))))
    (define gx#resolve-identifier
      (lambda _g167307_
        (let ((_g167308_ (##length _g167307_)))
          (cond ((##fx= _g167308_ 1)
                 (apply gx#resolve-identifier__0 _g167307_))
                ((##fx= _g167308_ 2)
                 (apply gx#resolve-identifier__1 _g167307_))
                ((##fx= _g167308_ 3)
                 (apply gx#resolve-identifier__% _g167307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g167307_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx163710%_
               _%val163711%_
               _%rebind?163712%_
               _%phi163713%_
               _%ctx163714%_)
        (let ((_%rebind?163719%_
               (if (not _%rebind?163712%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?163712%_)
                       _%rebind?163712%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx163710%_)
           _%val163711%_
           _%rebind?163719%_
           _%phi163713%_
           _%ctx163714%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx163724%_ _%val163725%_)
        (let* ((_%rebind?163727%_ '#f)
               (_%phi163729%_ (gx#current-expander-phi))
               (_%ctx163731%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx163724%_
           _%val163725%_
           _%rebind?163727%_
           _%phi163729%_
           _%ctx163731%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx163733%_ _%val163734%_ _%rebind?163735%_)
        (let* ((_%phi163737%_ (gx#current-expander-phi))
               (_%ctx163739%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx163733%_
           _%val163734%_
           _%rebind?163735%_
           _%phi163737%_
           _%ctx163739%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx163741%_ _%val163742%_ _%rebind?163743%_ _%phi163744%_)
        (let ((_%ctx163746%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx163741%_
           _%val163742%_
           _%rebind?163743%_
           _%phi163744%_
           _%ctx163746%_))))
    (define gx#bind-identifier!
      (lambda _g167309_
        (let ((_g167310_ (##length _g167309_)))
          (cond ((##fx= _g167310_ 2) (apply gx#bind-identifier!__0 _g167309_))
                ((##fx= _g167310_ 3) (apply gx#bind-identifier!__1 _g167309_))
                ((##fx= _g167310_ 4) (apply gx#bind-identifier!__2 _g167309_))
                ((##fx= _g167310_ 5) (apply gx#bind-identifier!__% _g167309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g167309_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx163676%_ _%phi163677%_ _%ctx163678%_)
        (let _%lp163680%_ ((_%e163682%_ _%stx163676%_)
                           (_%marks163683%_ (gx#current-expander-marks)))
          (if (symbol? _%e163682%_)
              (gx#core-resolve-binding
               _%e163682%_
               _%phi163677%_
               _%phi163677%_
               _%ctx163678%_
               (reverse _%marks163683%_))
              (if (gx#identifier-quote? _%e163682%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e163682%_ '1 '#f '#f)
                   _%phi163677%_
                   '0
                   (##unchecked-structure-ref _%e163682%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e163682%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e163682%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e163682%_ '1 '#f '#f)
                       _%phi163677%_
                       _%phi163677%_
                       _%ctx163678%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e163682%_ '3 '#f '#f)
                        _%marks163683%_))
                      (if (##structure-direct-instance-of?
                           _%e163682%_
                           'gx#syntax-wrap::t)
                          (_%lp163680%_
                           (##unchecked-structure-ref _%e163682%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e163682%_ '3 '#f '#f)
                            _%marks163683%_))
                          (if (##structure-instance-of?
                               _%e163682%_
                               'gerbil#AST::t)
                              (_%lp163680%_
                               (##unchecked-structure-ref
                                _%e163682%_
                                '1
                                '#f
                                '#f)
                               _%marks163683%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx163676%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx163694%_)
        (let* ((_%phi163696%_ (gx#current-expander-phi))
               (_%ctx163698%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx163694%_
           _%phi163696%_
           _%ctx163698%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx163700%_ _%phi163701%_)
        (let ((_%ctx163703%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx163700%_
           _%phi163701%_
           _%ctx163703%_))))
    (define gx#core-resolve-identifier
      (lambda _g167311_
        (let ((_g167312_ (##length _g167311_)))
          (cond ((##fx= _g167312_ 1)
                 (apply gx#core-resolve-identifier__0 _g167311_))
                ((##fx= _g167312_ 2)
                 (apply gx#core-resolve-identifier__1 _g167311_))
                ((##fx= _g167312_ 3)
                 (apply gx#core-resolve-identifier__% _g167311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g167311_))))))
    (define gx#core-resolve-binding
      (lambda (_%id163587%_
               _%phi163588%_
               _%src-phi163589%_
               _%ctx163590%_
               _%marks163591%_)
        (letrec ((_%resolve163593%_
                  (lambda (_%ctx163660%_ _%src-phi163661%_ _%key163662%_)
                    (let _%lp163664%_ ((_%ctx163666%_
                                        (gx#core-context-shift
                                         _%ctx163660%_
                                         _%phi163588%_))
                                       (_%dphi163667%_
                                        (fx- _%phi163588%_ _%src-phi163661%_)))
                      (let ((_%$e163669%_
                             (gx#core-context-resolve
                              _%ctx163666%_
                              _%key163662%_)))
                        (if _%$e163669%_
                            _%$e163669%_
                            (if (fxzero? _%dphi163667%_)
                                '#f
                                (if (fxpositive? _%dphi163667%_)
                                    (_%lp163664%_
                                     (gx#core-context-shift _%ctx163666%_ '-1)
                                     (##fx- _%dphi163667%_ '1))
                                    (_%lp163664%_
                                     (gx#core-context-shift _%ctx163666%_ '1)
                                     (##fx+ _%dphi163667%_ '1))))))))))
          (let _%lp163595%_ ((_%ctx163597%_ _%ctx163590%_)
                             (_%src-phi163598%_ _%src-phi163589%_)
                             (_%rest163599%_ _%marks163591%_))
            (let* ((_%rest163600163608%_ _%rest163599%_)
                   (_%else163602163616%_
                    (lambda ()
                      (_%resolve163593%_
                       _%ctx163597%_
                       _%src-phi163598%_
                       _%id163587%_)))
                   (_%K163604163648%_
                    (lambda (_%rest163619%_ _%hd163620%_)
                      (let* ((_%hd163621163627%_ _%hd163620%_)
                             (_%E163623163630%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd163621163627%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K163624163640%_
                              (lambda (_%subst163633%_)
                                (let ((_%$e163637%_
                                       (let ((_%key163635%_
                                              (if _%subst163633%_
                                                  (hash-get
                                                   _%subst163633%_
                                                   _%id163587%_)
                                                  '#f)))
                                         (if _%key163635%_
                                             (_%resolve163593%_
                                              _%ctx163597%_
                                              _%src-phi163598%_
                                              _%key163635%_)
                                             '#f))))
                                  (if _%$e163637%_
                                      _%$e163637%_
                                      (_%lp163595%_
                                       (##unchecked-structure-ref
                                        _%hd163620%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd163620%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest163619%_))))))
                        (if (##structure-instance-of?
                             _%hd163621163627%_
                             'gx#expander-mark::t)
                            (let* ((_%e163625163643%_
                                    (##unchecked-structure-ref
                                     _%hd163621163627%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst163646%_ _%e163625163643%_))
                              (_%K163624163640%_ _%subst163646%_))
                            (_%E163623163630%_))))))
              (if (pair? _%rest163600163608%_)
                  (let ((_%hd163605163651%_ (##car _%rest163600163608%_))
                        (_%tl163606163653%_ (##cdr _%rest163600163608%_)))
                    (let* ((_%hd163656%_ _%hd163605163651%_)
                           (_%rest163658%_ _%tl163606163653%_))
                      (_%K163604163648%_ _%rest163658%_ _%hd163656%_)))
                  (_%else163602163616%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key163458%_
               _%val163459%_
               _%rebind?163460%_
               _%phi163461%_
               _%ctx163462%_)
        (letrec ((_%update-binding163464%_
                  (lambda (_%xval163536%_)
                    (if (or (_%rebind?163460%_
                             _%ctx163462%_
                             _%xval163536%_
                             _%val163459%_)
                            (and (##structure-direct-instance-of?
                                  _%xval163536%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval163536%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val163459%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val163459%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval163536%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val163459%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val163459%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval163536%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val163459%_
                        (if (and (##structure-direct-instance-of?
                                  _%val163459%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val163459%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval163536%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val163459%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval163536%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval163536%_
                            (if (and (##structure-direct-instance-of?
                                      _%val163459%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval163536%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key163458%_
                                 (cons (##unchecked-structure-ref
                                        _%val163459%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val163459%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval163536%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval163536%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval163536%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval163536%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key163458%_
                                 _%val163459%_
                                 _%xval163536%_))))))
                 (_%gensubst163465%_
                  (lambda (_%subst163531%_ _%id163532%_)
                    (let ((_%eid163534%_
                           (gensym (if (uninterned-symbol? _%id163532%_)
                                       '%
                                       _%id163532%_))))
                      (hash-put! _%subst163531%_ _%id163532%_ _%eid163534%_)
                      _%eid163534%_)))
                 (_%subst!163466%_
                  (lambda (_%key163468%_)
                    (let* ((_%key163469163477%_ _%key163468%_)
                           (_%else163471163485%_ (lambda () _%key163468%_))
                           (_%K163473163519%_
                            (lambda (_%mark163488%_ _%id163489%_)
                              (let* ((_%mark163490163496%_ _%mark163488%_)
                                     (_%E163492163499%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark163490163496%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K163493163511%_
                                      (lambda (_%subst163502%_)
                                        (if (not _%subst163502%_)
                                            (let ((_%subst163505%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark163488%_
                                               _%subst163505%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst163465%_
                                               _%subst163505%_
                                               _%id163489%_))
                                            (let ((_%$e163507%_
                                                   (hash-get
                                                    _%subst163502%_
                                                    _%id163489%_)))
                                              (if _%$e163507%_
                                                  _%$e163507%_
                                                  (_%gensubst163465%_
                                                   _%subst163502%_
                                                   _%id163489%_)))))))
                                (if (##structure-instance-of?
                                     _%mark163490163496%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e163494163514%_
                                            (##unchecked-structure-ref
                                             _%mark163490163496%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst163517%_ _%e163494163514%_))
                                      (_%K163493163511%_ _%subst163517%_))
                                    (_%E163492163499%_))))))
                      (if (pair? _%key163469163477%_)
                          (let ((_%hd163474163522%_
                                 (##car _%key163469163477%_))
                                (_%tl163475163524%_
                                 (##cdr _%key163469163477%_)))
                            (let* ((_%id163527%_ _%hd163474163522%_)
                                   (_%mark163529%_ _%tl163475163524%_))
                              (_%K163473163519%_ _%mark163529%_ _%id163527%_)))
                          (_%else163471163485%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx163462%_ _%phi163461%_)
           (_%subst!163466%_ _%key163458%_)
           _%val163459%_
           _%update-binding163464%_))))
    (define gx#core-bind!__0
      (lambda (_%key163557%_ _%val163558%_)
        (let* ((_%rebind?163560%_ false)
               (_%phi163562%_ (gx#current-expander-phi))
               (_%ctx163564%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key163557%_
           _%val163558%_
           _%rebind?163560%_
           _%phi163562%_
           _%ctx163564%_))))
    (define gx#core-bind!__1
      (lambda (_%key163566%_ _%val163567%_ _%rebind?163568%_)
        (let* ((_%phi163570%_ (gx#current-expander-phi))
               (_%ctx163572%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key163566%_
           _%val163567%_
           _%rebind?163568%_
           _%phi163570%_
           _%ctx163572%_))))
    (define gx#core-bind!__2
      (lambda (_%key163574%_ _%val163575%_ _%rebind?163576%_ _%phi163577%_)
        (let ((_%ctx163579%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key163574%_
           _%val163575%_
           _%rebind?163576%_
           _%phi163577%_
           _%ctx163579%_))))
    (define gx#core-bind!
      (lambda _g167313_
        (let ((_g167314_ (##length _g167313_)))
          (cond ((##fx= _g167314_ 2) (apply gx#core-bind!__0 _g167313_))
                ((##fx= _g167314_ 3) (apply gx#core-bind!__1 _g167313_))
                ((##fx= _g167314_ 4) (apply gx#core-bind!__2 _g167313_))
                ((##fx= _g167314_ 5) (apply gx#core-bind!__% _g167313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g167313_))))))
    (define gx#core-identifier-key
      (lambda (_%stx163389%_)
        (if (symbol? _%stx163389%_)
            (let* ((_%g163391163399%_ (gx#current-expander-marks))
                   (_%else163393163407%_ (lambda () _%stx163389%_))
                   (_%K163395163412%_
                    (lambda (_%hd163410%_) (cons _%stx163389%_ _%hd163410%_))))
              (if (pair? _%g163391163399%_)
                  (let* ((_%hd163396163415%_ (##car _%g163391163399%_))
                         (_%hd163418%_ _%hd163396163415%_))
                    (_%K163395163412%_ _%hd163418%_))
                  (_%else163393163407%_)))
            (if (gx#identifier? _%stx163389%_)
                (let* ((_%id163421%_ (gx#syntax-local-unwrap _%stx163389%_))
                       (_%eid163423%_ (gx#stx-e _%id163421%_))
                       (_%marks163425%_
                        (gx#stx-identifier-marks* _%id163421%_))
                       (_%marks163427163435%_ _%marks163425%_)
                       (_%else163429163443%_ (lambda () _%eid163423%_))
                       (_%K163431163448%_
                        (lambda (_%hd163446%_)
                          (cons _%eid163423%_ _%hd163446%_))))
                  (if (pair? _%marks163427163435%_)
                      (let* ((_%hd163432163451%_ (##car _%marks163427163435%_))
                             (_%hd163454%_ _%hd163432163451%_))
                        (_%K163431163448%_ _%hd163454%_))
                      (_%else163429163443%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx163389%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx163328%_ _%phi163329%_)
        (letrec ((_%make-phi163331%_
                  (lambda (_%super163387%_)
                    (let ((__obj167284
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj167284
                       (##gensym 'phi)
                       _%super163387%_)
                      __obj167284)))
                 (_%make-phi/up163332%_
                  (lambda (_%ctx163382%_ _%super163383%_)
                    (let ((_%ctx+1163385%_
                           (_%make-phi163331%_ _%super163383%_)))
                      (##unchecked-structure-set!
                       _%ctx163382%_
                       _%ctx+1163385%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1163385%_
                       _%ctx163382%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1163385%_)))
                 (_%make-phi/down163333%_
                  (lambda (_%ctx163377%_ _%super163378%_)
                    (let ((_%ctx-1163380%_
                           (_%make-phi163331%_ _%super163378%_)))
                      (##unchecked-structure-set!
                       _%ctx-1163380%_
                       _%ctx163377%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx163377%_
                       _%ctx-1163380%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1163380%_)))
                 (_%shift163334%_
                  (lambda (_%ctx163360%_
                           _%delta163361%_
                           _%make-delta-context163362%_
                           _%phi163363%_
                           _%K163364%_)
                    (let ((_%$e163366%_
                           (##unchecked-structure-ref
                            _%ctx163360%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e163366%_
                          ((lambda (_%super163369%_)
                             (let* ((_%super163371%_
                                     (_%K163364%_
                                      _%super163369%_
                                      _%delta163361%_))
                                    (_%ctx+d163373%_
                                     (_%make-delta-context163362%_
                                      _%ctx163360%_
                                      _%super163371%_)))
                               (_%K163364%_
                                _%ctx+d163373%_
                                (fx- _%phi163363%_ _%delta163361%_))))
                           _%$e163366%_)
                          (error '"Bad context" _%ctx163360%_))))))
          (let _%K163336%_ ((_%ctx163338%_ _%ctx163328%_)
                            (_%phi163339%_ _%phi163329%_))
            (if (fxzero? _%phi163339%_)
                _%ctx163338%_
                (if (##structure-instance-of? _%ctx163338%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi163339%_)
                        (let ((_%$e163343%_
                               (##unchecked-structure-ref
                                _%ctx163338%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e163343%_
                              ((lambda (_%g163345163347%_)
                                 (_%K163336%_
                                  _%g163345163347%_
                                  (##fx- _%phi163339%_ '1)))
                               _%$e163343%_)
                              (_%shift163334%_
                               _%ctx163338%_
                               '1
                               _%make-phi/up163332%_
                               _%phi163339%_
                               _%K163336%_)))
                        (let ((_%$e163351%_
                               (##unchecked-structure-ref
                                _%ctx163338%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e163351%_
                              ((lambda (_%g163353163355%_)
                                 (_%K163336%_
                                  _%g163353163355%_
                                  (##fx+ _%phi163339%_ '1)))
                               _%$e163351%_)
                              (_%shift163334%_
                               _%ctx163338%_
                               '-1
                               _%make-phi/down163333%_
                               _%phi163339%_
                               _%K163336%_))))
                    _%ctx163338%_))))))
    (define gx#core-context-get
      (lambda (_%ctx163325%_ _%key163326%_)
        (hash-get
         (##unchecked-structure-ref _%ctx163325%_ '2 '#f '#f)
         _%key163326%_)))
    (define gx#core-context-put!
      (lambda (_%ctx163321%_ _%key163322%_ _%val163323%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx163321%_ '2 '#f '#f)
         _%key163322%_
         _%val163323%_)
        _%val163323%_))
    (define gx#core-context-resolve
      (lambda (_%ctx163307%_ _%key163308%_)
        (let _%lp163310%_ ((_%ctx163312%_ _%ctx163307%_))
          (let ((_%$e163314%_
                 (gx#core-context-get _%ctx163312%_ _%key163308%_)))
            (if _%$e163314%_
                _%$e163314%_
                (let ((_%$e163317%_
                       (if (##structure-instance-of?
                            _%ctx163312%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx163312%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e163317%_ (_%lp163310%_ _%$e163317%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx163296%_ _%key163297%_ _%val163298%_ _%rebind163299%_)
        (let ((_%$e163301%_ (gx#core-context-get _%ctx163296%_ _%key163297%_)))
          (if _%$e163301%_
              ((lambda (_%xval163304%_)
                 (gx#core-context-put!
                  _%ctx163296%_
                  _%key163297%_
                  (_%rebind163299%_ _%xval163304%_)))
               _%$e163301%_)
              (gx#core-context-put!
               _%ctx163296%_
               _%key163297%_
               _%val163298%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx163271%_ _%stop?163272%_)
        (let _%lp163274%_ ((_%ctx163276%_ _%ctx163271%_))
          (if (_%stop?163272%_ _%ctx163276%_)
              _%ctx163276%_
              (if (##structure-instance-of? _%ctx163276%_ 'gx#phi-context::t)
                  (_%lp163274%_
                   (##unchecked-structure-ref _%ctx163276%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx163285%_ (gx#current-expander-context))
               (_%stop?163287%_ gx#top-context?))
          (gx#core-context-top__% _%ctx163285%_ _%stop?163287%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx163289%_)
        (let ((_%stop?163291%_ gx#top-context?))
          (gx#core-context-top__% _%ctx163289%_ _%stop?163291%_))))
    (define gx#core-context-top
      (lambda _g167315_
        (let ((_g167316_ (##length _g167315_)))
          (cond ((##fx= _g167316_ 0) (apply gx#core-context-top__0 _g167315_))
                ((##fx= _g167316_ 1) (apply gx#core-context-top__1 _g167315_))
                ((##fx= _g167316_ 2) (apply gx#core-context-top__% _g167315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g167315_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx163256%_)
        (let _%lp163258%_ ((_%ctx163260%_ _%ctx163256%_))
          (if (##structure-instance-of? _%ctx163260%_ 'gx#phi-context::t)
              (_%lp163258%_
               (##unchecked-structure-ref _%ctx163260%_ '3 '#f '#f))
              _%ctx163260%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx163266%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx163266%_))))
    (define gx#core-context-root
      (lambda _g167317_
        (let ((_g167318_ (##length _g167317_)))
          (cond ((##fx= _g167318_ 0) (apply gx#core-context-root__0 _g167317_))
                ((##fx= _g167318_ 1) (apply gx#core-context-root__% _g167317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g167317_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx163238%_ . _%ignore163239%_)
        (let ((_%$e163241%_ (gx#current-expander-allow-rebind?)))
          (if _%$e163241%_
              _%$e163241%_
              (if (##structure-instance-of? _%ctx163238%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx163238%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx163238%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx163248%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx163248%_))))
    (define gx#core-context-rebind?
      (lambda _g167319_
        (let ((_g167320_ (##length _g167319_)))
          (cond ((##fx= _g167320_ 0)
                 (apply gx#core-context-rebind?__0 _g167319_))
                ((##fx= _g167320_ 1)
                 (apply gx#core-context-rebind?__% _g167319_))
                ((##fx>= _g167320_ 1)
                 (apply gx#core-context-rebind?__% _g167319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g167319_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx163221%_)
        (let ((_%$e163223%_ (gx#core-context-top__1 _%ctx163221%_)))
          (if _%$e163223%_
              ((lambda (_%ctx163226%_)
                 (if (##structure-instance-of?
                      _%ctx163226%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx163226%_ '6 '#f '#f)
                     '#f))
               _%$e163223%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx163233%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx163233%_))))
    (define gx#core-context-namespace
      (lambda _g167321_
        (let ((_g167322_ (##length _g167321_)))
          (cond ((##fx= _g167322_ 0)
                 (apply gx#core-context-namespace__0 _g167321_))
                ((##fx= _g167322_ 1)
                 (apply gx#core-context-namespace__% _g167321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g167321_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind163207%_ _%is?163208%_)
        (if (##structure-direct-instance-of?
             _%bind163207%_
             'gx#syntax-binding::t)
            (_%is?163208%_
             (##unchecked-structure-ref _%bind163207%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind163213%_)
        (let ((_%is?163215%_ gx#expander?))
          (gx#expander-binding?__% _%bind163213%_ _%is?163215%_))))
    (define gx#expander-binding?
      (lambda _g167323_
        (let ((_g167324_ (##length _g167323_)))
          (cond ((##fx= _g167324_ 1) (apply gx#expander-binding?__0 _g167323_))
                ((##fx= _g167324_ 2) (apply gx#expander-binding?__% _g167323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g167323_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind163204%_)
        (gx#expander-binding?__% _%bind163204%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind163202%_)
        (gx#expander-binding?__% _%bind163202%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind163196%_)
        (letrec ((_%direct-special-form?163198%_
                  (lambda (_%obj163200%_)
                    (##structure-direct-instance-of?
                     _%obj163200%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind163196%_
           _%direct-special-form?163198%_))))
    (define gx#special-form-binding?
      (lambda (_%bind163194%_)
        (gx#expander-binding?__% _%bind163194%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind163185%_)
        (letrec ((_%feature?163187%_
                  (lambda (_%e163189%_)
                    (let ((_%$e163191%_
                           (##structure-instance-of?
                            _%e163189%_
                            'gx#feature-expander::t)))
                      (if _%$e163191%_
                          _%$e163191%_
                          (##structure-instance-of?
                           _%e163189%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind163185%_ _%feature?163187%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind163183%_)
        (gx#expander-binding?__% _%bind163183%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id163170%_ _%bound?163171%_)
        (if (gx#identifier? _%id163170%_)
            (_%bound?163171%_ (gx#resolve-identifier__0 _%id163170%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id163176%_)
        (let ((_%bound?163178%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id163176%_ _%bound?163178%_))))
    (define gx#core-bound-identifier?
      (lambda _g167325_
        (let ((_g167326_ (##length _g167325_)))
          (cond ((##fx= _g167326_ 1)
                 (apply gx#core-bound-identifier?__0 _g167325_))
                ((##fx= _g167326_ 2)
                 (apply gx#core-bound-identifier?__% _g167325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g167325_))))))
    (define gx#core-identifier=?
      (lambda (_%x163160%_ _%y163161%_)
        (letrec ((_%y=?163163%_
                  (lambda (_%xid163167%_)
                    ((if (list? _%y163161%_) memq eq?)
                     _%xid163167%_
                     _%y163161%_))))
          (let ((_%bind163165%_ (gx#resolve-identifier__0 _%x163160%_)))
            (if (##structure-instance-of? _%bind163165%_ 'gx#binding::t)
                (_%y=?163163%_
                 (##unchecked-structure-ref _%bind163165%_ '1 '#f '#f))
                (_%y=?163163%_ (gx#stx-e _%x163160%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e163158%_)
        (if (interned-symbol? _%e163158%_)
            (string-index__0 (symbol->string _%e163158%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx163111%_ _%src163112%_ _%ctx163113%_ _%marks163114%_)
        (if (##structure? _%stx163111%_)
            (let ((_%$e163116%_ (gx#sealed-syntax-unwrap _%stx163111%_)))
              (if _%$e163116%_
                  _%$e163116%_
                  (if (gx#identifier? _%stx163111%_)
                      (let ((_%id163120%_
                             (gx#stx-unwrap__% _%stx163111%_ _%marks163114%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id163120%_ '1 '#f '#f)
                         (let ((_%$e163122%_
                                (##unchecked-structure-ref
                                 _%id163120%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e163122%_ _%$e163122%_ _%src163112%_))
                         _%ctx163113%_
                         (##unchecked-structure-ref _%id163120%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx163111%_)
                       (let ((_%$e163126%_ (gx#stx-source _%stx163111%_)))
                         (if _%$e163126%_ _%$e163126%_ _%src163112%_))
                       _%ctx163113%_
                       (reverse _%marks163114%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx163111%_
             _%src163112%_
             _%ctx163113%_
             (reverse _%marks163114%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx163132%_)
        (let* ((_%src163134%_ '#f)
               (_%ctx163136%_ (gx#current-expander-context))
               (_%marks163138%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx163132%_
           _%src163134%_
           _%ctx163136%_
           _%marks163138%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx163140%_ _%src163141%_)
        (let* ((_%ctx163143%_ (gx#current-expander-context))
               (_%marks163145%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx163140%_
           _%src163141%_
           _%ctx163143%_
           _%marks163145%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx163147%_ _%src163148%_ _%ctx163149%_)
        (let ((_%marks163151%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx163147%_
           _%src163148%_
           _%ctx163149%_
           _%marks163151%_))))
    (define gx#core-quote-syntax
      (lambda _g167327_
        (let ((_g167328_ (##length _g167327_)))
          (cond ((##fx= _g167328_ 1) (apply gx#core-quote-syntax__0 _g167327_))
                ((##fx= _g167328_ 2) (apply gx#core-quote-syntax__1 _g167327_))
                ((##fx= _g167328_ 3) (apply gx#core-quote-syntax__2 _g167327_))
                ((##fx= _g167328_ 4) (apply gx#core-quote-syntax__% _g167327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g167327_))))))
    (define gx#core-cons
      (lambda (_%hd163107%_ _%tl163108%_)
        (cons (gx#core-quote-syntax__0 _%hd163107%_) _%tl163108%_)))
    (define gx#core-list
      (lambda (_%hd163104%_ . _%rest163105%_)
        (cons (gx#core-quote-syntax__0 _%hd163104%_) _%rest163105%_)))
    (define gx#core-cons*
      (lambda (_%hd163101%_ . _%rest163102%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd163101%_) _%rest163102%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path163070%_ _%rel163071%_)
        (let ((_%path163088%_ (gx#stx-e _%stx-path163070%_))
              (_%reldir163089%_
               (let _%lp163073%_ ((_%relsrc163075%_
                                   (let ((_%$e163085%_
                                          (gx#stx-source _%stx-path163070%_)))
                                     (if _%$e163085%_
                                         _%$e163085%_
                                         _%rel163071%_))))
                 (if (##structure-instance-of? _%relsrc163075%_ 'gerbil#AST::t)
                     (_%lp163073%_
                      (let ((_%$e163078%_ (gx#stx-source _%relsrc163075%_)))
                        (if _%$e163078%_
                            _%$e163078%_
                            (gx#stx-e _%relsrc163075%_))))
                     (if (source-location-path? _%relsrc163075%_)
                         (path-directory
                          (source-location-path _%relsrc163075%_))
                         (if (string? _%relsrc163075%_)
                             (path-directory _%relsrc163075%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path163088%_ (path-normalize _%reldir163089%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path163094%_)
        (let ((_%rel163096%_ '#f))
          (gx#core-resolve-path__% _%stx-path163094%_ _%rel163096%_))))
    (define gx#core-resolve-path
      (lambda _g167329_
        (let ((_g167330_ (##length _g167329_)))
          (cond ((##fx= _g167330_ 1) (apply gx#core-resolve-path__0 _g167329_))
                ((##fx= _g167330_ 2) (apply gx#core-resolve-path__% _g167329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g167329_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr163026%_ _%ctx163027%_)
        (let* ((_%repr163028163035%_ _%repr163026%_)
               (_%E163030163039%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr163028163035%_
                         '([phi . subs]))
                  '#!void))
               (_%K163031163047%_
                (lambda (_%subs163042%_ _%phi163043%_)
                  (let ((_%subst163045%_
                         (if (null? _%subs163042%_)
                             '#f
                             (list->hash-table-eq _%subs163042%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst163045%_
                     _%ctx163027%_
                     _%phi163043%_
                     '#f)))))
          (if (pair? _%repr163028163035%_)
              (let ((_%hd163032163050%_ (##car _%repr163028163035%_))
                    (_%tl163033163052%_ (##cdr _%repr163028163035%_)))
                (let* ((_%phi163055%_ _%hd163032163050%_)
                       (_%subs163057%_ _%tl163033163052%_))
                  (_%K163031163047%_ _%subs163057%_ _%phi163055%_)))
              (_%E163030163039%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr163062%_)
        (let ((_%ctx163064%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr163062%_ _%ctx163064%_))))
    (define gx#core-deserialize-mark
      (lambda _g167331_
        (let ((_g167332_ (##length _g167331_)))
          (cond ((##fx= _g167332_ 1)
                 (apply gx#core-deserialize-mark__0 _g167331_))
                ((##fx= _g167332_ 2)
                 (apply gx#core-deserialize-mark__% _g167331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g167331_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx163023%_)
        (gx#stx-rewrap _%stx163023%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx163021%_)
        (gx#stx-unwrap__% _%stx163021%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx162991%_)
        (let* ((_%g162992163000%_ (gx#current-expander-marks))
               (_%else162994163008%_ (lambda () _%stx162991%_))
               (_%K162996163013%_
                (lambda (_%hd163011%_)
                  (gx#stx-apply-mark _%stx162991%_ _%hd163011%_))))
          (if (pair? _%g162992163000%_)
              (let* ((_%hd162997163016%_ (##car _%g162992163000%_))
                     (_%hd163019%_ _%hd162997163016%_))
                (_%K162996163013%_ _%hd163019%_))
              (_%else162994163008%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym162989%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym162989%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx162974%_ _%E162975%_)
        (let ((_%bind162977%_ (gx#resolve-identifier__0 _%stx162974%_)))
          (if (##structure-direct-instance-of?
               _%bind162977%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind162977%_ '5 '#f '#f)
              (_%E162975%_ _%stx162974%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx162982%_)
        (let ((_%E162984%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx162982%_ _%E162984%_))))
    (define gx#syntax-local-e
      (lambda _g167333_
        (let ((_g167334_ (##length _g167333_)))
          (cond ((##fx= _g167334_ 1) (apply gx#syntax-local-e__0 _g167333_))
                ((##fx= _g167334_ 2) (apply gx#syntax-local-e__% _g167333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g167333_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx162958%_ _%E162959%_)
        (let ((_%e162961%_ (gx#syntax-local-e__% _%stx162958%_ _%E162959%_)))
          (if (##structure-instance-of? _%e162961%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e162961%_ '1 '#f '#f)
              _%e162961%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx162966%_)
        (let ((_%E162968%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx162966%_ _%E162968%_))))
    (define gx#syntax-local-value
      (lambda _g167335_
        (let ((_g167336_ (##length _g167335_)))
          (cond ((##fx= _g167336_ 1)
                 (apply gx#syntax-local-value__0 _g167335_))
                ((##fx= _g167336_ 2)
                 (apply gx#syntax-local-value__% _g167335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g167335_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx162955%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx162955%_)))))
