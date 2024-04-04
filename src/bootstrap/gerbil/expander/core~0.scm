(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712269045)
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
      (lambda _%$args118186%_
        (apply make-instance gx#expander-context::t _%$args118186%_)))
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
      (lambda _%$args118183%_
        (apply make-instance gx#root-context::t _%$args118183%_)))
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
      (lambda _%$args118180%_
        (apply make-instance gx#phi-context::t _%$args118180%_)))
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
      (lambda _%$args118177%_
        (apply make-instance gx#top-context::t _%$args118177%_)))
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
      (lambda _%$args118174%_
        (apply make-instance gx#module-context::t _%$args118174%_)))
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
      (lambda _%$args118171%_
        (apply make-instance gx#prelude-context::t _%$args118171%_)))
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
      (lambda _%$args118168%_
        (apply make-instance gx#local-context::t _%$args118168%_)))
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
      (lambda (_%self118141%_ _%id118142%_ _%super118143%_)
        (let ((_%self118146%_ _%self118141%_))
          (if (##fx< '3 (##structure-length _%self118146%_))
              (begin
                (##unchecked-structure-set!
                 _%self118146%_
                 _%id118142%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118146%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118146%_
                 _%super118143%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118146%_
                     '3
                     (##vector-length _%self118146%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118159%_ _%id118160%_)
        (let ((_%super118162%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118159%_
           _%id118160%_
           _%super118162%_))))
    (define gx#phi-context:::init!
      (lambda _g118229_
        (let ((_g118228_ (##length _g118229_)))
          (cond ((##fx= _g118228_ 2)
                 (apply (lambda (_%self118159%_ _%id118160%_)
                          (gx#phi-context:::init!__0
                           _%self118159%_
                           _%id118160%_))
                        _g118229_))
                ((##fx= _g118228_ 3)
                 (apply (lambda (_%self118164%_ _%id118165%_ _%super118166%_)
                          (gx#phi-context:::init!__%
                           _%self118164%_
                           _%id118165%_
                           _%super118166%_))
                        _g118229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g118229_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117994%_ _%super117995%_)
        (let ((_%self117998%_ _%self117994%_))
          (if (##fx< '3 (##structure-length _%self117998%_))
              (begin
                (##unchecked-structure-set!
                 _%self117998%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117998%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117998%_
                 _%super117995%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117998%_
                     '3
                     (##vector-length _%self117998%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118011%_)
        (let ((_%super118013%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118011%_ _%super118013%_))))
    (define gx#local-context:::init!
      (lambda _g118231_
        (let ((_g118230_ (##length _g118231_)))
          (cond ((##fx= _g118230_ 1)
                 (apply (lambda (_%self118011%_)
                          (gx#local-context:::init!__0 _%self118011%_))
                        _g118231_))
                ((##fx= _g118230_ 2)
                 (apply (lambda (_%self118015%_ _%super118016%_)
                          (gx#local-context:::init!__%
                           _%self118015%_
                           _%super118016%_))
                        _g118231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g118231_))))))
    (__bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
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
      (lambda _%$args117868%_
        (apply make-instance gx#binding::t _%$args117868%_)))
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
      (lambda _%$args117865%_
        (apply make-instance gx#runtime-binding::t _%$args117865%_)))
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
      (lambda _%$args117862%_
        (apply make-instance gx#local-binding::t _%$args117862%_)))
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
      (lambda _%$args117859%_
        (apply make-instance gx#top-binding::t _%$args117859%_)))
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
      (lambda _%$args117856%_
        (apply make-instance gx#module-binding::t _%$args117856%_)))
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
      (lambda _%$args117853%_
        (apply make-instance gx#extern-binding::t _%$args117853%_)))
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
      (lambda _%$args117850%_
        (apply make-instance gx#syntax-binding::t _%$args117850%_)))
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
      (lambda _%$args117847%_
        (apply make-instance gx#import-binding::t _%$args117847%_)))
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
      (lambda _%$args117844%_
        (apply make-instance gx#alias-binding::t _%$args117844%_)))
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
      (lambda _%$args117841%_
        (apply make-instance gx#expander::t _%$args117841%_)))
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
      (lambda _%$args117838%_
        (apply make-instance gx#core-expander::t _%$args117838%_)))
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
      (lambda _%$args117835%_
        (apply make-instance gx#expression-form::t _%$args117835%_)))
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
      (lambda _%$args117832%_
        (apply make-instance gx#special-form::t _%$args117832%_)))
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
      (lambda _%$args117829%_
        (apply make-instance gx#definition-form::t _%$args117829%_)))
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
      (lambda _%$args117826%_
        (apply make-instance gx#top-special-form::t _%$args117826%_)))
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
      (lambda _%$args117823%_
        (apply make-instance gx#module-special-form::t _%$args117823%_)))
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
      (lambda _%$args117820%_
        (apply make-instance gx#feature-expander::t _%$args117820%_)))
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
      (lambda _%$args117817%_
        (apply make-instance gx#private-feature-expander::t _%$args117817%_)))
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
      (lambda _%$args117814%_
        (apply make-instance gx#reserved-expander::t _%$args117814%_)))
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
      (lambda _%$args117811%_
        (apply make-instance gx#macro-expander::t _%$args117811%_)))
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
      (lambda _%$args117808%_
        (apply make-instance gx#rename-macro-expander::t _%$args117808%_)))
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
      (lambda _%$args117805%_
        (apply make-instance gx#user-expander::t _%$args117805%_)))
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
      (lambda _%$args117802%_
        (apply make-instance gx#expander-mark::t _%$args117802%_)))
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
      (lambda (_%ctx117786%_
               _%message117787%_
               _%stx117788%_
               .
               _%details117789%_)
        (let ((_%ctx117800%_
               (let ((_%$e117791%_ _%ctx117786%_))
                 (if _%$e117791%_
                     _%$e117791%_
                     (let ((_%$e117794%_ (gx#core-context-top__0)))
                       (if _%$e117794%_
                           ((lambda (_%ctx117797%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117797%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117794%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117787%_
                  (cons _%stx117788%_ _%details117789%_)
                  _%ctx117800%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117773%_ _%expression?117774%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117773%_ _%expression?117774%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117779%_)
        (let ((_%expression?117781%_ '#f))
          (gx#eval-syntax__% _%stx117779%_ _%expression?117781%_))))
    (define gx#eval-syntax
      (lambda _g118233_
        (let ((_g118232_ (##length _g118233_)))
          (cond ((##fx= _g118232_ 1)
                 (apply (lambda (_%stx117779%_)
                          (gx#eval-syntax__0 _%stx117779%_))
                        _g118233_))
                ((##fx= _g118232_ 2)
                 (apply (lambda (_%stx117783%_ _%expression?117784%_)
                          (gx#eval-syntax__%
                           _%stx117783%_
                           _%expression?117784%_))
                        _g118233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g118233_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117770%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117770%_))))
    (define gx#core-expand__%
      (lambda (_%stx117757%_ _%expression?117758%_)
        (if _%expression?117758%_
            (gx#core-expand-expression _%stx117757%_)
            (gx#core-expand-top _%stx117757%_))))
    (define gx#core-expand__0
      (lambda (_%stx117763%_)
        (let ((_%expression?117765%_ '#f))
          (gx#core-expand__% _%stx117763%_ _%expression?117765%_))))
    (define gx#core-expand
      (lambda _g118235_
        (let ((_g118234_ (##length _g118235_)))
          (cond ((##fx= _g118234_ 1)
                 (apply (lambda (_%stx117763%_)
                          (gx#core-expand__0 _%stx117763%_))
                        _g118235_))
                ((##fx= _g118234_ 2)
                 (apply (lambda (_%stx117767%_ _%expression?117768%_)
                          (gx#core-expand__%
                           _%stx117767%_
                           _%expression?117768%_))
                        _g118235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g118235_))))))
    (define gx#core-expand-top
      (lambda (_%stx117724%_)
        (let* ((_%stx117726%_ (gx#core-expand*__0 _%stx117724%_))
               (_%e117727117734%_ _%stx117726%_)
               (_%E117729117738%_
                (lambda () (gx#core-expand-expression _%stx117726%_)))
               (_%E117728117752%_
                (lambda ()
                  (if (gx#stx-pair? _%e117727117734%_)
                      (let ((_%e117730117742%_
                             (gx#syntax-e _%e117727117734%_)))
                        (let ((_%hd117731117745%_ (##car _%e117730117742%_))
                              (_%tl117732117747%_ (##cdr _%e117730117742%_)))
                          (let ((_%form117750%_ _%hd117731117745%_))
                            (if (gx#core-bound-identifier?__0 _%form117750%_)
                                _%stx117726%_
                                (_%E117729117738%_)))))
                      (_%E117729117738%_)))))
          (_%E117728117752%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117656%_)
        (letrec ((_%sealed-expression?117658%_
                  (lambda (_%hd117694%_)
                    (if (gx#sealed-syntax? _%hd117694%_)
                        (let* ((_%e117695117702%_ _%hd117694%_)
                               (_%E117697117706%_ (lambda () '#f))
                               (_%E117696117720%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117695117702%_)
                                      (let ((_%e117698117710%_
                                             (gx#syntax-e _%e117695117702%_)))
                                        (let ((_%hd117699117713%_
                                               (##car _%e117698117710%_))
                                              (_%tl117700117715%_
                                               (##cdr _%e117698117710%_)))
                                          (let ((_%form117718%_
                                                 _%hd117699117713%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117718%_
                                                 gx#expression-form-binding?)
                                                (_%E117697117706%_)))))
                                      (_%E117697117706%_)))))
                          (_%E117696117720%_))
                        '#f)))
                 (_%illegal-expression117659%_
                  (lambda (_%hd117691%_ . _%_117692%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117656%_
                     _%hd117691%_)))
                 (_%expand-e117660%_
                  (lambda (_%form117683%_ _%hd117684%_)
                    (let ((_%bind117686%_
                           (if (##structure-instance-of?
                                _%form117683%_
                                'gx#binding::t)
                               _%form117683%_
                               (gx#resolve-identifier__0 _%form117683%_))))
                      (if (gx#core-expander-binding? _%bind117686%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117686%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117684%_
                              (gx#stx-source _%stx117656%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117686%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117686%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117684%_
                                   (gx#stx-source _%stx117656%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117656%_
                                 _%form117683%_))))))))
          (let ((_%hd117662%_ (gx#core-expand-head _%stx117656%_)))
            (if (_%sealed-expression?117658%_ _%hd117662%_)
                (let () _%hd117662%_)
                (if (gx#stx-pair? _%hd117662%_)
                    (let ()
                      (let* ((_%form117666%_ (gx#stx-car _%hd117662%_))
                             (_%bind117668%_
                              (if (gx#identifier? _%form117666%_)
                                  (gx#resolve-identifier__0 _%form117666%_)
                                  '#f)))
                        (if (or (not _%bind117668%_)
                                (not (gx#core-expander-binding?
                                      _%bind117668%_)))
                            (let ()
                              (_%expand-e117660%_
                               '%%app
                               (cons '%%app _%hd117662%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117668%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117662%_
                                   _%illegal-expression117659%_))
                                (if (gx#expression-form-binding?
                                     _%bind117668%_)
                                    (let ()
                                      (_%expand-e117660%_
                                       _%bind117668%_
                                       _%hd117662%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117668%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117660%_
                                            _%bind117668%_
                                            _%hd117662%_)))
                                        (let ()
                                          (_%illegal-expression117659%_
                                           _%hd117662%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117662%_)
                        (let () (_%illegal-expression117659%_ _%hd117662%_))
                        (if (gx#identifier? _%hd117662%_)
                            (let ()
                              (_%expand-e117660%_
                               '%%ref
                               (cons '%%ref (cons _%hd117662%_ '()))))
                            (if (gx#stx-datum? _%hd117662%_)
                                (let ()
                                  (_%expand-e117660%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117662%_ '()))))
                                (let ()
                                  (_%illegal-expression117659%_
                                   _%hd117662%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117651%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117654%_ (gx#core-expand-expression _%stx117651%_)))
             (values _%stx117654%_ (gx#eval-syntax* _%stx117654%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117632%_ _%stop?117633%_)
        (let _%lp117635%_ ((_%stx117637%_ _%stx117632%_))
          (if (_%stop?117633%_ _%stx117637%_)
              _%stx117637%_
              (let ((_%rstx117639%_ (gx#core-expand1 _%stx117637%_)))
                (if (eq? _%stx117637%_ _%rstx117639%_)
                    _%stx117637%_
                    (_%lp117635%_ _%rstx117639%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117644%_)
        (let ((_%stop?117646%_ false))
          (gx#core-expand*__% _%stx117644%_ _%stop?117646%_))))
    (define gx#core-expand*
      (lambda _g118237_
        (let ((_g118236_ (##length _g118237_)))
          (cond ((##fx= _g118236_ 1)
                 (apply (lambda (_%stx117644%_)
                          (gx#core-expand*__0 _%stx117644%_))
                        _g118237_))
                ((##fx= _g118236_ 2)
                 (apply (lambda (_%stx117648%_ _%stop?117649%_)
                          (gx#core-expand*__% _%stx117648%_ _%stop?117649%_))
                        _g118237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g118237_))))))
    (define gx#core-expand1
      (lambda (_%stx117584%_)
        (letrec ((_%step117586%_
                  (lambda (_%hd117623%_)
                    (let ((_%bind117625%_
                           (gx#resolve-identifier__0 _%hd117623%_)))
                      (if (##structure-instance-of?
                           _%bind117625%_
                           'gx#runtime-binding::t)
                          (let () _%stx117584%_)
                          (if (##structure-direct-instance-of?
                               _%bind117625%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind117625%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx117584%_))
                              (if (not _%bind117625%_)
                                  (let () _%stx117584%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx117584%_)))))))))
          (let* ((_%e117587117595%_ _%stx117584%_)
                 (_%E117593117599%_ (lambda () _%stx117584%_))
                 (_%E117589117605%_
                  (lambda ()
                    (let ((_%hd117603%_ _%e117587117595%_))
                      (if (gx#identifier? _%hd117603%_)
                          (_%step117586%_ _%hd117603%_)
                          (_%E117593117599%_)))))
                 (_%E117588117619%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117587117595%_)
                        (let ((_%e117590117609%_
                               (gx#syntax-e _%e117587117595%_)))
                          (let ((_%hd117591117612%_ (##car _%e117590117609%_))
                                (_%tl117592117614%_ (##cdr _%e117590117609%_)))
                            (let ((_%hd117617%_ _%hd117591117612%_))
                              (if (gx#identifier? _%hd117617%_)
                                  (_%step117586%_ _%hd117617%_)
                                  (_%E117589117605%_)))))
                        (_%E117589117605%_)))))
            (_%E117588117619%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117550%_)
        (letrec ((_%stop?117552%_
                  (lambda (_%stx117554%_)
                    (let* ((_%e117555117562%_ _%stx117554%_)
                           (_%E117557117566%_ (lambda () '#f))
                           (_%E117556117580%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117555117562%_)
                                  (let ((_%e117558117570%_
                                         (gx#syntax-e _%e117555117562%_)))
                                    (let ((_%hd117559117573%_
                                           (##car _%e117558117570%_))
                                          (_%tl117560117575%_
                                           (##cdr _%e117558117570%_)))
                                      (let ((_%hd117578%_ _%hd117559117573%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117578%_)
                                            (_%E117557117566%_)))))
                                  (_%E117557117566%_)))))
                      (_%E117556117580%_)))))
          (gx#core-expand*__% _%stx117550%_ _%stop?117552%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx117356%_
               _%expand-special117357%_
               _%begin-form117358%_
               _%expand-e117359%_)
        (letrec ((_%expand-splice117361%_
                  (lambda (_%hd117524%_
                           _%body117525%_
                           _%rest117526%_
                           _%r117527%_)
                    (if (gx#stx-list? _%body117525%_)
                        (_%K117365%_
                         (gx#stx-foldr cons _%rest117526%_ _%body117525%_)
                         _%r117527%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx117356%_
                         _%hd117524%_))))
                 (_%expand-cond-expand117362%_
                  (lambda (_%hd117520%_ _%rest117521%_ _%r117522%_)
                    (_%K117365%_
                     (cons (gx#core-expand-cond-expand% _%hd117520%_)
                           _%rest117521%_)
                     _%r117522%_)))
                 (_%expand-include117363%_
                  (lambda (_%hd117469%_ _%rest117470%_ _%r117471%_)
                    (let* ((_%e117472117482%_ _%hd117469%_)
                           (_%E117474117486%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117472117482%_)))
                           (_%E117473117516%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117472117482%_)
                                  (let ((_%e117475117490%_
                                         (gx#syntax-e _%e117472117482%_)))
                                    (let ((_%hd117476117493%_
                                           (##car _%e117475117490%_))
                                          (_%tl117477117495%_
                                           (##cdr _%e117475117490%_)))
                                      (if (gx#stx-pair? _%tl117477117495%_)
                                          (let ((_%e117478117498%_
                                                 (gx#syntax-e
                                                  _%tl117477117495%_)))
                                            (let ((_%hd117479117501%_
                                                   (##car _%e117478117498%_))
                                                  (_%tl117480117503%_
                                                   (##cdr _%e117478117498%_)))
                                              (let ((_%path117506%_
                                                     _%hd117479117501%_))
                                                (if (gx#stx-null?
                                                     _%tl117480117503%_)
                                                    (if (gx#stx-string?
                                                         _%path117506%_)
                                                        (let* ((_%rpath117508%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path117506%_
                         (gx#stx-source _%hd117469%_)))
                       (_%block117510%_
                        (gx#core-expand-include%__%
                         _%hd117469%_
                         _%rpath117508%_))
                       (_%rbody117513%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block117510%_
                            _%expand-special117357%_
                            '#f
                            _%expand-e117359%_))
                         gx#current-expander-path
                         (cons _%rpath117508%_ (gx#current-expander-path)))))
                  (_%K117365%_
                   _%rest117470%_
                   (__foldr1 cons _%r117471%_ _%rbody117513%_)))
                (_%E117474117486%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E117474117486%_)))))
                                          (_%E117474117486%_))))
                                  (_%E117474117486%_)))))
                      (_%E117473117516%_))))
                 (_%expand-expression117364%_
                  (lambda (_%hd117465%_ _%rest117466%_ _%r117467%_)
                    (_%K117365%_
                     _%rest117466%_
                     (cons (_%expand-e117359%_ _%hd117465%_) _%r117467%_))))
                 (_%K117365%_
                  (lambda (_%rest117395%_ _%r117396%_)
                    (let* ((_%e117397117404%_ _%rest117395%_)
                           (_%E117399117408%_
                            (lambda ()
                              (if _%begin-form117358%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form117358%_
                                    (reverse _%r117396%_))
                                   (gx#stx-source _%stx117356%_))
                                  _%r117396%_)))
                           (_%E117398117461%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117397117404%_)
                                  (let ((_%e117400117412%_
                                         (gx#syntax-e _%e117397117404%_)))
                                    (let ((_%hd117401117415%_
                                           (##car _%e117400117412%_))
                                          (_%tl117402117417%_
                                           (##cdr _%e117400117412%_)))
                                      (let* ((_%hd117420%_ _%hd117401117415%_)
                                             (_%rest117422%_
                                              _%tl117402117417%_))
                                        (if '#t
                                            (let* ((_%hd117424%_
                                                    (gx#core-expand-head
                                                     _%hd117420%_))
                                                   (_%e117425117432%_
                                                    _%hd117424%_)
                                                   (_%E117427117436%_
                                                    (lambda ()
                                                      (_%expand-expression117364%_
                                                       _%hd117424%_
                                                       _%rest117422%_
                                                       _%r117396%_)))
                                                   (_%E117426117457%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117425117432%_)
                                                          (let ((_%e117428117440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117425117432%_)))
                    (let ((_%hd117429117443%_ (##car _%e117428117440%_))
                          (_%tl117430117445%_ (##cdr _%e117428117440%_)))
                      (let* ((_%form117448%_ _%hd117429117443%_)
                             (_%body117450%_ _%tl117430117445%_))
                        (if '#t
                            (let ((_%bind117452%_
                                   (if (gx#identifier? _%form117448%_)
                                       (gx#resolve-identifier__0
                                        _%form117448%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind117452%_)
                                  (let ((_%$e117454%_
                                         (##unchecked-structure-ref
                                          _%bind117452%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e117454%_)
                                        (_%expand-splice117361%_
                                         _%hd117424%_
                                         _%body117450%_
                                         _%rest117422%_
                                         _%r117396%_)
                                        (if (eq? '%#cond-expand _%$e117454%_)
                                            (_%expand-cond-expand117362%_
                                             _%hd117424%_
                                             _%rest117422%_
                                             _%r117396%_)
                                            (if (eq? '%#include _%$e117454%_)
                                                (_%expand-include117363%_
                                                 _%hd117424%_
                                                 _%rest117422%_
                                                 _%r117396%_)
                                                (_%expand-special117357%_
                                                 _%hd117424%_
                                                 _%K117365%_
                                                 _%rest117422%_
                                                 _%r117396%_)))))
                                  (_%expand-expression117364%_
                                   _%hd117424%_
                                   _%rest117422%_
                                   _%r117396%_)))
                            (_%E117427117436%_)))))
                  (_%E117427117436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117426117457%_))
                                            (_%E117399117408%_)))))
                                  (_%E117399117408%_)))))
                      (_%E117398117461%_)))))
          (let* ((_%e117366117373%_ _%stx117356%_)
                 (_%E117368117377%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117366117373%_)))
                 (_%E117367117391%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117366117373%_)
                        (let ((_%e117369117381%_
                               (gx#syntax-e _%e117366117373%_)))
                          (let ((_%hd117370117384%_ (##car _%e117369117381%_))
                                (_%tl117371117386%_ (##cdr _%e117369117381%_)))
                            (let ((_%body117389%_ _%tl117371117386%_))
                              (if (gx#stx-list? _%body117389%_)
                                  (_%K117365%_ _%body117389%_ '())
                                  (_%E117368117377%_)))))
                        (_%E117368117377%_)))))
            (_%E117367117391%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117532%_ _%expand-special117533%_)
        (let* ((_%begin-form117535%_ '%#begin)
               (_%expand-e117537%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117532%_
           _%expand-special117533%_
           _%begin-form117535%_
           _%expand-e117537%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117539%_ _%expand-special117540%_ _%begin-form117541%_)
        (let ((_%expand-e117543%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117539%_
           _%expand-special117540%_
           _%begin-form117541%_
           _%expand-e117543%_))))
    (define gx#core-expand-block
      (lambda _g118239_
        (let ((_g118238_ (##length _g118239_)))
          (cond ((##fx= _g118238_ 2)
                 (apply (lambda (_%stx117532%_ _%expand-special117533%_)
                          (gx#core-expand-block__0
                           _%stx117532%_
                           _%expand-special117533%_))
                        _g118239_))
                ((##fx= _g118238_ 3)
                 (apply (lambda (_%stx117539%_
                                 _%expand-special117540%_
                                 _%begin-form117541%_)
                          (gx#core-expand-block__1
                           _%stx117539%_
                           _%expand-special117540%_
                           _%begin-form117541%_))
                        _g118239_))
                ((##fx= _g118238_ 4)
                 (apply (lambda (_%stx117545%_
                                 _%expand-special117546%_
                                 _%begin-form117547%_
                                 _%expand-e117548%_)
                          (gx#core-expand-block__%
                           _%stx117545%_
                           _%expand-special117546%_
                           _%begin-form117547%_
                           _%expand-e117548%_))
                        _g118239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g118239_))))))
    (define gx#core-expand-block*
      (lambda (_%stx117304%_ _%expand-special117305%_)
        (let* ((_%g117306117317%_
                (gx#core-expand-block__1
                 _%stx117304%_
                 _%expand-special117305%_
                 '#f))
               (_%E117310117321%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117306117317%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K117315117352%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx117304%_)))
                (_%K117312117338%_ (lambda (_%expr117336%_) _%expr117336%_))
                (_%K117311117327%_
                 (lambda (_%body117325%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body117325%_))
                    (gx#stx-source _%stx117304%_)))))
            (let ((_%try-match117308117348%_
                   (lambda ()
                     (if (##pair? _%g117306117317%_)
                         (let ((_%tl117314117343%_ (##cdr _%g117306117317%_))
                               (_%hd117313117341%_ (##car _%g117306117317%_)))
                           (if (##null? _%tl117314117343%_)
                               (let ((_%expr117346%_ _%hd117313117341%_))
                                 (_%K117312117338%_ _%expr117346%_))
                               (let ((_%body117330%_ _%g117306117317%_))
                                 (_%K117311117327%_ _%body117330%_))))
                         (let ((_%body117330%_ _%g117306117317%_))
                           (_%K117311117327%_ _%body117330%_))))))
              (if (##null? _%g117306117317%_)
                  (_%K117315117352%_)
                  (_%try-match117308117348%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx117129%_)
        (letrec ((_%satisfied?117131%_
                  (lambda (_%condition117232%_)
                    (let* ((_%e117233117248%_ _%condition117232%_)
                           (_%E117243117252%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117233117248%_)))
                           (_%E117236117271%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117233117248%_)
                                  (let ((_%e117244117256%_
                                         (gx#syntax-e _%e117233117248%_)))
                                    (let ((_%hd117245117259%_
                                           (##car _%e117244117256%_))
                                          (_%tl117246117261%_
                                           (##cdr _%e117244117256%_)))
                                      (let* ((_%combinator117264%_
                                              _%hd117245117259%_)
                                             (_%body117266%_
                                              _%tl117246117261%_))
                                        (if (gx#stx-list? _%body117266%_)
                                            (let ((_%$e117268%_
                                                   (gx#stx-e
                                                    _%combinator117264%_)))
                                              (if (eq? 'not _%$e117268%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?117131%_
                                                        _%body117266%_))
                                                  (if (eq? 'and _%$e117268%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?117131%_
                                                       _%body117266%_)
                                                      (if (eq? 'or
                                                               _%$e117268%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?117131%_
                                                           _%body117266%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e117268%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body117266%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx117129%_
                       _%combinator117264%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E117243117252%_)))))
                                  (_%E117243117252%_))))
                           (_%E117235117294%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117233117248%_)
                                  (let ((_%e117237117275%_
                                         (gx#syntax-e _%e117233117248%_)))
                                    (let ((_%hd117238117278%_
                                           (##car _%e117237117275%_))
                                          (_%tl117239117280%_
                                           (##cdr _%e117237117275%_)))
                                      (if (and (gx#identifier?
                                                _%hd117238117278%_)
                                               (gx#core-identifier=?
                                                _%hd117238117278%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl117239117280%_)
                                              (let ((_%e117240117283%_
                                                     (gx#syntax-e
                                                      _%tl117239117280%_)))
                                                (let ((_%hd117241117286%_
                                                       (##car _%e117240117283%_))
                                                      (_%tl117242117288%_
                                                       (##cdr _%e117240117283%_)))
                                                  (let ((_%expr117291%_
                                                         _%hd117241117286%_))
                                                    (if (gx#stx-null?
                                                         _%tl117242117288%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr117291%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E117236117271%_))
                (_%E117236117271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117236117271%_))
                                          (_%E117236117271%_))))
                                  (_%E117236117271%_))))
                           (_%E117234117300%_
                            (lambda ()
                              (let ((_%id117298%_ _%e117233117248%_))
                                (if (gx#identifier? _%id117298%_)
                                    (gx#core-bound-identifier?__%
                                     _%id117298%_
                                     gx#feature-binding?)
                                    (_%E117235117294%_))))))
                      (_%E117234117300%_))))
                 (_%loop117132%_
                  (lambda (_%rest117162%_)
                    (let* ((_%e117163117171%_ _%rest117162%_)
                           (_%E117169117175%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117163117171%_)))
                           (_%E117165117179%_
                            (lambda ()
                              (if (gx#stx-null? _%e117163117171%_)
                                  (if '#t '() (_%E117169117175%_))
                                  (_%E117169117175%_))))
                           (_%E117164117228%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117163117171%_)
                                  (let ((_%e117166117183%_
                                         (gx#syntax-e _%e117163117171%_)))
                                    (let ((_%hd117167117186%_
                                           (##car _%e117166117183%_))
                                          (_%tl117168117188%_
                                           (##cdr _%e117166117183%_)))
                                      (let* ((_%hd117191%_ _%hd117167117186%_)
                                             (_%rest117193%_
                                              _%tl117168117188%_))
                                        (if '#t
                                            (let* ((_%e117194117201%_
                                                    _%hd117191%_)
                                                   (_%E117196117205%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e117194117201%_)))
                                                   (_%E117195117224%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117194117201%_)
                                                          (let ((_%e117197117209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117194117201%_)))
                    (let ((_%hd117198117212%_ (##car _%e117197117209%_))
                          (_%tl117199117214%_ (##cdr _%e117197117209%_)))
                      (let* ((_%condition117217%_ _%hd117198117212%_)
                             (_%body117219%_ _%tl117199117214%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition117217%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest117193%_)
                                      _%body117219%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx117129%_
                                       _%hd117191%_)))
                                (if (_%satisfied?117131%_ _%condition117217%_)
                                    (let () _%body117219%_)
                                    (let () (_%loop117132%_ _%rest117193%_))))
                            (_%E117196117205%_)))))
                  (_%E117196117205%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117195117224%_))
                                            (_%E117165117179%_)))))
                                  (_%E117165117179%_)))))
                      (_%E117164117228%_)))))
          (let* ((_%e117133117140%_ _%stx117129%_)
                 (_%E117135117144%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117133117140%_)))
                 (_%E117134117158%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117133117140%_)
                        (let ((_%e117136117148%_
                               (gx#syntax-e _%e117133117140%_)))
                          (let ((_%hd117137117151%_ (##car _%e117136117148%_))
                                (_%tl117138117153%_ (##cdr _%e117136117148%_)))
                            (let ((_%clauses117156%_ _%tl117138117153%_))
                              (if (gx#stx-list? _%clauses117156%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop117132%_ _%clauses117156%_))
                                  (_%E117135117144%_)))))
                        (_%E117135117144%_)))))
            (_%E117134117158%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx117072%_ _%rpath117073%_)
        (let* ((_%e117074117084%_ _%stx117072%_)
               (_%E117076117088%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e117074117084%_)))
               (_%E117075117115%_
                (lambda ()
                  (if (gx#stx-pair? _%e117074117084%_)
                      (let ((_%e117077117092%_
                             (gx#syntax-e _%e117074117084%_)))
                        (let ((_%hd117078117095%_ (##car _%e117077117092%_))
                              (_%tl117079117097%_ (##cdr _%e117077117092%_)))
                          (if (gx#stx-pair? _%tl117079117097%_)
                              (let ((_%e117080117100%_
                                     (gx#syntax-e _%tl117079117097%_)))
                                (let ((_%hd117081117103%_
                                       (##car _%e117080117100%_))
                                      (_%tl117082117105%_
                                       (##cdr _%e117080117100%_)))
                                  (let ((_%path117108%_ _%hd117081117103%_))
                                    (if (gx#stx-null? _%tl117082117105%_)
                                        (if (gx#stx-string? _%path117108%_)
                                            (let ((_%rpath117113%_
                                                   (let ((_%$e117110%_
                                                          _%rpath117073%_))
                                                     (if _%$e117110%_
                                                         _%$e117110%_
                                                         (gx#core-resolve-path__%
                                                          _%path117108%_
                                                          (gx#stx-source
                                                           _%stx117072%_))))))
                                              (if (member _%rpath117113%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx117072%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath117113%_))
                                                    (gx#stx-source
                                                     _%stx117072%_)))))
                                            (_%E117076117088%_))
                                        (_%E117076117088%_)))))
                              (_%E117076117088%_))))
                      (_%E117076117088%_)))))
          (_%E117075117115%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx117122%_)
        (let ((_%rpath117124%_ '#f))
          (gx#core-expand-include%__% _%stx117122%_ _%rpath117124%_))))
    (define gx#core-expand-include%
      (lambda _g118241_
        (let ((_g118240_ (##length _g118241_)))
          (cond ((##fx= _g118240_ 1)
                 (apply (lambda (_%stx117122%_)
                          (gx#core-expand-include%__0 _%stx117122%_))
                        _g118241_))
                ((##fx= _g118240_ 2)
                 (apply (lambda (_%stx117126%_ _%rpath117127%_)
                          (gx#core-expand-include%__%
                           _%stx117126%_
                           _%rpath117127%_))
                        _g118241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g118241_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K117038%_ _%stx117039%_ _%method117040%_)
        (if (procedure? _%K117038%_)
            (let ((_%$e117043%_ (gx#stx-source _%stx117039%_)))
              (if _%$e117043%_
                  ((lambda (_%g117045117047%_)
                     (gx#stx-wrap-source
                      (_%K117038%_ _%stx117039%_)
                      _%g117045117047%_))
                   _%$e117043%_)
                  (let () (_%K117038%_ _%stx117039%_))))
            (let ((_%$e117051%_
                   (bound-method-ref _%K117038%_ _%method117040%_)))
              (if _%$e117051%_
                  ((lambda (_%g117053117055%_)
                     (gx#core-apply-expander__%
                      _%g117053117055%_
                      _%stx117039%_
                      _%method117040%_))
                   _%$e117051%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx117039%_
                     _%method117040%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K117062%_ _%stx117063%_)
        (let ((_%method117065%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K117062%_
           _%stx117063%_
           _%method117065%_))))
    (define gx#core-apply-expander
      (lambda _g118243_
        (let ((_g118242_ (##length _g118243_)))
          (cond ((##fx= _g118242_ 2)
                 (apply (lambda (_%K117062%_ _%stx117063%_)
                          (gx#core-apply-expander__0
                           _%K117062%_
                           _%stx117063%_))
                        _g118243_))
                ((##fx= _g118242_ 3)
                 (apply (lambda (_%K117067%_ _%stx117068%_ _%method117069%_)
                          (gx#core-apply-expander__%
                           _%K117067%_
                           _%stx117068%_
                           _%method117069%_))
                        _g118243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g118243_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self117023%_ _%stx117024%_)
        (let ((_%self117027%_ _%self117023%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx117024%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116865%_ _%stx116866%_)
        (let ((_%self116869%_ _%self116865%_))
          (let* ((_%self116878116884%_ _%self116869%_)
                 (_%E116880116888%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116878116884%_
                           '((macro-expander K)))
                    '#!void))
                 (_%K116881116893%_
                  (lambda (_%K116891%_)
                    (gx#core-apply-expander__0 _%K116891%_ _%stx116866%_))))
            (if '#t
                (let* ((_%e116882116896%_
                        (##unchecked-structure-ref
                         _%self116878116884%_
                         '1
                         '#f
                         '#f))
                       (_%K116899%_ _%e116882116896%_))
                  (_%K116881116893%_ _%K116899%_))
                (_%E116880116888%_))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116707%_ _%stx116708%_)
        (let ((_%self116711%_ _%self116707%_))
          (if (gx#sealed-syntax? _%stx116708%_)
              _%stx116708%_
              (let* ((_%self116720116726%_ _%self116711%_)
                     (_%E116722116730%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116720116726%_
                               '((core-expander K)))
                        '#!void))
                     (_%K116723116735%_
                      (lambda (_%K116733%_)
                        (gx#core-apply-expander__0
                         _%K116733%_
                         _%stx116708%_))))
                (if '#t
                    (let* ((_%e116724116738%_
                            (##unchecked-structure-ref
                             _%self116720116726%_
                             '1
                             '#f
                             '#f))
                           (_%K116741%_ _%e116724116738%_))
                      (_%K116723116735%_ _%K116741%_))
                    (_%E116722116730%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116558%_ _%stx116559%_ _%top?116560%_)
        (let ((_%self116563%_ _%self116558%_))
          (if (_%top?116560%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self116563%_
               _%stx116559%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx116559%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116576%_ _%stx116577%_)
        (let ((_%top?116579%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116576%_
           _%stx116577%_
           _%top?116579%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g118245_
        (let ((_g118244_ (##length _g118245_)))
          (cond ((##fx= _g118244_ 2)
                 (apply (lambda (_%self116576%_ _%stx116577%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self116576%_
                           _%stx116577%_))
                        _g118245_))
                ((##fx= _g118244_ 3)
                 (apply (lambda (_%self116581%_ _%stx116582%_ _%top?116583%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self116581%_
                           _%stx116582%_
                           _%top?116583%_))
                        _g118245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g118245_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116421%_ _%stx116422%_)
        (let ((_%self116425%_ _%self116421%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self116425%_
           _%stx116422%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116235%_ _%stx116236%_)
        (let ((_%self116239%_ _%self116235%_))
          (let* ((_%self116248116254%_ _%self116239%_)
                 (_%E116250116258%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116248116254%_
                           '((rename-macro-expander id)))
                    '#!void))
                 (_%K116251116291%_
                  (lambda (_%id116261%_)
                    (let* ((_%e116262116269%_ _%stx116236%_)
                           (_%E116264116273%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116262116269%_)))
                           (_%E116263116287%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116262116269%_)
                                  (let ((_%e116265116277%_
                                         (gx#syntax-e _%e116262116269%_)))
                                    (let ((_%hd116266116280%_
                                           (##car _%e116265116277%_))
                                          (_%tl116267116282%_
                                           (##cdr _%e116265116277%_)))
                                      (let ((_%body116285%_
                                             _%tl116267116282%_))
                                        (if '#t
                                            (gx#core-cons
                                             _%id116261%_
                                             _%body116285%_)
                                            (_%E116264116273%_)))))
                                  (_%E116264116273%_)))))
                      (_%E116263116287%_)))))
            (if '#t
                (let* ((_%e116252116294%_
                        (##unchecked-structure-ref
                         _%self116248116254%_
                         '1
                         '#f
                         '#f))
                       (_%id116297%_ _%e116252116294%_))
                  (_%K116251116291%_ _%id116297%_))
                (_%E116250116258%_))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self116061%_ _%stx116062%_ _%method116063%_)
        (let* ((_%self116064116072%_ _%self116061%_)
               (_%E116066116076%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116064116072%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K116067116083%_
                (lambda (_%phi116079%_ _%ctx116080%_ _%K116081%_)
                  (gx#core-apply-user-macro
                   _%K116081%_
                   _%stx116062%_
                   _%ctx116080%_
                   _%phi116079%_
                   _%method116063%_))))
          (if (##structure-instance-of?
               _%self116064116072%_
               'gx#user-expander::t)
              (let* ((_%e116068116086%_
                      (##unchecked-structure-ref
                       _%self116064116072%_
                       '1
                       '#f
                       '#f))
                     (_%K116089%_ _%e116068116086%_)
                     (_%e116069116091%_
                      (##unchecked-structure-ref
                       _%self116064116072%_
                       '2
                       '#f
                       '#f))
                     (_%ctx116094%_ _%e116069116091%_)
                     (_%e116070116096%_
                      (##unchecked-structure-ref
                       _%self116064116072%_
                       '3
                       '#f
                       '#f))
                     (_%phi116099%_ _%e116070116096%_))
                (_%K116067116083%_ _%phi116099%_ _%ctx116094%_ _%K116089%_))
              (_%E116066116076%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self116104%_ _%stx116105%_)
        (let ((_%method116107%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self116104%_
           _%stx116105%_
           _%method116107%_))))
    (define gx#core-apply-user-expander
      (lambda _g118247_
        (let ((_g118246_ (##length _g118247_)))
          (cond ((##fx= _g118246_ 2)
                 (apply (lambda (_%self116104%_ _%stx116105%_)
                          (gx#core-apply-user-expander__0
                           _%self116104%_
                           _%stx116105%_))
                        _g118247_))
                ((##fx= _g118246_ 3)
                 (apply (lambda (_%self116109%_ _%stx116110%_ _%method116111%_)
                          (gx#core-apply-user-expander__%
                           _%self116109%_
                           _%stx116110%_
                           _%method116111%_))
                        _g118247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g118247_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K116051%_
               _%stx116052%_
               _%ctx116053%_
               _%phi116054%_
               _%method116055%_)
        (let ((_%mark116057%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx116053%_
                _%phi116054%_
                _%stx116052%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K116051%_
               (gx#stx-apply-mark _%stx116052%_ _%mark116057%_)
               _%method116055%_)
              _%mark116057%_))
           gx#current-expander-marks
           (cons _%mark116057%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115899%_ _%phi115900%_ _%ctx115901%_)
        (let _%lp115903%_ ((_%bind115905%_
                            (gx#core-resolve-identifier__%
                             _%stx115899%_
                             _%phi115900%_
                             _%ctx115901%_)))
          (if (##structure-direct-instance-of?
               _%bind115905%_
               'gx#import-binding::t)
              (let ()
                (_%lp115903%_
                 (##unchecked-structure-ref _%bind115905%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115905%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115903%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115905%_ '4 '#f '#f)
                      _%phi115900%_
                      _%ctx115901%_)))
                  (let () _%bind115905%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115913%_)
        (let* ((_%phi115915%_ (gx#current-expander-phi))
               (_%ctx115917%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115913%_
           _%phi115915%_
           _%ctx115917%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115919%_ _%phi115920%_)
        (let ((_%ctx115922%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115919%_
           _%phi115920%_
           _%ctx115922%_))))
    (define gx#resolve-identifier
      (lambda _g118249_
        (let ((_g118248_ (##length _g118249_)))
          (cond ((##fx= _g118248_ 1)
                 (apply (lambda (_%stx115913%_)
                          (gx#resolve-identifier__0 _%stx115913%_))
                        _g118249_))
                ((##fx= _g118248_ 2)
                 (apply (lambda (_%stx115919%_ _%phi115920%_)
                          (gx#resolve-identifier__1
                           _%stx115919%_
                           _%phi115920%_))
                        _g118249_))
                ((##fx= _g118248_ 3)
                 (apply (lambda (_%stx115924%_ _%phi115925%_ _%ctx115926%_)
                          (gx#resolve-identifier__%
                           _%stx115924%_
                           _%phi115925%_
                           _%ctx115926%_))
                        _g118249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g118249_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115854%_
               _%val115855%_
               _%rebind?115856%_
               _%phi115857%_
               _%ctx115858%_)
        (let ((_%rebind?115863%_
               (if (not _%rebind?115856%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115856%_)
                       (let () _%rebind?115856%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115854%_)
           _%val115855%_
           _%rebind?115863%_
           _%phi115857%_
           _%ctx115858%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115868%_ _%val115869%_)
        (let* ((_%rebind?115871%_ '#f)
               (_%phi115873%_ (gx#current-expander-phi))
               (_%ctx115875%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115868%_
           _%val115869%_
           _%rebind?115871%_
           _%phi115873%_
           _%ctx115875%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115877%_ _%val115878%_ _%rebind?115879%_)
        (let* ((_%phi115881%_ (gx#current-expander-phi))
               (_%ctx115883%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115877%_
           _%val115878%_
           _%rebind?115879%_
           _%phi115881%_
           _%ctx115883%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115885%_ _%val115886%_ _%rebind?115887%_ _%phi115888%_)
        (let ((_%ctx115890%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115885%_
           _%val115886%_
           _%rebind?115887%_
           _%phi115888%_
           _%ctx115890%_))))
    (define gx#bind-identifier!
      (lambda _g118251_
        (let ((_g118250_ (##length _g118251_)))
          (cond ((##fx= _g118250_ 2)
                 (apply (lambda (_%stx115868%_ _%val115869%_)
                          (gx#bind-identifier!__0 _%stx115868%_ _%val115869%_))
                        _g118251_))
                ((##fx= _g118250_ 3)
                 (apply (lambda (_%stx115877%_ _%val115878%_ _%rebind?115879%_)
                          (gx#bind-identifier!__1
                           _%stx115877%_
                           _%val115878%_
                           _%rebind?115879%_))
                        _g118251_))
                ((##fx= _g118250_ 4)
                 (apply (lambda (_%stx115885%_
                                 _%val115886%_
                                 _%rebind?115887%_
                                 _%phi115888%_)
                          (gx#bind-identifier!__2
                           _%stx115885%_
                           _%val115886%_
                           _%rebind?115887%_
                           _%phi115888%_))
                        _g118251_))
                ((##fx= _g118250_ 5)
                 (apply (lambda (_%stx115892%_
                                 _%val115893%_
                                 _%rebind?115894%_
                                 _%phi115895%_
                                 _%ctx115896%_)
                          (gx#bind-identifier!__%
                           _%stx115892%_
                           _%val115893%_
                           _%rebind?115894%_
                           _%phi115895%_
                           _%ctx115896%_))
                        _g118251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g118251_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115820%_ _%phi115821%_ _%ctx115822%_)
        (let _%lp115824%_ ((_%e115826%_ _%stx115820%_)
                           (_%marks115827%_ (gx#current-expander-marks)))
          (if (symbol? _%e115826%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115826%_
                 _%phi115821%_
                 _%phi115821%_
                 _%ctx115822%_
                 (reverse _%marks115827%_)))
              (if (gx#identifier-quote? _%e115826%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115826%_ '1 '#f '#f)
                     _%phi115821%_
                     '0
                     (##unchecked-structure-ref _%e115826%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115826%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115826%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115826%_ '1 '#f '#f)
                         _%phi115821%_
                         _%phi115821%_
                         _%ctx115822%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115826%_ '3 '#f '#f)
                          _%marks115827%_)))
                      (if (##structure-direct-instance-of?
                           _%e115826%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115824%_
                             (##unchecked-structure-ref _%e115826%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115826%_
                               '3
                               '#f
                               '#f)
                              _%marks115827%_)))
                          (if (##structure-instance-of?
                               _%e115826%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115824%_
                                 (##unchecked-structure-ref
                                  _%e115826%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115827%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115820%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115838%_)
        (let* ((_%phi115840%_ (gx#current-expander-phi))
               (_%ctx115842%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115838%_
           _%phi115840%_
           _%ctx115842%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115844%_ _%phi115845%_)
        (let ((_%ctx115847%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115844%_
           _%phi115845%_
           _%ctx115847%_))))
    (define gx#core-resolve-identifier
      (lambda _g118253_
        (let ((_g118252_ (##length _g118253_)))
          (cond ((##fx= _g118252_ 1)
                 (apply (lambda (_%stx115838%_)
                          (gx#core-resolve-identifier__0 _%stx115838%_))
                        _g118253_))
                ((##fx= _g118252_ 2)
                 (apply (lambda (_%stx115844%_ _%phi115845%_)
                          (gx#core-resolve-identifier__1
                           _%stx115844%_
                           _%phi115845%_))
                        _g118253_))
                ((##fx= _g118252_ 3)
                 (apply (lambda (_%stx115849%_ _%phi115850%_ _%ctx115851%_)
                          (gx#core-resolve-identifier__%
                           _%stx115849%_
                           _%phi115850%_
                           _%ctx115851%_))
                        _g118253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g118253_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115730%_
               _%phi115731%_
               _%src-phi115732%_
               _%ctx115733%_
               _%marks115734%_)
        (letrec ((_%resolve115736%_
                  (lambda (_%ctx115804%_ _%src-phi115805%_ _%key115806%_)
                    (let _%lp115808%_ ((_%ctx115810%_
                                        (gx#core-context-shift
                                         _%ctx115804%_
                                         _%phi115731%_))
                                       (_%dphi115811%_
                                        (fx- _%phi115731%_ _%src-phi115805%_)))
                      (let ((_%$e115813%_
                             (gx#core-context-resolve
                              _%ctx115810%_
                              _%key115806%_)))
                        (if _%$e115813%_
                            (values _%$e115813%_)
                            (if (fxzero? _%dphi115811%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115811%_)
                                    (let ()
                                      (_%lp115808%_
                                       (gx#core-context-shift
                                        _%ctx115810%_
                                        '-1)
                                       (##fx- _%dphi115811%_ '1)))
                                    (let ()
                                      (_%lp115808%_
                                       (gx#core-context-shift _%ctx115810%_ '1)
                                       (##fx+ _%dphi115811%_ '1)))))))))))
          (let _%lp115738%_ ((_%ctx115740%_ _%ctx115733%_)
                             (_%src-phi115741%_ _%src-phi115732%_)
                             (_%rest115742%_ _%marks115734%_))
            (let* ((_%rest115743115751%_ _%rest115742%_)
                   (_%else115745115759%_
                    (lambda ()
                      (_%resolve115736%_
                       _%ctx115740%_
                       _%src-phi115741%_
                       _%id115730%_)))
                   (_%K115747115792%_
                    (lambda (_%rest115762%_ _%hd115763%_)
                      (let* ((_%hd115764115770%_ _%hd115763%_)
                             (_%E115766115774%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115764115770%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115767115784%_
                              (lambda (_%subst115777%_)
                                (let ((_%$e115781%_
                                       (let ((_%key115779%_
                                              (if _%subst115777%_
                                                  (hash-get
                                                   _%subst115777%_
                                                   _%id115730%_)
                                                  '#f)))
                                         (if _%key115779%_
                                             (_%resolve115736%_
                                              _%ctx115740%_
                                              _%src-phi115741%_
                                              _%key115779%_)
                                             '#f))))
                                  (if _%$e115781%_
                                      _%$e115781%_
                                      (_%lp115738%_
                                       (##unchecked-structure-ref
                                        _%hd115763%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115763%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115762%_))))))
                        (if (##structure-instance-of?
                             _%hd115764115770%_
                             'gx#expander-mark::t)
                            (let* ((_%e115768115787%_
                                    (##unchecked-structure-ref
                                     _%hd115764115770%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115790%_ _%e115768115787%_))
                              (_%K115767115784%_ _%subst115790%_))
                            (_%E115766115774%_))))))
              (if (##pair? _%rest115743115751%_)
                  (let ((_%hd115748115795%_ (##car _%rest115743115751%_))
                        (_%tl115749115797%_ (##cdr _%rest115743115751%_)))
                    (let* ((_%hd115800%_ _%hd115748115795%_)
                           (_%rest115802%_ _%tl115749115797%_))
                      (_%K115747115792%_ _%rest115802%_ _%hd115800%_)))
                  (_%else115745115759%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115600%_
               _%val115601%_
               _%rebind?115602%_
               _%phi115603%_
               _%ctx115604%_)
        (letrec ((_%update-binding115606%_
                  (lambda (_%xval115679%_)
                    (if (or (_%rebind?115602%_
                             _%ctx115604%_
                             _%xval115679%_
                             _%val115601%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115679%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115679%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115601%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115601%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115679%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115601%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115601%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115679%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val115601%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val115601%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115601%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115679%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115601%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115679%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115679%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val115601%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115679%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key115600%_
                                   (cons (##unchecked-structure-ref
                                          _%val115601%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val115601%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115679%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115679%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115679%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115679%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key115600%_
                                   _%val115601%_
                                   _%xval115679%_)))))))
                 (_%gensubst115607%_
                  (lambda (_%subst115674%_ _%id115675%_)
                    (let ((_%eid115677%_
                           (gensym (if (uninterned-symbol? _%id115675%_)
                                       '%
                                       _%id115675%_))))
                      (hash-put! _%subst115674%_ _%id115675%_ _%eid115677%_)
                      _%eid115677%_)))
                 (_%subst!115608%_
                  (lambda (_%key115610%_)
                    (let* ((_%key115611115619%_ _%key115610%_)
                           (_%else115613115627%_ (lambda () _%key115610%_))
                           (_%K115615115662%_
                            (lambda (_%mark115630%_ _%id115631%_)
                              (let* ((_%mark115632115638%_ _%mark115630%_)
                                     (_%E115634115642%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115632115638%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115635115654%_
                                      (lambda (_%subst115645%_)
                                        (if (not _%subst115645%_)
                                            (let ((_%subst115648%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark115630%_
                                               _%subst115648%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst115607%_
                                               _%subst115648%_
                                               _%id115631%_))
                                            (let ((_%$e115650%_
                                                   (hash-get
                                                    _%subst115645%_
                                                    _%id115631%_)))
                                              (if _%$e115650%_
                                                  (values _%$e115650%_)
                                                  (let ()
                                                    (_%gensubst115607%_
                                                     _%subst115645%_
                                                     _%id115631%_))))))))
                                (if (##structure-instance-of?
                                     _%mark115632115638%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115636115657%_
                                            (##unchecked-structure-ref
                                             _%mark115632115638%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115660%_ _%e115636115657%_))
                                      (_%K115635115654%_ _%subst115660%_))
                                    (_%E115634115642%_))))))
                      (if (##pair? _%key115611115619%_)
                          (let ((_%hd115616115665%_
                                 (##car _%key115611115619%_))
                                (_%tl115617115667%_
                                 (##cdr _%key115611115619%_)))
                            (let* ((_%id115670%_ _%hd115616115665%_)
                                   (_%mark115672%_ _%tl115617115667%_))
                              (_%K115615115662%_ _%mark115672%_ _%id115670%_)))
                          (_%else115613115627%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115604%_ _%phi115603%_)
           (_%subst!115608%_ _%key115600%_)
           _%val115601%_
           _%update-binding115606%_))))
    (define gx#core-bind!__0
      (lambda (_%key115700%_ _%val115701%_)
        (let* ((_%rebind?115703%_ false)
               (_%phi115705%_ (gx#current-expander-phi))
               (_%ctx115707%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115700%_
           _%val115701%_
           _%rebind?115703%_
           _%phi115705%_
           _%ctx115707%_))))
    (define gx#core-bind!__1
      (lambda (_%key115709%_ _%val115710%_ _%rebind?115711%_)
        (let* ((_%phi115713%_ (gx#current-expander-phi))
               (_%ctx115715%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115709%_
           _%val115710%_
           _%rebind?115711%_
           _%phi115713%_
           _%ctx115715%_))))
    (define gx#core-bind!__2
      (lambda (_%key115717%_ _%val115718%_ _%rebind?115719%_ _%phi115720%_)
        (let ((_%ctx115722%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115717%_
           _%val115718%_
           _%rebind?115719%_
           _%phi115720%_
           _%ctx115722%_))))
    (define gx#core-bind!
      (lambda _g118255_
        (let ((_g118254_ (##length _g118255_)))
          (cond ((##fx= _g118254_ 2)
                 (apply (lambda (_%key115700%_ _%val115701%_)
                          (gx#core-bind!__0 _%key115700%_ _%val115701%_))
                        _g118255_))
                ((##fx= _g118254_ 3)
                 (apply (lambda (_%key115709%_ _%val115710%_ _%rebind?115711%_)
                          (gx#core-bind!__1
                           _%key115709%_
                           _%val115710%_
                           _%rebind?115711%_))
                        _g118255_))
                ((##fx= _g118254_ 4)
                 (apply (lambda (_%key115717%_
                                 _%val115718%_
                                 _%rebind?115719%_
                                 _%phi115720%_)
                          (gx#core-bind!__2
                           _%key115717%_
                           _%val115718%_
                           _%rebind?115719%_
                           _%phi115720%_))
                        _g118255_))
                ((##fx= _g118254_ 5)
                 (apply (lambda (_%key115724%_
                                 _%val115725%_
                                 _%rebind?115726%_
                                 _%phi115727%_
                                 _%ctx115728%_)
                          (gx#core-bind!__%
                           _%key115724%_
                           _%val115725%_
                           _%rebind?115726%_
                           _%phi115727%_
                           _%ctx115728%_))
                        _g118255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g118255_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115531%_)
        (if (symbol? _%stx115531%_)
            (let ()
              (let* ((_%g115533115541%_ (gx#current-expander-marks))
                     (_%else115535115549%_ (lambda () _%stx115531%_))
                     (_%K115537115554%_
                      (lambda (_%hd115552%_)
                        (cons _%stx115531%_ _%hd115552%_))))
                (if (##pair? _%g115533115541%_)
                    (let* ((_%hd115538115557%_ (##car _%g115533115541%_))
                           (_%hd115560%_ _%hd115538115557%_))
                      (_%K115537115554%_ _%hd115560%_))
                    (_%else115535115549%_))))
            (if (gx#identifier? _%stx115531%_)
                (let ()
                  (let* ((_%id115563%_ (gx#syntax-local-unwrap _%stx115531%_))
                         (_%eid115565%_ (gx#stx-e _%id115563%_))
                         (_%marks115567%_
                          (gx#stx-identifier-marks* _%id115563%_)))
                    (let* ((_%marks115569115577%_ _%marks115567%_)
                           (_%else115571115585%_ (lambda () _%eid115565%_))
                           (_%K115573115590%_
                            (lambda (_%hd115588%_)
                              (cons _%eid115565%_ _%hd115588%_))))
                      (if (##pair? _%marks115569115577%_)
                          (let* ((_%hd115574115593%_
                                  (##car _%marks115569115577%_))
                                 (_%hd115596%_ _%hd115574115593%_))
                            (_%K115573115590%_ _%hd115596%_))
                          (_%else115571115585%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx115531%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx115470%_ _%phi115471%_)
        (letrec ((_%make-phi115473%_
                  (lambda (_%super115529%_)
                    (let ((__obj118227
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj118227
                       (##gensym 'phi)
                       _%super115529%_)
                      __obj118227)))
                 (_%make-phi/up115474%_
                  (lambda (_%ctx115524%_ _%super115525%_)
                    (let ((_%ctx+1115527%_
                           (_%make-phi115473%_ _%super115525%_)))
                      (##unchecked-structure-set!
                       _%ctx115524%_
                       _%ctx+1115527%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115527%_
                       _%ctx115524%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115527%_)))
                 (_%make-phi/down115475%_
                  (lambda (_%ctx115519%_ _%super115520%_)
                    (let ((_%ctx-1115522%_
                           (_%make-phi115473%_ _%super115520%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115522%_
                       _%ctx115519%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115519%_
                       _%ctx-1115522%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115522%_)))
                 (_%shift115476%_
                  (lambda (_%ctx115502%_
                           _%delta115503%_
                           _%make-delta-context115504%_
                           _%phi115505%_
                           _%K115506%_)
                    (let ((_%$e115508%_
                           (##unchecked-structure-ref
                            _%ctx115502%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e115508%_
                          ((lambda (_%super115511%_)
                             (let* ((_%super115513%_
                                     (_%K115506%_
                                      _%super115511%_
                                      _%delta115503%_))
                                    (_%ctx+d115515%_
                                     (_%make-delta-context115504%_
                                      _%ctx115502%_
                                      _%super115513%_)))
                               (_%K115506%_
                                _%ctx+d115515%_
                                (fx- _%phi115505%_ _%delta115503%_))))
                           _%$e115508%_)
                          (let () (error '"Bad context" _%ctx115502%_)))))))
          (let _%K115478%_ ((_%ctx115480%_ _%ctx115470%_)
                            (_%phi115481%_ _%phi115471%_))
            (if (fxzero? _%phi115481%_)
                (let () _%ctx115480%_)
                (if (##structure-instance-of? _%ctx115480%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi115481%_)
                          (let ((_%$e115485%_
                                 (##unchecked-structure-ref
                                  _%ctx115480%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e115485%_
                                ((lambda (_%g115487115489%_)
                                   (_%K115478%_
                                    _%g115487115489%_
                                    (##fx- _%phi115481%_ '1)))
                                 _%$e115485%_)
                                (let ()
                                  (_%shift115476%_
                                   _%ctx115480%_
                                   '1
                                   _%make-phi/up115474%_
                                   _%phi115481%_
                                   _%K115478%_))))
                          (let ((_%$e115493%_
                                 (##unchecked-structure-ref
                                  _%ctx115480%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e115493%_
                                ((lambda (_%g115495115497%_)
                                   (_%K115478%_
                                    _%g115495115497%_
                                    (##fx+ _%phi115481%_ '1)))
                                 _%$e115493%_)
                                (let ()
                                  (_%shift115476%_
                                   _%ctx115480%_
                                   '-1
                                   _%make-phi/down115475%_
                                   _%phi115481%_
                                   _%K115478%_))))))
                    (let () _%ctx115480%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx115467%_ _%key115468%_)
        (hash-get
         (##unchecked-structure-ref _%ctx115467%_ '2 '#f '#f)
         _%key115468%_)))
    (define gx#core-context-put!
      (lambda (_%ctx115463%_ _%key115464%_ _%val115465%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx115463%_ '2 '#f '#f)
         _%key115464%_
         _%val115465%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx115449%_ _%key115450%_)
        (let _%lp115452%_ ((_%ctx115454%_ _%ctx115449%_))
          (let ((_%$e115456%_
                 (gx#core-context-get _%ctx115454%_ _%key115450%_)))
            (if _%$e115456%_
                (values _%$e115456%_)
                (let ((_%$e115459%_
                       (if (##structure-instance-of?
                            _%ctx115454%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx115454%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e115459%_
                      (_%lp115452%_ _%$e115459%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx115438%_ _%key115439%_ _%val115440%_ _%rebind115441%_)
        (let ((_%$e115443%_ (gx#core-context-get _%ctx115438%_ _%key115439%_)))
          (if _%$e115443%_
              ((lambda (_%xval115446%_)
                 (gx#core-context-put!
                  _%ctx115438%_
                  _%key115439%_
                  (_%rebind115441%_ _%xval115446%_)))
               _%$e115443%_)
              (let ()
                (gx#core-context-put!
                 _%ctx115438%_
                 _%key115439%_
                 _%val115440%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx115413%_ _%stop?115414%_)
        (let _%lp115416%_ ((_%ctx115418%_ _%ctx115413%_))
          (if (_%stop?115414%_ _%ctx115418%_)
              (let () _%ctx115418%_)
              (if (##structure-instance-of? _%ctx115418%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp115416%_
                     (##unchecked-structure-ref _%ctx115418%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx115427%_ (gx#current-expander-context))
               (_%stop?115429%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115427%_ _%stop?115429%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx115431%_)
        (let ((_%stop?115433%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115431%_ _%stop?115433%_))))
    (define gx#core-context-top
      (lambda _g118257_
        (let ((_g118256_ (##length _g118257_)))
          (cond ((##fx= _g118256_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g118257_))
                ((##fx= _g118256_ 1)
                 (apply (lambda (_%ctx115431%_)
                          (gx#core-context-top__1 _%ctx115431%_))
                        _g118257_))
                ((##fx= _g118256_ 2)
                 (apply (lambda (_%ctx115435%_ _%stop?115436%_)
                          (gx#core-context-top__%
                           _%ctx115435%_
                           _%stop?115436%_))
                        _g118257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g118257_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx115398%_)
        (let _%lp115400%_ ((_%ctx115402%_ _%ctx115398%_))
          (if (##structure-instance-of? _%ctx115402%_ 'gx#phi-context::t)
              (_%lp115400%_
               (##unchecked-structure-ref _%ctx115402%_ '3 '#f '#f))
              _%ctx115402%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx115408%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx115408%_))))
    (define gx#core-context-root
      (lambda _g118259_
        (let ((_g118258_ (##length _g118259_)))
          (cond ((##fx= _g118258_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g118259_))
                ((##fx= _g118258_ 1)
                 (apply (lambda (_%ctx115410%_)
                          (gx#core-context-root__% _%ctx115410%_))
                        _g118259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g118259_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx115380%_ . _%ignore115381%_)
        (let ((_%$e115383%_ (gx#current-expander-allow-rebind?)))
          (if _%$e115383%_
              _%$e115383%_
              (if (##structure-instance-of? _%ctx115380%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx115380%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx115380%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx115390%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx115390%_))))
    (define gx#core-context-rebind?
      (lambda _g118261_
        (let ((_g118260_ (##length _g118261_)))
          (cond ((##fx= _g118260_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g118261_))
                ((##fx= _g118260_ 1)
                 (apply (lambda (_%ctx115392%_)
                          (gx#core-context-rebind?__% _%ctx115392%_))
                        _g118261_))
                ((##fx>= _g118260_ 1)
                 (apply gx#core-context-rebind?__% _g118261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g118261_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx115363%_)
        (let ((_%$e115365%_ (gx#core-context-top__1 _%ctx115363%_)))
          (if _%$e115365%_
              ((lambda (_%ctx115368%_)
                 (if (##structure-instance-of?
                      _%ctx115368%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx115368%_ '6 '#f '#f)
                     '#f))
               _%$e115365%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx115375%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx115375%_))))
    (define gx#core-context-namespace
      (lambda _g118263_
        (let ((_g118262_ (##length _g118263_)))
          (cond ((##fx= _g118262_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g118263_))
                ((##fx= _g118262_ 1)
                 (apply (lambda (_%ctx115377%_)
                          (gx#core-context-namespace__% _%ctx115377%_))
                        _g118263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g118263_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind115349%_ _%is?115350%_)
        (if (##structure-direct-instance-of?
             _%bind115349%_
             'gx#syntax-binding::t)
            (_%is?115350%_
             (##unchecked-structure-ref _%bind115349%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind115355%_)
        (let ((_%is?115357%_ gx#expander?))
          (gx#expander-binding?__% _%bind115355%_ _%is?115357%_))))
    (define gx#expander-binding?
      (lambda _g118265_
        (let ((_g118264_ (##length _g118265_)))
          (cond ((##fx= _g118264_ 1)
                 (apply (lambda (_%bind115355%_)
                          (gx#expander-binding?__0 _%bind115355%_))
                        _g118265_))
                ((##fx= _g118264_ 2)
                 (apply (lambda (_%bind115359%_ _%is?115360%_)
                          (gx#expander-binding?__%
                           _%bind115359%_
                           _%is?115360%_))
                        _g118265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g118265_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind115346%_)
        (gx#expander-binding?__% _%bind115346%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind115344%_)
        (gx#expander-binding?__% _%bind115344%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind115338%_)
        (letrec ((_%direct-special-form?115340%_
                  (lambda (_%obj115342%_)
                    (##structure-direct-instance-of?
                     _%obj115342%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind115338%_
           _%direct-special-form?115340%_))))
    (define gx#special-form-binding?
      (lambda (_%bind115336%_)
        (gx#expander-binding?__% _%bind115336%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind115327%_)
        (letrec ((_%feature?115329%_
                  (lambda (_%e115331%_)
                    (let ((_%$e115333%_
                           (##structure-instance-of?
                            _%e115331%_
                            'gx#feature-expander::t)))
                      (if _%$e115333%_
                          _%$e115333%_
                          (##structure-instance-of?
                           _%e115331%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind115327%_ _%feature?115329%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind115325%_)
        (gx#expander-binding?__% _%bind115325%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id115312%_ _%bound?115313%_)
        (if (gx#identifier? _%id115312%_)
            (_%bound?115313%_ (gx#resolve-identifier__0 _%id115312%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id115318%_)
        (let ((_%bound?115320%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id115318%_ _%bound?115320%_))))
    (define gx#core-bound-identifier?
      (lambda _g118267_
        (let ((_g118266_ (##length _g118267_)))
          (cond ((##fx= _g118266_ 1)
                 (apply (lambda (_%id115318%_)
                          (gx#core-bound-identifier?__0 _%id115318%_))
                        _g118267_))
                ((##fx= _g118266_ 2)
                 (apply (lambda (_%id115322%_ _%bound?115323%_)
                          (gx#core-bound-identifier?__%
                           _%id115322%_
                           _%bound?115323%_))
                        _g118267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g118267_))))))
    (define gx#core-identifier=?
      (lambda (_%x115302%_ _%y115303%_)
        (letrec ((_%y=?115305%_
                  (lambda (_%xid115309%_)
                    ((if (list? _%y115303%_) memq eq?)
                     _%xid115309%_
                     _%y115303%_))))
          (let ((_%bind115307%_ (gx#resolve-identifier__0 _%x115302%_)))
            (if (##structure-instance-of? _%bind115307%_ 'gx#binding::t)
                (_%y=?115305%_
                 (##unchecked-structure-ref _%bind115307%_ '1 '#f '#f))
                (_%y=?115305%_ (gx#stx-e _%x115302%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e115300%_)
        (if (interned-symbol? _%e115300%_)
            (string-index__0 (symbol->string _%e115300%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx115253%_ _%src115254%_ _%ctx115255%_ _%marks115256%_)
        (if (##structure? _%stx115253%_)
            (let ((_%$e115258%_ (gx#sealed-syntax-unwrap _%stx115253%_)))
              (if _%$e115258%_
                  (values _%$e115258%_)
                  (if (gx#identifier? _%stx115253%_)
                      (let ((_%id115262%_
                             (gx#stx-unwrap__% _%stx115253%_ _%marks115256%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id115262%_ '1 '#f '#f)
                         (let ((_%$e115264%_
                                (##unchecked-structure-ref
                                 _%id115262%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e115264%_ _%$e115264%_ _%src115254%_))
                         _%ctx115255%_
                         (##unchecked-structure-ref _%id115262%_ '3 '#f '#f)))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx115253%_)
                         (let ((_%$e115268%_ (gx#stx-source _%stx115253%_)))
                           (if _%$e115268%_ _%$e115268%_ _%src115254%_))
                         _%ctx115255%_
                         (reverse _%marks115256%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx115253%_
             _%src115254%_
             _%ctx115255%_
             (reverse _%marks115256%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx115274%_)
        (let* ((_%src115276%_ '#f)
               (_%ctx115278%_ (gx#current-expander-context))
               (_%marks115280%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115274%_
           _%src115276%_
           _%ctx115278%_
           _%marks115280%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx115282%_ _%src115283%_)
        (let* ((_%ctx115285%_ (gx#current-expander-context))
               (_%marks115287%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115282%_
           _%src115283%_
           _%ctx115285%_
           _%marks115287%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx115289%_ _%src115290%_ _%ctx115291%_)
        (let ((_%marks115293%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115289%_
           _%src115290%_
           _%ctx115291%_
           _%marks115293%_))))
    (define gx#core-quote-syntax
      (lambda _g118269_
        (let ((_g118268_ (##length _g118269_)))
          (cond ((##fx= _g118268_ 1)
                 (apply (lambda (_%stx115274%_)
                          (gx#core-quote-syntax__0 _%stx115274%_))
                        _g118269_))
                ((##fx= _g118268_ 2)
                 (apply (lambda (_%stx115282%_ _%src115283%_)
                          (gx#core-quote-syntax__1
                           _%stx115282%_
                           _%src115283%_))
                        _g118269_))
                ((##fx= _g118268_ 3)
                 (apply (lambda (_%stx115289%_ _%src115290%_ _%ctx115291%_)
                          (gx#core-quote-syntax__2
                           _%stx115289%_
                           _%src115290%_
                           _%ctx115291%_))
                        _g118269_))
                ((##fx= _g118268_ 4)
                 (apply (lambda (_%stx115295%_
                                 _%src115296%_
                                 _%ctx115297%_
                                 _%marks115298%_)
                          (gx#core-quote-syntax__%
                           _%stx115295%_
                           _%src115296%_
                           _%ctx115297%_
                           _%marks115298%_))
                        _g118269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g118269_))))))
    (define gx#core-cons
      (lambda (_%hd115249%_ _%tl115250%_)
        (cons (gx#core-quote-syntax__0 _%hd115249%_) _%tl115250%_)))
    (define gx#core-list
      (lambda (_%hd115246%_ . _%rest115247%_)
        (cons (gx#core-quote-syntax__0 _%hd115246%_) _%rest115247%_)))
    (define gx#core-cons*
      (lambda (_%hd115243%_ . _%rest115244%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd115243%_) _%rest115244%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path115212%_ _%rel115213%_)
        (let ((_%path115230%_ (gx#stx-e _%stx-path115212%_))
              (_%reldir115231%_
               (let _%lp115215%_ ((_%relsrc115217%_
                                   (let ((_%$e115227%_
                                          (gx#stx-source _%stx-path115212%_)))
                                     (if _%$e115227%_
                                         _%$e115227%_
                                         _%rel115213%_))))
                 (if (##structure-instance-of? _%relsrc115217%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp115215%_
                        (let ((_%$e115220%_ (gx#stx-source _%relsrc115217%_)))
                          (if _%$e115220%_
                              _%$e115220%_
                              (gx#stx-e _%relsrc115217%_)))))
                     (if (source-location-path? _%relsrc115217%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc115217%_)))
                         (if (string? _%relsrc115217%_)
                             (let () (path-directory _%relsrc115217%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path115230%_ (path-normalize _%reldir115231%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path115236%_)
        (let ((_%rel115238%_ '#f))
          (gx#core-resolve-path__% _%stx-path115236%_ _%rel115238%_))))
    (define gx#core-resolve-path
      (lambda _g118271_
        (let ((_g118270_ (##length _g118271_)))
          (cond ((##fx= _g118270_ 1)
                 (apply (lambda (_%stx-path115236%_)
                          (gx#core-resolve-path__0 _%stx-path115236%_))
                        _g118271_))
                ((##fx= _g118270_ 2)
                 (apply (lambda (_%stx-path115240%_ _%rel115241%_)
                          (gx#core-resolve-path__%
                           _%stx-path115240%_
                           _%rel115241%_))
                        _g118271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g118271_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr115168%_ _%ctx115169%_)
        (let* ((_%repr115170115177%_ _%repr115168%_)
               (_%E115172115181%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr115170115177%_
                         '([phi . subs]))
                  '#!void))
               (_%K115173115189%_
                (lambda (_%subs115184%_ _%phi115185%_)
                  (let ((_%subst115187%_
                         (if (not (null? _%subs115184%_))
                             (list->hash-table-eq _%subs115184%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst115187%_
                     _%ctx115169%_
                     _%phi115185%_
                     '#f)))))
          (if (##pair? _%repr115170115177%_)
              (let ((_%hd115174115192%_ (##car _%repr115170115177%_))
                    (_%tl115175115194%_ (##cdr _%repr115170115177%_)))
                (let* ((_%phi115197%_ _%hd115174115192%_)
                       (_%subs115199%_ _%tl115175115194%_))
                  (_%K115173115189%_ _%subs115199%_ _%phi115197%_)))
              (_%E115172115181%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr115204%_)
        (let ((_%ctx115206%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr115204%_ _%ctx115206%_))))
    (define gx#core-deserialize-mark
      (lambda _g118273_
        (let ((_g118272_ (##length _g118273_)))
          (cond ((##fx= _g118272_ 1)
                 (apply (lambda (_%repr115204%_)
                          (gx#core-deserialize-mark__0 _%repr115204%_))
                        _g118273_))
                ((##fx= _g118272_ 2)
                 (apply (lambda (_%repr115208%_ _%ctx115209%_)
                          (gx#core-deserialize-mark__%
                           _%repr115208%_
                           _%ctx115209%_))
                        _g118273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g118273_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx115165%_)
        (gx#stx-rewrap _%stx115165%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx115163%_)
        (gx#stx-unwrap__% _%stx115163%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx115133%_)
        (let* ((_%g115134115142%_ (gx#current-expander-marks))
               (_%else115136115150%_ (lambda () _%stx115133%_))
               (_%K115138115155%_
                (lambda (_%hd115153%_)
                  (gx#stx-apply-mark _%stx115133%_ _%hd115153%_))))
          (if (##pair? _%g115134115142%_)
              (let* ((_%hd115139115158%_ (##car _%g115134115142%_))
                     (_%hd115161%_ _%hd115139115158%_))
                (_%K115138115155%_ _%hd115161%_))
              (_%else115136115150%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx115118%_ _%E115119%_)
        (let ((_%bind115121%_ (gx#resolve-identifier__0 _%stx115118%_)))
          (if (##structure-direct-instance-of?
               _%bind115121%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind115121%_ '4 '#f '#f)
              (_%E115119%_ _%stx115118%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx115126%_)
        (let ((_%E115128%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx115126%_ _%E115128%_))))
    (define gx#syntax-local-e
      (lambda _g118275_
        (let ((_g118274_ (##length _g118275_)))
          (cond ((##fx= _g118274_ 1)
                 (apply (lambda (_%stx115126%_)
                          (gx#syntax-local-e__0 _%stx115126%_))
                        _g118275_))
                ((##fx= _g118274_ 2)
                 (apply (lambda (_%stx115130%_ _%E115131%_)
                          (gx#syntax-local-e__% _%stx115130%_ _%E115131%_))
                        _g118275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g118275_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx115102%_ _%E115103%_)
        (let ((_%e115105%_ (gx#syntax-local-e__% _%stx115102%_ _%E115103%_)))
          (if (##structure-instance-of? _%e115105%_ 'gx#expander::t)
              (##structure-ref _%e115105%_ '1 gx#expander::t '#f)
              _%e115105%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx115110%_)
        (let ((_%E115112%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx115110%_ _%E115112%_))))
    (define gx#syntax-local-value
      (lambda _g118277_
        (let ((_g118276_ (##length _g118277_)))
          (cond ((##fx= _g118276_ 1)
                 (apply (lambda (_%stx115110%_)
                          (gx#syntax-local-value__0 _%stx115110%_))
                        _g118277_))
                ((##fx= _g118276_ 2)
                 (apply (lambda (_%stx115114%_ _%E115115%_)
                          (gx#syntax-local-value__% _%stx115114%_ _%E115115%_))
                        _g118277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g118277_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx115099%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx115099%_)))))
