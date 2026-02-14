(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1771104507)
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
      (lambda _%$args178247%_
        (apply make-instance gx#expander-context::t _%$args178247%_)))
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
      (lambda _%$args178244%_
        (apply make-instance gx#root-context::t _%$args178244%_)))
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
      (lambda _%$args178241%_
        (apply make-instance gx#phi-context::t _%$args178241%_)))
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
      (lambda _%$args178238%_
        (apply make-instance gx#top-context::t _%$args178238%_)))
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
      (lambda _%$args178235%_
        (apply make-instance gx#module-context::t _%$args178235%_)))
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
      (lambda _%$args178232%_
        (apply make-instance gx#prelude-context::t _%$args178232%_)))
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
      (lambda _%$args178229%_
        (apply make-instance gx#local-context::t _%$args178229%_)))
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
      (lambda (_%self178202%_ _%id178203%_ _%super178204%_)
        (let ((_%self178207%_ _%self178202%_))
          (if (##fx< '3 (##structure-length _%self178207%_))
              (begin
                (##unchecked-structure-set!
                 _%self178207%_
                 _%id178203%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178207%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178207%_
                 _%super178204%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self178207%_
                     '3
                     (##structure-length _%self178207%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self178220%_ _%id178221%_)
        (let ((_%super178223%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self178220%_
           _%id178221%_
           _%super178223%_))))
    (define gx#phi-context:::init!
      (lambda _g178289_
        (let ((_g178290_ (##length _g178289_)))
          (cond ((##fx= _g178290_ 2)
                 (apply gx#phi-context:::init!__0 _g178289_))
                ((##fx= _g178290_ 3)
                 (apply gx#phi-context:::init!__% _g178289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g178289_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self178055%_ _%super178056%_)
        (let ((_%self178059%_ _%self178055%_))
          (if (##fx< '3 (##structure-length _%self178059%_))
              (begin
                (##unchecked-structure-set!
                 _%self178059%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178059%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178059%_
                 _%super178056%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self178059%_
                     '3
                     (##structure-length _%self178059%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self178072%_)
        (let ((_%super178074%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self178072%_ _%super178074%_))))
    (define gx#local-context:::init!
      (lambda _g178291_
        (let ((_g178292_ (##length _g178291_)))
          (cond ((##fx= _g178292_ 1)
                 (apply gx#local-context:::init!__0 _g178291_))
                ((##fx= _g178292_ 2)
                 (apply gx#local-context:::init!__% _g178291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g178291_))))))
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
      (lambda _%$args177929%_
        (apply make-instance gx#binding::t _%$args177929%_)))
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
      (lambda (_%self177912%_ _%id177913%_ _%key177914%_ _%phi177915%_)
        (let ((_%self177918%_ _%self177912%_))
          (##unchecked-structure-set! _%self177918%_ _%id177913%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self177918%_ _%key177914%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self177918%_
           _%phi177915%_
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
      (lambda _%$args177787%_
        (apply make-instance gx#runtime-binding::t _%$args177787%_)))
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
      (lambda _%$args177784%_
        (apply make-instance gx#local-binding::t _%$args177784%_)))
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
      (lambda _%$args177781%_
        (apply make-instance gx#top-binding::t _%$args177781%_)))
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
      (lambda _%$args177778%_
        (apply make-instance gx#module-binding::t _%$args177778%_)))
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
      (lambda _%$args177775%_
        (apply make-instance gx#extern-binding::t _%$args177775%_)))
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
      (lambda (_%self177391%_
               _%id177392%_
               _%key177393%_
               _%phi177394%_
               _%ctx177395%_)
        (let ((_%self177398%_ _%self177391%_))
          (gx#binding:::init!
           _%self177398%_
           _%id177392%_
           _%key177393%_
           _%phi177394%_)
          (##unchecked-structure-set!
           _%self177398%_
           _%ctx177395%_
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
      (lambda _%$args177144%_
        (apply make-instance gx#syntax-binding::t _%$args177144%_)))
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
      (lambda _%$args177141%_
        (apply make-instance gx#import-binding::t _%$args177141%_)))
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
      (lambda _%$args177138%_
        (apply make-instance gx#alias-binding::t _%$args177138%_)))
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
      (lambda (_%self177120%_
               _%id177121%_
               _%key177122%_
               _%phi177123%_
               _%e177124%_)
        (let ((_%self177127%_ _%self177120%_))
          (gx#binding:::init!
           _%self177127%_
           _%id177121%_
           _%key177122%_
           _%phi177123%_)
          (##unchecked-structure-set! _%self177127%_ _%e177124%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self176978%_
               _%id176979%_
               _%key176980%_
               _%phi176981%_
               _%e176982%_
               _%ctx176983%_
               _%weak?176984%_)
        (let ((_%self176987%_ _%self176978%_))
          (gx#binding:::init!
           _%self176987%_
           _%id176979%_
           _%key176980%_
           _%phi176981%_)
          (##unchecked-structure-set! _%self176987%_ _%e176982%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self176987%_ _%ctx176983%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self176987%_
           _%weak?176984%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self176838%_
               _%id176839%_
               _%key176840%_
               _%phi176841%_
               _%e176842%_)
        (let ((_%self176845%_ _%self176838%_))
          (gx#binding:::init!
           _%self176845%_
           _%id176839%_
           _%key176840%_
           _%phi176841%_)
          (##unchecked-structure-set! _%self176845%_ _%e176842%_ '5 '#f '#f))))
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
      (lambda _%$args176713%_
        (apply make-instance gx#expander::t _%$args176713%_)))
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
      (lambda _%$args176710%_
        (apply make-instance gx#core-expander::t _%$args176710%_)))
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
      (lambda _%$args176707%_
        (apply make-instance gx#expression-form::t _%$args176707%_)))
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
      (lambda _%$args176704%_
        (apply make-instance gx#special-form::t _%$args176704%_)))
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
      (lambda _%$args176701%_
        (apply make-instance gx#definition-form::t _%$args176701%_)))
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
      (lambda _%$args176698%_
        (apply make-instance gx#top-special-form::t _%$args176698%_)))
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
      (lambda _%$args176695%_
        (apply make-instance gx#module-special-form::t _%$args176695%_)))
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
      (lambda _%$args176692%_
        (apply make-instance gx#feature-expander::t _%$args176692%_)))
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
      (lambda _%$args176689%_
        (apply make-instance gx#private-feature-expander::t _%$args176689%_)))
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
      (lambda _%$args176686%_
        (apply make-instance gx#reserved-expander::t _%$args176686%_)))
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
      (lambda _%$args176683%_
        (apply make-instance gx#macro-expander::t _%$args176683%_)))
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
      (lambda _%$args176680%_
        (apply make-instance gx#rename-macro-expander::t _%$args176680%_)))
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
      (lambda _%$args176677%_
        (apply make-instance gx#user-expander::t _%$args176677%_)))
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
      (lambda _%$args176674%_
        (apply make-instance gx#expander-mark::t _%$args176674%_)))
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
      (lambda (_%ctx176658%_
               _%message176659%_
               _%stx176660%_
               .
               _%details176661%_)
        (let ((_%ctx176672%_
               (let ((_%$e176663%_ _%ctx176658%_))
                 (if _%$e176663%_
                     _%$e176663%_
                     (let ((_%$e176666%_ (gx#core-context-top__0)))
                       (if _%$e176666%_
                           ((lambda (_%ctx176669%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx176669%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e176666%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message176659%_
                  (cons _%stx176660%_ _%details176661%_)
                  _%ctx176672%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx176645%_ _%expression?176646%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx176645%_ _%expression?176646%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx176651%_)
        (let ((_%expression?176653%_ '#f))
          (gx#eval-syntax__% _%stx176651%_ _%expression?176653%_))))
    (define gx#eval-syntax
      (lambda _g178293_
        (let ((_g178294_ (##length _g178293_)))
          (cond ((##fx= _g178294_ 1) (apply gx#eval-syntax__0 _g178293_))
                ((##fx= _g178294_ 2) (apply gx#eval-syntax__% _g178293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g178293_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx176630%_ _%expression?176631%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx176630%_ _%expression?176631%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx176637%_)
        (let ((_%expression?176639%_ '#f))
          (gx#eval-syntax+1__% _%stx176637%_ _%expression?176639%_))))
    (define gx#eval-syntax+1
      (lambda _g178295_
        (let ((_g178296_ (##length _g178295_)))
          (cond ((##fx= _g178296_ 1) (apply gx#eval-syntax+1__0 _g178295_))
                ((##fx= _g178296_ 2) (apply gx#eval-syntax+1__% _g178295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g178295_))))))
    (define gx#eval-expression+1
      (lambda (_%stx176627%_) (gx#eval-syntax+1__% _%stx176627%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx176625%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx176625%_))))
    (define gx#core-expand__%
      (lambda (_%stx176612%_ _%expression?176613%_)
        (if _%expression?176613%_
            (gx#core-expand-expression _%stx176612%_)
            (gx#core-expand-top _%stx176612%_))))
    (define gx#core-expand__0
      (lambda (_%stx176618%_)
        (let ((_%expression?176620%_ '#f))
          (gx#core-expand__% _%stx176618%_ _%expression?176620%_))))
    (define gx#core-expand
      (lambda _g178297_
        (let ((_g178298_ (##length _g178297_)))
          (cond ((##fx= _g178298_ 1) (apply gx#core-expand__0 _g178297_))
                ((##fx= _g178298_ 2) (apply gx#core-expand__% _g178297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g178297_))))))
    (define gx#core-expand-top
      (lambda (_%stx176579%_)
        (let* ((_%stx176581%_ (gx#core-expand*__0 _%stx176579%_))
               (_%e176582176589%_ _%stx176581%_)
               (_%E176584176593%_
                (lambda () (gx#core-expand-expression _%stx176581%_)))
               (_%E176583176607%_
                (lambda ()
                  (if (gx#stx-pair? _%e176582176589%_)
                      (let ((_%e176585176597%_
                             (gx#syntax-e _%e176582176589%_)))
                        (let ((_%hd176586176600%_ (##car _%e176585176597%_))
                              (_%tl176587176602%_ (##cdr _%e176585176597%_)))
                          (let ((_%form176605%_ _%hd176586176600%_))
                            (if (gx#core-bound-identifier?__0 _%form176605%_)
                                _%stx176581%_
                                (_%E176584176593%_)))))
                      (_%E176584176593%_)))))
          (_%E176583176607%_))))
    (define gx#core-expand-expression
      (lambda (_%stx176511%_)
        (letrec ((_%sealed-expression?176513%_
                  (lambda (_%hd176549%_)
                    (if (gx#sealed-syntax? _%hd176549%_)
                        (let* ((_%e176550176557%_ _%hd176549%_)
                               (_%E176552176561%_ (lambda () '#f))
                               (_%E176551176575%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e176550176557%_)
                                      (let ((_%e176553176565%_
                                             (gx#syntax-e _%e176550176557%_)))
                                        (let ((_%hd176554176568%_
                                               (##car _%e176553176565%_))
                                              (_%tl176555176570%_
                                               (##cdr _%e176553176565%_)))
                                          (let ((_%form176573%_
                                                 _%hd176554176568%_))
                                            (gx#core-bound-identifier?__%
                                             _%form176573%_
                                             gx#expression-form-binding?))))
                                      (_%E176552176561%_)))))
                          (_%E176551176575%_))
                        '#f)))
                 (_%illegal-expression176514%_
                  (lambda (_%hd176546%_ . _%_176547%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx176511%_
                     _%hd176546%_)))
                 (_%expand-e176515%_
                  (lambda (_%form176538%_ _%hd176539%_)
                    (let ((_%bind176541%_
                           (if (##structure-instance-of?
                                _%form176538%_
                                'gx#binding::t)
                               _%form176538%_
                               (gx#resolve-identifier__0 _%form176538%_))))
                      (if (gx#core-expander-binding? _%bind176541%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind176541%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd176539%_
                            (gx#stx-source _%stx176511%_)))
                          (if (##structure-direct-instance-of?
                               _%bind176541%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind176541%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd176539%_
                                 (gx#stx-source _%stx176511%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx176511%_
                               _%form176538%_)))))))
          (let ((_%hd176517%_ (gx#core-expand-head _%stx176511%_)))
            (if (_%sealed-expression?176513%_ _%hd176517%_)
                _%hd176517%_
                (if (gx#stx-pair? _%hd176517%_)
                    (let* ((_%form176521%_ (gx#stx-car _%hd176517%_))
                           (_%bind176523%_
                            (if (gx#identifier? _%form176521%_)
                                (gx#resolve-identifier__0 _%form176521%_)
                                '#f)))
                      (if (or (not _%bind176523%_)
                              (not (gx#core-expander-binding? _%bind176523%_)))
                          (_%expand-e176515%_
                           '%%app
                           (cons '%%app _%hd176517%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind176523%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd176517%_
                               _%illegal-expression176514%_)
                              (if (gx#expression-form-binding? _%bind176523%_)
                                  (_%expand-e176515%_
                                   _%bind176523%_
                                   _%hd176517%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind176523%_)
                                      (gx#core-expand-expression
                                       (_%expand-e176515%_
                                        _%bind176523%_
                                        _%hd176517%_))
                                      (_%illegal-expression176514%_
                                       _%hd176517%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd176517%_)
                        (_%illegal-expression176514%_ _%hd176517%_)
                        (if (gx#identifier? _%hd176517%_)
                            (_%expand-e176515%_
                             '%%ref
                             (cons '%%ref (cons _%hd176517%_ '())))
                            (if (gx#stx-datum? _%hd176517%_)
                                (_%expand-e176515%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd176517%_ '())))
                                (_%illegal-expression176514%_
                                 _%hd176517%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx176506%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx176509%_ (gx#core-expand-expression _%stx176506%_)))
             (values _%stx176509%_ (gx#eval-syntax* _%stx176509%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx176487%_ _%stop?176488%_)
        (let _%lp176490%_ ((_%stx176492%_ _%stx176487%_))
          (if (_%stop?176488%_ _%stx176492%_)
              _%stx176492%_
              (let ((_%rstx176494%_ (gx#core-expand1 _%stx176492%_)))
                (if (eq? _%stx176492%_ _%rstx176494%_)
                    _%stx176492%_
                    (_%lp176490%_ _%rstx176494%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx176499%_)
        (let ((_%stop?176501%_ false))
          (gx#core-expand*__% _%stx176499%_ _%stop?176501%_))))
    (define gx#core-expand*
      (lambda _g178299_
        (let ((_g178300_ (##length _g178299_)))
          (cond ((##fx= _g178300_ 1) (apply gx#core-expand*__0 _g178299_))
                ((##fx= _g178300_ 2) (apply gx#core-expand*__% _g178299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g178299_))))))
    (define gx#core-expand1
      (lambda (_%stx176439%_)
        (letrec ((_%step176441%_
                  (lambda (_%hd176478%_)
                    (let ((_%bind176480%_
                           (gx#resolve-identifier__0 _%hd176478%_)))
                      (if (##structure-instance-of?
                           _%bind176480%_
                           'gx#runtime-binding::t)
                          _%stx176439%_
                          (if (##structure-direct-instance-of?
                               _%bind176480%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind176480%_
                                '5
                                '#f
                                '#f)
                               _%stx176439%_)
                              (if (not _%bind176480%_)
                                  _%stx176439%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx176439%_))))))))
          (let* ((_%e176442176450%_ _%stx176439%_)
                 (_%E176448176454%_ (lambda () _%stx176439%_))
                 (_%E176444176460%_
                  (lambda ()
                    (let ((_%hd176458%_ _%e176442176450%_))
                      (if (gx#identifier? _%hd176458%_)
                          (_%step176441%_ _%hd176458%_)
                          (_%E176448176454%_)))))
                 (_%E176443176474%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176442176450%_)
                        (let ((_%e176445176464%_
                               (gx#syntax-e _%e176442176450%_)))
                          (let ((_%hd176446176467%_ (##car _%e176445176464%_))
                                (_%tl176447176469%_ (##cdr _%e176445176464%_)))
                            (let ((_%hd176472%_ _%hd176446176467%_))
                              (if (gx#identifier? _%hd176472%_)
                                  (_%step176441%_ _%hd176472%_)
                                  (_%E176444176460%_)))))
                        (_%E176444176460%_)))))
            (_%E176443176474%_)))))
    (define gx#core-expand-head
      (lambda (_%stx176405%_)
        (letrec ((_%stop?176407%_
                  (lambda (_%stx176409%_)
                    (let* ((_%e176410176417%_ _%stx176409%_)
                           (_%E176412176421%_ (lambda () '#f))
                           (_%E176411176435%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176410176417%_)
                                  (let ((_%e176413176425%_
                                         (gx#syntax-e _%e176410176417%_)))
                                    (let ((_%hd176414176428%_
                                           (##car _%e176413176425%_))
                                          (_%tl176415176430%_
                                           (##cdr _%e176413176425%_)))
                                      (let ((_%hd176433%_ _%hd176414176428%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd176433%_))))
                                  (_%E176412176421%_)))))
                      (_%E176411176435%_)))))
          (gx#core-expand*__% _%stx176405%_ _%stop?176407%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx176211%_
               _%expand-special176212%_
               _%begin-form176213%_
               _%expand-e176214%_)
        (letrec ((_%expand-splice176216%_
                  (lambda (_%hd176379%_
                           _%body176380%_
                           _%rest176381%_
                           _%r176382%_)
                    (if (gx#stx-list? _%body176380%_)
                        (_%K176220%_
                         (gx#stx-foldr cons _%rest176381%_ _%body176380%_)
                         _%r176382%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx176211%_
                         _%hd176379%_))))
                 (_%expand-cond-expand176217%_
                  (lambda (_%hd176375%_ _%rest176376%_ _%r176377%_)
                    (_%K176220%_
                     (cons (gx#core-expand-cond-expand% _%hd176375%_)
                           _%rest176376%_)
                     _%r176377%_)))
                 (_%expand-include176218%_
                  (lambda (_%hd176324%_ _%rest176325%_ _%r176326%_)
                    (let* ((_%e176327176337%_ _%hd176324%_)
                           (_%E176329176341%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176327176337%_)))
                           (_%E176328176371%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176327176337%_)
                                  (let ((_%e176330176345%_
                                         (gx#syntax-e _%e176327176337%_)))
                                    (let ((_%hd176331176348%_
                                           (##car _%e176330176345%_))
                                          (_%tl176332176350%_
                                           (##cdr _%e176330176345%_)))
                                      (if (gx#stx-pair? _%tl176332176350%_)
                                          (let ((_%e176333176353%_
                                                 (gx#syntax-e
                                                  _%tl176332176350%_)))
                                            (let ((_%hd176334176356%_
                                                   (##car _%e176333176353%_))
                                                  (_%tl176335176358%_
                                                   (##cdr _%e176333176353%_)))
                                              (let ((_%path176361%_
                                                     _%hd176334176356%_))
                                                (if (gx#stx-null?
                                                     _%tl176335176358%_)
                                                    (if (gx#stx-string?
                                                         _%path176361%_)
                                                        (let* ((_%rpath176363%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path176361%_
                         (gx#stx-source _%hd176324%_)))
                       (_%block176365%_
                        (gx#core-expand-include%__%
                         _%hd176324%_
                         _%rpath176363%_))
                       (_%rbody176368%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block176365%_
                            _%expand-special176212%_
                            '#f
                            _%expand-e176214%_))
                         gx#current-expander-path
                         (cons _%rpath176363%_ (gx#current-expander-path)))))
                  (_%K176220%_
                   _%rest176325%_
                   (foldr__0 cons _%r176326%_ _%rbody176368%_)))
                (_%E176329176341%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176329176341%_)))))
                                          (_%E176329176341%_))))
                                  (_%E176329176341%_)))))
                      (_%E176328176371%_))))
                 (_%expand-expression176219%_
                  (lambda (_%hd176320%_ _%rest176321%_ _%r176322%_)
                    (_%K176220%_
                     _%rest176321%_
                     (cons (_%expand-e176214%_ _%hd176320%_) _%r176322%_))))
                 (_%K176220%_
                  (lambda (_%rest176250%_ _%r176251%_)
                    (let* ((_%e176252176259%_ _%rest176250%_)
                           (_%E176254176263%_
                            (lambda ()
                              (if _%begin-form176213%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form176213%_
                                    (reverse _%r176251%_))
                                   (gx#stx-source _%stx176211%_))
                                  _%r176251%_)))
                           (_%E176253176316%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176252176259%_)
                                  (let ((_%e176255176267%_
                                         (gx#syntax-e _%e176252176259%_)))
                                    (let ((_%hd176256176270%_
                                           (##car _%e176255176267%_))
                                          (_%tl176257176272%_
                                           (##cdr _%e176255176267%_)))
                                      (let* ((_%hd176275%_ _%hd176256176270%_)
                                             (_%rest176277%_
                                              _%tl176257176272%_)
                                             (_%hd176279%_
                                              (gx#core-expand-head
                                               _%hd176275%_))
                                             (_%e176280176287%_ _%hd176279%_)
                                             (_%E176282176291%_
                                              (lambda ()
                                                (_%expand-expression176219%_
                                                 _%hd176279%_
                                                 _%rest176277%_
                                                 _%r176251%_)))
                                             (_%E176281176312%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e176280176287%_)
                                                    (let ((_%e176283176295%_
                                                           (gx#syntax-e
                                                            _%e176280176287%_)))
                                                      (let ((_%hd176284176298%_
                                                             (##car _%e176283176295%_))
                                                            (_%tl176285176300%_
                                                             (##cdr _%e176283176295%_)))
                                                        (let* ((_%form176303%_
                                                                _%hd176284176298%_)
                                                               (_%body176305%_
                                                                _%tl176285176300%_)
                                                               (_%bind176307%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form176303%_)
                            (gx#resolve-identifier__0 _%form176303%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind176307%_)
                      (let ((_%$e176309%_
                             (##unchecked-structure-ref
                              _%bind176307%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e176309%_)
                            (_%expand-splice176216%_
                             _%hd176279%_
                             _%body176305%_
                             _%rest176277%_
                             _%r176251%_)
                            (if (eq? '%#cond-expand _%$e176309%_)
                                (_%expand-cond-expand176217%_
                                 _%hd176279%_
                                 _%rest176277%_
                                 _%r176251%_)
                                (if (eq? '%#include _%$e176309%_)
                                    (_%expand-include176218%_
                                     _%hd176279%_
                                     _%rest176277%_
                                     _%r176251%_)
                                    (_%expand-special176212%_
                                     _%hd176279%_
                                     _%K176220%_
                                     _%rest176277%_
                                     _%r176251%_)))))
                      (_%expand-expression176219%_
                       _%hd176279%_
                       _%rest176277%_
                       _%r176251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176282176291%_)))))
                                        (_%E176281176312%_))))
                                  (_%E176254176263%_)))))
                      (_%E176253176316%_)))))
          (let* ((_%e176221176228%_ _%stx176211%_)
                 (_%E176223176232%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176221176228%_)))
                 (_%E176222176246%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176221176228%_)
                        (let ((_%e176224176236%_
                               (gx#syntax-e _%e176221176228%_)))
                          (let ((_%hd176225176239%_ (##car _%e176224176236%_))
                                (_%tl176226176241%_ (##cdr _%e176224176236%_)))
                            (let ((_%body176244%_ _%tl176226176241%_))
                              (if (gx#stx-list? _%body176244%_)
                                  (_%K176220%_ _%body176244%_ '())
                                  (_%E176223176232%_)))))
                        (_%E176223176232%_)))))
            (_%E176222176246%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx176387%_ _%expand-special176388%_)
        (let* ((_%begin-form176390%_ '%#begin)
               (_%expand-e176392%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx176387%_
           _%expand-special176388%_
           _%begin-form176390%_
           _%expand-e176392%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx176394%_ _%expand-special176395%_ _%begin-form176396%_)
        (let ((_%expand-e176398%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx176394%_
           _%expand-special176395%_
           _%begin-form176396%_
           _%expand-e176398%_))))
    (define gx#core-expand-block
      (lambda _g178301_
        (let ((_g178302_ (##length _g178301_)))
          (cond ((##fx= _g178302_ 2) (apply gx#core-expand-block__0 _g178301_))
                ((##fx= _g178302_ 3) (apply gx#core-expand-block__1 _g178301_))
                ((##fx= _g178302_ 4) (apply gx#core-expand-block__% _g178301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g178301_))))))
    (define gx#core-expand-block*
      (lambda (_%stx176159%_ _%expand-special176160%_)
        (let* ((_%g176161176172%_
                (gx#core-expand-block__1
                 _%stx176159%_
                 _%expand-special176160%_
                 '#f))
               (_%E176165176176%_
                (lambda ()
                  (error '"No clause matching"
                         _%g176161176172%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K176170176207%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx176159%_)))
                (_%K176167176193%_ (lambda (_%expr176191%_) _%expr176191%_))
                (_%K176166176182%_
                 (lambda (_%body176180%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body176180%_))
                    (gx#stx-source _%stx176159%_)))))
            (let ((_%try-match176163176203%_
                   (lambda ()
                     (if (pair? _%g176161176172%_)
                         (let ((_%tl176169176198%_ (##cdr _%g176161176172%_))
                               (_%hd176168176196%_ (##car _%g176161176172%_)))
                           (if (null? _%tl176169176198%_)
                               (let ((_%expr176201%_ _%hd176168176196%_))
                                 (_%K176167176193%_ _%expr176201%_))
                               (let ((_%body176185%_ _%g176161176172%_))
                                 (_%K176166176182%_ _%body176185%_))))
                         (let ((_%body176185%_ _%g176161176172%_))
                           (_%K176166176182%_ _%body176185%_))))))
              (if (null? _%g176161176172%_)
                  (_%K176170176207%_)
                  (_%try-match176163176203%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx175985%_)
        (letrec ((_%satisfied?175987%_
                  (lambda (_%condition176088%_)
                    (let* ((_%e176089176104%_ _%condition176088%_)
                           (_%E176099176108%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176089176104%_)))
                           (_%E176092176127%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176089176104%_)
                                  (let ((_%e176100176112%_
                                         (gx#syntax-e _%e176089176104%_)))
                                    (let ((_%hd176101176115%_
                                           (##car _%e176100176112%_))
                                          (_%tl176102176117%_
                                           (##cdr _%e176100176112%_)))
                                      (let* ((_%combinator176120%_
                                              _%hd176101176115%_)
                                             (_%body176122%_
                                              _%tl176102176117%_))
                                        (if (gx#stx-list? _%body176122%_)
                                            (let ((_%$e176124%_
                                                   (gx#stx-e
                                                    _%combinator176120%_)))
                                              (if (eq? 'not _%$e176124%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?175987%_
                                                        _%body176122%_))
                                                  (if (eq? 'and _%$e176124%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?175987%_
                                                       _%body176122%_)
                                                      (if (eq? 'or
                                                               _%$e176124%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?175987%_
                                                           _%body176122%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e176124%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body176122%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx175985%_
                       _%combinator176120%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176099176108%_)))))
                                  (_%E176099176108%_))))
                           (_%E176091176149%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176089176104%_)
                                  (let ((_%e176093176131%_
                                         (gx#syntax-e _%e176089176104%_)))
                                    (let ((_%hd176094176134%_
                                           (##car _%e176093176131%_))
                                          (_%tl176095176136%_
                                           (##cdr _%e176093176131%_)))
                                      (if (and (gx#identifier?
                                                _%hd176094176134%_)
                                               (gx#core-identifier=?
                                                _%hd176094176134%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl176095176136%_)
                                              (let ((_%e176096176139%_
                                                     (gx#syntax-e
                                                      _%tl176095176136%_)))
                                                (let ((_%hd176097176142%_
                                                       (##car _%e176096176139%_))
                                                      (_%tl176098176144%_
                                                       (##cdr _%e176096176139%_)))
                                                  (let ((_%expr176147%_
                                                         _%hd176097176142%_))
                                                    (if (gx#stx-null?
                                                         _%tl176098176144%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr176147%_)
                                                        (_%E176092176127%_)))))
                                              (_%E176092176127%_))
                                          (_%E176092176127%_))))
                                  (_%E176092176127%_))))
                           (_%E176090176155%_
                            (lambda ()
                              (let ((_%id176153%_ _%e176089176104%_))
                                (if (gx#identifier? _%id176153%_)
                                    (gx#core-bound-identifier?__%
                                     _%id176153%_
                                     gx#feature-binding?)
                                    (_%E176091176149%_))))))
                      (_%E176090176155%_))))
                 (_%loop175988%_
                  (lambda (_%rest176018%_)
                    (let* ((_%e176019176027%_ _%rest176018%_)
                           (_%E176025176031%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176019176027%_)))
                           (_%E176021176035%_
                            (lambda ()
                              (if (gx#stx-null? _%e176019176027%_)
                                  '()
                                  (_%E176025176031%_))))
                           (_%E176020176084%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176019176027%_)
                                  (let ((_%e176022176039%_
                                         (gx#syntax-e _%e176019176027%_)))
                                    (let ((_%hd176023176042%_
                                           (##car _%e176022176039%_))
                                          (_%tl176024176044%_
                                           (##cdr _%e176022176039%_)))
                                      (let* ((_%hd176047%_ _%hd176023176042%_)
                                             (_%rest176049%_
                                              _%tl176024176044%_)
                                             (_%e176050176057%_ _%hd176047%_)
                                             (_%E176052176061%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e176050176057%_)))
                                             (_%E176051176080%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e176050176057%_)
                                                    (let ((_%e176053176065%_
                                                           (gx#syntax-e
                                                            _%e176050176057%_)))
                                                      (let ((_%hd176054176068%_
                                                             (##car _%e176053176065%_))
                                                            (_%tl176055176070%_
                                                             (##cdr _%e176053176065%_)))
                                                        (let* ((_%condition176073%_
                                                                _%hd176054176068%_)
                                                               (_%body176075%_
                                                                _%tl176055176070%_))
                                                          (if (gx#stx-eq?
                                                               _%condition176073%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest176049%_)
                          _%body176075%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx175985%_
                           _%hd176047%_))
                      (if (_%satisfied?175987%_ _%condition176073%_)
                          _%body176075%_
                          (_%loop175988%_ _%rest176049%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176052176061%_)))))
                                        (_%E176051176080%_))))
                                  (_%E176021176035%_)))))
                      (_%E176020176084%_)))))
          (let* ((_%e175989175996%_ _%stx175985%_)
                 (_%E175991176000%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e175989175996%_)))
                 (_%E175990176014%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175989175996%_)
                        (let ((_%e175992176004%_
                               (gx#syntax-e _%e175989175996%_)))
                          (let ((_%hd175993176007%_ (##car _%e175992176004%_))
                                (_%tl175994176009%_ (##cdr _%e175992176004%_)))
                            (let ((_%clauses176012%_ _%tl175994176009%_))
                              (if (gx#stx-list? _%clauses176012%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop175988%_ _%clauses176012%_))
                                  (_%E175991176000%_)))))
                        (_%E175991176000%_)))))
            (_%E175990176014%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx175928%_ _%rpath175929%_)
        (let* ((_%e175930175940%_ _%stx175928%_)
               (_%E175932175944%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175930175940%_)))
               (_%E175931175971%_
                (lambda ()
                  (if (gx#stx-pair? _%e175930175940%_)
                      (let ((_%e175933175948%_
                             (gx#syntax-e _%e175930175940%_)))
                        (let ((_%hd175934175951%_ (##car _%e175933175948%_))
                              (_%tl175935175953%_ (##cdr _%e175933175948%_)))
                          (if (gx#stx-pair? _%tl175935175953%_)
                              (let ((_%e175936175956%_
                                     (gx#syntax-e _%tl175935175953%_)))
                                (let ((_%hd175937175959%_
                                       (##car _%e175936175956%_))
                                      (_%tl175938175961%_
                                       (##cdr _%e175936175956%_)))
                                  (let ((_%path175964%_ _%hd175937175959%_))
                                    (if (gx#stx-null? _%tl175938175961%_)
                                        (if (gx#stx-string? _%path175964%_)
                                            (let ((_%rpath175969%_
                                                   (let ((_%$e175966%_
                                                          _%rpath175929%_))
                                                     (if _%$e175966%_
                                                         _%$e175966%_
                                                         (gx#core-resolve-path__%
                                                          _%path175964%_
                                                          (gx#stx-source
                                                           _%stx175928%_))))))
                                              (if (member _%rpath175969%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx175928%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath175969%_))
                                                    (gx#stx-source
                                                     _%stx175928%_)))))
                                            (_%E175932175944%_))
                                        (_%E175932175944%_)))))
                              (_%E175932175944%_))))
                      (_%E175932175944%_)))))
          (_%E175931175971%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx175978%_)
        (let ((_%rpath175980%_ '#f))
          (gx#core-expand-include%__% _%stx175978%_ _%rpath175980%_))))
    (define gx#core-expand-include%
      (lambda _g178303_
        (let ((_g178304_ (##length _g178303_)))
          (cond ((##fx= _g178304_ 1)
                 (apply gx#core-expand-include%__0 _g178303_))
                ((##fx= _g178304_ 2)
                 (apply gx#core-expand-include%__% _g178303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g178303_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K175894%_ _%stx175895%_ _%method175896%_)
        (if (procedure? _%K175894%_)
            (let ((_%$e175899%_ (gx#stx-source _%stx175895%_)))
              (if _%$e175899%_
                  ((lambda (_%g175901175903%_)
                     (gx#stx-wrap-source
                      (_%K175894%_ _%stx175895%_)
                      _%g175901175903%_))
                   _%$e175899%_)
                  (_%K175894%_ _%stx175895%_)))
            (let ((_%$e175907%_
                   (bound-method-ref _%K175894%_ _%method175896%_)))
              (if _%$e175907%_
                  ((lambda (_%g175909175911%_)
                     (gx#core-apply-expander__%
                      _%g175909175911%_
                      _%stx175895%_
                      _%method175896%_))
                   _%$e175907%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx175895%_
                   _%method175896%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K175918%_ _%stx175919%_)
        (let ((_%method175921%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K175918%_
           _%stx175919%_
           _%method175921%_))))
    (define gx#core-apply-expander
      (lambda _g178305_
        (let ((_g178306_ (##length _g178305_)))
          (cond ((##fx= _g178306_ 2)
                 (apply gx#core-apply-expander__0 _g178305_))
                ((##fx= _g178306_ 3)
                 (apply gx#core-apply-expander__% _g178305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g178305_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self175879%_ _%stx175880%_)
        (let ((_%self175883%_ _%self175879%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx175880%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self175722%_ _%stx175723%_)
        (let* ((_%self175726%_ _%self175722%_)
               (_%self175735175741%_ _%self175726%_)
               (_%E175737175744%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175735175741%_
                         '((macro-expander K)))
                  '#!void))
               (_%K175738175749%_
                (lambda (_%K175747%_)
                  (gx#core-apply-expander__0 _%K175747%_ _%stx175723%_)))
               (_%e175739175752%_
                (##unchecked-structure-ref _%self175735175741%_ '1 '#f '#f))
               (_%K175755%_ _%e175739175752%_))
          (_%K175738175749%_ _%K175755%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self175565%_ _%stx175566%_)
        (let ((_%self175569%_ _%self175565%_))
          (if (gx#sealed-syntax? _%stx175566%_)
              _%stx175566%_
              (let* ((_%self175578175584%_ _%self175569%_)
                     (_%E175580175587%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self175578175584%_
                               '((core-expander K)))
                        '#!void))
                     (_%K175581175592%_
                      (lambda (_%K175590%_)
                        (gx#core-apply-expander__0 _%K175590%_ _%stx175566%_)))
                     (_%e175582175595%_
                      (##unchecked-structure-ref
                       _%self175578175584%_
                       '1
                       '#f
                       '#f))
                     (_%K175598%_ _%e175582175595%_))
                (_%K175581175592%_ _%K175598%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self175416%_ _%stx175417%_ _%top?175418%_)
        (let ((_%self175421%_ _%self175416%_))
          (if (_%top?175418%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self175421%_
               _%stx175417%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx175417%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self175434%_ _%stx175435%_)
        (let ((_%top?175437%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self175434%_
           _%stx175435%_
           _%top?175437%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g178307_
        (let ((_g178308_ (##length _g178307_)))
          (cond ((##fx= _g178308_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g178307_))
                ((##fx= _g178308_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g178307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g178307_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self175279%_ _%stx175280%_)
        (let ((_%self175283%_ _%self175279%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self175283%_
           _%stx175280%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self175094%_ _%stx175095%_)
        (let* ((_%self175098%_ _%self175094%_)
               (_%self175107175113%_ _%self175098%_)
               (_%E175109175116%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175107175113%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K175110175149%_
                (lambda (_%id175119%_)
                  (let* ((_%e175120175127%_ _%stx175095%_)
                         (_%E175122175131%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e175120175127%_)))
                         (_%E175121175145%_
                          (lambda ()
                            (if (gx#stx-pair? _%e175120175127%_)
                                (let ((_%e175123175135%_
                                       (gx#syntax-e _%e175120175127%_)))
                                  (let ((_%hd175124175138%_
                                         (##car _%e175123175135%_))
                                        (_%tl175125175140%_
                                         (##cdr _%e175123175135%_)))
                                    (let ((_%body175143%_ _%tl175125175140%_))
                                      (gx#core-cons
                                       _%id175119%_
                                       _%body175143%_))))
                                (_%E175122175131%_)))))
                    (_%E175121175145%_))))
               (_%e175111175152%_
                (##unchecked-structure-ref _%self175107175113%_ '1 '#f '#f))
               (_%id175155%_ _%e175111175152%_))
          (_%K175110175149%_ _%id175155%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self174921%_ _%stx174922%_ _%method174923%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx174922%_))
              (force-output))
            '#!void)
        (let* ((_%self174924174932%_ _%self174921%_)
               (_%E174926174935%_
                (lambda ()
                  (error '"No clause matching"
                         _%self174924174932%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K174927174942%_
                (lambda (_%phi174938%_ _%ctx174939%_ _%K174940%_)
                  (gx#core-apply-user-macro
                   _%K174940%_
                   _%stx174922%_
                   _%ctx174939%_
                   _%phi174938%_
                   _%method174923%_))))
          (if (##structure-instance-of?
               _%self174924174932%_
               'gx#user-expander::t)
              (let* ((_%e174928174945%_
                      (##unchecked-structure-ref
                       _%self174924174932%_
                       '1
                       '#f
                       '#f))
                     (_%K174948%_ _%e174928174945%_)
                     (_%e174929174950%_
                      (##unchecked-structure-ref
                       _%self174924174932%_
                       '2
                       '#f
                       '#f))
                     (_%ctx174953%_ _%e174929174950%_)
                     (_%e174930174955%_
                      (##unchecked-structure-ref
                       _%self174924174932%_
                       '3
                       '#f
                       '#f))
                     (_%phi174958%_ _%e174930174955%_))
                (_%K174927174942%_ _%phi174958%_ _%ctx174953%_ _%K174948%_))
              (_%E174926174935%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self174963%_ _%stx174964%_)
        (let ((_%method174966%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self174963%_
           _%stx174964%_
           _%method174966%_))))
    (define gx#core-apply-user-expander
      (lambda _g178309_
        (let ((_g178310_ (##length _g178309_)))
          (cond ((##fx= _g178310_ 2)
                 (apply gx#core-apply-user-expander__0 _g178309_))
                ((##fx= _g178310_ 3)
                 (apply gx#core-apply-user-expander__% _g178309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g178309_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K174911%_
               _%stx174912%_
               _%ctx174913%_
               _%phi174914%_
               _%method174915%_)
        (let ((_%mark174917%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx174913%_
                _%phi174914%_
                _%stx174912%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K174911%_
               (gx#stx-apply-mark _%stx174912%_ _%mark174917%_)
               _%method174915%_)
              _%mark174917%_))
           gx#current-expander-marks
           (cons _%mark174917%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx174759%_ _%phi174760%_ _%ctx174761%_)
        (let _%lp174763%_ ((_%bind174765%_
                            (gx#core-resolve-identifier__%
                             _%stx174759%_
                             _%phi174760%_
                             _%ctx174761%_)))
          (if (##structure-direct-instance-of?
               _%bind174765%_
               'gx#import-binding::t)
              (_%lp174763%_
               (##unchecked-structure-ref _%bind174765%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind174765%_
                   'gx#alias-binding::t)
                  (_%lp174763%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind174765%_ '5 '#f '#f)
                    _%phi174760%_
                    _%ctx174761%_))
                  _%bind174765%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx174773%_)
        (let* ((_%phi174775%_ (gx#current-expander-phi))
               (_%ctx174777%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx174773%_
           _%phi174775%_
           _%ctx174777%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx174779%_ _%phi174780%_)
        (let ((_%ctx174782%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx174779%_
           _%phi174780%_
           _%ctx174782%_))))
    (define gx#resolve-identifier
      (lambda _g178311_
        (let ((_g178312_ (##length _g178311_)))
          (cond ((##fx= _g178312_ 1)
                 (apply gx#resolve-identifier__0 _g178311_))
                ((##fx= _g178312_ 2)
                 (apply gx#resolve-identifier__1 _g178311_))
                ((##fx= _g178312_ 3)
                 (apply gx#resolve-identifier__% _g178311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g178311_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx174714%_
               _%val174715%_
               _%rebind?174716%_
               _%phi174717%_
               _%ctx174718%_)
        (let ((_%rebind?174723%_
               (if (not _%rebind?174716%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?174716%_)
                       _%rebind?174716%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx174714%_)
           _%val174715%_
           _%rebind?174723%_
           _%phi174717%_
           _%ctx174718%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx174728%_ _%val174729%_)
        (let* ((_%rebind?174731%_ '#f)
               (_%phi174733%_ (gx#current-expander-phi))
               (_%ctx174735%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174728%_
           _%val174729%_
           _%rebind?174731%_
           _%phi174733%_
           _%ctx174735%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx174737%_ _%val174738%_ _%rebind?174739%_)
        (let* ((_%phi174741%_ (gx#current-expander-phi))
               (_%ctx174743%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174737%_
           _%val174738%_
           _%rebind?174739%_
           _%phi174741%_
           _%ctx174743%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx174745%_ _%val174746%_ _%rebind?174747%_ _%phi174748%_)
        (let ((_%ctx174750%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174745%_
           _%val174746%_
           _%rebind?174747%_
           _%phi174748%_
           _%ctx174750%_))))
    (define gx#bind-identifier!
      (lambda _g178313_
        (let ((_g178314_ (##length _g178313_)))
          (cond ((##fx= _g178314_ 2) (apply gx#bind-identifier!__0 _g178313_))
                ((##fx= _g178314_ 3) (apply gx#bind-identifier!__1 _g178313_))
                ((##fx= _g178314_ 4) (apply gx#bind-identifier!__2 _g178313_))
                ((##fx= _g178314_ 5) (apply gx#bind-identifier!__% _g178313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g178313_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx174680%_ _%phi174681%_ _%ctx174682%_)
        (let _%lp174684%_ ((_%e174686%_ _%stx174680%_)
                           (_%marks174687%_ (gx#current-expander-marks)))
          (if (symbol? _%e174686%_)
              (gx#core-resolve-binding
               _%e174686%_
               _%phi174681%_
               _%phi174681%_
               _%ctx174682%_
               (reverse _%marks174687%_))
              (if (gx#identifier-quote? _%e174686%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e174686%_ '1 '#f '#f)
                   _%phi174681%_
                   '0
                   (##unchecked-structure-ref _%e174686%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e174686%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e174686%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e174686%_ '1 '#f '#f)
                       _%phi174681%_
                       _%phi174681%_
                       _%ctx174682%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e174686%_ '3 '#f '#f)
                        _%marks174687%_))
                      (if (##structure-direct-instance-of?
                           _%e174686%_
                           'gx#syntax-wrap::t)
                          (_%lp174684%_
                           (##unchecked-structure-ref _%e174686%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e174686%_ '3 '#f '#f)
                            _%marks174687%_))
                          (if (##structure-instance-of?
                               _%e174686%_
                               'gerbil#AST::t)
                              (_%lp174684%_
                               (##unchecked-structure-ref
                                _%e174686%_
                                '1
                                '#f
                                '#f)
                               _%marks174687%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx174680%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx174698%_)
        (let* ((_%phi174700%_ (gx#current-expander-phi))
               (_%ctx174702%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx174698%_
           _%phi174700%_
           _%ctx174702%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx174704%_ _%phi174705%_)
        (let ((_%ctx174707%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx174704%_
           _%phi174705%_
           _%ctx174707%_))))
    (define gx#core-resolve-identifier
      (lambda _g178315_
        (let ((_g178316_ (##length _g178315_)))
          (cond ((##fx= _g178316_ 1)
                 (apply gx#core-resolve-identifier__0 _g178315_))
                ((##fx= _g178316_ 2)
                 (apply gx#core-resolve-identifier__1 _g178315_))
                ((##fx= _g178316_ 3)
                 (apply gx#core-resolve-identifier__% _g178315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g178315_))))))
    (define gx#core-resolve-binding
      (lambda (_%id174591%_
               _%phi174592%_
               _%src-phi174593%_
               _%ctx174594%_
               _%marks174595%_)
        (letrec ((_%resolve174597%_
                  (lambda (_%ctx174664%_ _%src-phi174665%_ _%key174666%_)
                    (let _%lp174668%_ ((_%ctx174670%_
                                        (gx#core-context-shift
                                         _%ctx174664%_
                                         _%phi174592%_))
                                       (_%dphi174671%_
                                        (fx- _%phi174592%_ _%src-phi174665%_)))
                      (let ((_%$e174673%_
                             (gx#core-context-resolve
                              _%ctx174670%_
                              _%key174666%_)))
                        (if _%$e174673%_
                            _%$e174673%_
                            (if (fxzero? _%dphi174671%_)
                                '#f
                                (if (fxpositive? _%dphi174671%_)
                                    (_%lp174668%_
                                     (gx#core-context-shift _%ctx174670%_ '-1)
                                     (##fx- _%dphi174671%_ '1))
                                    (_%lp174668%_
                                     (gx#core-context-shift _%ctx174670%_ '1)
                                     (##fx+ _%dphi174671%_ '1))))))))))
          (let _%lp174599%_ ((_%ctx174601%_ _%ctx174594%_)
                             (_%src-phi174602%_ _%src-phi174593%_)
                             (_%rest174603%_ _%marks174595%_))
            (let* ((_%rest174604174612%_ _%rest174603%_)
                   (_%else174606174620%_
                    (lambda ()
                      (_%resolve174597%_
                       _%ctx174601%_
                       _%src-phi174602%_
                       _%id174591%_)))
                   (_%K174608174652%_
                    (lambda (_%rest174623%_ _%hd174624%_)
                      (let* ((_%hd174625174631%_ _%hd174624%_)
                             (_%E174627174634%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd174625174631%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K174628174644%_
                              (lambda (_%subst174637%_)
                                (let ((_%$e174641%_
                                       (let ((_%key174639%_
                                              (if _%subst174637%_
                                                  (hash-get
                                                   _%subst174637%_
                                                   _%id174591%_)
                                                  '#f)))
                                         (if _%key174639%_
                                             (_%resolve174597%_
                                              _%ctx174601%_
                                              _%src-phi174602%_
                                              _%key174639%_)
                                             '#f))))
                                  (if _%$e174641%_
                                      _%$e174641%_
                                      (_%lp174599%_
                                       (##unchecked-structure-ref
                                        _%hd174624%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd174624%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest174623%_))))))
                        (if (##structure-instance-of?
                             _%hd174625174631%_
                             'gx#expander-mark::t)
                            (let* ((_%e174629174647%_
                                    (##unchecked-structure-ref
                                     _%hd174625174631%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst174650%_ _%e174629174647%_))
                              (_%K174628174644%_ _%subst174650%_))
                            (_%E174627174634%_))))))
              (if (pair? _%rest174604174612%_)
                  (let ((_%hd174609174655%_ (##car _%rest174604174612%_))
                        (_%tl174610174657%_ (##cdr _%rest174604174612%_)))
                    (let* ((_%hd174660%_ _%hd174609174655%_)
                           (_%rest174662%_ _%tl174610174657%_))
                      (_%K174608174652%_ _%rest174662%_ _%hd174660%_)))
                  (_%else174606174620%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key174462%_
               _%val174463%_
               _%rebind?174464%_
               _%phi174465%_
               _%ctx174466%_)
        (letrec ((_%update-binding174468%_
                  (lambda (_%xval174540%_)
                    (if (or (_%rebind?174464%_
                             _%ctx174466%_
                             _%xval174540%_
                             _%val174463%_)
                            (and (##structure-direct-instance-of?
                                  _%xval174540%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval174540%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val174463%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val174463%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval174540%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val174463%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val174463%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval174540%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val174463%_
                        (if (and (##structure-direct-instance-of?
                                  _%val174463%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val174463%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval174540%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val174463%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval174540%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval174540%_
                            (if (and (##structure-direct-instance-of?
                                      _%val174463%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval174540%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key174462%_
                                 (cons (##unchecked-structure-ref
                                        _%val174463%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val174463%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval174540%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval174540%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval174540%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval174540%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key174462%_
                                 _%val174463%_
                                 _%xval174540%_))))))
                 (_%gensubst174469%_
                  (lambda (_%subst174535%_ _%id174536%_)
                    (let ((_%eid174538%_
                           (gensym (if (uninterned-symbol? _%id174536%_)
                                       '%
                                       _%id174536%_))))
                      (hash-put! _%subst174535%_ _%id174536%_ _%eid174538%_)
                      _%eid174538%_)))
                 (_%subst!174470%_
                  (lambda (_%key174472%_)
                    (let* ((_%key174473174481%_ _%key174472%_)
                           (_%else174475174489%_ (lambda () _%key174472%_))
                           (_%K174477174523%_
                            (lambda (_%mark174492%_ _%id174493%_)
                              (let* ((_%mark174494174500%_ _%mark174492%_)
                                     (_%E174496174503%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark174494174500%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K174497174515%_
                                      (lambda (_%subst174506%_)
                                        (if (not _%subst174506%_)
                                            (let ((_%subst174509%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark174492%_
                                               _%subst174509%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst174469%_
                                               _%subst174509%_
                                               _%id174493%_))
                                            (let ((_%$e174511%_
                                                   (hash-get
                                                    _%subst174506%_
                                                    _%id174493%_)))
                                              (if _%$e174511%_
                                                  _%$e174511%_
                                                  (_%gensubst174469%_
                                                   _%subst174506%_
                                                   _%id174493%_)))))))
                                (if (##structure-instance-of?
                                     _%mark174494174500%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e174498174518%_
                                            (##unchecked-structure-ref
                                             _%mark174494174500%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst174521%_ _%e174498174518%_))
                                      (_%K174497174515%_ _%subst174521%_))
                                    (_%E174496174503%_))))))
                      (if (pair? _%key174473174481%_)
                          (let ((_%hd174478174526%_
                                 (##car _%key174473174481%_))
                                (_%tl174479174528%_
                                 (##cdr _%key174473174481%_)))
                            (let* ((_%id174531%_ _%hd174478174526%_)
                                   (_%mark174533%_ _%tl174479174528%_))
                              (_%K174477174523%_ _%mark174533%_ _%id174531%_)))
                          (_%else174475174489%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx174466%_ _%phi174465%_)
           (_%subst!174470%_ _%key174462%_)
           _%val174463%_
           _%update-binding174468%_))))
    (define gx#core-bind!__0
      (lambda (_%key174561%_ _%val174562%_)
        (let* ((_%rebind?174564%_ false)
               (_%phi174566%_ (gx#current-expander-phi))
               (_%ctx174568%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174561%_
           _%val174562%_
           _%rebind?174564%_
           _%phi174566%_
           _%ctx174568%_))))
    (define gx#core-bind!__1
      (lambda (_%key174570%_ _%val174571%_ _%rebind?174572%_)
        (let* ((_%phi174574%_ (gx#current-expander-phi))
               (_%ctx174576%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174570%_
           _%val174571%_
           _%rebind?174572%_
           _%phi174574%_
           _%ctx174576%_))))
    (define gx#core-bind!__2
      (lambda (_%key174578%_ _%val174579%_ _%rebind?174580%_ _%phi174581%_)
        (let ((_%ctx174583%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174578%_
           _%val174579%_
           _%rebind?174580%_
           _%phi174581%_
           _%ctx174583%_))))
    (define gx#core-bind!
      (lambda _g178317_
        (let ((_g178318_ (##length _g178317_)))
          (cond ((##fx= _g178318_ 2) (apply gx#core-bind!__0 _g178317_))
                ((##fx= _g178318_ 3) (apply gx#core-bind!__1 _g178317_))
                ((##fx= _g178318_ 4) (apply gx#core-bind!__2 _g178317_))
                ((##fx= _g178318_ 5) (apply gx#core-bind!__% _g178317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g178317_))))))
    (define gx#core-identifier-key
      (lambda (_%stx174393%_)
        (if (symbol? _%stx174393%_)
            (let* ((_%g174395174403%_ (gx#current-expander-marks))
                   (_%else174397174411%_ (lambda () _%stx174393%_))
                   (_%K174399174416%_
                    (lambda (_%hd174414%_) (cons _%stx174393%_ _%hd174414%_))))
              (if (pair? _%g174395174403%_)
                  (let* ((_%hd174400174419%_ (##car _%g174395174403%_))
                         (_%hd174422%_ _%hd174400174419%_))
                    (_%K174399174416%_ _%hd174422%_))
                  (_%else174397174411%_)))
            (if (gx#identifier? _%stx174393%_)
                (let* ((_%id174425%_ (gx#syntax-local-unwrap _%stx174393%_))
                       (_%eid174427%_ (gx#stx-e _%id174425%_))
                       (_%marks174429%_
                        (gx#stx-identifier-marks* _%id174425%_))
                       (_%marks174431174439%_ _%marks174429%_)
                       (_%else174433174447%_ (lambda () _%eid174427%_))
                       (_%K174435174452%_
                        (lambda (_%hd174450%_)
                          (cons _%eid174427%_ _%hd174450%_))))
                  (if (pair? _%marks174431174439%_)
                      (let* ((_%hd174436174455%_ (##car _%marks174431174439%_))
                             (_%hd174458%_ _%hd174436174455%_))
                        (_%K174435174452%_ _%hd174458%_))
                      (_%else174433174447%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx174393%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx174332%_ _%phi174333%_)
        (letrec ((_%make-phi174335%_
                  (lambda (_%super174391%_)
                    (let ((__obj178288
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj178288
                       (##gensym 'phi)
                       _%super174391%_)
                      __obj178288)))
                 (_%make-phi/up174336%_
                  (lambda (_%ctx174386%_ _%super174387%_)
                    (let ((_%ctx+1174389%_
                           (_%make-phi174335%_ _%super174387%_)))
                      (##unchecked-structure-set!
                       _%ctx174386%_
                       _%ctx+1174389%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1174389%_
                       _%ctx174386%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1174389%_)))
                 (_%make-phi/down174337%_
                  (lambda (_%ctx174381%_ _%super174382%_)
                    (let ((_%ctx-1174384%_
                           (_%make-phi174335%_ _%super174382%_)))
                      (##unchecked-structure-set!
                       _%ctx-1174384%_
                       _%ctx174381%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx174381%_
                       _%ctx-1174384%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1174384%_)))
                 (_%shift174338%_
                  (lambda (_%ctx174364%_
                           _%delta174365%_
                           _%make-delta-context174366%_
                           _%phi174367%_
                           _%K174368%_)
                    (let ((_%$e174370%_
                           (##unchecked-structure-ref
                            _%ctx174364%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e174370%_
                          ((lambda (_%super174373%_)
                             (let* ((_%super174375%_
                                     (_%K174368%_
                                      _%super174373%_
                                      _%delta174365%_))
                                    (_%ctx+d174377%_
                                     (_%make-delta-context174366%_
                                      _%ctx174364%_
                                      _%super174375%_)))
                               (_%K174368%_
                                _%ctx+d174377%_
                                (fx- _%phi174367%_ _%delta174365%_))))
                           _%$e174370%_)
                          (error '"Bad context" _%ctx174364%_))))))
          (let _%K174340%_ ((_%ctx174342%_ _%ctx174332%_)
                            (_%phi174343%_ _%phi174333%_))
            (if (fxzero? _%phi174343%_)
                _%ctx174342%_
                (if (##structure-instance-of? _%ctx174342%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi174343%_)
                        (let ((_%$e174347%_
                               (##unchecked-structure-ref
                                _%ctx174342%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e174347%_
                              ((lambda (_%g174349174351%_)
                                 (_%K174340%_
                                  _%g174349174351%_
                                  (##fx- _%phi174343%_ '1)))
                               _%$e174347%_)
                              (_%shift174338%_
                               _%ctx174342%_
                               '1
                               _%make-phi/up174336%_
                               _%phi174343%_
                               _%K174340%_)))
                        (let ((_%$e174355%_
                               (##unchecked-structure-ref
                                _%ctx174342%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e174355%_
                              ((lambda (_%g174357174359%_)
                                 (_%K174340%_
                                  _%g174357174359%_
                                  (##fx+ _%phi174343%_ '1)))
                               _%$e174355%_)
                              (_%shift174338%_
                               _%ctx174342%_
                               '-1
                               _%make-phi/down174337%_
                               _%phi174343%_
                               _%K174340%_))))
                    _%ctx174342%_))))))
    (define gx#core-context-get
      (lambda (_%ctx174329%_ _%key174330%_)
        (hash-get
         (##unchecked-structure-ref _%ctx174329%_ '2 '#f '#f)
         _%key174330%_)))
    (define gx#core-context-put!
      (lambda (_%ctx174325%_ _%key174326%_ _%val174327%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx174325%_ '2 '#f '#f)
         _%key174326%_
         _%val174327%_)
        _%val174327%_))
    (define gx#core-context-resolve
      (lambda (_%ctx174311%_ _%key174312%_)
        (let _%lp174314%_ ((_%ctx174316%_ _%ctx174311%_))
          (let ((_%$e174318%_
                 (gx#core-context-get _%ctx174316%_ _%key174312%_)))
            (if _%$e174318%_
                _%$e174318%_
                (let ((_%$e174321%_
                       (if (##structure-instance-of?
                            _%ctx174316%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx174316%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e174321%_ (_%lp174314%_ _%$e174321%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx174300%_ _%key174301%_ _%val174302%_ _%rebind174303%_)
        (let ((_%$e174305%_ (gx#core-context-get _%ctx174300%_ _%key174301%_)))
          (if _%$e174305%_
              ((lambda (_%xval174308%_)
                 (gx#core-context-put!
                  _%ctx174300%_
                  _%key174301%_
                  (_%rebind174303%_ _%xval174308%_)))
               _%$e174305%_)
              (gx#core-context-put!
               _%ctx174300%_
               _%key174301%_
               _%val174302%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx174275%_ _%stop?174276%_)
        (let _%lp174278%_ ((_%ctx174280%_ _%ctx174275%_))
          (if (_%stop?174276%_ _%ctx174280%_)
              _%ctx174280%_
              (if (##structure-instance-of? _%ctx174280%_ 'gx#phi-context::t)
                  (_%lp174278%_
                   (##unchecked-structure-ref _%ctx174280%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx174289%_ (gx#current-expander-context))
               (_%stop?174291%_ gx#top-context?))
          (gx#core-context-top__% _%ctx174289%_ _%stop?174291%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx174293%_)
        (let ((_%stop?174295%_ gx#top-context?))
          (gx#core-context-top__% _%ctx174293%_ _%stop?174295%_))))
    (define gx#core-context-top
      (lambda _g178319_
        (let ((_g178320_ (##length _g178319_)))
          (cond ((##fx= _g178320_ 0) (apply gx#core-context-top__0 _g178319_))
                ((##fx= _g178320_ 1) (apply gx#core-context-top__1 _g178319_))
                ((##fx= _g178320_ 2) (apply gx#core-context-top__% _g178319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g178319_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx174260%_)
        (let _%lp174262%_ ((_%ctx174264%_ _%ctx174260%_))
          (if (##structure-instance-of? _%ctx174264%_ 'gx#phi-context::t)
              (_%lp174262%_
               (##unchecked-structure-ref _%ctx174264%_ '3 '#f '#f))
              _%ctx174264%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx174270%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx174270%_))))
    (define gx#core-context-root
      (lambda _g178321_
        (let ((_g178322_ (##length _g178321_)))
          (cond ((##fx= _g178322_ 0) (apply gx#core-context-root__0 _g178321_))
                ((##fx= _g178322_ 1) (apply gx#core-context-root__% _g178321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g178321_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx174242%_ . _%ignore174243%_)
        (let ((_%$e174245%_ (gx#current-expander-allow-rebind?)))
          (if _%$e174245%_
              _%$e174245%_
              (if (##structure-instance-of? _%ctx174242%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx174242%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx174242%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx174252%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx174252%_))))
    (define gx#core-context-rebind?
      (lambda _g178323_
        (let ((_g178324_ (##length _g178323_)))
          (cond ((##fx= _g178324_ 0)
                 (apply gx#core-context-rebind?__0 _g178323_))
                ((##fx= _g178324_ 1)
                 (apply gx#core-context-rebind?__% _g178323_))
                ((##fx>= _g178324_ 1)
                 (apply gx#core-context-rebind?__% _g178323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g178323_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx174225%_)
        (let ((_%$e174227%_ (gx#core-context-top__1 _%ctx174225%_)))
          (if _%$e174227%_
              ((lambda (_%ctx174230%_)
                 (if (##structure-instance-of?
                      _%ctx174230%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx174230%_ '6 '#f '#f)
                     '#f))
               _%$e174227%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx174237%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx174237%_))))
    (define gx#core-context-namespace
      (lambda _g178325_
        (let ((_g178326_ (##length _g178325_)))
          (cond ((##fx= _g178326_ 0)
                 (apply gx#core-context-namespace__0 _g178325_))
                ((##fx= _g178326_ 1)
                 (apply gx#core-context-namespace__% _g178325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g178325_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind174211%_ _%is?174212%_)
        (if (##structure-direct-instance-of?
             _%bind174211%_
             'gx#syntax-binding::t)
            (_%is?174212%_
             (##unchecked-structure-ref _%bind174211%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind174217%_)
        (let ((_%is?174219%_ gx#expander?))
          (gx#expander-binding?__% _%bind174217%_ _%is?174219%_))))
    (define gx#expander-binding?
      (lambda _g178327_
        (let ((_g178328_ (##length _g178327_)))
          (cond ((##fx= _g178328_ 1) (apply gx#expander-binding?__0 _g178327_))
                ((##fx= _g178328_ 2) (apply gx#expander-binding?__% _g178327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g178327_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind174208%_)
        (gx#expander-binding?__% _%bind174208%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind174206%_)
        (gx#expander-binding?__% _%bind174206%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind174200%_)
        (letrec ((_%direct-special-form?174202%_
                  (lambda (_%obj174204%_)
                    (##structure-direct-instance-of?
                     _%obj174204%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind174200%_
           _%direct-special-form?174202%_))))
    (define gx#special-form-binding?
      (lambda (_%bind174198%_)
        (gx#expander-binding?__% _%bind174198%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind174189%_)
        (letrec ((_%feature?174191%_
                  (lambda (_%e174193%_)
                    (let ((_%$e174195%_
                           (##structure-instance-of?
                            _%e174193%_
                            'gx#feature-expander::t)))
                      (if _%$e174195%_
                          _%$e174195%_
                          (##structure-instance-of?
                           _%e174193%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind174189%_ _%feature?174191%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind174187%_)
        (gx#expander-binding?__% _%bind174187%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id174174%_ _%bound?174175%_)
        (if (gx#identifier? _%id174174%_)
            (_%bound?174175%_ (gx#resolve-identifier__0 _%id174174%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id174180%_)
        (let ((_%bound?174182%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id174180%_ _%bound?174182%_))))
    (define gx#core-bound-identifier?
      (lambda _g178329_
        (let ((_g178330_ (##length _g178329_)))
          (cond ((##fx= _g178330_ 1)
                 (apply gx#core-bound-identifier?__0 _g178329_))
                ((##fx= _g178330_ 2)
                 (apply gx#core-bound-identifier?__% _g178329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g178329_))))))
    (define gx#core-identifier=?
      (lambda (_%x174164%_ _%y174165%_)
        (letrec ((_%y=?174167%_
                  (lambda (_%xid174171%_)
                    ((if (list? _%y174165%_) memq eq?)
                     _%xid174171%_
                     _%y174165%_))))
          (let ((_%bind174169%_ (gx#resolve-identifier__0 _%x174164%_)))
            (if (##structure-instance-of? _%bind174169%_ 'gx#binding::t)
                (_%y=?174167%_
                 (##unchecked-structure-ref _%bind174169%_ '1 '#f '#f))
                (_%y=?174167%_ (gx#stx-e _%x174164%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e174162%_)
        (if (interned-symbol? _%e174162%_)
            (string-index__0 (symbol->string _%e174162%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx174115%_ _%src174116%_ _%ctx174117%_ _%marks174118%_)
        (if (##structure? _%stx174115%_)
            (let ((_%$e174120%_ (gx#sealed-syntax-unwrap _%stx174115%_)))
              (if _%$e174120%_
                  _%$e174120%_
                  (if (gx#identifier? _%stx174115%_)
                      (let ((_%id174124%_
                             (gx#stx-unwrap__% _%stx174115%_ _%marks174118%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id174124%_ '1 '#f '#f)
                         (let ((_%$e174126%_
                                (##unchecked-structure-ref
                                 _%id174124%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e174126%_ _%$e174126%_ _%src174116%_))
                         _%ctx174117%_
                         (##unchecked-structure-ref _%id174124%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx174115%_)
                       (let ((_%$e174130%_ (gx#stx-source _%stx174115%_)))
                         (if _%$e174130%_ _%$e174130%_ _%src174116%_))
                       _%ctx174117%_
                       (reverse _%marks174118%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx174115%_
             _%src174116%_
             _%ctx174117%_
             (reverse _%marks174118%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx174136%_)
        (let* ((_%src174138%_ '#f)
               (_%ctx174140%_ (gx#current-expander-context))
               (_%marks174142%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174136%_
           _%src174138%_
           _%ctx174140%_
           _%marks174142%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx174144%_ _%src174145%_)
        (let* ((_%ctx174147%_ (gx#current-expander-context))
               (_%marks174149%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174144%_
           _%src174145%_
           _%ctx174147%_
           _%marks174149%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx174151%_ _%src174152%_ _%ctx174153%_)
        (let ((_%marks174155%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174151%_
           _%src174152%_
           _%ctx174153%_
           _%marks174155%_))))
    (define gx#core-quote-syntax
      (lambda _g178331_
        (let ((_g178332_ (##length _g178331_)))
          (cond ((##fx= _g178332_ 1) (apply gx#core-quote-syntax__0 _g178331_))
                ((##fx= _g178332_ 2) (apply gx#core-quote-syntax__1 _g178331_))
                ((##fx= _g178332_ 3) (apply gx#core-quote-syntax__2 _g178331_))
                ((##fx= _g178332_ 4) (apply gx#core-quote-syntax__% _g178331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g178331_))))))
    (define gx#core-cons
      (lambda (_%hd174111%_ _%tl174112%_)
        (cons (gx#core-quote-syntax__0 _%hd174111%_) _%tl174112%_)))
    (define gx#core-list
      (lambda (_%hd174108%_ . _%rest174109%_)
        (cons (gx#core-quote-syntax__0 _%hd174108%_) _%rest174109%_)))
    (define gx#core-cons*
      (lambda (_%hd174105%_ . _%rest174106%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd174105%_) _%rest174106%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path174074%_ _%rel174075%_)
        (let ((_%path174092%_ (gx#stx-e _%stx-path174074%_))
              (_%reldir174093%_
               (let _%lp174077%_ ((_%relsrc174079%_
                                   (let ((_%$e174089%_
                                          (gx#stx-source _%stx-path174074%_)))
                                     (if _%$e174089%_
                                         _%$e174089%_
                                         _%rel174075%_))))
                 (if (##structure-instance-of? _%relsrc174079%_ 'gerbil#AST::t)
                     (_%lp174077%_
                      (let ((_%$e174082%_ (gx#stx-source _%relsrc174079%_)))
                        (if _%$e174082%_
                            _%$e174082%_
                            (gx#stx-e _%relsrc174079%_))))
                     (if (source-location-path? _%relsrc174079%_)
                         (path-directory
                          (source-location-path _%relsrc174079%_))
                         (if (string? _%relsrc174079%_)
                             (path-directory _%relsrc174079%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path174092%_ (path-normalize _%reldir174093%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path174098%_)
        (let ((_%rel174100%_ '#f))
          (gx#core-resolve-path__% _%stx-path174098%_ _%rel174100%_))))
    (define gx#core-resolve-path
      (lambda _g178333_
        (let ((_g178334_ (##length _g178333_)))
          (cond ((##fx= _g178334_ 1) (apply gx#core-resolve-path__0 _g178333_))
                ((##fx= _g178334_ 2) (apply gx#core-resolve-path__% _g178333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g178333_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr174030%_ _%ctx174031%_)
        (let* ((_%repr174032174039%_ _%repr174030%_)
               (_%E174034174043%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr174032174039%_
                         '([phi . subs]))
                  '#!void))
               (_%K174035174051%_
                (lambda (_%subs174046%_ _%phi174047%_)
                  (let ((_%subst174049%_
                         (if (null? _%subs174046%_)
                             '#f
                             (list->hash-table-eq _%subs174046%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst174049%_
                     _%ctx174031%_
                     _%phi174047%_
                     '#f)))))
          (if (pair? _%repr174032174039%_)
              (let ((_%hd174036174054%_ (##car _%repr174032174039%_))
                    (_%tl174037174056%_ (##cdr _%repr174032174039%_)))
                (let* ((_%phi174059%_ _%hd174036174054%_)
                       (_%subs174061%_ _%tl174037174056%_))
                  (_%K174035174051%_ _%subs174061%_ _%phi174059%_)))
              (_%E174034174043%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr174066%_)
        (let ((_%ctx174068%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr174066%_ _%ctx174068%_))))
    (define gx#core-deserialize-mark
      (lambda _g178335_
        (let ((_g178336_ (##length _g178335_)))
          (cond ((##fx= _g178336_ 1)
                 (apply gx#core-deserialize-mark__0 _g178335_))
                ((##fx= _g178336_ 2)
                 (apply gx#core-deserialize-mark__% _g178335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g178335_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx174027%_)
        (gx#stx-rewrap _%stx174027%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx174025%_)
        (gx#stx-unwrap__% _%stx174025%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx173995%_)
        (let* ((_%g173996174004%_ (gx#current-expander-marks))
               (_%else173998174012%_ (lambda () _%stx173995%_))
               (_%K174000174017%_
                (lambda (_%hd174015%_)
                  (gx#stx-apply-mark _%stx173995%_ _%hd174015%_))))
          (if (pair? _%g173996174004%_)
              (let* ((_%hd174001174020%_ (##car _%g173996174004%_))
                     (_%hd174023%_ _%hd174001174020%_))
                (_%K174000174017%_ _%hd174023%_))
              (_%else173998174012%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym173993%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym173993%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx173978%_ _%E173979%_)
        (let ((_%bind173981%_ (gx#resolve-identifier__0 _%stx173978%_)))
          (if (##structure-direct-instance-of?
               _%bind173981%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind173981%_ '5 '#f '#f)
              (_%E173979%_ _%stx173978%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx173986%_)
        (let ((_%E173988%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx173986%_ _%E173988%_))))
    (define gx#syntax-local-e
      (lambda _g178337_
        (let ((_g178338_ (##length _g178337_)))
          (cond ((##fx= _g178338_ 1) (apply gx#syntax-local-e__0 _g178337_))
                ((##fx= _g178338_ 2) (apply gx#syntax-local-e__% _g178337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g178337_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx173962%_ _%E173963%_)
        (let ((_%e173965%_ (gx#syntax-local-e__% _%stx173962%_ _%E173963%_)))
          (if (##structure-instance-of? _%e173965%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e173965%_ '1 '#f '#f)
              _%e173965%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx173970%_)
        (let ((_%E173972%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx173970%_ _%E173972%_))))
    (define gx#syntax-local-value
      (lambda _g178339_
        (let ((_g178340_ (##length _g178339_)))
          (cond ((##fx= _g178340_ 1)
                 (apply gx#syntax-local-value__0 _g178339_))
                ((##fx= _g178340_ 2)
                 (apply gx#syntax-local-value__% _g178339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g178339_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx173959%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx173959%_)))))
