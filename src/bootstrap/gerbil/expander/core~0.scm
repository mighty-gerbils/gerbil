(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1713000277)
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
      (lambda _%$args120852%_
        (apply make-instance gx#expander-context::t _%$args120852%_)))
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
      (lambda _%$args120849%_
        (apply make-instance gx#root-context::t _%$args120849%_)))
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
      (lambda _%$args120846%_
        (apply make-instance gx#phi-context::t _%$args120846%_)))
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
      (lambda _%$args120843%_
        (apply make-instance gx#top-context::t _%$args120843%_)))
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
      (lambda _%$args120840%_
        (apply make-instance gx#module-context::t _%$args120840%_)))
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
      (lambda _%$args120837%_
        (apply make-instance gx#prelude-context::t _%$args120837%_)))
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
      (lambda _%$args120834%_
        (apply make-instance gx#local-context::t _%$args120834%_)))
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
      (lambda (_%self117740120805%_ _%id120807%_ _%super120808%_)
        (let* ((_%self120810%_ _%self117740120805%_)
               (_%self120812%_ _%self120810%_))
          (if (##fx< '3 (##structure-length _%self120812%_))
              (begin
                (##unchecked-structure-set!
                 _%self120812%_
                 _%id120807%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self120812%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self120812%_
                 _%super120808%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self120812%_
                     '3
                     (##vector-length _%self120812%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117740120825%_ _%id120826%_)
        (let ((_%super120828%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117740120825%_
           _%id120826%_
           _%super120828%_))))
    (define gx#phi-context:::init!
      (lambda _g120895_
        (let ((_g120894_ (##length _g120895_)))
          (cond ((##fx= _g120894_ 2)
                 (apply gx#phi-context:::init!__0 _g120895_))
                ((##fx= _g120894_ 3)
                 (apply gx#phi-context:::init!__% _g120895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g120895_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117741120656%_ _%super120658%_)
        (let* ((_%self120660%_ _%self117741120656%_)
               (_%self120662%_ _%self120660%_))
          (if (##fx< '3 (##structure-length _%self120662%_))
              (begin
                (##unchecked-structure-set!
                 _%self120662%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self120662%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self120662%_
                 _%super120658%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self120662%_
                     '3
                     (##vector-length _%self120662%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117741120675%_)
        (let ((_%super120677%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117741120675%_ _%super120677%_))))
    (define gx#local-context:::init!
      (lambda _g120897_
        (let ((_g120896_ (##length _g120897_)))
          (cond ((##fx= _g120896_ 1)
                 (apply gx#local-context:::init!__0 _g120897_))
                ((##fx= _g120896_ 2)
                 (apply gx#local-context:::init!__% _g120897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g120897_))))))
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
      (lambda _%$args120530%_
        (apply make-instance gx#binding::t _%$args120530%_)))
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
      (lambda _%$args120527%_
        (apply make-instance gx#runtime-binding::t _%$args120527%_)))
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
      (lambda _%$args120524%_
        (apply make-instance gx#local-binding::t _%$args120524%_)))
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
      (lambda _%$args120521%_
        (apply make-instance gx#top-binding::t _%$args120521%_)))
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
      (lambda _%$args120518%_
        (apply make-instance gx#module-binding::t _%$args120518%_)))
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
      (lambda _%$args120515%_
        (apply make-instance gx#extern-binding::t _%$args120515%_)))
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
      (lambda _%$args120512%_
        (apply make-instance gx#syntax-binding::t _%$args120512%_)))
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
      (lambda _%$args120509%_
        (apply make-instance gx#import-binding::t _%$args120509%_)))
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
      (lambda _%$args120506%_
        (apply make-instance gx#alias-binding::t _%$args120506%_)))
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
      (lambda _%$args120503%_
        (apply make-instance gx#expander::t _%$args120503%_)))
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
      (lambda _%$args120500%_
        (apply make-instance gx#core-expander::t _%$args120500%_)))
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
      (lambda _%$args120497%_
        (apply make-instance gx#expression-form::t _%$args120497%_)))
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
      (lambda _%$args120494%_
        (apply make-instance gx#special-form::t _%$args120494%_)))
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
      (lambda _%$args120491%_
        (apply make-instance gx#definition-form::t _%$args120491%_)))
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
      (lambda _%$args120488%_
        (apply make-instance gx#top-special-form::t _%$args120488%_)))
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
      (lambda _%$args120485%_
        (apply make-instance gx#module-special-form::t _%$args120485%_)))
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
      (lambda _%$args120482%_
        (apply make-instance gx#feature-expander::t _%$args120482%_)))
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
      (lambda _%$args120479%_
        (apply make-instance gx#private-feature-expander::t _%$args120479%_)))
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
      (lambda _%$args120476%_
        (apply make-instance gx#reserved-expander::t _%$args120476%_)))
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
      (lambda _%$args120473%_
        (apply make-instance gx#macro-expander::t _%$args120473%_)))
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
      (lambda _%$args120470%_
        (apply make-instance gx#rename-macro-expander::t _%$args120470%_)))
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
      (lambda _%$args120467%_
        (apply make-instance gx#user-expander::t _%$args120467%_)))
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
      (lambda _%$args120464%_
        (apply make-instance gx#expander-mark::t _%$args120464%_)))
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
      (lambda (_%ctx120448%_
               _%message120449%_
               _%stx120450%_
               .
               _%details120451%_)
        (let ((_%ctx120462%_
               (let ((_%$e120453%_ _%ctx120448%_))
                 (if _%$e120453%_
                     _%$e120453%_
                     (let ((_%$e120456%_ (gx#core-context-top__0)))
                       (if _%$e120456%_
                           ((lambda (_%ctx120459%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx120459%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e120456%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message120449%_
                  (cons _%stx120450%_ _%details120451%_)
                  _%ctx120462%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx120435%_ _%expression?120436%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx120435%_ _%expression?120436%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx120441%_)
        (let ((_%expression?120443%_ '#f))
          (gx#eval-syntax__% _%stx120441%_ _%expression?120443%_))))
    (define gx#eval-syntax
      (lambda _g120899_
        (let ((_g120898_ (##length _g120899_)))
          (cond ((##fx= _g120898_ 1) (apply gx#eval-syntax__0 _g120899_))
                ((##fx= _g120898_ 2) (apply gx#eval-syntax__% _g120899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g120899_))))))
    (define gx#eval-syntax*
      (lambda (_%stx120432%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx120432%_))))
    (define gx#core-expand__%
      (lambda (_%stx120419%_ _%expression?120420%_)
        (if _%expression?120420%_
            (gx#core-expand-expression _%stx120419%_)
            (gx#core-expand-top _%stx120419%_))))
    (define gx#core-expand__0
      (lambda (_%stx120425%_)
        (let ((_%expression?120427%_ '#f))
          (gx#core-expand__% _%stx120425%_ _%expression?120427%_))))
    (define gx#core-expand
      (lambda _g120901_
        (let ((_g120900_ (##length _g120901_)))
          (cond ((##fx= _g120900_ 1) (apply gx#core-expand__0 _g120901_))
                ((##fx= _g120900_ 2) (apply gx#core-expand__% _g120901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g120901_))))))
    (define gx#core-expand-top
      (lambda (_%stx120386%_)
        (let* ((_%stx120388%_ (gx#core-expand*__0 _%stx120386%_))
               (_%e120389120396%_ _%stx120388%_)
               (_%E120391120400%_
                (lambda () (gx#core-expand-expression _%stx120388%_)))
               (_%E120390120414%_
                (lambda ()
                  (if (gx#stx-pair? _%e120389120396%_)
                      (let ((_%e120392120404%_
                             (gx#syntax-e _%e120389120396%_)))
                        (let ((_%hd120393120407%_ (##car _%e120392120404%_))
                              (_%tl120394120409%_ (##cdr _%e120392120404%_)))
                          (let ((_%form120412%_ _%hd120393120407%_))
                            (if (gx#core-bound-identifier?__0 _%form120412%_)
                                _%stx120388%_
                                (_%E120391120400%_)))))
                      (_%E120391120400%_)))))
          (_%E120390120414%_))))
    (define gx#core-expand-expression
      (lambda (_%stx120318%_)
        (letrec ((_%sealed-expression?120320%_
                  (lambda (_%hd120356%_)
                    (if (gx#sealed-syntax? _%hd120356%_)
                        (let* ((_%e120357120364%_ _%hd120356%_)
                               (_%E120359120368%_ (lambda () '#f))
                               (_%E120358120382%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e120357120364%_)
                                      (let ((_%e120360120372%_
                                             (gx#syntax-e _%e120357120364%_)))
                                        (let ((_%hd120361120375%_
                                               (##car _%e120360120372%_))
                                              (_%tl120362120377%_
                                               (##cdr _%e120360120372%_)))
                                          (let ((_%form120380%_
                                                 _%hd120361120375%_))
                                            (gx#core-bound-identifier?__%
                                             _%form120380%_
                                             gx#expression-form-binding?))))
                                      (_%E120359120368%_)))))
                          (_%E120358120382%_))
                        '#f)))
                 (_%illegal-expression120321%_
                  (lambda (_%hd120353%_ . _%_120354%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx120318%_
                     _%hd120353%_)))
                 (_%expand-e120322%_
                  (lambda (_%form120345%_ _%hd120346%_)
                    (let ((_%bind120348%_
                           (if (##structure-instance-of?
                                _%form120345%_
                                'gx#binding::t)
                               _%form120345%_
                               (gx#resolve-identifier__0 _%form120345%_))))
                      (if (gx#core-expander-binding? _%bind120348%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind120348%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd120346%_
                            (gx#stx-source _%stx120318%_)))
                          (if (##structure-direct-instance-of?
                               _%bind120348%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind120348%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd120346%_
                                 (gx#stx-source _%stx120318%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx120318%_
                               _%form120345%_)))))))
          (let ((_%hd120324%_ (gx#core-expand-head _%stx120318%_)))
            (if (_%sealed-expression?120320%_ _%hd120324%_)
                _%hd120324%_
                (if (gx#stx-pair? _%hd120324%_)
                    (let* ((_%form120328%_ (gx#stx-car _%hd120324%_))
                           (_%bind120330%_
                            (if (gx#identifier? _%form120328%_)
                                (gx#resolve-identifier__0 _%form120328%_)
                                '#f)))
                      (if (or (not _%bind120330%_)
                              (not (gx#core-expander-binding? _%bind120330%_)))
                          (_%expand-e120322%_
                           '%%app
                           (cons '%%app _%hd120324%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind120330%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd120324%_
                               _%illegal-expression120321%_)
                              (if (gx#expression-form-binding? _%bind120330%_)
                                  (_%expand-e120322%_
                                   _%bind120330%_
                                   _%hd120324%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind120330%_)
                                      (gx#core-expand-expression
                                       (_%expand-e120322%_
                                        _%bind120330%_
                                        _%hd120324%_))
                                      (_%illegal-expression120321%_
                                       _%hd120324%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd120324%_)
                        (_%illegal-expression120321%_ _%hd120324%_)
                        (if (gx#identifier? _%hd120324%_)
                            (_%expand-e120322%_
                             '%%ref
                             (cons '%%ref (cons _%hd120324%_ '())))
                            (if (gx#stx-datum? _%hd120324%_)
                                (_%expand-e120322%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd120324%_ '())))
                                (_%illegal-expression120321%_
                                 _%hd120324%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx120313%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx120316%_ (gx#core-expand-expression _%stx120313%_)))
             (values _%stx120316%_ (gx#eval-syntax* _%stx120316%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx120294%_ _%stop?120295%_)
        (let _%lp120297%_ ((_%stx120299%_ _%stx120294%_))
          (if (_%stop?120295%_ _%stx120299%_)
              _%stx120299%_
              (let ((_%rstx120301%_ (gx#core-expand1 _%stx120299%_)))
                (if (eq? _%stx120299%_ _%rstx120301%_)
                    _%stx120299%_
                    (_%lp120297%_ _%rstx120301%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx120306%_)
        (let ((_%stop?120308%_ false))
          (gx#core-expand*__% _%stx120306%_ _%stop?120308%_))))
    (define gx#core-expand*
      (lambda _g120903_
        (let ((_g120902_ (##length _g120903_)))
          (cond ((##fx= _g120902_ 1) (apply gx#core-expand*__0 _g120903_))
                ((##fx= _g120902_ 2) (apply gx#core-expand*__% _g120903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g120903_))))))
    (define gx#core-expand1
      (lambda (_%stx120246%_)
        (letrec ((_%step120248%_
                  (lambda (_%hd120285%_)
                    (let ((_%bind120287%_
                           (gx#resolve-identifier__0 _%hd120285%_)))
                      (if (##structure-instance-of?
                           _%bind120287%_
                           'gx#runtime-binding::t)
                          _%stx120246%_
                          (if (##structure-direct-instance-of?
                               _%bind120287%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind120287%_
                                '4
                                '#f
                                '#f)
                               _%stx120246%_)
                              (if (not _%bind120287%_)
                                  _%stx120246%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx120246%_))))))))
          (let* ((_%e120249120257%_ _%stx120246%_)
                 (_%E120255120261%_ (lambda () _%stx120246%_))
                 (_%E120251120267%_
                  (lambda ()
                    (let ((_%hd120265%_ _%e120249120257%_))
                      (if (gx#identifier? _%hd120265%_)
                          (_%step120248%_ _%hd120265%_)
                          (_%E120255120261%_)))))
                 (_%E120250120281%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120249120257%_)
                        (let ((_%e120252120271%_
                               (gx#syntax-e _%e120249120257%_)))
                          (let ((_%hd120253120274%_ (##car _%e120252120271%_))
                                (_%tl120254120276%_ (##cdr _%e120252120271%_)))
                            (let ((_%hd120279%_ _%hd120253120274%_))
                              (if (gx#identifier? _%hd120279%_)
                                  (_%step120248%_ _%hd120279%_)
                                  (_%E120251120267%_)))))
                        (_%E120251120267%_)))))
            (_%E120250120281%_)))))
    (define gx#core-expand-head
      (lambda (_%stx120212%_)
        (letrec ((_%stop?120214%_
                  (lambda (_%stx120216%_)
                    (let* ((_%e120217120224%_ _%stx120216%_)
                           (_%E120219120228%_ (lambda () '#f))
                           (_%E120218120242%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120217120224%_)
                                  (let ((_%e120220120232%_
                                         (gx#syntax-e _%e120217120224%_)))
                                    (let ((_%hd120221120235%_
                                           (##car _%e120220120232%_))
                                          (_%tl120222120237%_
                                           (##cdr _%e120220120232%_)))
                                      (let ((_%hd120240%_ _%hd120221120235%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd120240%_))))
                                  (_%E120219120228%_)))))
                      (_%E120218120242%_)))))
          (gx#core-expand*__% _%stx120212%_ _%stop?120214%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx120018%_
               _%expand-special120019%_
               _%begin-form120020%_
               _%expand-e120021%_)
        (letrec ((_%expand-splice120023%_
                  (lambda (_%hd120186%_
                           _%body120187%_
                           _%rest120188%_
                           _%r120189%_)
                    (if (gx#stx-list? _%body120187%_)
                        (_%K120027%_
                         (gx#stx-foldr cons _%rest120188%_ _%body120187%_)
                         _%r120189%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx120018%_
                         _%hd120186%_))))
                 (_%expand-cond-expand120024%_
                  (lambda (_%hd120182%_ _%rest120183%_ _%r120184%_)
                    (_%K120027%_
                     (cons (gx#core-expand-cond-expand% _%hd120182%_)
                           _%rest120183%_)
                     _%r120184%_)))
                 (_%expand-include120025%_
                  (lambda (_%hd120131%_ _%rest120132%_ _%r120133%_)
                    (let* ((_%e120134120144%_ _%hd120131%_)
                           (_%E120136120148%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120134120144%_)))
                           (_%E120135120178%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120134120144%_)
                                  (let ((_%e120137120152%_
                                         (gx#syntax-e _%e120134120144%_)))
                                    (let ((_%hd120138120155%_
                                           (##car _%e120137120152%_))
                                          (_%tl120139120157%_
                                           (##cdr _%e120137120152%_)))
                                      (if (gx#stx-pair? _%tl120139120157%_)
                                          (let ((_%e120140120160%_
                                                 (gx#syntax-e
                                                  _%tl120139120157%_)))
                                            (let ((_%hd120141120163%_
                                                   (##car _%e120140120160%_))
                                                  (_%tl120142120165%_
                                                   (##cdr _%e120140120160%_)))
                                              (let ((_%path120168%_
                                                     _%hd120141120163%_))
                                                (if (gx#stx-null?
                                                     _%tl120142120165%_)
                                                    (if (gx#stx-string?
                                                         _%path120168%_)
                                                        (let* ((_%rpath120170%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path120168%_
                         (gx#stx-source _%hd120131%_)))
                       (_%block120172%_
                        (gx#core-expand-include%__%
                         _%hd120131%_
                         _%rpath120170%_))
                       (_%rbody120175%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block120172%_
                            _%expand-special120019%_
                            '#f
                            _%expand-e120021%_))
                         gx#current-expander-path
                         (cons _%rpath120170%_ (gx#current-expander-path)))))
                  (_%K120027%_
                   _%rest120132%_
                   (__foldr1 cons _%r120133%_ _%rbody120175%_)))
                (_%E120136120148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120136120148%_)))))
                                          (_%E120136120148%_))))
                                  (_%E120136120148%_)))))
                      (_%E120135120178%_))))
                 (_%expand-expression120026%_
                  (lambda (_%hd120127%_ _%rest120128%_ _%r120129%_)
                    (_%K120027%_
                     _%rest120128%_
                     (cons (_%expand-e120021%_ _%hd120127%_) _%r120129%_))))
                 (_%K120027%_
                  (lambda (_%rest120057%_ _%r120058%_)
                    (let* ((_%e120059120066%_ _%rest120057%_)
                           (_%E120061120070%_
                            (lambda ()
                              (if _%begin-form120020%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form120020%_
                                    (reverse _%r120058%_))
                                   (gx#stx-source _%stx120018%_))
                                  _%r120058%_)))
                           (_%E120060120123%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120059120066%_)
                                  (let ((_%e120062120074%_
                                         (gx#syntax-e _%e120059120066%_)))
                                    (let ((_%hd120063120077%_
                                           (##car _%e120062120074%_))
                                          (_%tl120064120079%_
                                           (##cdr _%e120062120074%_)))
                                      (let* ((_%hd120082%_ _%hd120063120077%_)
                                             (_%rest120084%_
                                              _%tl120064120079%_)
                                             (_%hd120086%_
                                              (gx#core-expand-head
                                               _%hd120082%_))
                                             (_%e120087120094%_ _%hd120086%_)
                                             (_%E120089120098%_
                                              (lambda ()
                                                (_%expand-expression120026%_
                                                 _%hd120086%_
                                                 _%rest120084%_
                                                 _%r120058%_)))
                                             (_%E120088120119%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120087120094%_)
                                                    (let ((_%e120090120102%_
                                                           (gx#syntax-e
                                                            _%e120087120094%_)))
                                                      (let ((_%hd120091120105%_
                                                             (##car _%e120090120102%_))
                                                            (_%tl120092120107%_
                                                             (##cdr _%e120090120102%_)))
                                                        (let* ((_%form120110%_
                                                                _%hd120091120105%_)
                                                               (_%body120112%_
                                                                _%tl120092120107%_)
                                                               (_%bind120114%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form120110%_)
                            (gx#resolve-identifier__0 _%form120110%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind120114%_)
                      (let ((_%$e120116%_
                             (##unchecked-structure-ref
                              _%bind120114%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e120116%_)
                            (_%expand-splice120023%_
                             _%hd120086%_
                             _%body120112%_
                             _%rest120084%_
                             _%r120058%_)
                            (if (eq? '%#cond-expand _%$e120116%_)
                                (_%expand-cond-expand120024%_
                                 _%hd120086%_
                                 _%rest120084%_
                                 _%r120058%_)
                                (if (eq? '%#include _%$e120116%_)
                                    (_%expand-include120025%_
                                     _%hd120086%_
                                     _%rest120084%_
                                     _%r120058%_)
                                    (_%expand-special120019%_
                                     _%hd120086%_
                                     _%K120027%_
                                     _%rest120084%_
                                     _%r120058%_)))))
                      (_%expand-expression120026%_
                       _%hd120086%_
                       _%rest120084%_
                       _%r120058%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120089120098%_)))))
                                        (_%E120088120119%_))))
                                  (_%E120061120070%_)))))
                      (_%E120060120123%_)))))
          (let* ((_%e120028120035%_ _%stx120018%_)
                 (_%E120030120039%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120028120035%_)))
                 (_%E120029120053%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120028120035%_)
                        (let ((_%e120031120043%_
                               (gx#syntax-e _%e120028120035%_)))
                          (let ((_%hd120032120046%_ (##car _%e120031120043%_))
                                (_%tl120033120048%_ (##cdr _%e120031120043%_)))
                            (let ((_%body120051%_ _%tl120033120048%_))
                              (if (gx#stx-list? _%body120051%_)
                                  (_%K120027%_ _%body120051%_ '())
                                  (_%E120030120039%_)))))
                        (_%E120030120039%_)))))
            (_%E120029120053%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx120194%_ _%expand-special120195%_)
        (let* ((_%begin-form120197%_ '%#begin)
               (_%expand-e120199%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx120194%_
           _%expand-special120195%_
           _%begin-form120197%_
           _%expand-e120199%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx120201%_ _%expand-special120202%_ _%begin-form120203%_)
        (let ((_%expand-e120205%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx120201%_
           _%expand-special120202%_
           _%begin-form120203%_
           _%expand-e120205%_))))
    (define gx#core-expand-block
      (lambda _g120905_
        (let ((_g120904_ (##length _g120905_)))
          (cond ((##fx= _g120904_ 2) (apply gx#core-expand-block__0 _g120905_))
                ((##fx= _g120904_ 3) (apply gx#core-expand-block__1 _g120905_))
                ((##fx= _g120904_ 4) (apply gx#core-expand-block__% _g120905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g120905_))))))
    (define gx#core-expand-block*
      (lambda (_%stx119966%_ _%expand-special119967%_)
        (let* ((_%g119968119979%_
                (gx#core-expand-block__1
                 _%stx119966%_
                 _%expand-special119967%_
                 '#f))
               (_%E119972119983%_
                (lambda ()
                  (error '"No clause matching"
                         _%g119968119979%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K119977120014%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx119966%_)))
                (_%K119974120000%_ (lambda (_%expr119998%_) _%expr119998%_))
                (_%K119973119989%_
                 (lambda (_%body119987%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body119987%_))
                    (gx#stx-source _%stx119966%_)))))
            (let ((_%try-match119970120010%_
                   (lambda ()
                     (if (##pair? _%g119968119979%_)
                         (let ((_%tl119976120005%_ (##cdr _%g119968119979%_))
                               (_%hd119975120003%_ (##car _%g119968119979%_)))
                           (if (##null? _%tl119976120005%_)
                               (let ((_%expr120008%_ _%hd119975120003%_))
                                 (_%K119974120000%_ _%expr120008%_))
                               (let ((_%body119992%_ _%g119968119979%_))
                                 (_%K119973119989%_ _%body119992%_))))
                         (let ((_%body119992%_ _%g119968119979%_))
                           (_%K119973119989%_ _%body119992%_))))))
              (if (##null? _%g119968119979%_)
                  (_%K119977120014%_)
                  (_%try-match119970120010%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx119791%_)
        (letrec ((_%satisfied?119793%_
                  (lambda (_%condition119894%_)
                    (let* ((_%e119895119910%_ _%condition119894%_)
                           (_%E119905119914%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e119895119910%_)))
                           (_%E119898119933%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119895119910%_)
                                  (let ((_%e119906119918%_
                                         (gx#syntax-e _%e119895119910%_)))
                                    (let ((_%hd119907119921%_
                                           (##car _%e119906119918%_))
                                          (_%tl119908119923%_
                                           (##cdr _%e119906119918%_)))
                                      (let* ((_%combinator119926%_
                                              _%hd119907119921%_)
                                             (_%body119928%_
                                              _%tl119908119923%_))
                                        (if (gx#stx-list? _%body119928%_)
                                            (let ((_%$e119930%_
                                                   (gx#stx-e
                                                    _%combinator119926%_)))
                                              (if (eq? 'not _%$e119930%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?119793%_
                                                        _%body119928%_))
                                                  (if (eq? 'and _%$e119930%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?119793%_
                                                       _%body119928%_)
                                                      (if (eq? 'or
                                                               _%$e119930%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?119793%_
                                                           _%body119928%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e119930%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body119928%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx119791%_
                       _%combinator119926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119905119914%_)))))
                                  (_%E119905119914%_))))
                           (_%E119897119956%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119895119910%_)
                                  (let ((_%e119899119937%_
                                         (gx#syntax-e _%e119895119910%_)))
                                    (let ((_%hd119900119940%_
                                           (##car _%e119899119937%_))
                                          (_%tl119901119942%_
                                           (##cdr _%e119899119937%_)))
                                      (if (and (gx#identifier?
                                                _%hd119900119940%_)
                                               (gx#core-identifier=?
                                                _%hd119900119940%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl119901119942%_)
                                              (let ((_%e119902119945%_
                                                     (gx#syntax-e
                                                      _%tl119901119942%_)))
                                                (let ((_%hd119903119948%_
                                                       (##car _%e119902119945%_))
                                                      (_%tl119904119950%_
                                                       (##cdr _%e119902119945%_)))
                                                  (let ((_%expr119953%_
                                                         _%hd119903119948%_))
                                                    (if (gx#stx-null?
                                                         _%tl119904119950%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr119953%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E119898119933%_)))))
                                              (_%E119898119933%_))
                                          (_%E119898119933%_))))
                                  (_%E119898119933%_))))
                           (_%E119896119962%_
                            (lambda ()
                              (let ((_%id119960%_ _%e119895119910%_))
                                (if (gx#identifier? _%id119960%_)
                                    (gx#core-bound-identifier?__%
                                     _%id119960%_
                                     gx#feature-binding?)
                                    (_%E119897119956%_))))))
                      (_%E119896119962%_))))
                 (_%loop119794%_
                  (lambda (_%rest119824%_)
                    (let* ((_%e119825119833%_ _%rest119824%_)
                           (_%E119831119837%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e119825119833%_)))
                           (_%E119827119841%_
                            (lambda ()
                              (if (gx#stx-null? _%e119825119833%_)
                                  '()
                                  (_%E119831119837%_))))
                           (_%E119826119890%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119825119833%_)
                                  (let ((_%e119828119845%_
                                         (gx#syntax-e _%e119825119833%_)))
                                    (let ((_%hd119829119848%_
                                           (##car _%e119828119845%_))
                                          (_%tl119830119850%_
                                           (##cdr _%e119828119845%_)))
                                      (let* ((_%hd119853%_ _%hd119829119848%_)
                                             (_%rest119855%_
                                              _%tl119830119850%_)
                                             (_%e119856119863%_ _%hd119853%_)
                                             (_%E119858119867%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e119856119863%_)))
                                             (_%E119857119886%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e119856119863%_)
                                                    (let ((_%e119859119871%_
                                                           (gx#syntax-e
                                                            _%e119856119863%_)))
                                                      (let ((_%hd119860119874%_
                                                             (##car _%e119859119871%_))
                                                            (_%tl119861119876%_
                                                             (##cdr _%e119859119871%_)))
                                                        (let* ((_%condition119879%_
                                                                _%hd119860119874%_)
                                                               (_%body119881%_
                                                                _%tl119861119876%_))
                                                          (if (gx#stx-eq?
                                                               _%condition119879%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest119855%_)
                          _%body119881%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx119791%_
                           _%hd119853%_))
                      (if (_%satisfied?119793%_ _%condition119879%_)
                          _%body119881%_
                          (_%loop119794%_ _%rest119855%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119858119867%_)))))
                                        (_%E119857119886%_))))
                                  (_%E119827119841%_)))))
                      (_%E119826119890%_)))))
          (let* ((_%e119795119802%_ _%stx119791%_)
                 (_%E119797119806%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119795119802%_)))
                 (_%E119796119820%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119795119802%_)
                        (let ((_%e119798119810%_
                               (gx#syntax-e _%e119795119802%_)))
                          (let ((_%hd119799119813%_ (##car _%e119798119810%_))
                                (_%tl119800119815%_ (##cdr _%e119798119810%_)))
                            (let ((_%clauses119818%_ _%tl119800119815%_))
                              (if (gx#stx-list? _%clauses119818%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop119794%_ _%clauses119818%_))
                                  (_%E119797119806%_)))))
                        (_%E119797119806%_)))))
            (_%E119796119820%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx119734%_ _%rpath119735%_)
        (let* ((_%e119736119746%_ _%stx119734%_)
               (_%E119738119750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119736119746%_)))
               (_%E119737119777%_
                (lambda ()
                  (if (gx#stx-pair? _%e119736119746%_)
                      (let ((_%e119739119754%_
                             (gx#syntax-e _%e119736119746%_)))
                        (let ((_%hd119740119757%_ (##car _%e119739119754%_))
                              (_%tl119741119759%_ (##cdr _%e119739119754%_)))
                          (if (gx#stx-pair? _%tl119741119759%_)
                              (let ((_%e119742119762%_
                                     (gx#syntax-e _%tl119741119759%_)))
                                (let ((_%hd119743119765%_
                                       (##car _%e119742119762%_))
                                      (_%tl119744119767%_
                                       (##cdr _%e119742119762%_)))
                                  (let ((_%path119770%_ _%hd119743119765%_))
                                    (if (gx#stx-null? _%tl119744119767%_)
                                        (if (gx#stx-string? _%path119770%_)
                                            (let ((_%rpath119775%_
                                                   (let ((_%$e119772%_
                                                          _%rpath119735%_))
                                                     (if _%$e119772%_
                                                         _%$e119772%_
                                                         (gx#core-resolve-path__%
                                                          _%path119770%_
                                                          (gx#stx-source
                                                           _%stx119734%_))))))
                                              (if (member _%rpath119775%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx119734%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath119775%_))
                                                    (gx#stx-source
                                                     _%stx119734%_)))))
                                            (_%E119738119750%_))
                                        (_%E119738119750%_)))))
                              (_%E119738119750%_))))
                      (_%E119738119750%_)))))
          (_%E119737119777%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx119784%_)
        (let ((_%rpath119786%_ '#f))
          (gx#core-expand-include%__% _%stx119784%_ _%rpath119786%_))))
    (define gx#core-expand-include%
      (lambda _g120907_
        (let ((_g120906_ (##length _g120907_)))
          (cond ((##fx= _g120906_ 1)
                 (apply gx#core-expand-include%__0 _g120907_))
                ((##fx= _g120906_ 2)
                 (apply gx#core-expand-include%__% _g120907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g120907_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K119700%_ _%stx119701%_ _%method119702%_)
        (if (procedure? _%K119700%_)
            (let ((_%$e119705%_ (gx#stx-source _%stx119701%_)))
              (if _%$e119705%_
                  ((lambda (_%g119707119709%_)
                     (gx#stx-wrap-source
                      (_%K119700%_ _%stx119701%_)
                      _%g119707119709%_))
                   _%$e119705%_)
                  (_%K119700%_ _%stx119701%_)))
            (let ((_%$e119713%_
                   (bound-method-ref _%K119700%_ _%method119702%_)))
              (if _%$e119713%_
                  ((lambda (_%g119715119717%_)
                     (gx#core-apply-expander__%
                      _%g119715119717%_
                      _%stx119701%_
                      _%method119702%_))
                   _%$e119713%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx119701%_
                   _%method119702%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K119724%_ _%stx119725%_)
        (let ((_%method119727%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K119724%_
           _%stx119725%_
           _%method119727%_))))
    (define gx#core-apply-expander
      (lambda _g120909_
        (let ((_g120908_ (##length _g120909_)))
          (cond ((##fx= _g120908_ 2)
                 (apply gx#core-apply-expander__0 _g120909_))
                ((##fx= _g120908_ 3)
                 (apply gx#core-apply-expander__% _g120909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g120909_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self117742119683%_ _%stx119685%_)
        (let* ((_%self119687%_ _%self117742119683%_)
               (_%self119689%_ _%self119687%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx119685%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self117743119523%_ _%stx119525%_)
        (let* ((_%self119527%_ _%self117743119523%_)
               (_%self119529%_ _%self119527%_)
               (_%self119538119544%_ _%self119529%_)
               (_%E119540119548%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119538119544%_
                         '((macro-expander K)))
                  '#!void))
               (_%K119541119553%_
                (lambda (_%K119551%_)
                  (gx#core-apply-expander__0 _%K119551%_ _%stx119525%_)))
               (_%e119542119556%_
                (##unchecked-structure-ref _%self119538119544%_ '1 '#f '#f))
               (_%K119559%_ _%e119542119556%_))
          (_%K119541119553%_ _%K119559%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self117744119363%_ _%stx119365%_)
        (let* ((_%self119367%_ _%self117744119363%_)
               (_%self119369%_ _%self119367%_))
          (if (gx#sealed-syntax? _%stx119365%_)
              _%stx119365%_
              (let* ((_%self119378119384%_ _%self119369%_)
                     (_%E119380119388%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self119378119384%_
                               '((core-expander K)))
                        '#!void))
                     (_%K119381119393%_
                      (lambda (_%K119391%_)
                        (gx#core-apply-expander__0 _%K119391%_ _%stx119365%_)))
                     (_%e119382119396%_
                      (##unchecked-structure-ref
                       _%self119378119384%_
                       '1
                       '#f
                       '#f))
                     (_%K119399%_ _%e119382119396%_))
                (_%K119381119393%_ _%K119399%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self117745119212%_ _%stx119214%_ _%top?119215%_)
        (let* ((_%self119217%_ _%self117745119212%_)
               (_%self119219%_ _%self119217%_))
          (if (_%top?119215%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self119219%_
               _%stx119214%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx119214%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self117745119232%_ _%stx119233%_)
        (let ((_%top?119235%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self117745119232%_
           _%stx119233%_
           _%top?119235%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g120911_
        (let ((_g120910_ (##length _g120911_)))
          (cond ((##fx= _g120910_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g120911_))
                ((##fx= _g120910_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g120911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g120911_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self117746119073%_ _%stx119075%_)
        (let* ((_%self119077%_ _%self117746119073%_)
               (_%self119079%_ _%self119077%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self119079%_
           _%stx119075%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self117747118885%_ _%stx118887%_)
        (let* ((_%self118889%_ _%self117747118885%_)
               (_%self118891%_ _%self118889%_)
               (_%self118900118906%_ _%self118891%_)
               (_%E118902118910%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118900118906%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K118903118943%_
                (lambda (_%id118913%_)
                  (let* ((_%e118914118921%_ _%stx118887%_)
                         (_%E118916118925%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e118914118921%_)))
                         (_%E118915118939%_
                          (lambda ()
                            (if (gx#stx-pair? _%e118914118921%_)
                                (let ((_%e118917118929%_
                                       (gx#syntax-e _%e118914118921%_)))
                                  (let ((_%hd118918118932%_
                                         (##car _%e118917118929%_))
                                        (_%tl118919118934%_
                                         (##cdr _%e118917118929%_)))
                                    (let ((_%body118937%_ _%tl118919118934%_))
                                      (gx#core-cons
                                       _%id118913%_
                                       _%body118937%_))))
                                (_%E118916118925%_)))))
                    (_%E118915118939%_))))
               (_%e118904118946%_
                (##unchecked-structure-ref _%self118900118906%_ '1 '#f '#f))
               (_%id118949%_ _%e118904118946%_))
          (_%K118903118943%_ _%id118949%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self118711%_ _%stx118712%_ _%method118713%_)
        (let* ((_%self118714118722%_ _%self118711%_)
               (_%E118716118726%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118714118722%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K118717118733%_
                (lambda (_%phi118729%_ _%ctx118730%_ _%K118731%_)
                  (gx#core-apply-user-macro
                   _%K118731%_
                   _%stx118712%_
                   _%ctx118730%_
                   _%phi118729%_
                   _%method118713%_))))
          (if (##structure-instance-of?
               _%self118714118722%_
               'gx#user-expander::t)
              (let* ((_%e118718118736%_
                      (##unchecked-structure-ref
                       _%self118714118722%_
                       '1
                       '#f
                       '#f))
                     (_%K118739%_ _%e118718118736%_)
                     (_%e118719118741%_
                      (##unchecked-structure-ref
                       _%self118714118722%_
                       '2
                       '#f
                       '#f))
                     (_%ctx118744%_ _%e118719118741%_)
                     (_%e118720118746%_
                      (##unchecked-structure-ref
                       _%self118714118722%_
                       '3
                       '#f
                       '#f))
                     (_%phi118749%_ _%e118720118746%_))
                (_%K118717118733%_ _%phi118749%_ _%ctx118744%_ _%K118739%_))
              (_%E118716118726%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self118754%_ _%stx118755%_)
        (let ((_%method118757%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self118754%_
           _%stx118755%_
           _%method118757%_))))
    (define gx#core-apply-user-expander
      (lambda _g120913_
        (let ((_g120912_ (##length _g120913_)))
          (cond ((##fx= _g120912_ 2)
                 (apply gx#core-apply-user-expander__0 _g120913_))
                ((##fx= _g120912_ 3)
                 (apply gx#core-apply-user-expander__% _g120913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g120913_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K118701%_
               _%stx118702%_
               _%ctx118703%_
               _%phi118704%_
               _%method118705%_)
        (let ((_%mark118707%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx118703%_
                _%phi118704%_
                _%stx118702%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K118701%_
               (gx#stx-apply-mark _%stx118702%_ _%mark118707%_)
               _%method118705%_)
              _%mark118707%_))
           gx#current-expander-marks
           (cons _%mark118707%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx118549%_ _%phi118550%_ _%ctx118551%_)
        (let _%lp118553%_ ((_%bind118555%_
                            (gx#core-resolve-identifier__%
                             _%stx118549%_
                             _%phi118550%_
                             _%ctx118551%_)))
          (if (##structure-direct-instance-of?
               _%bind118555%_
               'gx#import-binding::t)
              (_%lp118553%_
               (##unchecked-structure-ref _%bind118555%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind118555%_
                   'gx#alias-binding::t)
                  (_%lp118553%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind118555%_ '4 '#f '#f)
                    _%phi118550%_
                    _%ctx118551%_))
                  _%bind118555%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx118563%_)
        (let* ((_%phi118565%_ (gx#current-expander-phi))
               (_%ctx118567%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx118563%_
           _%phi118565%_
           _%ctx118567%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx118569%_ _%phi118570%_)
        (let ((_%ctx118572%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx118569%_
           _%phi118570%_
           _%ctx118572%_))))
    (define gx#resolve-identifier
      (lambda _g120915_
        (let ((_g120914_ (##length _g120915_)))
          (cond ((##fx= _g120914_ 1)
                 (apply gx#resolve-identifier__0 _g120915_))
                ((##fx= _g120914_ 2)
                 (apply gx#resolve-identifier__1 _g120915_))
                ((##fx= _g120914_ 3)
                 (apply gx#resolve-identifier__% _g120915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g120915_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx118504%_
               _%val118505%_
               _%rebind?118506%_
               _%phi118507%_
               _%ctx118508%_)
        (let ((_%rebind?118513%_
               (if (not _%rebind?118506%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?118506%_)
                       _%rebind?118506%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx118504%_)
           _%val118505%_
           _%rebind?118513%_
           _%phi118507%_
           _%ctx118508%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx118518%_ _%val118519%_)
        (let* ((_%rebind?118521%_ '#f)
               (_%phi118523%_ (gx#current-expander-phi))
               (_%ctx118525%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx118518%_
           _%val118519%_
           _%rebind?118521%_
           _%phi118523%_
           _%ctx118525%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx118527%_ _%val118528%_ _%rebind?118529%_)
        (let* ((_%phi118531%_ (gx#current-expander-phi))
               (_%ctx118533%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx118527%_
           _%val118528%_
           _%rebind?118529%_
           _%phi118531%_
           _%ctx118533%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx118535%_ _%val118536%_ _%rebind?118537%_ _%phi118538%_)
        (let ((_%ctx118540%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx118535%_
           _%val118536%_
           _%rebind?118537%_
           _%phi118538%_
           _%ctx118540%_))))
    (define gx#bind-identifier!
      (lambda _g120917_
        (let ((_g120916_ (##length _g120917_)))
          (cond ((##fx= _g120916_ 2) (apply gx#bind-identifier!__0 _g120917_))
                ((##fx= _g120916_ 3) (apply gx#bind-identifier!__1 _g120917_))
                ((##fx= _g120916_ 4) (apply gx#bind-identifier!__2 _g120917_))
                ((##fx= _g120916_ 5) (apply gx#bind-identifier!__% _g120917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g120917_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx118470%_ _%phi118471%_ _%ctx118472%_)
        (let _%lp118474%_ ((_%e118476%_ _%stx118470%_)
                           (_%marks118477%_ (gx#current-expander-marks)))
          (if (symbol? _%e118476%_)
              (gx#core-resolve-binding
               _%e118476%_
               _%phi118471%_
               _%phi118471%_
               _%ctx118472%_
               (reverse _%marks118477%_))
              (if (gx#identifier-quote? _%e118476%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e118476%_ '1 '#f '#f)
                   _%phi118471%_
                   '0
                   (##unchecked-structure-ref _%e118476%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e118476%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e118476%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e118476%_ '1 '#f '#f)
                       _%phi118471%_
                       _%phi118471%_
                       _%ctx118472%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e118476%_ '3 '#f '#f)
                        _%marks118477%_))
                      (if (##structure-direct-instance-of?
                           _%e118476%_
                           'gx#syntax-wrap::t)
                          (_%lp118474%_
                           (##unchecked-structure-ref _%e118476%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e118476%_ '3 '#f '#f)
                            _%marks118477%_))
                          (if (##structure-instance-of?
                               _%e118476%_
                               'gerbil#AST::t)
                              (_%lp118474%_
                               (##unchecked-structure-ref
                                _%e118476%_
                                '1
                                '#f
                                '#f)
                               _%marks118477%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx118470%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx118488%_)
        (let* ((_%phi118490%_ (gx#current-expander-phi))
               (_%ctx118492%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx118488%_
           _%phi118490%_
           _%ctx118492%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx118494%_ _%phi118495%_)
        (let ((_%ctx118497%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx118494%_
           _%phi118495%_
           _%ctx118497%_))))
    (define gx#core-resolve-identifier
      (lambda _g120919_
        (let ((_g120918_ (##length _g120919_)))
          (cond ((##fx= _g120918_ 1)
                 (apply gx#core-resolve-identifier__0 _g120919_))
                ((##fx= _g120918_ 2)
                 (apply gx#core-resolve-identifier__1 _g120919_))
                ((##fx= _g120918_ 3)
                 (apply gx#core-resolve-identifier__% _g120919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g120919_))))))
    (define gx#core-resolve-binding
      (lambda (_%id118380%_
               _%phi118381%_
               _%src-phi118382%_
               _%ctx118383%_
               _%marks118384%_)
        (letrec ((_%resolve118386%_
                  (lambda (_%ctx118454%_ _%src-phi118455%_ _%key118456%_)
                    (let _%lp118458%_ ((_%ctx118460%_
                                        (gx#core-context-shift
                                         _%ctx118454%_
                                         _%phi118381%_))
                                       (_%dphi118461%_
                                        (fx- _%phi118381%_ _%src-phi118455%_)))
                      (let ((_%$e118463%_
                             (gx#core-context-resolve
                              _%ctx118460%_
                              _%key118456%_)))
                        (if _%$e118463%_
                            _%$e118463%_
                            (if (fxzero? _%dphi118461%_)
                                '#f
                                (if (fxpositive? _%dphi118461%_)
                                    (_%lp118458%_
                                     (gx#core-context-shift _%ctx118460%_ '-1)
                                     (##fx- _%dphi118461%_ '1))
                                    (_%lp118458%_
                                     (gx#core-context-shift _%ctx118460%_ '1)
                                     (##fx+ _%dphi118461%_ '1))))))))))
          (let _%lp118388%_ ((_%ctx118390%_ _%ctx118383%_)
                             (_%src-phi118391%_ _%src-phi118382%_)
                             (_%rest118392%_ _%marks118384%_))
            (let* ((_%rest118393118401%_ _%rest118392%_)
                   (_%else118395118409%_
                    (lambda ()
                      (_%resolve118386%_
                       _%ctx118390%_
                       _%src-phi118391%_
                       _%id118380%_)))
                   (_%K118397118442%_
                    (lambda (_%rest118412%_ _%hd118413%_)
                      (let* ((_%hd118414118420%_ _%hd118413%_)
                             (_%E118416118424%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd118414118420%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K118417118434%_
                              (lambda (_%subst118427%_)
                                (let ((_%$e118431%_
                                       (let ((_%key118429%_
                                              (if _%subst118427%_
                                                  (hash-get
                                                   _%subst118427%_
                                                   _%id118380%_)
                                                  '#f)))
                                         (if _%key118429%_
                                             (_%resolve118386%_
                                              _%ctx118390%_
                                              _%src-phi118391%_
                                              _%key118429%_)
                                             '#f))))
                                  (if _%$e118431%_
                                      _%$e118431%_
                                      (_%lp118388%_
                                       (##unchecked-structure-ref
                                        _%hd118413%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd118413%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest118412%_))))))
                        (if (##structure-instance-of?
                             _%hd118414118420%_
                             'gx#expander-mark::t)
                            (let* ((_%e118418118437%_
                                    (##unchecked-structure-ref
                                     _%hd118414118420%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst118440%_ _%e118418118437%_))
                              (_%K118417118434%_ _%subst118440%_))
                            (_%E118416118424%_))))))
              (if (##pair? _%rest118393118401%_)
                  (let ((_%hd118398118445%_ (##car _%rest118393118401%_))
                        (_%tl118399118447%_ (##cdr _%rest118393118401%_)))
                    (let* ((_%hd118450%_ _%hd118398118445%_)
                           (_%rest118452%_ _%tl118399118447%_))
                      (_%K118397118442%_ _%rest118452%_ _%hd118450%_)))
                  (_%else118395118409%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key118250%_
               _%val118251%_
               _%rebind?118252%_
               _%phi118253%_
               _%ctx118254%_)
        (letrec ((_%update-binding118256%_
                  (lambda (_%xval118329%_)
                    (if (or (_%rebind?118252%_
                             _%ctx118254%_
                             _%xval118329%_
                             _%val118251%_)
                            (and (##structure-direct-instance-of?
                                  _%xval118329%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval118329%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val118251%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val118251%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval118329%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val118251%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val118251%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval118329%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val118251%_
                        (if (and (##structure-direct-instance-of?
                                  _%val118251%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val118251%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval118329%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val118251%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval118329%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval118329%_
                            (if (and (##structure-direct-instance-of?
                                      _%val118251%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval118329%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key118250%_
                                 (cons (##unchecked-structure-ref
                                        _%val118251%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val118251%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval118329%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval118329%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval118329%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval118329%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key118250%_
                                 _%val118251%_
                                 _%xval118329%_))))))
                 (_%gensubst118257%_
                  (lambda (_%subst118324%_ _%id118325%_)
                    (let ((_%eid118327%_
                           (gensym (if (uninterned-symbol? _%id118325%_)
                                       '%
                                       _%id118325%_))))
                      (hash-put! _%subst118324%_ _%id118325%_ _%eid118327%_)
                      _%eid118327%_)))
                 (_%subst!118258%_
                  (lambda (_%key118260%_)
                    (let* ((_%key118261118269%_ _%key118260%_)
                           (_%else118263118277%_ (lambda () _%key118260%_))
                           (_%K118265118312%_
                            (lambda (_%mark118280%_ _%id118281%_)
                              (let* ((_%mark118282118288%_ _%mark118280%_)
                                     (_%E118284118292%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark118282118288%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K118285118304%_
                                      (lambda (_%subst118295%_)
                                        (if (not _%subst118295%_)
                                            (let ((_%subst118298%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark118280%_
                                               _%subst118298%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst118257%_
                                               _%subst118298%_
                                               _%id118281%_))
                                            (let ((_%$e118300%_
                                                   (hash-get
                                                    _%subst118295%_
                                                    _%id118281%_)))
                                              (if _%$e118300%_
                                                  _%$e118300%_
                                                  (_%gensubst118257%_
                                                   _%subst118295%_
                                                   _%id118281%_)))))))
                                (if (##structure-instance-of?
                                     _%mark118282118288%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e118286118307%_
                                            (##unchecked-structure-ref
                                             _%mark118282118288%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst118310%_ _%e118286118307%_))
                                      (_%K118285118304%_ _%subst118310%_))
                                    (_%E118284118292%_))))))
                      (if (##pair? _%key118261118269%_)
                          (let ((_%hd118266118315%_
                                 (##car _%key118261118269%_))
                                (_%tl118267118317%_
                                 (##cdr _%key118261118269%_)))
                            (let* ((_%id118320%_ _%hd118266118315%_)
                                   (_%mark118322%_ _%tl118267118317%_))
                              (_%K118265118312%_ _%mark118322%_ _%id118320%_)))
                          (_%else118263118277%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx118254%_ _%phi118253%_)
           (_%subst!118258%_ _%key118250%_)
           _%val118251%_
           _%update-binding118256%_))))
    (define gx#core-bind!__0
      (lambda (_%key118350%_ _%val118351%_)
        (let* ((_%rebind?118353%_ false)
               (_%phi118355%_ (gx#current-expander-phi))
               (_%ctx118357%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118350%_
           _%val118351%_
           _%rebind?118353%_
           _%phi118355%_
           _%ctx118357%_))))
    (define gx#core-bind!__1
      (lambda (_%key118359%_ _%val118360%_ _%rebind?118361%_)
        (let* ((_%phi118363%_ (gx#current-expander-phi))
               (_%ctx118365%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118359%_
           _%val118360%_
           _%rebind?118361%_
           _%phi118363%_
           _%ctx118365%_))))
    (define gx#core-bind!__2
      (lambda (_%key118367%_ _%val118368%_ _%rebind?118369%_ _%phi118370%_)
        (let ((_%ctx118372%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118367%_
           _%val118368%_
           _%rebind?118369%_
           _%phi118370%_
           _%ctx118372%_))))
    (define gx#core-bind!
      (lambda _g120921_
        (let ((_g120920_ (##length _g120921_)))
          (cond ((##fx= _g120920_ 2) (apply gx#core-bind!__0 _g120921_))
                ((##fx= _g120920_ 3) (apply gx#core-bind!__1 _g120921_))
                ((##fx= _g120920_ 4) (apply gx#core-bind!__2 _g120921_))
                ((##fx= _g120920_ 5) (apply gx#core-bind!__% _g120921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g120921_))))))
    (define gx#core-identifier-key
      (lambda (_%stx118181%_)
        (if (symbol? _%stx118181%_)
            (let* ((_%g118183118191%_ (gx#current-expander-marks))
                   (_%else118185118199%_ (lambda () _%stx118181%_))
                   (_%K118187118204%_
                    (lambda (_%hd118202%_) (cons _%stx118181%_ _%hd118202%_))))
              (if (##pair? _%g118183118191%_)
                  (let* ((_%hd118188118207%_ (##car _%g118183118191%_))
                         (_%hd118210%_ _%hd118188118207%_))
                    (_%K118187118204%_ _%hd118210%_))
                  (_%else118185118199%_)))
            (if (gx#identifier? _%stx118181%_)
                (let* ((_%id118213%_ (gx#syntax-local-unwrap _%stx118181%_))
                       (_%eid118215%_ (gx#stx-e _%id118213%_))
                       (_%marks118217%_
                        (gx#stx-identifier-marks* _%id118213%_))
                       (_%marks118219118227%_ _%marks118217%_)
                       (_%else118221118235%_ (lambda () _%eid118215%_))
                       (_%K118223118240%_
                        (lambda (_%hd118238%_)
                          (cons _%eid118215%_ _%hd118238%_))))
                  (if (##pair? _%marks118219118227%_)
                      (let* ((_%hd118224118243%_ (##car _%marks118219118227%_))
                             (_%hd118246%_ _%hd118224118243%_))
                        (_%K118223118240%_ _%hd118246%_))
                      (_%else118221118235%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx118181%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx118120%_ _%phi118121%_)
        (letrec ((_%make-phi118123%_
                  (lambda (_%super118179%_)
                    (let ((__obj120893
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj120893
                       (##gensym 'phi)
                       _%super118179%_)
                      __obj120893)))
                 (_%make-phi/up118124%_
                  (lambda (_%ctx118174%_ _%super118175%_)
                    (let ((_%ctx+1118177%_
                           (_%make-phi118123%_ _%super118175%_)))
                      (##unchecked-structure-set!
                       _%ctx118174%_
                       _%ctx+1118177%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1118177%_
                       _%ctx118174%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1118177%_)))
                 (_%make-phi/down118125%_
                  (lambda (_%ctx118169%_ _%super118170%_)
                    (let ((_%ctx-1118172%_
                           (_%make-phi118123%_ _%super118170%_)))
                      (##unchecked-structure-set!
                       _%ctx-1118172%_
                       _%ctx118169%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx118169%_
                       _%ctx-1118172%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1118172%_)))
                 (_%shift118126%_
                  (lambda (_%ctx118152%_
                           _%delta118153%_
                           _%make-delta-context118154%_
                           _%phi118155%_
                           _%K118156%_)
                    (let ((_%$e118158%_
                           (##unchecked-structure-ref
                            _%ctx118152%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e118158%_
                          ((lambda (_%super118161%_)
                             (let* ((_%super118163%_
                                     (_%K118156%_
                                      _%super118161%_
                                      _%delta118153%_))
                                    (_%ctx+d118165%_
                                     (_%make-delta-context118154%_
                                      _%ctx118152%_
                                      _%super118163%_)))
                               (_%K118156%_
                                _%ctx+d118165%_
                                (fx- _%phi118155%_ _%delta118153%_))))
                           _%$e118158%_)
                          (error '"Bad context" _%ctx118152%_))))))
          (let _%K118128%_ ((_%ctx118130%_ _%ctx118120%_)
                            (_%phi118131%_ _%phi118121%_))
            (if (fxzero? _%phi118131%_)
                _%ctx118130%_
                (if (##structure-instance-of? _%ctx118130%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi118131%_)
                        (let ((_%$e118135%_
                               (##unchecked-structure-ref
                                _%ctx118130%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e118135%_
                              ((lambda (_%g118137118139%_)
                                 (_%K118128%_
                                  _%g118137118139%_
                                  (##fx- _%phi118131%_ '1)))
                               _%$e118135%_)
                              (_%shift118126%_
                               _%ctx118130%_
                               '1
                               _%make-phi/up118124%_
                               _%phi118131%_
                               _%K118128%_)))
                        (let ((_%$e118143%_
                               (##unchecked-structure-ref
                                _%ctx118130%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e118143%_
                              ((lambda (_%g118145118147%_)
                                 (_%K118128%_
                                  _%g118145118147%_
                                  (##fx+ _%phi118131%_ '1)))
                               _%$e118143%_)
                              (_%shift118126%_
                               _%ctx118130%_
                               '-1
                               _%make-phi/down118125%_
                               _%phi118131%_
                               _%K118128%_))))
                    _%ctx118130%_))))))
    (define gx#core-context-get
      (lambda (_%ctx118117%_ _%key118118%_)
        (hash-get
         (##unchecked-structure-ref _%ctx118117%_ '2 '#f '#f)
         _%key118118%_)))
    (define gx#core-context-put!
      (lambda (_%ctx118113%_ _%key118114%_ _%val118115%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx118113%_ '2 '#f '#f)
         _%key118114%_
         _%val118115%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx118099%_ _%key118100%_)
        (let _%lp118102%_ ((_%ctx118104%_ _%ctx118099%_))
          (let ((_%$e118106%_
                 (gx#core-context-get _%ctx118104%_ _%key118100%_)))
            (if _%$e118106%_
                _%$e118106%_
                (let ((_%$e118109%_
                       (if (##structure-instance-of?
                            _%ctx118104%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx118104%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e118109%_ (_%lp118102%_ _%$e118109%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx118088%_ _%key118089%_ _%val118090%_ _%rebind118091%_)
        (let ((_%$e118093%_ (gx#core-context-get _%ctx118088%_ _%key118089%_)))
          (if _%$e118093%_
              ((lambda (_%xval118096%_)
                 (gx#core-context-put!
                  _%ctx118088%_
                  _%key118089%_
                  (_%rebind118091%_ _%xval118096%_)))
               _%$e118093%_)
              (gx#core-context-put!
               _%ctx118088%_
               _%key118089%_
               _%val118090%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx118063%_ _%stop?118064%_)
        (let _%lp118066%_ ((_%ctx118068%_ _%ctx118063%_))
          (if (_%stop?118064%_ _%ctx118068%_)
              _%ctx118068%_
              (if (##structure-instance-of? _%ctx118068%_ 'gx#phi-context::t)
                  (_%lp118066%_
                   (##unchecked-structure-ref _%ctx118068%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx118077%_ (gx#current-expander-context))
               (_%stop?118079%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118077%_ _%stop?118079%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx118081%_)
        (let ((_%stop?118083%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118081%_ _%stop?118083%_))))
    (define gx#core-context-top
      (lambda _g120923_
        (let ((_g120922_ (##length _g120923_)))
          (cond ((##fx= _g120922_ 0) (apply gx#core-context-top__0 _g120923_))
                ((##fx= _g120922_ 1) (apply gx#core-context-top__1 _g120923_))
                ((##fx= _g120922_ 2) (apply gx#core-context-top__% _g120923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g120923_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx118048%_)
        (let _%lp118050%_ ((_%ctx118052%_ _%ctx118048%_))
          (if (##structure-instance-of? _%ctx118052%_ 'gx#phi-context::t)
              (_%lp118050%_
               (##unchecked-structure-ref _%ctx118052%_ '3 '#f '#f))
              _%ctx118052%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx118058%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx118058%_))))
    (define gx#core-context-root
      (lambda _g120925_
        (let ((_g120924_ (##length _g120925_)))
          (cond ((##fx= _g120924_ 0) (apply gx#core-context-root__0 _g120925_))
                ((##fx= _g120924_ 1) (apply gx#core-context-root__% _g120925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g120925_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx118030%_ . _%ignore118031%_)
        (let ((_%$e118033%_ (gx#current-expander-allow-rebind?)))
          (if _%$e118033%_
              _%$e118033%_
              (if (##structure-instance-of? _%ctx118030%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx118030%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx118030%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx118040%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx118040%_))))
    (define gx#core-context-rebind?
      (lambda _g120927_
        (let ((_g120926_ (##length _g120927_)))
          (cond ((##fx= _g120926_ 0)
                 (apply gx#core-context-rebind?__0 _g120927_))
                ((##fx= _g120926_ 1)
                 (apply gx#core-context-rebind?__% _g120927_))
                ((##fx>= _g120926_ 1)
                 (apply gx#core-context-rebind?__% _g120927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g120927_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx118013%_)
        (let ((_%$e118015%_ (gx#core-context-top__1 _%ctx118013%_)))
          (if _%$e118015%_
              ((lambda (_%ctx118018%_)
                 (if (##structure-instance-of?
                      _%ctx118018%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx118018%_ '6 '#f '#f)
                     '#f))
               _%$e118015%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx118025%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx118025%_))))
    (define gx#core-context-namespace
      (lambda _g120929_
        (let ((_g120928_ (##length _g120929_)))
          (cond ((##fx= _g120928_ 0)
                 (apply gx#core-context-namespace__0 _g120929_))
                ((##fx= _g120928_ 1)
                 (apply gx#core-context-namespace__% _g120929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g120929_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind117999%_ _%is?118000%_)
        (if (##structure-direct-instance-of?
             _%bind117999%_
             'gx#syntax-binding::t)
            (_%is?118000%_
             (##unchecked-structure-ref _%bind117999%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind118005%_)
        (let ((_%is?118007%_ gx#expander?))
          (gx#expander-binding?__% _%bind118005%_ _%is?118007%_))))
    (define gx#expander-binding?
      (lambda _g120931_
        (let ((_g120930_ (##length _g120931_)))
          (cond ((##fx= _g120930_ 1) (apply gx#expander-binding?__0 _g120931_))
                ((##fx= _g120930_ 2) (apply gx#expander-binding?__% _g120931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g120931_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind117996%_)
        (gx#expander-binding?__% _%bind117996%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind117994%_)
        (gx#expander-binding?__% _%bind117994%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind117988%_)
        (letrec ((_%direct-special-form?117990%_
                  (lambda (_%obj117992%_)
                    (##structure-direct-instance-of?
                     _%obj117992%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind117988%_
           _%direct-special-form?117990%_))))
    (define gx#special-form-binding?
      (lambda (_%bind117986%_)
        (gx#expander-binding?__% _%bind117986%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind117977%_)
        (letrec ((_%feature?117979%_
                  (lambda (_%e117981%_)
                    (let ((_%$e117983%_
                           (##structure-instance-of?
                            _%e117981%_
                            'gx#feature-expander::t)))
                      (if _%$e117983%_
                          _%$e117983%_
                          (##structure-instance-of?
                           _%e117981%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind117977%_ _%feature?117979%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind117975%_)
        (gx#expander-binding?__% _%bind117975%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id117962%_ _%bound?117963%_)
        (if (gx#identifier? _%id117962%_)
            (_%bound?117963%_ (gx#resolve-identifier__0 _%id117962%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id117968%_)
        (let ((_%bound?117970%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id117968%_ _%bound?117970%_))))
    (define gx#core-bound-identifier?
      (lambda _g120933_
        (let ((_g120932_ (##length _g120933_)))
          (cond ((##fx= _g120932_ 1)
                 (apply gx#core-bound-identifier?__0 _g120933_))
                ((##fx= _g120932_ 2)
                 (apply gx#core-bound-identifier?__% _g120933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g120933_))))))
    (define gx#core-identifier=?
      (lambda (_%x117952%_ _%y117953%_)
        (letrec ((_%y=?117955%_
                  (lambda (_%xid117959%_)
                    ((if (list? _%y117953%_) memq eq?)
                     _%xid117959%_
                     _%y117953%_))))
          (let ((_%bind117957%_ (gx#resolve-identifier__0 _%x117952%_)))
            (if (##structure-instance-of? _%bind117957%_ 'gx#binding::t)
                (_%y=?117955%_
                 (##unchecked-structure-ref _%bind117957%_ '1 '#f '#f))
                (_%y=?117955%_ (gx#stx-e _%x117952%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e117950%_)
        (if (interned-symbol? _%e117950%_)
            (string-index__0 (symbol->string _%e117950%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx117903%_ _%src117904%_ _%ctx117905%_ _%marks117906%_)
        (if (##structure? _%stx117903%_)
            (let ((_%$e117908%_ (gx#sealed-syntax-unwrap _%stx117903%_)))
              (if _%$e117908%_
                  _%$e117908%_
                  (if (gx#identifier? _%stx117903%_)
                      (let ((_%id117912%_
                             (gx#stx-unwrap__% _%stx117903%_ _%marks117906%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id117912%_ '1 '#f '#f)
                         (let ((_%$e117914%_
                                (##unchecked-structure-ref
                                 _%id117912%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e117914%_ _%$e117914%_ _%src117904%_))
                         _%ctx117905%_
                         (##unchecked-structure-ref _%id117912%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx117903%_)
                       (let ((_%$e117918%_ (gx#stx-source _%stx117903%_)))
                         (if _%$e117918%_ _%$e117918%_ _%src117904%_))
                       _%ctx117905%_
                       (reverse _%marks117906%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx117903%_
             _%src117904%_
             _%ctx117905%_
             (reverse _%marks117906%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx117924%_)
        (let* ((_%src117926%_ '#f)
               (_%ctx117928%_ (gx#current-expander-context))
               (_%marks117930%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx117924%_
           _%src117926%_
           _%ctx117928%_
           _%marks117930%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx117932%_ _%src117933%_)
        (let* ((_%ctx117935%_ (gx#current-expander-context))
               (_%marks117937%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx117932%_
           _%src117933%_
           _%ctx117935%_
           _%marks117937%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx117939%_ _%src117940%_ _%ctx117941%_)
        (let ((_%marks117943%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx117939%_
           _%src117940%_
           _%ctx117941%_
           _%marks117943%_))))
    (define gx#core-quote-syntax
      (lambda _g120935_
        (let ((_g120934_ (##length _g120935_)))
          (cond ((##fx= _g120934_ 1) (apply gx#core-quote-syntax__0 _g120935_))
                ((##fx= _g120934_ 2) (apply gx#core-quote-syntax__1 _g120935_))
                ((##fx= _g120934_ 3) (apply gx#core-quote-syntax__2 _g120935_))
                ((##fx= _g120934_ 4) (apply gx#core-quote-syntax__% _g120935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g120935_))))))
    (define gx#core-cons
      (lambda (_%hd117899%_ _%tl117900%_)
        (cons (gx#core-quote-syntax__0 _%hd117899%_) _%tl117900%_)))
    (define gx#core-list
      (lambda (_%hd117896%_ . _%rest117897%_)
        (cons (gx#core-quote-syntax__0 _%hd117896%_) _%rest117897%_)))
    (define gx#core-cons*
      (lambda (_%hd117893%_ . _%rest117894%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd117893%_) _%rest117894%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path117862%_ _%rel117863%_)
        (let ((_%path117880%_ (gx#stx-e _%stx-path117862%_))
              (_%reldir117881%_
               (let _%lp117865%_ ((_%relsrc117867%_
                                   (let ((_%$e117877%_
                                          (gx#stx-source _%stx-path117862%_)))
                                     (if _%$e117877%_
                                         _%$e117877%_
                                         _%rel117863%_))))
                 (if (##structure-instance-of? _%relsrc117867%_ 'gerbil#AST::t)
                     (_%lp117865%_
                      (let ((_%$e117870%_ (gx#stx-source _%relsrc117867%_)))
                        (if _%$e117870%_
                            _%$e117870%_
                            (gx#stx-e _%relsrc117867%_))))
                     (if (source-location-path? _%relsrc117867%_)
                         (path-directory
                          (source-location-path _%relsrc117867%_))
                         (if (string? _%relsrc117867%_)
                             (path-directory _%relsrc117867%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path117880%_ (path-normalize _%reldir117881%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path117886%_)
        (let ((_%rel117888%_ '#f))
          (gx#core-resolve-path__% _%stx-path117886%_ _%rel117888%_))))
    (define gx#core-resolve-path
      (lambda _g120937_
        (let ((_g120936_ (##length _g120937_)))
          (cond ((##fx= _g120936_ 1) (apply gx#core-resolve-path__0 _g120937_))
                ((##fx= _g120936_ 2) (apply gx#core-resolve-path__% _g120937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g120937_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr117818%_ _%ctx117819%_)
        (let* ((_%repr117820117827%_ _%repr117818%_)
               (_%E117822117831%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr117820117827%_
                         '([phi . subs]))
                  '#!void))
               (_%K117823117839%_
                (lambda (_%subs117834%_ _%phi117835%_)
                  (let ((_%subst117837%_
                         (if (null? _%subs117834%_)
                             '#f
                             (list->hash-table-eq _%subs117834%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst117837%_
                     _%ctx117819%_
                     _%phi117835%_
                     '#f)))))
          (if (##pair? _%repr117820117827%_)
              (let ((_%hd117824117842%_ (##car _%repr117820117827%_))
                    (_%tl117825117844%_ (##cdr _%repr117820117827%_)))
                (let* ((_%phi117847%_ _%hd117824117842%_)
                       (_%subs117849%_ _%tl117825117844%_))
                  (_%K117823117839%_ _%subs117849%_ _%phi117847%_)))
              (_%E117822117831%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr117854%_)
        (let ((_%ctx117856%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr117854%_ _%ctx117856%_))))
    (define gx#core-deserialize-mark
      (lambda _g120939_
        (let ((_g120938_ (##length _g120939_)))
          (cond ((##fx= _g120938_ 1)
                 (apply gx#core-deserialize-mark__0 _g120939_))
                ((##fx= _g120938_ 2)
                 (apply gx#core-deserialize-mark__% _g120939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g120939_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx117815%_)
        (gx#stx-rewrap _%stx117815%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx117813%_)
        (gx#stx-unwrap__% _%stx117813%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx117783%_)
        (let* ((_%g117784117792%_ (gx#current-expander-marks))
               (_%else117786117800%_ (lambda () _%stx117783%_))
               (_%K117788117805%_
                (lambda (_%hd117803%_)
                  (gx#stx-apply-mark _%stx117783%_ _%hd117803%_))))
          (if (##pair? _%g117784117792%_)
              (let* ((_%hd117789117808%_ (##car _%g117784117792%_))
                     (_%hd117811%_ _%hd117789117808%_))
                (_%K117788117805%_ _%hd117811%_))
              (_%else117786117800%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx117768%_ _%E117769%_)
        (let ((_%bind117771%_ (gx#resolve-identifier__0 _%stx117768%_)))
          (if (##structure-direct-instance-of?
               _%bind117771%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind117771%_ '4 '#f '#f)
              (_%E117769%_ _%stx117768%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx117776%_)
        (let ((_%E117778%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx117776%_ _%E117778%_))))
    (define gx#syntax-local-e
      (lambda _g120941_
        (let ((_g120940_ (##length _g120941_)))
          (cond ((##fx= _g120940_ 1) (apply gx#syntax-local-e__0 _g120941_))
                ((##fx= _g120940_ 2) (apply gx#syntax-local-e__% _g120941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g120941_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx117752%_ _%E117753%_)
        (let ((_%e117755%_ (gx#syntax-local-e__% _%stx117752%_ _%E117753%_)))
          (if (##structure-instance-of? _%e117755%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e117755%_ '1 '#f '#f)
              _%e117755%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx117760%_)
        (let ((_%E117762%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx117760%_ _%E117762%_))))
    (define gx#syntax-local-value
      (lambda _g120943_
        (let ((_g120942_ (##length _g120943_)))
          (cond ((##fx= _g120942_ 1)
                 (apply gx#syntax-local-value__0 _g120943_))
                ((##fx= _g120942_ 2)
                 (apply gx#syntax-local-value__% _g120943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g120943_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx117749%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx117749%_)))))
