(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1770505717)
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
      (lambda _%$args174668%_
        (apply make-instance gx#expander-context::t _%$args174668%_)))
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
      (lambda _%$args174665%_
        (apply make-instance gx#root-context::t _%$args174665%_)))
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
      (lambda _%$args174662%_
        (apply make-instance gx#phi-context::t _%$args174662%_)))
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
      (lambda _%$args174659%_
        (apply make-instance gx#top-context::t _%$args174659%_)))
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
      (lambda _%$args174656%_
        (apply make-instance gx#module-context::t _%$args174656%_)))
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
      (lambda _%$args174653%_
        (apply make-instance gx#prelude-context::t _%$args174653%_)))
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
      (lambda _%$args174650%_
        (apply make-instance gx#local-context::t _%$args174650%_)))
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
      (lambda (_%self174623%_ _%id174624%_ _%super174625%_)
        (let ((_%self174628%_ _%self174623%_))
          (if (##fx< '3 (##structure-length _%self174628%_))
              (begin
                (##unchecked-structure-set!
                 _%self174628%_
                 _%id174624%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174628%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174628%_
                 _%super174625%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self174628%_
                     '3
                     (##structure-length _%self174628%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self174641%_ _%id174642%_)
        (let ((_%super174644%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self174641%_
           _%id174642%_
           _%super174644%_))))
    (define gx#phi-context:::init!
      (lambda _g174710_
        (let ((_g174711_ (##length _g174710_)))
          (cond ((##fx= _g174711_ 2)
                 (apply gx#phi-context:::init!__0 _g174710_))
                ((##fx= _g174711_ 3)
                 (apply gx#phi-context:::init!__% _g174710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g174710_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self174476%_ _%super174477%_)
        (let ((_%self174480%_ _%self174476%_))
          (if (##fx< '3 (##structure-length _%self174480%_))
              (begin
                (##unchecked-structure-set!
                 _%self174480%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174480%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174480%_
                 _%super174477%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self174480%_
                     '3
                     (##structure-length _%self174480%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self174493%_)
        (let ((_%super174495%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self174493%_ _%super174495%_))))
    (define gx#local-context:::init!
      (lambda _g174712_
        (let ((_g174713_ (##length _g174712_)))
          (cond ((##fx= _g174713_ 1)
                 (apply gx#local-context:::init!__0 _g174712_))
                ((##fx= _g174713_ 2)
                 (apply gx#local-context:::init!__% _g174712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g174712_))))))
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
      (lambda _%$args174350%_
        (apply make-instance gx#binding::t _%$args174350%_)))
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
      (lambda (_%self174333%_ _%id174334%_ _%key174335%_ _%phi174336%_)
        (let ((_%self174339%_ _%self174333%_))
          (##unchecked-structure-set! _%self174339%_ _%id174334%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self174339%_ _%key174335%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self174339%_
           _%phi174336%_
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
      (lambda _%$args174208%_
        (apply make-instance gx#runtime-binding::t _%$args174208%_)))
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
      (lambda _%$args174205%_
        (apply make-instance gx#local-binding::t _%$args174205%_)))
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
      (lambda _%$args174202%_
        (apply make-instance gx#top-binding::t _%$args174202%_)))
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
      (lambda _%$args174199%_
        (apply make-instance gx#module-binding::t _%$args174199%_)))
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
      (lambda _%$args174196%_
        (apply make-instance gx#extern-binding::t _%$args174196%_)))
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
      (lambda (_%self173812%_
               _%id173813%_
               _%key173814%_
               _%phi173815%_
               _%ctx173816%_)
        (let ((_%self173819%_ _%self173812%_))
          (gx#binding:::init!
           _%self173819%_
           _%id173813%_
           _%key173814%_
           _%phi173815%_)
          (##unchecked-structure-set!
           _%self173819%_
           _%ctx173816%_
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
      (lambda _%$args173565%_
        (apply make-instance gx#syntax-binding::t _%$args173565%_)))
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
      (lambda _%$args173562%_
        (apply make-instance gx#import-binding::t _%$args173562%_)))
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
      (lambda _%$args173559%_
        (apply make-instance gx#alias-binding::t _%$args173559%_)))
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
      (lambda (_%self173541%_
               _%id173542%_
               _%key173543%_
               _%phi173544%_
               _%e173545%_)
        (let ((_%self173548%_ _%self173541%_))
          (gx#binding:::init!
           _%self173548%_
           _%id173542%_
           _%key173543%_
           _%phi173544%_)
          (##unchecked-structure-set! _%self173548%_ _%e173545%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self173399%_
               _%id173400%_
               _%key173401%_
               _%phi173402%_
               _%e173403%_
               _%ctx173404%_
               _%weak?173405%_)
        (let ((_%self173408%_ _%self173399%_))
          (gx#binding:::init!
           _%self173408%_
           _%id173400%_
           _%key173401%_
           _%phi173402%_)
          (##unchecked-structure-set! _%self173408%_ _%e173403%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self173408%_ _%ctx173404%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self173408%_
           _%weak?173405%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self173259%_
               _%id173260%_
               _%key173261%_
               _%phi173262%_
               _%e173263%_)
        (let ((_%self173266%_ _%self173259%_))
          (gx#binding:::init!
           _%self173266%_
           _%id173260%_
           _%key173261%_
           _%phi173262%_)
          (##unchecked-structure-set! _%self173266%_ _%e173263%_ '5 '#f '#f))))
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
      (lambda _%$args173134%_
        (apply make-instance gx#expander::t _%$args173134%_)))
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
      (lambda _%$args173131%_
        (apply make-instance gx#core-expander::t _%$args173131%_)))
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
      (lambda _%$args173128%_
        (apply make-instance gx#expression-form::t _%$args173128%_)))
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
      (lambda _%$args173125%_
        (apply make-instance gx#special-form::t _%$args173125%_)))
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
      (lambda _%$args173122%_
        (apply make-instance gx#definition-form::t _%$args173122%_)))
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
      (lambda _%$args173119%_
        (apply make-instance gx#top-special-form::t _%$args173119%_)))
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
      (lambda _%$args173116%_
        (apply make-instance gx#module-special-form::t _%$args173116%_)))
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
      (lambda _%$args173113%_
        (apply make-instance gx#feature-expander::t _%$args173113%_)))
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
      (lambda _%$args173110%_
        (apply make-instance gx#private-feature-expander::t _%$args173110%_)))
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
      (lambda _%$args173107%_
        (apply make-instance gx#reserved-expander::t _%$args173107%_)))
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
      (lambda _%$args173104%_
        (apply make-instance gx#macro-expander::t _%$args173104%_)))
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
      (lambda _%$args173101%_
        (apply make-instance gx#rename-macro-expander::t _%$args173101%_)))
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
      (lambda _%$args173098%_
        (apply make-instance gx#user-expander::t _%$args173098%_)))
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
      (lambda _%$args173095%_
        (apply make-instance gx#expander-mark::t _%$args173095%_)))
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
      (lambda (_%ctx173079%_
               _%message173080%_
               _%stx173081%_
               .
               _%details173082%_)
        (let ((_%ctx173093%_
               (let ((_%$e173084%_ _%ctx173079%_))
                 (if _%$e173084%_
                     _%$e173084%_
                     (let ((_%$e173087%_ (gx#core-context-top__0)))
                       (if _%$e173087%_
                           ((lambda (_%ctx173090%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx173090%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e173087%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message173080%_
                  (cons _%stx173081%_ _%details173082%_)
                  _%ctx173093%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx173066%_ _%expression?173067%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx173066%_ _%expression?173067%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx173072%_)
        (let ((_%expression?173074%_ '#f))
          (gx#eval-syntax__% _%stx173072%_ _%expression?173074%_))))
    (define gx#eval-syntax
      (lambda _g174714_
        (let ((_g174715_ (##length _g174714_)))
          (cond ((##fx= _g174715_ 1) (apply gx#eval-syntax__0 _g174714_))
                ((##fx= _g174715_ 2) (apply gx#eval-syntax__% _g174714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g174714_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx173051%_ _%expression?173052%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx173051%_ _%expression?173052%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx173058%_)
        (let ((_%expression?173060%_ '#f))
          (gx#eval-syntax+1__% _%stx173058%_ _%expression?173060%_))))
    (define gx#eval-syntax+1
      (lambda _g174716_
        (let ((_g174717_ (##length _g174716_)))
          (cond ((##fx= _g174717_ 1) (apply gx#eval-syntax+1__0 _g174716_))
                ((##fx= _g174717_ 2) (apply gx#eval-syntax+1__% _g174716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g174716_))))))
    (define gx#eval-expression+1
      (lambda (_%stx173048%_) (gx#eval-syntax+1__% _%stx173048%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx173046%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx173046%_))))
    (define gx#core-expand__%
      (lambda (_%stx173033%_ _%expression?173034%_)
        (if _%expression?173034%_
            (gx#core-expand-expression _%stx173033%_)
            (gx#core-expand-top _%stx173033%_))))
    (define gx#core-expand__0
      (lambda (_%stx173039%_)
        (let ((_%expression?173041%_ '#f))
          (gx#core-expand__% _%stx173039%_ _%expression?173041%_))))
    (define gx#core-expand
      (lambda _g174718_
        (let ((_g174719_ (##length _g174718_)))
          (cond ((##fx= _g174719_ 1) (apply gx#core-expand__0 _g174718_))
                ((##fx= _g174719_ 2) (apply gx#core-expand__% _g174718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g174718_))))))
    (define gx#core-expand-top
      (lambda (_%stx173000%_)
        (let* ((_%stx173002%_ (gx#core-expand*__0 _%stx173000%_))
               (_%e173003173010%_ _%stx173002%_)
               (_%E173005173014%_
                (lambda () (gx#core-expand-expression _%stx173002%_)))
               (_%E173004173028%_
                (lambda ()
                  (if (gx#stx-pair? _%e173003173010%_)
                      (let ((_%e173006173018%_
                             (gx#syntax-e _%e173003173010%_)))
                        (let ((_%hd173007173021%_ (##car _%e173006173018%_))
                              (_%tl173008173023%_ (##cdr _%e173006173018%_)))
                          (let ((_%form173026%_ _%hd173007173021%_))
                            (if (gx#core-bound-identifier?__0 _%form173026%_)
                                _%stx173002%_
                                (_%E173005173014%_)))))
                      (_%E173005173014%_)))))
          (_%E173004173028%_))))
    (define gx#core-expand-expression
      (lambda (_%stx172932%_)
        (letrec ((_%sealed-expression?172934%_
                  (lambda (_%hd172970%_)
                    (if (gx#sealed-syntax? _%hd172970%_)
                        (let* ((_%e172971172978%_ _%hd172970%_)
                               (_%E172973172982%_ (lambda () '#f))
                               (_%E172972172996%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e172971172978%_)
                                      (let ((_%e172974172986%_
                                             (gx#syntax-e _%e172971172978%_)))
                                        (let ((_%hd172975172989%_
                                               (##car _%e172974172986%_))
                                              (_%tl172976172991%_
                                               (##cdr _%e172974172986%_)))
                                          (let ((_%form172994%_
                                                 _%hd172975172989%_))
                                            (gx#core-bound-identifier?__%
                                             _%form172994%_
                                             gx#expression-form-binding?))))
                                      (_%E172973172982%_)))))
                          (_%E172972172996%_))
                        '#f)))
                 (_%illegal-expression172935%_
                  (lambda (_%hd172967%_ . _%_172968%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx172932%_
                     _%hd172967%_)))
                 (_%expand-e172936%_
                  (lambda (_%form172959%_ _%hd172960%_)
                    (let ((_%bind172962%_
                           (if (##structure-instance-of?
                                _%form172959%_
                                'gx#binding::t)
                               _%form172959%_
                               (gx#resolve-identifier__0 _%form172959%_))))
                      (if (gx#core-expander-binding? _%bind172962%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind172962%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd172960%_
                            (gx#stx-source _%stx172932%_)))
                          (if (##structure-direct-instance-of?
                               _%bind172962%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind172962%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd172960%_
                                 (gx#stx-source _%stx172932%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx172932%_
                               _%form172959%_)))))))
          (let ((_%hd172938%_ (gx#core-expand-head _%stx172932%_)))
            (if (_%sealed-expression?172934%_ _%hd172938%_)
                _%hd172938%_
                (if (gx#stx-pair? _%hd172938%_)
                    (let* ((_%form172942%_ (gx#stx-car _%hd172938%_))
                           (_%bind172944%_
                            (if (gx#identifier? _%form172942%_)
                                (gx#resolve-identifier__0 _%form172942%_)
                                '#f)))
                      (if (or (not _%bind172944%_)
                              (not (gx#core-expander-binding? _%bind172944%_)))
                          (_%expand-e172936%_
                           '%%app
                           (cons '%%app _%hd172938%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind172944%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd172938%_
                               _%illegal-expression172935%_)
                              (if (gx#expression-form-binding? _%bind172944%_)
                                  (_%expand-e172936%_
                                   _%bind172944%_
                                   _%hd172938%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind172944%_)
                                      (gx#core-expand-expression
                                       (_%expand-e172936%_
                                        _%bind172944%_
                                        _%hd172938%_))
                                      (_%illegal-expression172935%_
                                       _%hd172938%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd172938%_)
                        (_%illegal-expression172935%_ _%hd172938%_)
                        (if (gx#identifier? _%hd172938%_)
                            (_%expand-e172936%_
                             '%%ref
                             (cons '%%ref (cons _%hd172938%_ '())))
                            (if (gx#stx-datum? _%hd172938%_)
                                (_%expand-e172936%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd172938%_ '())))
                                (_%illegal-expression172935%_
                                 _%hd172938%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx172927%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx172930%_ (gx#core-expand-expression _%stx172927%_)))
             (values _%stx172930%_ (gx#eval-syntax* _%stx172930%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx172908%_ _%stop?172909%_)
        (let _%lp172911%_ ((_%stx172913%_ _%stx172908%_))
          (if (_%stop?172909%_ _%stx172913%_)
              _%stx172913%_
              (let ((_%rstx172915%_ (gx#core-expand1 _%stx172913%_)))
                (if (eq? _%stx172913%_ _%rstx172915%_)
                    _%stx172913%_
                    (_%lp172911%_ _%rstx172915%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx172920%_)
        (let ((_%stop?172922%_ false))
          (gx#core-expand*__% _%stx172920%_ _%stop?172922%_))))
    (define gx#core-expand*
      (lambda _g174720_
        (let ((_g174721_ (##length _g174720_)))
          (cond ((##fx= _g174721_ 1) (apply gx#core-expand*__0 _g174720_))
                ((##fx= _g174721_ 2) (apply gx#core-expand*__% _g174720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g174720_))))))
    (define gx#core-expand1
      (lambda (_%stx172860%_)
        (letrec ((_%step172862%_
                  (lambda (_%hd172899%_)
                    (let ((_%bind172901%_
                           (gx#resolve-identifier__0 _%hd172899%_)))
                      (if (##structure-instance-of?
                           _%bind172901%_
                           'gx#runtime-binding::t)
                          _%stx172860%_
                          (if (##structure-direct-instance-of?
                               _%bind172901%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind172901%_
                                '5
                                '#f
                                '#f)
                               _%stx172860%_)
                              (if (not _%bind172901%_)
                                  _%stx172860%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx172860%_))))))))
          (let* ((_%e172863172871%_ _%stx172860%_)
                 (_%E172869172875%_ (lambda () _%stx172860%_))
                 (_%E172865172881%_
                  (lambda ()
                    (let ((_%hd172879%_ _%e172863172871%_))
                      (if (gx#identifier? _%hd172879%_)
                          (_%step172862%_ _%hd172879%_)
                          (_%E172869172875%_)))))
                 (_%E172864172895%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172863172871%_)
                        (let ((_%e172866172885%_
                               (gx#syntax-e _%e172863172871%_)))
                          (let ((_%hd172867172888%_ (##car _%e172866172885%_))
                                (_%tl172868172890%_ (##cdr _%e172866172885%_)))
                            (let ((_%hd172893%_ _%hd172867172888%_))
                              (if (gx#identifier? _%hd172893%_)
                                  (_%step172862%_ _%hd172893%_)
                                  (_%E172865172881%_)))))
                        (_%E172865172881%_)))))
            (_%E172864172895%_)))))
    (define gx#core-expand-head
      (lambda (_%stx172826%_)
        (letrec ((_%stop?172828%_
                  (lambda (_%stx172830%_)
                    (let* ((_%e172831172838%_ _%stx172830%_)
                           (_%E172833172842%_ (lambda () '#f))
                           (_%E172832172856%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172831172838%_)
                                  (let ((_%e172834172846%_
                                         (gx#syntax-e _%e172831172838%_)))
                                    (let ((_%hd172835172849%_
                                           (##car _%e172834172846%_))
                                          (_%tl172836172851%_
                                           (##cdr _%e172834172846%_)))
                                      (let ((_%hd172854%_ _%hd172835172849%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd172854%_))))
                                  (_%E172833172842%_)))))
                      (_%E172832172856%_)))))
          (gx#core-expand*__% _%stx172826%_ _%stop?172828%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx172632%_
               _%expand-special172633%_
               _%begin-form172634%_
               _%expand-e172635%_)
        (letrec ((_%expand-splice172637%_
                  (lambda (_%hd172800%_
                           _%body172801%_
                           _%rest172802%_
                           _%r172803%_)
                    (if (gx#stx-list? _%body172801%_)
                        (_%K172641%_
                         (gx#stx-foldr cons _%rest172802%_ _%body172801%_)
                         _%r172803%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx172632%_
                         _%hd172800%_))))
                 (_%expand-cond-expand172638%_
                  (lambda (_%hd172796%_ _%rest172797%_ _%r172798%_)
                    (_%K172641%_
                     (cons (gx#core-expand-cond-expand% _%hd172796%_)
                           _%rest172797%_)
                     _%r172798%_)))
                 (_%expand-include172639%_
                  (lambda (_%hd172745%_ _%rest172746%_ _%r172747%_)
                    (let* ((_%e172748172758%_ _%hd172745%_)
                           (_%E172750172762%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172748172758%_)))
                           (_%E172749172792%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172748172758%_)
                                  (let ((_%e172751172766%_
                                         (gx#syntax-e _%e172748172758%_)))
                                    (let ((_%hd172752172769%_
                                           (##car _%e172751172766%_))
                                          (_%tl172753172771%_
                                           (##cdr _%e172751172766%_)))
                                      (if (gx#stx-pair? _%tl172753172771%_)
                                          (let ((_%e172754172774%_
                                                 (gx#syntax-e
                                                  _%tl172753172771%_)))
                                            (let ((_%hd172755172777%_
                                                   (##car _%e172754172774%_))
                                                  (_%tl172756172779%_
                                                   (##cdr _%e172754172774%_)))
                                              (let ((_%path172782%_
                                                     _%hd172755172777%_))
                                                (if (gx#stx-null?
                                                     _%tl172756172779%_)
                                                    (if (gx#stx-string?
                                                         _%path172782%_)
                                                        (let* ((_%rpath172784%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path172782%_
                         (gx#stx-source _%hd172745%_)))
                       (_%block172786%_
                        (gx#core-expand-include%__%
                         _%hd172745%_
                         _%rpath172784%_))
                       (_%rbody172789%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block172786%_
                            _%expand-special172633%_
                            '#f
                            _%expand-e172635%_))
                         gx#current-expander-path
                         (cons _%rpath172784%_ (gx#current-expander-path)))))
                  (_%K172641%_
                   _%rest172746%_
                   (foldr__0 cons _%r172747%_ _%rbody172789%_)))
                (_%E172750172762%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E172750172762%_)))))
                                          (_%E172750172762%_))))
                                  (_%E172750172762%_)))))
                      (_%E172749172792%_))))
                 (_%expand-expression172640%_
                  (lambda (_%hd172741%_ _%rest172742%_ _%r172743%_)
                    (_%K172641%_
                     _%rest172742%_
                     (cons (_%expand-e172635%_ _%hd172741%_) _%r172743%_))))
                 (_%K172641%_
                  (lambda (_%rest172671%_ _%r172672%_)
                    (let* ((_%e172673172680%_ _%rest172671%_)
                           (_%E172675172684%_
                            (lambda ()
                              (if _%begin-form172634%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form172634%_
                                    (reverse _%r172672%_))
                                   (gx#stx-source _%stx172632%_))
                                  _%r172672%_)))
                           (_%E172674172737%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172673172680%_)
                                  (let ((_%e172676172688%_
                                         (gx#syntax-e _%e172673172680%_)))
                                    (let ((_%hd172677172691%_
                                           (##car _%e172676172688%_))
                                          (_%tl172678172693%_
                                           (##cdr _%e172676172688%_)))
                                      (let* ((_%hd172696%_ _%hd172677172691%_)
                                             (_%rest172698%_
                                              _%tl172678172693%_)
                                             (_%hd172700%_
                                              (gx#core-expand-head
                                               _%hd172696%_))
                                             (_%e172701172708%_ _%hd172700%_)
                                             (_%E172703172712%_
                                              (lambda ()
                                                (_%expand-expression172640%_
                                                 _%hd172700%_
                                                 _%rest172698%_
                                                 _%r172672%_)))
                                             (_%E172702172733%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e172701172708%_)
                                                    (let ((_%e172704172716%_
                                                           (gx#syntax-e
                                                            _%e172701172708%_)))
                                                      (let ((_%hd172705172719%_
                                                             (##car _%e172704172716%_))
                                                            (_%tl172706172721%_
                                                             (##cdr _%e172704172716%_)))
                                                        (let* ((_%form172724%_
                                                                _%hd172705172719%_)
                                                               (_%body172726%_
                                                                _%tl172706172721%_)
                                                               (_%bind172728%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form172724%_)
                            (gx#resolve-identifier__0 _%form172724%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind172728%_)
                      (let ((_%$e172730%_
                             (##unchecked-structure-ref
                              _%bind172728%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e172730%_)
                            (_%expand-splice172637%_
                             _%hd172700%_
                             _%body172726%_
                             _%rest172698%_
                             _%r172672%_)
                            (if (eq? '%#cond-expand _%$e172730%_)
                                (_%expand-cond-expand172638%_
                                 _%hd172700%_
                                 _%rest172698%_
                                 _%r172672%_)
                                (if (eq? '%#include _%$e172730%_)
                                    (_%expand-include172639%_
                                     _%hd172700%_
                                     _%rest172698%_
                                     _%r172672%_)
                                    (_%expand-special172633%_
                                     _%hd172700%_
                                     _%K172641%_
                                     _%rest172698%_
                                     _%r172672%_)))))
                      (_%expand-expression172640%_
                       _%hd172700%_
                       _%rest172698%_
                       _%r172672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E172703172712%_)))))
                                        (_%E172702172733%_))))
                                  (_%E172675172684%_)))))
                      (_%E172674172737%_)))))
          (let* ((_%e172642172649%_ _%stx172632%_)
                 (_%E172644172653%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e172642172649%_)))
                 (_%E172643172667%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172642172649%_)
                        (let ((_%e172645172657%_
                               (gx#syntax-e _%e172642172649%_)))
                          (let ((_%hd172646172660%_ (##car _%e172645172657%_))
                                (_%tl172647172662%_ (##cdr _%e172645172657%_)))
                            (let ((_%body172665%_ _%tl172647172662%_))
                              (if (gx#stx-list? _%body172665%_)
                                  (_%K172641%_ _%body172665%_ '())
                                  (_%E172644172653%_)))))
                        (_%E172644172653%_)))))
            (_%E172643172667%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx172808%_ _%expand-special172809%_)
        (let* ((_%begin-form172811%_ '%#begin)
               (_%expand-e172813%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx172808%_
           _%expand-special172809%_
           _%begin-form172811%_
           _%expand-e172813%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx172815%_ _%expand-special172816%_ _%begin-form172817%_)
        (let ((_%expand-e172819%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx172815%_
           _%expand-special172816%_
           _%begin-form172817%_
           _%expand-e172819%_))))
    (define gx#core-expand-block
      (lambda _g174722_
        (let ((_g174723_ (##length _g174722_)))
          (cond ((##fx= _g174723_ 2) (apply gx#core-expand-block__0 _g174722_))
                ((##fx= _g174723_ 3) (apply gx#core-expand-block__1 _g174722_))
                ((##fx= _g174723_ 4) (apply gx#core-expand-block__% _g174722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g174722_))))))
    (define gx#core-expand-block*
      (lambda (_%stx172580%_ _%expand-special172581%_)
        (let* ((_%g172582172593%_
                (gx#core-expand-block__1
                 _%stx172580%_
                 _%expand-special172581%_
                 '#f))
               (_%E172586172597%_
                (lambda ()
                  (error '"No clause matching"
                         _%g172582172593%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K172591172628%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx172580%_)))
                (_%K172588172614%_ (lambda (_%expr172612%_) _%expr172612%_))
                (_%K172587172603%_
                 (lambda (_%body172601%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body172601%_))
                    (gx#stx-source _%stx172580%_)))))
            (let ((_%try-match172584172624%_
                   (lambda ()
                     (if (pair? _%g172582172593%_)
                         (let ((_%tl172590172619%_ (##cdr _%g172582172593%_))
                               (_%hd172589172617%_ (##car _%g172582172593%_)))
                           (if (null? _%tl172590172619%_)
                               (let ((_%expr172622%_ _%hd172589172617%_))
                                 (_%K172588172614%_ _%expr172622%_))
                               (let ((_%body172606%_ _%g172582172593%_))
                                 (_%K172587172603%_ _%body172606%_))))
                         (let ((_%body172606%_ _%g172582172593%_))
                           (_%K172587172603%_ _%body172606%_))))))
              (if (null? _%g172582172593%_)
                  (_%K172591172628%_)
                  (_%try-match172584172624%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx172406%_)
        (letrec ((_%satisfied?172408%_
                  (lambda (_%condition172509%_)
                    (let* ((_%e172510172525%_ _%condition172509%_)
                           (_%E172520172529%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172510172525%_)))
                           (_%E172513172548%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172510172525%_)
                                  (let ((_%e172521172533%_
                                         (gx#syntax-e _%e172510172525%_)))
                                    (let ((_%hd172522172536%_
                                           (##car _%e172521172533%_))
                                          (_%tl172523172538%_
                                           (##cdr _%e172521172533%_)))
                                      (let* ((_%combinator172541%_
                                              _%hd172522172536%_)
                                             (_%body172543%_
                                              _%tl172523172538%_))
                                        (if (gx#stx-list? _%body172543%_)
                                            (let ((_%$e172545%_
                                                   (gx#stx-e
                                                    _%combinator172541%_)))
                                              (if (eq? 'not _%$e172545%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?172408%_
                                                        _%body172543%_))
                                                  (if (eq? 'and _%$e172545%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?172408%_
                                                       _%body172543%_)
                                                      (if (eq? 'or
                                                               _%$e172545%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?172408%_
                                                           _%body172543%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e172545%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body172543%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx172406%_
                       _%combinator172541%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E172520172529%_)))))
                                  (_%E172520172529%_))))
                           (_%E172512172570%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172510172525%_)
                                  (let ((_%e172514172552%_
                                         (gx#syntax-e _%e172510172525%_)))
                                    (let ((_%hd172515172555%_
                                           (##car _%e172514172552%_))
                                          (_%tl172516172557%_
                                           (##cdr _%e172514172552%_)))
                                      (if (and (gx#identifier?
                                                _%hd172515172555%_)
                                               (gx#core-identifier=?
                                                _%hd172515172555%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl172516172557%_)
                                              (let ((_%e172517172560%_
                                                     (gx#syntax-e
                                                      _%tl172516172557%_)))
                                                (let ((_%hd172518172563%_
                                                       (##car _%e172517172560%_))
                                                      (_%tl172519172565%_
                                                       (##cdr _%e172517172560%_)))
                                                  (let ((_%expr172568%_
                                                         _%hd172518172563%_))
                                                    (if (gx#stx-null?
                                                         _%tl172519172565%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr172568%_)
                                                        (_%E172513172548%_)))))
                                              (_%E172513172548%_))
                                          (_%E172513172548%_))))
                                  (_%E172513172548%_))))
                           (_%E172511172576%_
                            (lambda ()
                              (let ((_%id172574%_ _%e172510172525%_))
                                (if (gx#identifier? _%id172574%_)
                                    (gx#core-bound-identifier?__%
                                     _%id172574%_
                                     gx#feature-binding?)
                                    (_%E172512172570%_))))))
                      (_%E172511172576%_))))
                 (_%loop172409%_
                  (lambda (_%rest172439%_)
                    (let* ((_%e172440172448%_ _%rest172439%_)
                           (_%E172446172452%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172440172448%_)))
                           (_%E172442172456%_
                            (lambda ()
                              (if (gx#stx-null? _%e172440172448%_)
                                  '()
                                  (_%E172446172452%_))))
                           (_%E172441172505%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172440172448%_)
                                  (let ((_%e172443172460%_
                                         (gx#syntax-e _%e172440172448%_)))
                                    (let ((_%hd172444172463%_
                                           (##car _%e172443172460%_))
                                          (_%tl172445172465%_
                                           (##cdr _%e172443172460%_)))
                                      (let* ((_%hd172468%_ _%hd172444172463%_)
                                             (_%rest172470%_
                                              _%tl172445172465%_)
                                             (_%e172471172478%_ _%hd172468%_)
                                             (_%E172473172482%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e172471172478%_)))
                                             (_%E172472172501%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e172471172478%_)
                                                    (let ((_%e172474172486%_
                                                           (gx#syntax-e
                                                            _%e172471172478%_)))
                                                      (let ((_%hd172475172489%_
                                                             (##car _%e172474172486%_))
                                                            (_%tl172476172491%_
                                                             (##cdr _%e172474172486%_)))
                                                        (let* ((_%condition172494%_
                                                                _%hd172475172489%_)
                                                               (_%body172496%_
                                                                _%tl172476172491%_))
                                                          (if (gx#stx-eq?
                                                               _%condition172494%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest172470%_)
                          _%body172496%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx172406%_
                           _%hd172468%_))
                      (if (_%satisfied?172408%_ _%condition172494%_)
                          _%body172496%_
                          (_%loop172409%_ _%rest172470%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E172473172482%_)))))
                                        (_%E172472172501%_))))
                                  (_%E172442172456%_)))))
                      (_%E172441172505%_)))))
          (let* ((_%e172410172417%_ _%stx172406%_)
                 (_%E172412172421%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e172410172417%_)))
                 (_%E172411172435%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172410172417%_)
                        (let ((_%e172413172425%_
                               (gx#syntax-e _%e172410172417%_)))
                          (let ((_%hd172414172428%_ (##car _%e172413172425%_))
                                (_%tl172415172430%_ (##cdr _%e172413172425%_)))
                            (let ((_%clauses172433%_ _%tl172415172430%_))
                              (if (gx#stx-list? _%clauses172433%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop172409%_ _%clauses172433%_))
                                  (_%E172412172421%_)))))
                        (_%E172412172421%_)))))
            (_%E172411172435%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx172349%_ _%rpath172350%_)
        (let* ((_%e172351172361%_ _%stx172349%_)
               (_%E172353172365%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e172351172361%_)))
               (_%E172352172392%_
                (lambda ()
                  (if (gx#stx-pair? _%e172351172361%_)
                      (let ((_%e172354172369%_
                             (gx#syntax-e _%e172351172361%_)))
                        (let ((_%hd172355172372%_ (##car _%e172354172369%_))
                              (_%tl172356172374%_ (##cdr _%e172354172369%_)))
                          (if (gx#stx-pair? _%tl172356172374%_)
                              (let ((_%e172357172377%_
                                     (gx#syntax-e _%tl172356172374%_)))
                                (let ((_%hd172358172380%_
                                       (##car _%e172357172377%_))
                                      (_%tl172359172382%_
                                       (##cdr _%e172357172377%_)))
                                  (let ((_%path172385%_ _%hd172358172380%_))
                                    (if (gx#stx-null? _%tl172359172382%_)
                                        (if (gx#stx-string? _%path172385%_)
                                            (let ((_%rpath172390%_
                                                   (let ((_%$e172387%_
                                                          _%rpath172350%_))
                                                     (if _%$e172387%_
                                                         _%$e172387%_
                                                         (gx#core-resolve-path__%
                                                          _%path172385%_
                                                          (gx#stx-source
                                                           _%stx172349%_))))))
                                              (if (member _%rpath172390%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx172349%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath172390%_))
                                                    (gx#stx-source
                                                     _%stx172349%_)))))
                                            (_%E172353172365%_))
                                        (_%E172353172365%_)))))
                              (_%E172353172365%_))))
                      (_%E172353172365%_)))))
          (_%E172352172392%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx172399%_)
        (let ((_%rpath172401%_ '#f))
          (gx#core-expand-include%__% _%stx172399%_ _%rpath172401%_))))
    (define gx#core-expand-include%
      (lambda _g174724_
        (let ((_g174725_ (##length _g174724_)))
          (cond ((##fx= _g174725_ 1)
                 (apply gx#core-expand-include%__0 _g174724_))
                ((##fx= _g174725_ 2)
                 (apply gx#core-expand-include%__% _g174724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g174724_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K172315%_ _%stx172316%_ _%method172317%_)
        (if (procedure? _%K172315%_)
            (let ((_%$e172320%_ (gx#stx-source _%stx172316%_)))
              (if _%$e172320%_
                  ((lambda (_%g172322172324%_)
                     (gx#stx-wrap-source
                      (_%K172315%_ _%stx172316%_)
                      _%g172322172324%_))
                   _%$e172320%_)
                  (_%K172315%_ _%stx172316%_)))
            (let ((_%$e172328%_
                   (bound-method-ref _%K172315%_ _%method172317%_)))
              (if _%$e172328%_
                  ((lambda (_%g172330172332%_)
                     (gx#core-apply-expander__%
                      _%g172330172332%_
                      _%stx172316%_
                      _%method172317%_))
                   _%$e172328%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx172316%_
                   _%method172317%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K172339%_ _%stx172340%_)
        (let ((_%method172342%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K172339%_
           _%stx172340%_
           _%method172342%_))))
    (define gx#core-apply-expander
      (lambda _g174726_
        (let ((_g174727_ (##length _g174726_)))
          (cond ((##fx= _g174727_ 2)
                 (apply gx#core-apply-expander__0 _g174726_))
                ((##fx= _g174727_ 3)
                 (apply gx#core-apply-expander__% _g174726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g174726_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self172300%_ _%stx172301%_)
        (let ((_%self172304%_ _%self172300%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx172301%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self172143%_ _%stx172144%_)
        (let* ((_%self172147%_ _%self172143%_)
               (_%self172156172162%_ _%self172147%_)
               (_%E172158172165%_
                (lambda ()
                  (error '"No clause matching"
                         _%self172156172162%_
                         '((macro-expander K)))
                  '#!void))
               (_%K172159172170%_
                (lambda (_%K172168%_)
                  (gx#core-apply-expander__0 _%K172168%_ _%stx172144%_)))
               (_%e172160172173%_
                (##unchecked-structure-ref _%self172156172162%_ '1 '#f '#f))
               (_%K172176%_ _%e172160172173%_))
          (_%K172159172170%_ _%K172176%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self171986%_ _%stx171987%_)
        (let ((_%self171990%_ _%self171986%_))
          (if (gx#sealed-syntax? _%stx171987%_)
              _%stx171987%_
              (let* ((_%self171999172005%_ _%self171990%_)
                     (_%E172001172008%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self171999172005%_
                               '((core-expander K)))
                        '#!void))
                     (_%K172002172013%_
                      (lambda (_%K172011%_)
                        (gx#core-apply-expander__0 _%K172011%_ _%stx171987%_)))
                     (_%e172003172016%_
                      (##unchecked-structure-ref
                       _%self171999172005%_
                       '1
                       '#f
                       '#f))
                     (_%K172019%_ _%e172003172016%_))
                (_%K172002172013%_ _%K172019%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self171837%_ _%stx171838%_ _%top?171839%_)
        (let ((_%self171842%_ _%self171837%_))
          (if (_%top?171839%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self171842%_
               _%stx171838%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx171838%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self171855%_ _%stx171856%_)
        (let ((_%top?171858%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self171855%_
           _%stx171856%_
           _%top?171858%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g174728_
        (let ((_g174729_ (##length _g174728_)))
          (cond ((##fx= _g174729_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g174728_))
                ((##fx= _g174729_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g174728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g174728_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self171700%_ _%stx171701%_)
        (let ((_%self171704%_ _%self171700%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self171704%_
           _%stx171701%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self171515%_ _%stx171516%_)
        (let* ((_%self171519%_ _%self171515%_)
               (_%self171528171534%_ _%self171519%_)
               (_%E171530171537%_
                (lambda ()
                  (error '"No clause matching"
                         _%self171528171534%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K171531171570%_
                (lambda (_%id171540%_)
                  (let* ((_%e171541171548%_ _%stx171516%_)
                         (_%E171543171552%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e171541171548%_)))
                         (_%E171542171566%_
                          (lambda ()
                            (if (gx#stx-pair? _%e171541171548%_)
                                (let ((_%e171544171556%_
                                       (gx#syntax-e _%e171541171548%_)))
                                  (let ((_%hd171545171559%_
                                         (##car _%e171544171556%_))
                                        (_%tl171546171561%_
                                         (##cdr _%e171544171556%_)))
                                    (let ((_%body171564%_ _%tl171546171561%_))
                                      (gx#core-cons
                                       _%id171540%_
                                       _%body171564%_))))
                                (_%E171543171552%_)))))
                    (_%E171542171566%_))))
               (_%e171532171573%_
                (##unchecked-structure-ref _%self171528171534%_ '1 '#f '#f))
               (_%id171576%_ _%e171532171573%_))
          (_%K171531171570%_ _%id171576%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self171342%_ _%stx171343%_ _%method171344%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx171343%_))
              (force-output))
            '#!void)
        (let* ((_%self171345171353%_ _%self171342%_)
               (_%E171347171356%_
                (lambda ()
                  (error '"No clause matching"
                         _%self171345171353%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K171348171363%_
                (lambda (_%phi171359%_ _%ctx171360%_ _%K171361%_)
                  (gx#core-apply-user-macro
                   _%K171361%_
                   _%stx171343%_
                   _%ctx171360%_
                   _%phi171359%_
                   _%method171344%_))))
          (if (##structure-instance-of?
               _%self171345171353%_
               'gx#user-expander::t)
              (let* ((_%e171349171366%_
                      (##unchecked-structure-ref
                       _%self171345171353%_
                       '1
                       '#f
                       '#f))
                     (_%K171369%_ _%e171349171366%_)
                     (_%e171350171371%_
                      (##unchecked-structure-ref
                       _%self171345171353%_
                       '2
                       '#f
                       '#f))
                     (_%ctx171374%_ _%e171350171371%_)
                     (_%e171351171376%_
                      (##unchecked-structure-ref
                       _%self171345171353%_
                       '3
                       '#f
                       '#f))
                     (_%phi171379%_ _%e171351171376%_))
                (_%K171348171363%_ _%phi171379%_ _%ctx171374%_ _%K171369%_))
              (_%E171347171356%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self171384%_ _%stx171385%_)
        (let ((_%method171387%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self171384%_
           _%stx171385%_
           _%method171387%_))))
    (define gx#core-apply-user-expander
      (lambda _g174730_
        (let ((_g174731_ (##length _g174730_)))
          (cond ((##fx= _g174731_ 2)
                 (apply gx#core-apply-user-expander__0 _g174730_))
                ((##fx= _g174731_ 3)
                 (apply gx#core-apply-user-expander__% _g174730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g174730_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K171332%_
               _%stx171333%_
               _%ctx171334%_
               _%phi171335%_
               _%method171336%_)
        (let ((_%mark171338%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx171334%_
                _%phi171335%_
                _%stx171333%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K171332%_
               (gx#stx-apply-mark _%stx171333%_ _%mark171338%_)
               _%method171336%_)
              _%mark171338%_))
           gx#current-expander-marks
           (cons _%mark171338%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx171180%_ _%phi171181%_ _%ctx171182%_)
        (let _%lp171184%_ ((_%bind171186%_
                            (gx#core-resolve-identifier__%
                             _%stx171180%_
                             _%phi171181%_
                             _%ctx171182%_)))
          (if (##structure-direct-instance-of?
               _%bind171186%_
               'gx#import-binding::t)
              (_%lp171184%_
               (##unchecked-structure-ref _%bind171186%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind171186%_
                   'gx#alias-binding::t)
                  (_%lp171184%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind171186%_ '5 '#f '#f)
                    _%phi171181%_
                    _%ctx171182%_))
                  _%bind171186%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx171194%_)
        (let* ((_%phi171196%_ (gx#current-expander-phi))
               (_%ctx171198%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx171194%_
           _%phi171196%_
           _%ctx171198%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx171200%_ _%phi171201%_)
        (let ((_%ctx171203%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx171200%_
           _%phi171201%_
           _%ctx171203%_))))
    (define gx#resolve-identifier
      (lambda _g174732_
        (let ((_g174733_ (##length _g174732_)))
          (cond ((##fx= _g174733_ 1)
                 (apply gx#resolve-identifier__0 _g174732_))
                ((##fx= _g174733_ 2)
                 (apply gx#resolve-identifier__1 _g174732_))
                ((##fx= _g174733_ 3)
                 (apply gx#resolve-identifier__% _g174732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g174732_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx171135%_
               _%val171136%_
               _%rebind?171137%_
               _%phi171138%_
               _%ctx171139%_)
        (let ((_%rebind?171144%_
               (if (not _%rebind?171137%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?171137%_)
                       _%rebind?171137%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx171135%_)
           _%val171136%_
           _%rebind?171144%_
           _%phi171138%_
           _%ctx171139%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx171149%_ _%val171150%_)
        (let* ((_%rebind?171152%_ '#f)
               (_%phi171154%_ (gx#current-expander-phi))
               (_%ctx171156%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx171149%_
           _%val171150%_
           _%rebind?171152%_
           _%phi171154%_
           _%ctx171156%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx171158%_ _%val171159%_ _%rebind?171160%_)
        (let* ((_%phi171162%_ (gx#current-expander-phi))
               (_%ctx171164%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx171158%_
           _%val171159%_
           _%rebind?171160%_
           _%phi171162%_
           _%ctx171164%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx171166%_ _%val171167%_ _%rebind?171168%_ _%phi171169%_)
        (let ((_%ctx171171%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx171166%_
           _%val171167%_
           _%rebind?171168%_
           _%phi171169%_
           _%ctx171171%_))))
    (define gx#bind-identifier!
      (lambda _g174734_
        (let ((_g174735_ (##length _g174734_)))
          (cond ((##fx= _g174735_ 2) (apply gx#bind-identifier!__0 _g174734_))
                ((##fx= _g174735_ 3) (apply gx#bind-identifier!__1 _g174734_))
                ((##fx= _g174735_ 4) (apply gx#bind-identifier!__2 _g174734_))
                ((##fx= _g174735_ 5) (apply gx#bind-identifier!__% _g174734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g174734_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx171101%_ _%phi171102%_ _%ctx171103%_)
        (let _%lp171105%_ ((_%e171107%_ _%stx171101%_)
                           (_%marks171108%_ (gx#current-expander-marks)))
          (if (symbol? _%e171107%_)
              (gx#core-resolve-binding
               _%e171107%_
               _%phi171102%_
               _%phi171102%_
               _%ctx171103%_
               (reverse _%marks171108%_))
              (if (gx#identifier-quote? _%e171107%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e171107%_ '1 '#f '#f)
                   _%phi171102%_
                   '0
                   (##unchecked-structure-ref _%e171107%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e171107%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e171107%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e171107%_ '1 '#f '#f)
                       _%phi171102%_
                       _%phi171102%_
                       _%ctx171103%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e171107%_ '3 '#f '#f)
                        _%marks171108%_))
                      (if (##structure-direct-instance-of?
                           _%e171107%_
                           'gx#syntax-wrap::t)
                          (_%lp171105%_
                           (##unchecked-structure-ref _%e171107%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e171107%_ '3 '#f '#f)
                            _%marks171108%_))
                          (if (##structure-instance-of?
                               _%e171107%_
                               'gerbil#AST::t)
                              (_%lp171105%_
                               (##unchecked-structure-ref
                                _%e171107%_
                                '1
                                '#f
                                '#f)
                               _%marks171108%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx171101%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx171119%_)
        (let* ((_%phi171121%_ (gx#current-expander-phi))
               (_%ctx171123%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx171119%_
           _%phi171121%_
           _%ctx171123%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx171125%_ _%phi171126%_)
        (let ((_%ctx171128%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx171125%_
           _%phi171126%_
           _%ctx171128%_))))
    (define gx#core-resolve-identifier
      (lambda _g174736_
        (let ((_g174737_ (##length _g174736_)))
          (cond ((##fx= _g174737_ 1)
                 (apply gx#core-resolve-identifier__0 _g174736_))
                ((##fx= _g174737_ 2)
                 (apply gx#core-resolve-identifier__1 _g174736_))
                ((##fx= _g174737_ 3)
                 (apply gx#core-resolve-identifier__% _g174736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g174736_))))))
    (define gx#core-resolve-binding
      (lambda (_%id171012%_
               _%phi171013%_
               _%src-phi171014%_
               _%ctx171015%_
               _%marks171016%_)
        (letrec ((_%resolve171018%_
                  (lambda (_%ctx171085%_ _%src-phi171086%_ _%key171087%_)
                    (let _%lp171089%_ ((_%ctx171091%_
                                        (gx#core-context-shift
                                         _%ctx171085%_
                                         _%phi171013%_))
                                       (_%dphi171092%_
                                        (fx- _%phi171013%_ _%src-phi171086%_)))
                      (let ((_%$e171094%_
                             (gx#core-context-resolve
                              _%ctx171091%_
                              _%key171087%_)))
                        (if _%$e171094%_
                            _%$e171094%_
                            (if (fxzero? _%dphi171092%_)
                                '#f
                                (if (fxpositive? _%dphi171092%_)
                                    (_%lp171089%_
                                     (gx#core-context-shift _%ctx171091%_ '-1)
                                     (##fx- _%dphi171092%_ '1))
                                    (_%lp171089%_
                                     (gx#core-context-shift _%ctx171091%_ '1)
                                     (##fx+ _%dphi171092%_ '1))))))))))
          (let _%lp171020%_ ((_%ctx171022%_ _%ctx171015%_)
                             (_%src-phi171023%_ _%src-phi171014%_)
                             (_%rest171024%_ _%marks171016%_))
            (let* ((_%rest171025171033%_ _%rest171024%_)
                   (_%else171027171041%_
                    (lambda ()
                      (_%resolve171018%_
                       _%ctx171022%_
                       _%src-phi171023%_
                       _%id171012%_)))
                   (_%K171029171073%_
                    (lambda (_%rest171044%_ _%hd171045%_)
                      (let* ((_%hd171046171052%_ _%hd171045%_)
                             (_%E171048171055%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd171046171052%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K171049171065%_
                              (lambda (_%subst171058%_)
                                (let ((_%$e171062%_
                                       (let ((_%key171060%_
                                              (if _%subst171058%_
                                                  (hash-get
                                                   _%subst171058%_
                                                   _%id171012%_)
                                                  '#f)))
                                         (if _%key171060%_
                                             (_%resolve171018%_
                                              _%ctx171022%_
                                              _%src-phi171023%_
                                              _%key171060%_)
                                             '#f))))
                                  (if _%$e171062%_
                                      _%$e171062%_
                                      (_%lp171020%_
                                       (##unchecked-structure-ref
                                        _%hd171045%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd171045%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest171044%_))))))
                        (if (##structure-instance-of?
                             _%hd171046171052%_
                             'gx#expander-mark::t)
                            (let* ((_%e171050171068%_
                                    (##unchecked-structure-ref
                                     _%hd171046171052%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst171071%_ _%e171050171068%_))
                              (_%K171049171065%_ _%subst171071%_))
                            (_%E171048171055%_))))))
              (if (pair? _%rest171025171033%_)
                  (let ((_%hd171030171076%_ (##car _%rest171025171033%_))
                        (_%tl171031171078%_ (##cdr _%rest171025171033%_)))
                    (let* ((_%hd171081%_ _%hd171030171076%_)
                           (_%rest171083%_ _%tl171031171078%_))
                      (_%K171029171073%_ _%rest171083%_ _%hd171081%_)))
                  (_%else171027171041%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key170883%_
               _%val170884%_
               _%rebind?170885%_
               _%phi170886%_
               _%ctx170887%_)
        (letrec ((_%update-binding170889%_
                  (lambda (_%xval170961%_)
                    (if (or (_%rebind?170885%_
                             _%ctx170887%_
                             _%xval170961%_
                             _%val170884%_)
                            (and (##structure-direct-instance-of?
                                  _%xval170961%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval170961%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val170884%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val170884%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval170961%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val170884%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val170884%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval170961%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val170884%_
                        (if (and (##structure-direct-instance-of?
                                  _%val170884%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val170884%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval170961%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val170884%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval170961%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval170961%_
                            (if (and (##structure-direct-instance-of?
                                      _%val170884%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval170961%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key170883%_
                                 (cons (##unchecked-structure-ref
                                        _%val170884%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val170884%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval170961%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval170961%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval170961%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval170961%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key170883%_
                                 _%val170884%_
                                 _%xval170961%_))))))
                 (_%gensubst170890%_
                  (lambda (_%subst170956%_ _%id170957%_)
                    (let ((_%eid170959%_
                           (gensym (if (uninterned-symbol? _%id170957%_)
                                       '%
                                       _%id170957%_))))
                      (hash-put! _%subst170956%_ _%id170957%_ _%eid170959%_)
                      _%eid170959%_)))
                 (_%subst!170891%_
                  (lambda (_%key170893%_)
                    (let* ((_%key170894170902%_ _%key170893%_)
                           (_%else170896170910%_ (lambda () _%key170893%_))
                           (_%K170898170944%_
                            (lambda (_%mark170913%_ _%id170914%_)
                              (let* ((_%mark170915170921%_ _%mark170913%_)
                                     (_%E170917170924%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark170915170921%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K170918170936%_
                                      (lambda (_%subst170927%_)
                                        (if (not _%subst170927%_)
                                            (let ((_%subst170930%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark170913%_
                                               _%subst170930%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst170890%_
                                               _%subst170930%_
                                               _%id170914%_))
                                            (let ((_%$e170932%_
                                                   (hash-get
                                                    _%subst170927%_
                                                    _%id170914%_)))
                                              (if _%$e170932%_
                                                  _%$e170932%_
                                                  (_%gensubst170890%_
                                                   _%subst170927%_
                                                   _%id170914%_)))))))
                                (if (##structure-instance-of?
                                     _%mark170915170921%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e170919170939%_
                                            (##unchecked-structure-ref
                                             _%mark170915170921%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst170942%_ _%e170919170939%_))
                                      (_%K170918170936%_ _%subst170942%_))
                                    (_%E170917170924%_))))))
                      (if (pair? _%key170894170902%_)
                          (let ((_%hd170899170947%_
                                 (##car _%key170894170902%_))
                                (_%tl170900170949%_
                                 (##cdr _%key170894170902%_)))
                            (let* ((_%id170952%_ _%hd170899170947%_)
                                   (_%mark170954%_ _%tl170900170949%_))
                              (_%K170898170944%_ _%mark170954%_ _%id170952%_)))
                          (_%else170896170910%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx170887%_ _%phi170886%_)
           (_%subst!170891%_ _%key170883%_)
           _%val170884%_
           _%update-binding170889%_))))
    (define gx#core-bind!__0
      (lambda (_%key170982%_ _%val170983%_)
        (let* ((_%rebind?170985%_ false)
               (_%phi170987%_ (gx#current-expander-phi))
               (_%ctx170989%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key170982%_
           _%val170983%_
           _%rebind?170985%_
           _%phi170987%_
           _%ctx170989%_))))
    (define gx#core-bind!__1
      (lambda (_%key170991%_ _%val170992%_ _%rebind?170993%_)
        (let* ((_%phi170995%_ (gx#current-expander-phi))
               (_%ctx170997%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key170991%_
           _%val170992%_
           _%rebind?170993%_
           _%phi170995%_
           _%ctx170997%_))))
    (define gx#core-bind!__2
      (lambda (_%key170999%_ _%val171000%_ _%rebind?171001%_ _%phi171002%_)
        (let ((_%ctx171004%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key170999%_
           _%val171000%_
           _%rebind?171001%_
           _%phi171002%_
           _%ctx171004%_))))
    (define gx#core-bind!
      (lambda _g174738_
        (let ((_g174739_ (##length _g174738_)))
          (cond ((##fx= _g174739_ 2) (apply gx#core-bind!__0 _g174738_))
                ((##fx= _g174739_ 3) (apply gx#core-bind!__1 _g174738_))
                ((##fx= _g174739_ 4) (apply gx#core-bind!__2 _g174738_))
                ((##fx= _g174739_ 5) (apply gx#core-bind!__% _g174738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g174738_))))))
    (define gx#core-identifier-key
      (lambda (_%stx170814%_)
        (if (symbol? _%stx170814%_)
            (let* ((_%g170816170824%_ (gx#current-expander-marks))
                   (_%else170818170832%_ (lambda () _%stx170814%_))
                   (_%K170820170837%_
                    (lambda (_%hd170835%_) (cons _%stx170814%_ _%hd170835%_))))
              (if (pair? _%g170816170824%_)
                  (let* ((_%hd170821170840%_ (##car _%g170816170824%_))
                         (_%hd170843%_ _%hd170821170840%_))
                    (_%K170820170837%_ _%hd170843%_))
                  (_%else170818170832%_)))
            (if (gx#identifier? _%stx170814%_)
                (let* ((_%id170846%_ (gx#syntax-local-unwrap _%stx170814%_))
                       (_%eid170848%_ (gx#stx-e _%id170846%_))
                       (_%marks170850%_
                        (gx#stx-identifier-marks* _%id170846%_))
                       (_%marks170852170860%_ _%marks170850%_)
                       (_%else170854170868%_ (lambda () _%eid170848%_))
                       (_%K170856170873%_
                        (lambda (_%hd170871%_)
                          (cons _%eid170848%_ _%hd170871%_))))
                  (if (pair? _%marks170852170860%_)
                      (let* ((_%hd170857170876%_ (##car _%marks170852170860%_))
                             (_%hd170879%_ _%hd170857170876%_))
                        (_%K170856170873%_ _%hd170879%_))
                      (_%else170854170868%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx170814%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx170753%_ _%phi170754%_)
        (letrec ((_%make-phi170756%_
                  (lambda (_%super170812%_)
                    (let ((__obj174709
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj174709
                       (##gensym 'phi)
                       _%super170812%_)
                      __obj174709)))
                 (_%make-phi/up170757%_
                  (lambda (_%ctx170807%_ _%super170808%_)
                    (let ((_%ctx+1170810%_
                           (_%make-phi170756%_ _%super170808%_)))
                      (##unchecked-structure-set!
                       _%ctx170807%_
                       _%ctx+1170810%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1170810%_
                       _%ctx170807%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1170810%_)))
                 (_%make-phi/down170758%_
                  (lambda (_%ctx170802%_ _%super170803%_)
                    (let ((_%ctx-1170805%_
                           (_%make-phi170756%_ _%super170803%_)))
                      (##unchecked-structure-set!
                       _%ctx-1170805%_
                       _%ctx170802%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx170802%_
                       _%ctx-1170805%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1170805%_)))
                 (_%shift170759%_
                  (lambda (_%ctx170785%_
                           _%delta170786%_
                           _%make-delta-context170787%_
                           _%phi170788%_
                           _%K170789%_)
                    (let ((_%$e170791%_
                           (##unchecked-structure-ref
                            _%ctx170785%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e170791%_
                          ((lambda (_%super170794%_)
                             (let* ((_%super170796%_
                                     (_%K170789%_
                                      _%super170794%_
                                      _%delta170786%_))
                                    (_%ctx+d170798%_
                                     (_%make-delta-context170787%_
                                      _%ctx170785%_
                                      _%super170796%_)))
                               (_%K170789%_
                                _%ctx+d170798%_
                                (fx- _%phi170788%_ _%delta170786%_))))
                           _%$e170791%_)
                          (error '"Bad context" _%ctx170785%_))))))
          (let _%K170761%_ ((_%ctx170763%_ _%ctx170753%_)
                            (_%phi170764%_ _%phi170754%_))
            (if (fxzero? _%phi170764%_)
                _%ctx170763%_
                (if (##structure-instance-of? _%ctx170763%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi170764%_)
                        (let ((_%$e170768%_
                               (##unchecked-structure-ref
                                _%ctx170763%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e170768%_
                              ((lambda (_%g170770170772%_)
                                 (_%K170761%_
                                  _%g170770170772%_
                                  (##fx- _%phi170764%_ '1)))
                               _%$e170768%_)
                              (_%shift170759%_
                               _%ctx170763%_
                               '1
                               _%make-phi/up170757%_
                               _%phi170764%_
                               _%K170761%_)))
                        (let ((_%$e170776%_
                               (##unchecked-structure-ref
                                _%ctx170763%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e170776%_
                              ((lambda (_%g170778170780%_)
                                 (_%K170761%_
                                  _%g170778170780%_
                                  (##fx+ _%phi170764%_ '1)))
                               _%$e170776%_)
                              (_%shift170759%_
                               _%ctx170763%_
                               '-1
                               _%make-phi/down170758%_
                               _%phi170764%_
                               _%K170761%_))))
                    _%ctx170763%_))))))
    (define gx#core-context-get
      (lambda (_%ctx170750%_ _%key170751%_)
        (hash-get
         (##unchecked-structure-ref _%ctx170750%_ '2 '#f '#f)
         _%key170751%_)))
    (define gx#core-context-put!
      (lambda (_%ctx170746%_ _%key170747%_ _%val170748%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx170746%_ '2 '#f '#f)
         _%key170747%_
         _%val170748%_)
        _%val170748%_))
    (define gx#core-context-resolve
      (lambda (_%ctx170732%_ _%key170733%_)
        (let _%lp170735%_ ((_%ctx170737%_ _%ctx170732%_))
          (let ((_%$e170739%_
                 (gx#core-context-get _%ctx170737%_ _%key170733%_)))
            (if _%$e170739%_
                _%$e170739%_
                (let ((_%$e170742%_
                       (if (##structure-instance-of?
                            _%ctx170737%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx170737%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e170742%_ (_%lp170735%_ _%$e170742%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx170721%_ _%key170722%_ _%val170723%_ _%rebind170724%_)
        (let ((_%$e170726%_ (gx#core-context-get _%ctx170721%_ _%key170722%_)))
          (if _%$e170726%_
              ((lambda (_%xval170729%_)
                 (gx#core-context-put!
                  _%ctx170721%_
                  _%key170722%_
                  (_%rebind170724%_ _%xval170729%_)))
               _%$e170726%_)
              (gx#core-context-put!
               _%ctx170721%_
               _%key170722%_
               _%val170723%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx170696%_ _%stop?170697%_)
        (let _%lp170699%_ ((_%ctx170701%_ _%ctx170696%_))
          (if (_%stop?170697%_ _%ctx170701%_)
              _%ctx170701%_
              (if (##structure-instance-of? _%ctx170701%_ 'gx#phi-context::t)
                  (_%lp170699%_
                   (##unchecked-structure-ref _%ctx170701%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx170710%_ (gx#current-expander-context))
               (_%stop?170712%_ gx#top-context?))
          (gx#core-context-top__% _%ctx170710%_ _%stop?170712%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx170714%_)
        (let ((_%stop?170716%_ gx#top-context?))
          (gx#core-context-top__% _%ctx170714%_ _%stop?170716%_))))
    (define gx#core-context-top
      (lambda _g174740_
        (let ((_g174741_ (##length _g174740_)))
          (cond ((##fx= _g174741_ 0) (apply gx#core-context-top__0 _g174740_))
                ((##fx= _g174741_ 1) (apply gx#core-context-top__1 _g174740_))
                ((##fx= _g174741_ 2) (apply gx#core-context-top__% _g174740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g174740_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx170681%_)
        (let _%lp170683%_ ((_%ctx170685%_ _%ctx170681%_))
          (if (##structure-instance-of? _%ctx170685%_ 'gx#phi-context::t)
              (_%lp170683%_
               (##unchecked-structure-ref _%ctx170685%_ '3 '#f '#f))
              _%ctx170685%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx170691%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx170691%_))))
    (define gx#core-context-root
      (lambda _g174742_
        (let ((_g174743_ (##length _g174742_)))
          (cond ((##fx= _g174743_ 0) (apply gx#core-context-root__0 _g174742_))
                ((##fx= _g174743_ 1) (apply gx#core-context-root__% _g174742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g174742_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx170663%_ . _%ignore170664%_)
        (let ((_%$e170666%_ (gx#current-expander-allow-rebind?)))
          (if _%$e170666%_
              _%$e170666%_
              (if (##structure-instance-of? _%ctx170663%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx170663%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx170663%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx170673%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx170673%_))))
    (define gx#core-context-rebind?
      (lambda _g174744_
        (let ((_g174745_ (##length _g174744_)))
          (cond ((##fx= _g174745_ 0)
                 (apply gx#core-context-rebind?__0 _g174744_))
                ((##fx= _g174745_ 1)
                 (apply gx#core-context-rebind?__% _g174744_))
                ((##fx>= _g174745_ 1)
                 (apply gx#core-context-rebind?__% _g174744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g174744_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx170646%_)
        (let ((_%$e170648%_ (gx#core-context-top__1 _%ctx170646%_)))
          (if _%$e170648%_
              ((lambda (_%ctx170651%_)
                 (if (##structure-instance-of?
                      _%ctx170651%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx170651%_ '6 '#f '#f)
                     '#f))
               _%$e170648%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx170658%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx170658%_))))
    (define gx#core-context-namespace
      (lambda _g174746_
        (let ((_g174747_ (##length _g174746_)))
          (cond ((##fx= _g174747_ 0)
                 (apply gx#core-context-namespace__0 _g174746_))
                ((##fx= _g174747_ 1)
                 (apply gx#core-context-namespace__% _g174746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g174746_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind170632%_ _%is?170633%_)
        (if (##structure-direct-instance-of?
             _%bind170632%_
             'gx#syntax-binding::t)
            (_%is?170633%_
             (##unchecked-structure-ref _%bind170632%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind170638%_)
        (let ((_%is?170640%_ gx#expander?))
          (gx#expander-binding?__% _%bind170638%_ _%is?170640%_))))
    (define gx#expander-binding?
      (lambda _g174748_
        (let ((_g174749_ (##length _g174748_)))
          (cond ((##fx= _g174749_ 1) (apply gx#expander-binding?__0 _g174748_))
                ((##fx= _g174749_ 2) (apply gx#expander-binding?__% _g174748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g174748_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind170629%_)
        (gx#expander-binding?__% _%bind170629%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind170627%_)
        (gx#expander-binding?__% _%bind170627%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind170621%_)
        (letrec ((_%direct-special-form?170623%_
                  (lambda (_%obj170625%_)
                    (##structure-direct-instance-of?
                     _%obj170625%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind170621%_
           _%direct-special-form?170623%_))))
    (define gx#special-form-binding?
      (lambda (_%bind170619%_)
        (gx#expander-binding?__% _%bind170619%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind170610%_)
        (letrec ((_%feature?170612%_
                  (lambda (_%e170614%_)
                    (let ((_%$e170616%_
                           (##structure-instance-of?
                            _%e170614%_
                            'gx#feature-expander::t)))
                      (if _%$e170616%_
                          _%$e170616%_
                          (##structure-instance-of?
                           _%e170614%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind170610%_ _%feature?170612%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind170608%_)
        (gx#expander-binding?__% _%bind170608%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id170595%_ _%bound?170596%_)
        (if (gx#identifier? _%id170595%_)
            (_%bound?170596%_ (gx#resolve-identifier__0 _%id170595%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id170601%_)
        (let ((_%bound?170603%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id170601%_ _%bound?170603%_))))
    (define gx#core-bound-identifier?
      (lambda _g174750_
        (let ((_g174751_ (##length _g174750_)))
          (cond ((##fx= _g174751_ 1)
                 (apply gx#core-bound-identifier?__0 _g174750_))
                ((##fx= _g174751_ 2)
                 (apply gx#core-bound-identifier?__% _g174750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g174750_))))))
    (define gx#core-identifier=?
      (lambda (_%x170585%_ _%y170586%_)
        (letrec ((_%y=?170588%_
                  (lambda (_%xid170592%_)
                    ((if (list? _%y170586%_) memq eq?)
                     _%xid170592%_
                     _%y170586%_))))
          (let ((_%bind170590%_ (gx#resolve-identifier__0 _%x170585%_)))
            (if (##structure-instance-of? _%bind170590%_ 'gx#binding::t)
                (_%y=?170588%_
                 (##unchecked-structure-ref _%bind170590%_ '1 '#f '#f))
                (_%y=?170588%_ (gx#stx-e _%x170585%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e170583%_)
        (if (interned-symbol? _%e170583%_)
            (string-index__0 (symbol->string _%e170583%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx170536%_ _%src170537%_ _%ctx170538%_ _%marks170539%_)
        (if (##structure? _%stx170536%_)
            (let ((_%$e170541%_ (gx#sealed-syntax-unwrap _%stx170536%_)))
              (if _%$e170541%_
                  _%$e170541%_
                  (if (gx#identifier? _%stx170536%_)
                      (let ((_%id170545%_
                             (gx#stx-unwrap__% _%stx170536%_ _%marks170539%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id170545%_ '1 '#f '#f)
                         (let ((_%$e170547%_
                                (##unchecked-structure-ref
                                 _%id170545%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e170547%_ _%$e170547%_ _%src170537%_))
                         _%ctx170538%_
                         (##unchecked-structure-ref _%id170545%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx170536%_)
                       (let ((_%$e170551%_ (gx#stx-source _%stx170536%_)))
                         (if _%$e170551%_ _%$e170551%_ _%src170537%_))
                       _%ctx170538%_
                       (reverse _%marks170539%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx170536%_
             _%src170537%_
             _%ctx170538%_
             (reverse _%marks170539%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx170557%_)
        (let* ((_%src170559%_ '#f)
               (_%ctx170561%_ (gx#current-expander-context))
               (_%marks170563%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx170557%_
           _%src170559%_
           _%ctx170561%_
           _%marks170563%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx170565%_ _%src170566%_)
        (let* ((_%ctx170568%_ (gx#current-expander-context))
               (_%marks170570%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx170565%_
           _%src170566%_
           _%ctx170568%_
           _%marks170570%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx170572%_ _%src170573%_ _%ctx170574%_)
        (let ((_%marks170576%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx170572%_
           _%src170573%_
           _%ctx170574%_
           _%marks170576%_))))
    (define gx#core-quote-syntax
      (lambda _g174752_
        (let ((_g174753_ (##length _g174752_)))
          (cond ((##fx= _g174753_ 1) (apply gx#core-quote-syntax__0 _g174752_))
                ((##fx= _g174753_ 2) (apply gx#core-quote-syntax__1 _g174752_))
                ((##fx= _g174753_ 3) (apply gx#core-quote-syntax__2 _g174752_))
                ((##fx= _g174753_ 4) (apply gx#core-quote-syntax__% _g174752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g174752_))))))
    (define gx#core-cons
      (lambda (_%hd170532%_ _%tl170533%_)
        (cons (gx#core-quote-syntax__0 _%hd170532%_) _%tl170533%_)))
    (define gx#core-list
      (lambda (_%hd170529%_ . _%rest170530%_)
        (cons (gx#core-quote-syntax__0 _%hd170529%_) _%rest170530%_)))
    (define gx#core-cons*
      (lambda (_%hd170526%_ . _%rest170527%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd170526%_) _%rest170527%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path170495%_ _%rel170496%_)
        (let ((_%path170513%_ (gx#stx-e _%stx-path170495%_))
              (_%reldir170514%_
               (let _%lp170498%_ ((_%relsrc170500%_
                                   (let ((_%$e170510%_
                                          (gx#stx-source _%stx-path170495%_)))
                                     (if _%$e170510%_
                                         _%$e170510%_
                                         _%rel170496%_))))
                 (if (##structure-instance-of? _%relsrc170500%_ 'gerbil#AST::t)
                     (_%lp170498%_
                      (let ((_%$e170503%_ (gx#stx-source _%relsrc170500%_)))
                        (if _%$e170503%_
                            _%$e170503%_
                            (gx#stx-e _%relsrc170500%_))))
                     (if (source-location-path? _%relsrc170500%_)
                         (path-directory
                          (source-location-path _%relsrc170500%_))
                         (if (string? _%relsrc170500%_)
                             (path-directory _%relsrc170500%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path170513%_ (path-normalize _%reldir170514%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path170519%_)
        (let ((_%rel170521%_ '#f))
          (gx#core-resolve-path__% _%stx-path170519%_ _%rel170521%_))))
    (define gx#core-resolve-path
      (lambda _g174754_
        (let ((_g174755_ (##length _g174754_)))
          (cond ((##fx= _g174755_ 1) (apply gx#core-resolve-path__0 _g174754_))
                ((##fx= _g174755_ 2) (apply gx#core-resolve-path__% _g174754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g174754_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr170451%_ _%ctx170452%_)
        (let* ((_%repr170453170460%_ _%repr170451%_)
               (_%E170455170464%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr170453170460%_
                         '([phi . subs]))
                  '#!void))
               (_%K170456170472%_
                (lambda (_%subs170467%_ _%phi170468%_)
                  (let ((_%subst170470%_
                         (if (null? _%subs170467%_)
                             '#f
                             (list->hash-table-eq _%subs170467%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst170470%_
                     _%ctx170452%_
                     _%phi170468%_
                     '#f)))))
          (if (pair? _%repr170453170460%_)
              (let ((_%hd170457170475%_ (##car _%repr170453170460%_))
                    (_%tl170458170477%_ (##cdr _%repr170453170460%_)))
                (let* ((_%phi170480%_ _%hd170457170475%_)
                       (_%subs170482%_ _%tl170458170477%_))
                  (_%K170456170472%_ _%subs170482%_ _%phi170480%_)))
              (_%E170455170464%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr170487%_)
        (let ((_%ctx170489%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr170487%_ _%ctx170489%_))))
    (define gx#core-deserialize-mark
      (lambda _g174756_
        (let ((_g174757_ (##length _g174756_)))
          (cond ((##fx= _g174757_ 1)
                 (apply gx#core-deserialize-mark__0 _g174756_))
                ((##fx= _g174757_ 2)
                 (apply gx#core-deserialize-mark__% _g174756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g174756_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx170448%_)
        (gx#stx-rewrap _%stx170448%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx170446%_)
        (gx#stx-unwrap__% _%stx170446%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx170416%_)
        (let* ((_%g170417170425%_ (gx#current-expander-marks))
               (_%else170419170433%_ (lambda () _%stx170416%_))
               (_%K170421170438%_
                (lambda (_%hd170436%_)
                  (gx#stx-apply-mark _%stx170416%_ _%hd170436%_))))
          (if (pair? _%g170417170425%_)
              (let* ((_%hd170422170441%_ (##car _%g170417170425%_))
                     (_%hd170444%_ _%hd170422170441%_))
                (_%K170421170438%_ _%hd170444%_))
              (_%else170419170433%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym170414%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym170414%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx170399%_ _%E170400%_)
        (let ((_%bind170402%_ (gx#resolve-identifier__0 _%stx170399%_)))
          (if (##structure-direct-instance-of?
               _%bind170402%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind170402%_ '5 '#f '#f)
              (_%E170400%_ _%stx170399%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx170407%_)
        (let ((_%E170409%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx170407%_ _%E170409%_))))
    (define gx#syntax-local-e
      (lambda _g174758_
        (let ((_g174759_ (##length _g174758_)))
          (cond ((##fx= _g174759_ 1) (apply gx#syntax-local-e__0 _g174758_))
                ((##fx= _g174759_ 2) (apply gx#syntax-local-e__% _g174758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g174758_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx170383%_ _%E170384%_)
        (let ((_%e170386%_ (gx#syntax-local-e__% _%stx170383%_ _%E170384%_)))
          (if (##structure-instance-of? _%e170386%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e170386%_ '1 '#f '#f)
              _%e170386%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx170391%_)
        (let ((_%E170393%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx170391%_ _%E170393%_))))
    (define gx#syntax-local-value
      (lambda _g174760_
        (let ((_g174761_ (##length _g174760_)))
          (cond ((##fx= _g174761_ 1)
                 (apply gx#syntax-local-value__0 _g174760_))
                ((##fx= _g174761_ 2)
                 (apply gx#syntax-local-value__% _g174760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g174760_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx170380%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx170380%_)))))
