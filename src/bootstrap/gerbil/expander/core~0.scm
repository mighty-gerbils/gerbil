(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1713454410)
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
      (lambda _%$args120158%_
        (apply make-instance gx#expander-context::t _%$args120158%_)))
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
      (lambda _%$args120155%_
        (apply make-instance gx#root-context::t _%$args120155%_)))
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
      (lambda _%$args120152%_
        (apply make-instance gx#phi-context::t _%$args120152%_)))
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
      (lambda _%$args120149%_
        (apply make-instance gx#top-context::t _%$args120149%_)))
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
      (lambda _%$args120146%_
        (apply make-instance gx#module-context::t _%$args120146%_)))
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
      (lambda _%$args120143%_
        (apply make-instance gx#prelude-context::t _%$args120143%_)))
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
      (lambda _%$args120140%_
        (apply make-instance gx#local-context::t _%$args120140%_)))
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
      (lambda (_%self117046120111%_ _%id120113%_ _%super120114%_)
        (let* ((_%self120116%_ _%self117046120111%_)
               (_%self120118%_ _%self120116%_))
          (if (##fx< '3 (##structure-length _%self120118%_))
              (begin
                (##unchecked-structure-set!
                 _%self120118%_
                 _%id120113%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self120118%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self120118%_
                 _%super120114%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self120118%_
                     '3
                     (##vector-length _%self120118%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117046120131%_ _%id120132%_)
        (let ((_%super120134%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117046120131%_
           _%id120132%_
           _%super120134%_))))
    (define gx#phi-context:::init!
      (lambda _g120201_
        (let ((_g120200_ (##length _g120201_)))
          (cond ((##fx= _g120200_ 2)
                 (apply gx#phi-context:::init!__0 _g120201_))
                ((##fx= _g120200_ 3)
                 (apply gx#phi-context:::init!__% _g120201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g120201_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117047119962%_ _%super119964%_)
        (let* ((_%self119966%_ _%self117047119962%_)
               (_%self119968%_ _%self119966%_))
          (if (##fx< '3 (##structure-length _%self119968%_))
              (begin
                (##unchecked-structure-set!
                 _%self119968%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119968%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119968%_
                 _%super119964%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119968%_
                     '3
                     (##vector-length _%self119968%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117047119981%_)
        (let ((_%super119983%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117047119981%_ _%super119983%_))))
    (define gx#local-context:::init!
      (lambda _g120203_
        (let ((_g120202_ (##length _g120203_)))
          (cond ((##fx= _g120202_ 1)
                 (apply gx#local-context:::init!__0 _g120203_))
                ((##fx= _g120202_ 2)
                 (apply gx#local-context:::init!__% _g120203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g120203_))))))
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
      (lambda _%$args119836%_
        (apply make-instance gx#binding::t _%$args119836%_)))
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
      (lambda _%$args119833%_
        (apply make-instance gx#runtime-binding::t _%$args119833%_)))
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
      (lambda _%$args119830%_
        (apply make-instance gx#local-binding::t _%$args119830%_)))
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
      (lambda _%$args119827%_
        (apply make-instance gx#top-binding::t _%$args119827%_)))
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
      (lambda _%$args119824%_
        (apply make-instance gx#module-binding::t _%$args119824%_)))
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
      (lambda _%$args119821%_
        (apply make-instance gx#extern-binding::t _%$args119821%_)))
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
      (lambda _%$args119818%_
        (apply make-instance gx#syntax-binding::t _%$args119818%_)))
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
      (lambda _%$args119815%_
        (apply make-instance gx#import-binding::t _%$args119815%_)))
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
      (lambda _%$args119812%_
        (apply make-instance gx#alias-binding::t _%$args119812%_)))
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
      (lambda _%$args119809%_
        (apply make-instance gx#expander::t _%$args119809%_)))
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
      (lambda _%$args119806%_
        (apply make-instance gx#core-expander::t _%$args119806%_)))
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
      (lambda _%$args119803%_
        (apply make-instance gx#expression-form::t _%$args119803%_)))
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
      (lambda _%$args119800%_
        (apply make-instance gx#special-form::t _%$args119800%_)))
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
      (lambda _%$args119797%_
        (apply make-instance gx#definition-form::t _%$args119797%_)))
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
      (lambda _%$args119794%_
        (apply make-instance gx#top-special-form::t _%$args119794%_)))
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
      (lambda _%$args119791%_
        (apply make-instance gx#module-special-form::t _%$args119791%_)))
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
      (lambda _%$args119788%_
        (apply make-instance gx#feature-expander::t _%$args119788%_)))
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
      (lambda _%$args119785%_
        (apply make-instance gx#private-feature-expander::t _%$args119785%_)))
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
      (lambda _%$args119782%_
        (apply make-instance gx#reserved-expander::t _%$args119782%_)))
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
      (lambda _%$args119779%_
        (apply make-instance gx#macro-expander::t _%$args119779%_)))
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
      (lambda _%$args119776%_
        (apply make-instance gx#rename-macro-expander::t _%$args119776%_)))
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
      (lambda _%$args119773%_
        (apply make-instance gx#user-expander::t _%$args119773%_)))
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
      (lambda _%$args119770%_
        (apply make-instance gx#expander-mark::t _%$args119770%_)))
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
      (lambda (_%ctx119754%_
               _%message119755%_
               _%stx119756%_
               .
               _%details119757%_)
        (let ((_%ctx119768%_
               (let ((_%$e119759%_ _%ctx119754%_))
                 (if _%$e119759%_
                     _%$e119759%_
                     (let ((_%$e119762%_ (gx#core-context-top__0)))
                       (if _%$e119762%_
                           ((lambda (_%ctx119765%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx119765%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e119762%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message119755%_
                  (cons _%stx119756%_ _%details119757%_)
                  _%ctx119768%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx119741%_ _%expression?119742%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx119741%_ _%expression?119742%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx119747%_)
        (let ((_%expression?119749%_ '#f))
          (gx#eval-syntax__% _%stx119747%_ _%expression?119749%_))))
    (define gx#eval-syntax
      (lambda _g120205_
        (let ((_g120204_ (##length _g120205_)))
          (cond ((##fx= _g120204_ 1) (apply gx#eval-syntax__0 _g120205_))
                ((##fx= _g120204_ 2) (apply gx#eval-syntax__% _g120205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g120205_))))))
    (define gx#eval-syntax*
      (lambda (_%stx119738%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx119738%_))))
    (define gx#core-expand__%
      (lambda (_%stx119725%_ _%expression?119726%_)
        (if _%expression?119726%_
            (gx#core-expand-expression _%stx119725%_)
            (gx#core-expand-top _%stx119725%_))))
    (define gx#core-expand__0
      (lambda (_%stx119731%_)
        (let ((_%expression?119733%_ '#f))
          (gx#core-expand__% _%stx119731%_ _%expression?119733%_))))
    (define gx#core-expand
      (lambda _g120207_
        (let ((_g120206_ (##length _g120207_)))
          (cond ((##fx= _g120206_ 1) (apply gx#core-expand__0 _g120207_))
                ((##fx= _g120206_ 2) (apply gx#core-expand__% _g120207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g120207_))))))
    (define gx#core-expand-top
      (lambda (_%stx119692%_)
        (let* ((_%stx119694%_ (gx#core-expand*__0 _%stx119692%_))
               (_%e119695119702%_ _%stx119694%_)
               (_%E119697119706%_
                (lambda () (gx#core-expand-expression _%stx119694%_)))
               (_%E119696119720%_
                (lambda ()
                  (if (gx#stx-pair? _%e119695119702%_)
                      (let ((_%e119698119710%_
                             (gx#syntax-e _%e119695119702%_)))
                        (let ((_%hd119699119713%_ (##car _%e119698119710%_))
                              (_%tl119700119715%_ (##cdr _%e119698119710%_)))
                          (let ((_%form119718%_ _%hd119699119713%_))
                            (if (gx#core-bound-identifier?__0 _%form119718%_)
                                _%stx119694%_
                                (_%E119697119706%_)))))
                      (_%E119697119706%_)))))
          (_%E119696119720%_))))
    (define gx#core-expand-expression
      (lambda (_%stx119624%_)
        (letrec ((_%sealed-expression?119626%_
                  (lambda (_%hd119662%_)
                    (if (gx#sealed-syntax? _%hd119662%_)
                        (let* ((_%e119663119670%_ _%hd119662%_)
                               (_%E119665119674%_ (lambda () '#f))
                               (_%E119664119688%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e119663119670%_)
                                      (let ((_%e119666119678%_
                                             (gx#syntax-e _%e119663119670%_)))
                                        (let ((_%hd119667119681%_
                                               (##car _%e119666119678%_))
                                              (_%tl119668119683%_
                                               (##cdr _%e119666119678%_)))
                                          (let ((_%form119686%_
                                                 _%hd119667119681%_))
                                            (gx#core-bound-identifier?__%
                                             _%form119686%_
                                             gx#expression-form-binding?))))
                                      (_%E119665119674%_)))))
                          (_%E119664119688%_))
                        '#f)))
                 (_%illegal-expression119627%_
                  (lambda (_%hd119659%_ . _%_119660%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx119624%_
                     _%hd119659%_)))
                 (_%expand-e119628%_
                  (lambda (_%form119651%_ _%hd119652%_)
                    (let ((_%bind119654%_
                           (if (##structure-instance-of?
                                _%form119651%_
                                'gx#binding::t)
                               _%form119651%_
                               (gx#resolve-identifier__0 _%form119651%_))))
                      (if (gx#core-expander-binding? _%bind119654%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind119654%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd119652%_
                            (gx#stx-source _%stx119624%_)))
                          (if (##structure-direct-instance-of?
                               _%bind119654%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind119654%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd119652%_
                                 (gx#stx-source _%stx119624%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx119624%_
                               _%form119651%_)))))))
          (let ((_%hd119630%_ (gx#core-expand-head _%stx119624%_)))
            (if (_%sealed-expression?119626%_ _%hd119630%_)
                _%hd119630%_
                (if (gx#stx-pair? _%hd119630%_)
                    (let* ((_%form119634%_ (gx#stx-car _%hd119630%_))
                           (_%bind119636%_
                            (if (gx#identifier? _%form119634%_)
                                (gx#resolve-identifier__0 _%form119634%_)
                                '#f)))
                      (if (or (not _%bind119636%_)
                              (not (gx#core-expander-binding? _%bind119636%_)))
                          (_%expand-e119628%_
                           '%%app
                           (cons '%%app _%hd119630%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind119636%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd119630%_
                               _%illegal-expression119627%_)
                              (if (gx#expression-form-binding? _%bind119636%_)
                                  (_%expand-e119628%_
                                   _%bind119636%_
                                   _%hd119630%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind119636%_)
                                      (gx#core-expand-expression
                                       (_%expand-e119628%_
                                        _%bind119636%_
                                        _%hd119630%_))
                                      (_%illegal-expression119627%_
                                       _%hd119630%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd119630%_)
                        (_%illegal-expression119627%_ _%hd119630%_)
                        (if (gx#identifier? _%hd119630%_)
                            (_%expand-e119628%_
                             '%%ref
                             (cons '%%ref (cons _%hd119630%_ '())))
                            (if (gx#stx-datum? _%hd119630%_)
                                (_%expand-e119628%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd119630%_ '())))
                                (_%illegal-expression119627%_
                                 _%hd119630%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx119619%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx119622%_ (gx#core-expand-expression _%stx119619%_)))
             (values _%stx119622%_ (gx#eval-syntax* _%stx119622%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx119600%_ _%stop?119601%_)
        (let _%lp119603%_ ((_%stx119605%_ _%stx119600%_))
          (if (_%stop?119601%_ _%stx119605%_)
              _%stx119605%_
              (let ((_%rstx119607%_ (gx#core-expand1 _%stx119605%_)))
                (if (eq? _%stx119605%_ _%rstx119607%_)
                    _%stx119605%_
                    (_%lp119603%_ _%rstx119607%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx119612%_)
        (let ((_%stop?119614%_ false))
          (gx#core-expand*__% _%stx119612%_ _%stop?119614%_))))
    (define gx#core-expand*
      (lambda _g120209_
        (let ((_g120208_ (##length _g120209_)))
          (cond ((##fx= _g120208_ 1) (apply gx#core-expand*__0 _g120209_))
                ((##fx= _g120208_ 2) (apply gx#core-expand*__% _g120209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g120209_))))))
    (define gx#core-expand1
      (lambda (_%stx119552%_)
        (letrec ((_%step119554%_
                  (lambda (_%hd119591%_)
                    (let ((_%bind119593%_
                           (gx#resolve-identifier__0 _%hd119591%_)))
                      (if (##structure-instance-of?
                           _%bind119593%_
                           'gx#runtime-binding::t)
                          _%stx119552%_
                          (if (##structure-direct-instance-of?
                               _%bind119593%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind119593%_
                                '4
                                '#f
                                '#f)
                               _%stx119552%_)
                              (if (not _%bind119593%_)
                                  _%stx119552%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx119552%_))))))))
          (let* ((_%e119555119563%_ _%stx119552%_)
                 (_%E119561119567%_ (lambda () _%stx119552%_))
                 (_%E119557119573%_
                  (lambda ()
                    (let ((_%hd119571%_ _%e119555119563%_))
                      (if (gx#identifier? _%hd119571%_)
                          (_%step119554%_ _%hd119571%_)
                          (_%E119561119567%_)))))
                 (_%E119556119587%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119555119563%_)
                        (let ((_%e119558119577%_
                               (gx#syntax-e _%e119555119563%_)))
                          (let ((_%hd119559119580%_ (##car _%e119558119577%_))
                                (_%tl119560119582%_ (##cdr _%e119558119577%_)))
                            (let ((_%hd119585%_ _%hd119559119580%_))
                              (if (gx#identifier? _%hd119585%_)
                                  (_%step119554%_ _%hd119585%_)
                                  (_%E119557119573%_)))))
                        (_%E119557119573%_)))))
            (_%E119556119587%_)))))
    (define gx#core-expand-head
      (lambda (_%stx119518%_)
        (letrec ((_%stop?119520%_
                  (lambda (_%stx119522%_)
                    (let* ((_%e119523119530%_ _%stx119522%_)
                           (_%E119525119534%_ (lambda () '#f))
                           (_%E119524119548%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119523119530%_)
                                  (let ((_%e119526119538%_
                                         (gx#syntax-e _%e119523119530%_)))
                                    (let ((_%hd119527119541%_
                                           (##car _%e119526119538%_))
                                          (_%tl119528119543%_
                                           (##cdr _%e119526119538%_)))
                                      (let ((_%hd119546%_ _%hd119527119541%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd119546%_))))
                                  (_%E119525119534%_)))))
                      (_%E119524119548%_)))))
          (gx#core-expand*__% _%stx119518%_ _%stop?119520%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx119324%_
               _%expand-special119325%_
               _%begin-form119326%_
               _%expand-e119327%_)
        (letrec ((_%expand-splice119329%_
                  (lambda (_%hd119492%_
                           _%body119493%_
                           _%rest119494%_
                           _%r119495%_)
                    (if (gx#stx-list? _%body119493%_)
                        (_%K119333%_
                         (gx#stx-foldr cons _%rest119494%_ _%body119493%_)
                         _%r119495%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx119324%_
                         _%hd119492%_))))
                 (_%expand-cond-expand119330%_
                  (lambda (_%hd119488%_ _%rest119489%_ _%r119490%_)
                    (_%K119333%_
                     (cons (gx#core-expand-cond-expand% _%hd119488%_)
                           _%rest119489%_)
                     _%r119490%_)))
                 (_%expand-include119331%_
                  (lambda (_%hd119437%_ _%rest119438%_ _%r119439%_)
                    (let* ((_%e119440119450%_ _%hd119437%_)
                           (_%E119442119454%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e119440119450%_)))
                           (_%E119441119484%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119440119450%_)
                                  (let ((_%e119443119458%_
                                         (gx#syntax-e _%e119440119450%_)))
                                    (let ((_%hd119444119461%_
                                           (##car _%e119443119458%_))
                                          (_%tl119445119463%_
                                           (##cdr _%e119443119458%_)))
                                      (if (gx#stx-pair? _%tl119445119463%_)
                                          (let ((_%e119446119466%_
                                                 (gx#syntax-e
                                                  _%tl119445119463%_)))
                                            (let ((_%hd119447119469%_
                                                   (##car _%e119446119466%_))
                                                  (_%tl119448119471%_
                                                   (##cdr _%e119446119466%_)))
                                              (let ((_%path119474%_
                                                     _%hd119447119469%_))
                                                (if (gx#stx-null?
                                                     _%tl119448119471%_)
                                                    (if (gx#stx-string?
                                                         _%path119474%_)
                                                        (let* ((_%rpath119476%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path119474%_
                         (gx#stx-source _%hd119437%_)))
                       (_%block119478%_
                        (gx#core-expand-include%__%
                         _%hd119437%_
                         _%rpath119476%_))
                       (_%rbody119481%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block119478%_
                            _%expand-special119325%_
                            '#f
                            _%expand-e119327%_))
                         gx#current-expander-path
                         (cons _%rpath119476%_ (gx#current-expander-path)))))
                  (_%K119333%_
                   _%rest119438%_
                   (__foldr1 cons _%r119439%_ _%rbody119481%_)))
                (_%E119442119454%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119442119454%_)))))
                                          (_%E119442119454%_))))
                                  (_%E119442119454%_)))))
                      (_%E119441119484%_))))
                 (_%expand-expression119332%_
                  (lambda (_%hd119433%_ _%rest119434%_ _%r119435%_)
                    (_%K119333%_
                     _%rest119434%_
                     (cons (_%expand-e119327%_ _%hd119433%_) _%r119435%_))))
                 (_%K119333%_
                  (lambda (_%rest119363%_ _%r119364%_)
                    (let* ((_%e119365119372%_ _%rest119363%_)
                           (_%E119367119376%_
                            (lambda ()
                              (if _%begin-form119326%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form119326%_
                                    (reverse _%r119364%_))
                                   (gx#stx-source _%stx119324%_))
                                  _%r119364%_)))
                           (_%E119366119429%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119365119372%_)
                                  (let ((_%e119368119380%_
                                         (gx#syntax-e _%e119365119372%_)))
                                    (let ((_%hd119369119383%_
                                           (##car _%e119368119380%_))
                                          (_%tl119370119385%_
                                           (##cdr _%e119368119380%_)))
                                      (let* ((_%hd119388%_ _%hd119369119383%_)
                                             (_%rest119390%_
                                              _%tl119370119385%_)
                                             (_%hd119392%_
                                              (gx#core-expand-head
                                               _%hd119388%_))
                                             (_%e119393119400%_ _%hd119392%_)
                                             (_%E119395119404%_
                                              (lambda ()
                                                (_%expand-expression119332%_
                                                 _%hd119392%_
                                                 _%rest119390%_
                                                 _%r119364%_)))
                                             (_%E119394119425%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e119393119400%_)
                                                    (let ((_%e119396119408%_
                                                           (gx#syntax-e
                                                            _%e119393119400%_)))
                                                      (let ((_%hd119397119411%_
                                                             (##car _%e119396119408%_))
                                                            (_%tl119398119413%_
                                                             (##cdr _%e119396119408%_)))
                                                        (let* ((_%form119416%_
                                                                _%hd119397119411%_)
                                                               (_%body119418%_
                                                                _%tl119398119413%_)
                                                               (_%bind119420%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form119416%_)
                            (gx#resolve-identifier__0 _%form119416%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind119420%_)
                      (let ((_%$e119422%_
                             (##unchecked-structure-ref
                              _%bind119420%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e119422%_)
                            (_%expand-splice119329%_
                             _%hd119392%_
                             _%body119418%_
                             _%rest119390%_
                             _%r119364%_)
                            (if (eq? '%#cond-expand _%$e119422%_)
                                (_%expand-cond-expand119330%_
                                 _%hd119392%_
                                 _%rest119390%_
                                 _%r119364%_)
                                (if (eq? '%#include _%$e119422%_)
                                    (_%expand-include119331%_
                                     _%hd119392%_
                                     _%rest119390%_
                                     _%r119364%_)
                                    (_%expand-special119325%_
                                     _%hd119392%_
                                     _%K119333%_
                                     _%rest119390%_
                                     _%r119364%_)))))
                      (_%expand-expression119332%_
                       _%hd119392%_
                       _%rest119390%_
                       _%r119364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119395119404%_)))))
                                        (_%E119394119425%_))))
                                  (_%E119367119376%_)))))
                      (_%E119366119429%_)))))
          (let* ((_%e119334119341%_ _%stx119324%_)
                 (_%E119336119345%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119334119341%_)))
                 (_%E119335119359%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119334119341%_)
                        (let ((_%e119337119349%_
                               (gx#syntax-e _%e119334119341%_)))
                          (let ((_%hd119338119352%_ (##car _%e119337119349%_))
                                (_%tl119339119354%_ (##cdr _%e119337119349%_)))
                            (let ((_%body119357%_ _%tl119339119354%_))
                              (if (gx#stx-list? _%body119357%_)
                                  (_%K119333%_ _%body119357%_ '())
                                  (_%E119336119345%_)))))
                        (_%E119336119345%_)))))
            (_%E119335119359%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx119500%_ _%expand-special119501%_)
        (let* ((_%begin-form119503%_ '%#begin)
               (_%expand-e119505%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx119500%_
           _%expand-special119501%_
           _%begin-form119503%_
           _%expand-e119505%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx119507%_ _%expand-special119508%_ _%begin-form119509%_)
        (let ((_%expand-e119511%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx119507%_
           _%expand-special119508%_
           _%begin-form119509%_
           _%expand-e119511%_))))
    (define gx#core-expand-block
      (lambda _g120211_
        (let ((_g120210_ (##length _g120211_)))
          (cond ((##fx= _g120210_ 2) (apply gx#core-expand-block__0 _g120211_))
                ((##fx= _g120210_ 3) (apply gx#core-expand-block__1 _g120211_))
                ((##fx= _g120210_ 4) (apply gx#core-expand-block__% _g120211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g120211_))))))
    (define gx#core-expand-block*
      (lambda (_%stx119272%_ _%expand-special119273%_)
        (let* ((_%g119274119285%_
                (gx#core-expand-block__1
                 _%stx119272%_
                 _%expand-special119273%_
                 '#f))
               (_%E119278119289%_
                (lambda ()
                  (error '"No clause matching"
                         _%g119274119285%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K119283119320%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx119272%_)))
                (_%K119280119306%_ (lambda (_%expr119304%_) _%expr119304%_))
                (_%K119279119295%_
                 (lambda (_%body119293%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body119293%_))
                    (gx#stx-source _%stx119272%_)))))
            (let ((_%try-match119276119316%_
                   (lambda ()
                     (if (##pair? _%g119274119285%_)
                         (let ((_%tl119282119311%_ (##cdr _%g119274119285%_))
                               (_%hd119281119309%_ (##car _%g119274119285%_)))
                           (if (##null? _%tl119282119311%_)
                               (let ((_%expr119314%_ _%hd119281119309%_))
                                 (_%K119280119306%_ _%expr119314%_))
                               (let ((_%body119298%_ _%g119274119285%_))
                                 (_%K119279119295%_ _%body119298%_))))
                         (let ((_%body119298%_ _%g119274119285%_))
                           (_%K119279119295%_ _%body119298%_))))))
              (if (##null? _%g119274119285%_)
                  (_%K119283119320%_)
                  (_%try-match119276119316%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx119097%_)
        (letrec ((_%satisfied?119099%_
                  (lambda (_%condition119200%_)
                    (let* ((_%e119201119216%_ _%condition119200%_)
                           (_%E119211119220%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e119201119216%_)))
                           (_%E119204119239%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119201119216%_)
                                  (let ((_%e119212119224%_
                                         (gx#syntax-e _%e119201119216%_)))
                                    (let ((_%hd119213119227%_
                                           (##car _%e119212119224%_))
                                          (_%tl119214119229%_
                                           (##cdr _%e119212119224%_)))
                                      (let* ((_%combinator119232%_
                                              _%hd119213119227%_)
                                             (_%body119234%_
                                              _%tl119214119229%_))
                                        (if (gx#stx-list? _%body119234%_)
                                            (let ((_%$e119236%_
                                                   (gx#stx-e
                                                    _%combinator119232%_)))
                                              (if (eq? 'not _%$e119236%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?119099%_
                                                        _%body119234%_))
                                                  (if (eq? 'and _%$e119236%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?119099%_
                                                       _%body119234%_)
                                                      (if (eq? 'or
                                                               _%$e119236%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?119099%_
                                                           _%body119234%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e119236%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body119234%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx119097%_
                       _%combinator119232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119211119220%_)))))
                                  (_%E119211119220%_))))
                           (_%E119203119262%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119201119216%_)
                                  (let ((_%e119205119243%_
                                         (gx#syntax-e _%e119201119216%_)))
                                    (let ((_%hd119206119246%_
                                           (##car _%e119205119243%_))
                                          (_%tl119207119248%_
                                           (##cdr _%e119205119243%_)))
                                      (if (and (gx#identifier?
                                                _%hd119206119246%_)
                                               (gx#core-identifier=?
                                                _%hd119206119246%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl119207119248%_)
                                              (let ((_%e119208119251%_
                                                     (gx#syntax-e
                                                      _%tl119207119248%_)))
                                                (let ((_%hd119209119254%_
                                                       (##car _%e119208119251%_))
                                                      (_%tl119210119256%_
                                                       (##cdr _%e119208119251%_)))
                                                  (let ((_%expr119259%_
                                                         _%hd119209119254%_))
                                                    (if (gx#stx-null?
                                                         _%tl119210119256%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr119259%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E119204119239%_)))))
                                              (_%E119204119239%_))
                                          (_%E119204119239%_))))
                                  (_%E119204119239%_))))
                           (_%E119202119268%_
                            (lambda ()
                              (let ((_%id119266%_ _%e119201119216%_))
                                (if (gx#identifier? _%id119266%_)
                                    (gx#core-bound-identifier?__%
                                     _%id119266%_
                                     gx#feature-binding?)
                                    (_%E119203119262%_))))))
                      (_%E119202119268%_))))
                 (_%loop119100%_
                  (lambda (_%rest119130%_)
                    (let* ((_%e119131119139%_ _%rest119130%_)
                           (_%E119137119143%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e119131119139%_)))
                           (_%E119133119147%_
                            (lambda ()
                              (if (gx#stx-null? _%e119131119139%_)
                                  '()
                                  (_%E119137119143%_))))
                           (_%E119132119196%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119131119139%_)
                                  (let ((_%e119134119151%_
                                         (gx#syntax-e _%e119131119139%_)))
                                    (let ((_%hd119135119154%_
                                           (##car _%e119134119151%_))
                                          (_%tl119136119156%_
                                           (##cdr _%e119134119151%_)))
                                      (let* ((_%hd119159%_ _%hd119135119154%_)
                                             (_%rest119161%_
                                              _%tl119136119156%_)
                                             (_%e119162119169%_ _%hd119159%_)
                                             (_%E119164119173%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e119162119169%_)))
                                             (_%E119163119192%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e119162119169%_)
                                                    (let ((_%e119165119177%_
                                                           (gx#syntax-e
                                                            _%e119162119169%_)))
                                                      (let ((_%hd119166119180%_
                                                             (##car _%e119165119177%_))
                                                            (_%tl119167119182%_
                                                             (##cdr _%e119165119177%_)))
                                                        (let* ((_%condition119185%_
                                                                _%hd119166119180%_)
                                                               (_%body119187%_
                                                                _%tl119167119182%_))
                                                          (if (gx#stx-eq?
                                                               _%condition119185%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest119161%_)
                          _%body119187%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx119097%_
                           _%hd119159%_))
                      (if (_%satisfied?119099%_ _%condition119185%_)
                          _%body119187%_
                          (_%loop119100%_ _%rest119161%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119164119173%_)))))
                                        (_%E119163119192%_))))
                                  (_%E119133119147%_)))))
                      (_%E119132119196%_)))))
          (let* ((_%e119101119108%_ _%stx119097%_)
                 (_%E119103119112%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119101119108%_)))
                 (_%E119102119126%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119101119108%_)
                        (let ((_%e119104119116%_
                               (gx#syntax-e _%e119101119108%_)))
                          (let ((_%hd119105119119%_ (##car _%e119104119116%_))
                                (_%tl119106119121%_ (##cdr _%e119104119116%_)))
                            (let ((_%clauses119124%_ _%tl119106119121%_))
                              (if (gx#stx-list? _%clauses119124%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop119100%_ _%clauses119124%_))
                                  (_%E119103119112%_)))))
                        (_%E119103119112%_)))))
            (_%E119102119126%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx119040%_ _%rpath119041%_)
        (let* ((_%e119042119052%_ _%stx119040%_)
               (_%E119044119056%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119042119052%_)))
               (_%E119043119083%_
                (lambda ()
                  (if (gx#stx-pair? _%e119042119052%_)
                      (let ((_%e119045119060%_
                             (gx#syntax-e _%e119042119052%_)))
                        (let ((_%hd119046119063%_ (##car _%e119045119060%_))
                              (_%tl119047119065%_ (##cdr _%e119045119060%_)))
                          (if (gx#stx-pair? _%tl119047119065%_)
                              (let ((_%e119048119068%_
                                     (gx#syntax-e _%tl119047119065%_)))
                                (let ((_%hd119049119071%_
                                       (##car _%e119048119068%_))
                                      (_%tl119050119073%_
                                       (##cdr _%e119048119068%_)))
                                  (let ((_%path119076%_ _%hd119049119071%_))
                                    (if (gx#stx-null? _%tl119050119073%_)
                                        (if (gx#stx-string? _%path119076%_)
                                            (let ((_%rpath119081%_
                                                   (let ((_%$e119078%_
                                                          _%rpath119041%_))
                                                     (if _%$e119078%_
                                                         _%$e119078%_
                                                         (gx#core-resolve-path__%
                                                          _%path119076%_
                                                          (gx#stx-source
                                                           _%stx119040%_))))))
                                              (if (member _%rpath119081%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx119040%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath119081%_))
                                                    (gx#stx-source
                                                     _%stx119040%_)))))
                                            (_%E119044119056%_))
                                        (_%E119044119056%_)))))
                              (_%E119044119056%_))))
                      (_%E119044119056%_)))))
          (_%E119043119083%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx119090%_)
        (let ((_%rpath119092%_ '#f))
          (gx#core-expand-include%__% _%stx119090%_ _%rpath119092%_))))
    (define gx#core-expand-include%
      (lambda _g120213_
        (let ((_g120212_ (##length _g120213_)))
          (cond ((##fx= _g120212_ 1)
                 (apply gx#core-expand-include%__0 _g120213_))
                ((##fx= _g120212_ 2)
                 (apply gx#core-expand-include%__% _g120213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g120213_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K119006%_ _%stx119007%_ _%method119008%_)
        (if (procedure? _%K119006%_)
            (let ((_%$e119011%_ (gx#stx-source _%stx119007%_)))
              (if _%$e119011%_
                  ((lambda (_%g119013119015%_)
                     (gx#stx-wrap-source
                      (_%K119006%_ _%stx119007%_)
                      _%g119013119015%_))
                   _%$e119011%_)
                  (_%K119006%_ _%stx119007%_)))
            (let ((_%$e119019%_
                   (bound-method-ref _%K119006%_ _%method119008%_)))
              (if _%$e119019%_
                  ((lambda (_%g119021119023%_)
                     (gx#core-apply-expander__%
                      _%g119021119023%_
                      _%stx119007%_
                      _%method119008%_))
                   _%$e119019%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx119007%_
                   _%method119008%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K119030%_ _%stx119031%_)
        (let ((_%method119033%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K119030%_
           _%stx119031%_
           _%method119033%_))))
    (define gx#core-apply-expander
      (lambda _g120215_
        (let ((_g120214_ (##length _g120215_)))
          (cond ((##fx= _g120214_ 2)
                 (apply gx#core-apply-expander__0 _g120215_))
                ((##fx= _g120214_ 3)
                 (apply gx#core-apply-expander__% _g120215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g120215_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self117048118989%_ _%stx118991%_)
        (let* ((_%self118993%_ _%self117048118989%_)
               (_%self118995%_ _%self118993%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx118991%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self117049118829%_ _%stx118831%_)
        (let* ((_%self118833%_ _%self117049118829%_)
               (_%self118835%_ _%self118833%_)
               (_%self118844118850%_ _%self118835%_)
               (_%E118846118854%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118844118850%_
                         '((macro-expander K)))
                  '#!void))
               (_%K118847118859%_
                (lambda (_%K118857%_)
                  (gx#core-apply-expander__0 _%K118857%_ _%stx118831%_)))
               (_%e118848118862%_
                (##unchecked-structure-ref _%self118844118850%_ '1 '#f '#f))
               (_%K118865%_ _%e118848118862%_))
          (_%K118847118859%_ _%K118865%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self117050118669%_ _%stx118671%_)
        (let* ((_%self118673%_ _%self117050118669%_)
               (_%self118675%_ _%self118673%_))
          (if (gx#sealed-syntax? _%stx118671%_)
              _%stx118671%_
              (let* ((_%self118684118690%_ _%self118675%_)
                     (_%E118686118694%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self118684118690%_
                               '((core-expander K)))
                        '#!void))
                     (_%K118687118699%_
                      (lambda (_%K118697%_)
                        (gx#core-apply-expander__0 _%K118697%_ _%stx118671%_)))
                     (_%e118688118702%_
                      (##unchecked-structure-ref
                       _%self118684118690%_
                       '1
                       '#f
                       '#f))
                     (_%K118705%_ _%e118688118702%_))
                (_%K118687118699%_ _%K118705%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self117051118518%_ _%stx118520%_ _%top?118521%_)
        (let* ((_%self118523%_ _%self117051118518%_)
               (_%self118525%_ _%self118523%_))
          (if (_%top?118521%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self118525%_
               _%stx118520%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx118520%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self117051118538%_ _%stx118539%_)
        (let ((_%top?118541%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self117051118538%_
           _%stx118539%_
           _%top?118541%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g120217_
        (let ((_g120216_ (##length _g120217_)))
          (cond ((##fx= _g120216_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g120217_))
                ((##fx= _g120216_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g120217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g120217_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self117052118379%_ _%stx118381%_)
        (let* ((_%self118383%_ _%self117052118379%_)
               (_%self118385%_ _%self118383%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self118385%_
           _%stx118381%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self117053118191%_ _%stx118193%_)
        (let* ((_%self118195%_ _%self117053118191%_)
               (_%self118197%_ _%self118195%_)
               (_%self118206118212%_ _%self118197%_)
               (_%E118208118216%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118206118212%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K118209118249%_
                (lambda (_%id118219%_)
                  (let* ((_%e118220118227%_ _%stx118193%_)
                         (_%E118222118231%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e118220118227%_)))
                         (_%E118221118245%_
                          (lambda ()
                            (if (gx#stx-pair? _%e118220118227%_)
                                (let ((_%e118223118235%_
                                       (gx#syntax-e _%e118220118227%_)))
                                  (let ((_%hd118224118238%_
                                         (##car _%e118223118235%_))
                                        (_%tl118225118240%_
                                         (##cdr _%e118223118235%_)))
                                    (let ((_%body118243%_ _%tl118225118240%_))
                                      (gx#core-cons
                                       _%id118219%_
                                       _%body118243%_))))
                                (_%E118222118231%_)))))
                    (_%E118221118245%_))))
               (_%e118210118252%_
                (##unchecked-structure-ref _%self118206118212%_ '1 '#f '#f))
               (_%id118255%_ _%e118210118252%_))
          (_%K118209118249%_ _%id118255%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self118017%_ _%stx118018%_ _%method118019%_)
        (let* ((_%self118020118028%_ _%self118017%_)
               (_%E118022118032%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118020118028%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K118023118039%_
                (lambda (_%phi118035%_ _%ctx118036%_ _%K118037%_)
                  (gx#core-apply-user-macro
                   _%K118037%_
                   _%stx118018%_
                   _%ctx118036%_
                   _%phi118035%_
                   _%method118019%_))))
          (if (##structure-instance-of?
               _%self118020118028%_
               'gx#user-expander::t)
              (let* ((_%e118024118042%_
                      (##unchecked-structure-ref
                       _%self118020118028%_
                       '1
                       '#f
                       '#f))
                     (_%K118045%_ _%e118024118042%_)
                     (_%e118025118047%_
                      (##unchecked-structure-ref
                       _%self118020118028%_
                       '2
                       '#f
                       '#f))
                     (_%ctx118050%_ _%e118025118047%_)
                     (_%e118026118052%_
                      (##unchecked-structure-ref
                       _%self118020118028%_
                       '3
                       '#f
                       '#f))
                     (_%phi118055%_ _%e118026118052%_))
                (_%K118023118039%_ _%phi118055%_ _%ctx118050%_ _%K118045%_))
              (_%E118022118032%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self118060%_ _%stx118061%_)
        (let ((_%method118063%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self118060%_
           _%stx118061%_
           _%method118063%_))))
    (define gx#core-apply-user-expander
      (lambda _g120219_
        (let ((_g120218_ (##length _g120219_)))
          (cond ((##fx= _g120218_ 2)
                 (apply gx#core-apply-user-expander__0 _g120219_))
                ((##fx= _g120218_ 3)
                 (apply gx#core-apply-user-expander__% _g120219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g120219_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K118007%_
               _%stx118008%_
               _%ctx118009%_
               _%phi118010%_
               _%method118011%_)
        (let ((_%mark118013%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx118009%_
                _%phi118010%_
                _%stx118008%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K118007%_
               (gx#stx-apply-mark _%stx118008%_ _%mark118013%_)
               _%method118011%_)
              _%mark118013%_))
           gx#current-expander-marks
           (cons _%mark118013%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx117855%_ _%phi117856%_ _%ctx117857%_)
        (let _%lp117859%_ ((_%bind117861%_
                            (gx#core-resolve-identifier__%
                             _%stx117855%_
                             _%phi117856%_
                             _%ctx117857%_)))
          (if (##structure-direct-instance-of?
               _%bind117861%_
               'gx#import-binding::t)
              (_%lp117859%_
               (##unchecked-structure-ref _%bind117861%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind117861%_
                   'gx#alias-binding::t)
                  (_%lp117859%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind117861%_ '4 '#f '#f)
                    _%phi117856%_
                    _%ctx117857%_))
                  _%bind117861%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx117869%_)
        (let* ((_%phi117871%_ (gx#current-expander-phi))
               (_%ctx117873%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117869%_
           _%phi117871%_
           _%ctx117873%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx117875%_ _%phi117876%_)
        (let ((_%ctx117878%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117875%_
           _%phi117876%_
           _%ctx117878%_))))
    (define gx#resolve-identifier
      (lambda _g120221_
        (let ((_g120220_ (##length _g120221_)))
          (cond ((##fx= _g120220_ 1)
                 (apply gx#resolve-identifier__0 _g120221_))
                ((##fx= _g120220_ 2)
                 (apply gx#resolve-identifier__1 _g120221_))
                ((##fx= _g120220_ 3)
                 (apply gx#resolve-identifier__% _g120221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g120221_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx117810%_
               _%val117811%_
               _%rebind?117812%_
               _%phi117813%_
               _%ctx117814%_)
        (let ((_%rebind?117819%_
               (if (not _%rebind?117812%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?117812%_)
                       _%rebind?117812%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx117810%_)
           _%val117811%_
           _%rebind?117819%_
           _%phi117813%_
           _%ctx117814%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx117824%_ _%val117825%_)
        (let* ((_%rebind?117827%_ '#f)
               (_%phi117829%_ (gx#current-expander-phi))
               (_%ctx117831%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117824%_
           _%val117825%_
           _%rebind?117827%_
           _%phi117829%_
           _%ctx117831%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx117833%_ _%val117834%_ _%rebind?117835%_)
        (let* ((_%phi117837%_ (gx#current-expander-phi))
               (_%ctx117839%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117833%_
           _%val117834%_
           _%rebind?117835%_
           _%phi117837%_
           _%ctx117839%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx117841%_ _%val117842%_ _%rebind?117843%_ _%phi117844%_)
        (let ((_%ctx117846%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117841%_
           _%val117842%_
           _%rebind?117843%_
           _%phi117844%_
           _%ctx117846%_))))
    (define gx#bind-identifier!
      (lambda _g120223_
        (let ((_g120222_ (##length _g120223_)))
          (cond ((##fx= _g120222_ 2) (apply gx#bind-identifier!__0 _g120223_))
                ((##fx= _g120222_ 3) (apply gx#bind-identifier!__1 _g120223_))
                ((##fx= _g120222_ 4) (apply gx#bind-identifier!__2 _g120223_))
                ((##fx= _g120222_ 5) (apply gx#bind-identifier!__% _g120223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g120223_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx117776%_ _%phi117777%_ _%ctx117778%_)
        (let _%lp117780%_ ((_%e117782%_ _%stx117776%_)
                           (_%marks117783%_ (gx#current-expander-marks)))
          (if (symbol? _%e117782%_)
              (gx#core-resolve-binding
               _%e117782%_
               _%phi117777%_
               _%phi117777%_
               _%ctx117778%_
               (reverse _%marks117783%_))
              (if (gx#identifier-quote? _%e117782%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e117782%_ '1 '#f '#f)
                   _%phi117777%_
                   '0
                   (##unchecked-structure-ref _%e117782%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e117782%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e117782%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e117782%_ '1 '#f '#f)
                       _%phi117777%_
                       _%phi117777%_
                       _%ctx117778%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e117782%_ '3 '#f '#f)
                        _%marks117783%_))
                      (if (##structure-direct-instance-of?
                           _%e117782%_
                           'gx#syntax-wrap::t)
                          (_%lp117780%_
                           (##unchecked-structure-ref _%e117782%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e117782%_ '3 '#f '#f)
                            _%marks117783%_))
                          (if (##structure-instance-of?
                               _%e117782%_
                               'gerbil#AST::t)
                              (_%lp117780%_
                               (##unchecked-structure-ref
                                _%e117782%_
                                '1
                                '#f
                                '#f)
                               _%marks117783%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx117776%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx117794%_)
        (let* ((_%phi117796%_ (gx#current-expander-phi))
               (_%ctx117798%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117794%_
           _%phi117796%_
           _%ctx117798%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx117800%_ _%phi117801%_)
        (let ((_%ctx117803%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117800%_
           _%phi117801%_
           _%ctx117803%_))))
    (define gx#core-resolve-identifier
      (lambda _g120225_
        (let ((_g120224_ (##length _g120225_)))
          (cond ((##fx= _g120224_ 1)
                 (apply gx#core-resolve-identifier__0 _g120225_))
                ((##fx= _g120224_ 2)
                 (apply gx#core-resolve-identifier__1 _g120225_))
                ((##fx= _g120224_ 3)
                 (apply gx#core-resolve-identifier__% _g120225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g120225_))))))
    (define gx#core-resolve-binding
      (lambda (_%id117686%_
               _%phi117687%_
               _%src-phi117688%_
               _%ctx117689%_
               _%marks117690%_)
        (letrec ((_%resolve117692%_
                  (lambda (_%ctx117760%_ _%src-phi117761%_ _%key117762%_)
                    (let _%lp117764%_ ((_%ctx117766%_
                                        (gx#core-context-shift
                                         _%ctx117760%_
                                         _%phi117687%_))
                                       (_%dphi117767%_
                                        (fx- _%phi117687%_ _%src-phi117761%_)))
                      (let ((_%$e117769%_
                             (gx#core-context-resolve
                              _%ctx117766%_
                              _%key117762%_)))
                        (if _%$e117769%_
                            _%$e117769%_
                            (if (fxzero? _%dphi117767%_)
                                '#f
                                (if (fxpositive? _%dphi117767%_)
                                    (_%lp117764%_
                                     (gx#core-context-shift _%ctx117766%_ '-1)
                                     (##fx- _%dphi117767%_ '1))
                                    (_%lp117764%_
                                     (gx#core-context-shift _%ctx117766%_ '1)
                                     (##fx+ _%dphi117767%_ '1))))))))))
          (let _%lp117694%_ ((_%ctx117696%_ _%ctx117689%_)
                             (_%src-phi117697%_ _%src-phi117688%_)
                             (_%rest117698%_ _%marks117690%_))
            (let* ((_%rest117699117707%_ _%rest117698%_)
                   (_%else117701117715%_
                    (lambda ()
                      (_%resolve117692%_
                       _%ctx117696%_
                       _%src-phi117697%_
                       _%id117686%_)))
                   (_%K117703117748%_
                    (lambda (_%rest117718%_ _%hd117719%_)
                      (let* ((_%hd117720117726%_ _%hd117719%_)
                             (_%E117722117730%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd117720117726%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K117723117740%_
                              (lambda (_%subst117733%_)
                                (let ((_%$e117737%_
                                       (let ((_%key117735%_
                                              (if _%subst117733%_
                                                  (hash-get
                                                   _%subst117733%_
                                                   _%id117686%_)
                                                  '#f)))
                                         (if _%key117735%_
                                             (_%resolve117692%_
                                              _%ctx117696%_
                                              _%src-phi117697%_
                                              _%key117735%_)
                                             '#f))))
                                  (if _%$e117737%_
                                      _%$e117737%_
                                      (_%lp117694%_
                                       (##unchecked-structure-ref
                                        _%hd117719%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd117719%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest117718%_))))))
                        (if (##structure-instance-of?
                             _%hd117720117726%_
                             'gx#expander-mark::t)
                            (let* ((_%e117724117743%_
                                    (##unchecked-structure-ref
                                     _%hd117720117726%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst117746%_ _%e117724117743%_))
                              (_%K117723117740%_ _%subst117746%_))
                            (_%E117722117730%_))))))
              (if (##pair? _%rest117699117707%_)
                  (let ((_%hd117704117751%_ (##car _%rest117699117707%_))
                        (_%tl117705117753%_ (##cdr _%rest117699117707%_)))
                    (let* ((_%hd117756%_ _%hd117704117751%_)
                           (_%rest117758%_ _%tl117705117753%_))
                      (_%K117703117748%_ _%rest117758%_ _%hd117756%_)))
                  (_%else117701117715%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key117556%_
               _%val117557%_
               _%rebind?117558%_
               _%phi117559%_
               _%ctx117560%_)
        (letrec ((_%update-binding117562%_
                  (lambda (_%xval117635%_)
                    (if (or (_%rebind?117558%_
                             _%ctx117560%_
                             _%xval117635%_
                             _%val117557%_)
                            (and (##structure-direct-instance-of?
                                  _%xval117635%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval117635%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val117557%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val117557%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval117635%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val117557%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val117557%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval117635%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val117557%_
                        (if (and (##structure-direct-instance-of?
                                  _%val117557%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val117557%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval117635%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val117557%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval117635%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval117635%_
                            (if (and (##structure-direct-instance-of?
                                      _%val117557%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval117635%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key117556%_
                                 (cons (##unchecked-structure-ref
                                        _%val117557%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val117557%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval117635%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval117635%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval117635%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval117635%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key117556%_
                                 _%val117557%_
                                 _%xval117635%_))))))
                 (_%gensubst117563%_
                  (lambda (_%subst117630%_ _%id117631%_)
                    (let ((_%eid117633%_
                           (gensym (if (uninterned-symbol? _%id117631%_)
                                       '%
                                       _%id117631%_))))
                      (hash-put! _%subst117630%_ _%id117631%_ _%eid117633%_)
                      _%eid117633%_)))
                 (_%subst!117564%_
                  (lambda (_%key117566%_)
                    (let* ((_%key117567117575%_ _%key117566%_)
                           (_%else117569117583%_ (lambda () _%key117566%_))
                           (_%K117571117618%_
                            (lambda (_%mark117586%_ _%id117587%_)
                              (let* ((_%mark117588117594%_ _%mark117586%_)
                                     (_%E117590117598%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark117588117594%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K117591117610%_
                                      (lambda (_%subst117601%_)
                                        (if (not _%subst117601%_)
                                            (let ((_%subst117604%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark117586%_
                                               _%subst117604%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst117563%_
                                               _%subst117604%_
                                               _%id117587%_))
                                            (let ((_%$e117606%_
                                                   (hash-get
                                                    _%subst117601%_
                                                    _%id117587%_)))
                                              (if _%$e117606%_
                                                  _%$e117606%_
                                                  (_%gensubst117563%_
                                                   _%subst117601%_
                                                   _%id117587%_)))))))
                                (if (##structure-instance-of?
                                     _%mark117588117594%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e117592117613%_
                                            (##unchecked-structure-ref
                                             _%mark117588117594%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst117616%_ _%e117592117613%_))
                                      (_%K117591117610%_ _%subst117616%_))
                                    (_%E117590117598%_))))))
                      (if (##pair? _%key117567117575%_)
                          (let ((_%hd117572117621%_
                                 (##car _%key117567117575%_))
                                (_%tl117573117623%_
                                 (##cdr _%key117567117575%_)))
                            (let* ((_%id117626%_ _%hd117572117621%_)
                                   (_%mark117628%_ _%tl117573117623%_))
                              (_%K117571117618%_ _%mark117628%_ _%id117626%_)))
                          (_%else117569117583%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx117560%_ _%phi117559%_)
           (_%subst!117564%_ _%key117556%_)
           _%val117557%_
           _%update-binding117562%_))))
    (define gx#core-bind!__0
      (lambda (_%key117656%_ _%val117657%_)
        (let* ((_%rebind?117659%_ false)
               (_%phi117661%_ (gx#current-expander-phi))
               (_%ctx117663%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117656%_
           _%val117657%_
           _%rebind?117659%_
           _%phi117661%_
           _%ctx117663%_))))
    (define gx#core-bind!__1
      (lambda (_%key117665%_ _%val117666%_ _%rebind?117667%_)
        (let* ((_%phi117669%_ (gx#current-expander-phi))
               (_%ctx117671%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117665%_
           _%val117666%_
           _%rebind?117667%_
           _%phi117669%_
           _%ctx117671%_))))
    (define gx#core-bind!__2
      (lambda (_%key117673%_ _%val117674%_ _%rebind?117675%_ _%phi117676%_)
        (let ((_%ctx117678%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117673%_
           _%val117674%_
           _%rebind?117675%_
           _%phi117676%_
           _%ctx117678%_))))
    (define gx#core-bind!
      (lambda _g120227_
        (let ((_g120226_ (##length _g120227_)))
          (cond ((##fx= _g120226_ 2) (apply gx#core-bind!__0 _g120227_))
                ((##fx= _g120226_ 3) (apply gx#core-bind!__1 _g120227_))
                ((##fx= _g120226_ 4) (apply gx#core-bind!__2 _g120227_))
                ((##fx= _g120226_ 5) (apply gx#core-bind!__% _g120227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g120227_))))))
    (define gx#core-identifier-key
      (lambda (_%stx117487%_)
        (if (symbol? _%stx117487%_)
            (let* ((_%g117489117497%_ (gx#current-expander-marks))
                   (_%else117491117505%_ (lambda () _%stx117487%_))
                   (_%K117493117510%_
                    (lambda (_%hd117508%_) (cons _%stx117487%_ _%hd117508%_))))
              (if (##pair? _%g117489117497%_)
                  (let* ((_%hd117494117513%_ (##car _%g117489117497%_))
                         (_%hd117516%_ _%hd117494117513%_))
                    (_%K117493117510%_ _%hd117516%_))
                  (_%else117491117505%_)))
            (if (gx#identifier? _%stx117487%_)
                (let* ((_%id117519%_ (gx#syntax-local-unwrap _%stx117487%_))
                       (_%eid117521%_ (gx#stx-e _%id117519%_))
                       (_%marks117523%_
                        (gx#stx-identifier-marks* _%id117519%_))
                       (_%marks117525117533%_ _%marks117523%_)
                       (_%else117527117541%_ (lambda () _%eid117521%_))
                       (_%K117529117546%_
                        (lambda (_%hd117544%_)
                          (cons _%eid117521%_ _%hd117544%_))))
                  (if (##pair? _%marks117525117533%_)
                      (let* ((_%hd117530117549%_ (##car _%marks117525117533%_))
                             (_%hd117552%_ _%hd117530117549%_))
                        (_%K117529117546%_ _%hd117552%_))
                      (_%else117527117541%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx117487%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx117426%_ _%phi117427%_)
        (letrec ((_%make-phi117429%_
                  (lambda (_%super117485%_)
                    (let ((__obj120199
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj120199
                       (##gensym 'phi)
                       _%super117485%_)
                      __obj120199)))
                 (_%make-phi/up117430%_
                  (lambda (_%ctx117480%_ _%super117481%_)
                    (let ((_%ctx+1117483%_
                           (_%make-phi117429%_ _%super117481%_)))
                      (##unchecked-structure-set!
                       _%ctx117480%_
                       _%ctx+1117483%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1117483%_
                       _%ctx117480%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1117483%_)))
                 (_%make-phi/down117431%_
                  (lambda (_%ctx117475%_ _%super117476%_)
                    (let ((_%ctx-1117478%_
                           (_%make-phi117429%_ _%super117476%_)))
                      (##unchecked-structure-set!
                       _%ctx-1117478%_
                       _%ctx117475%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx117475%_
                       _%ctx-1117478%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1117478%_)))
                 (_%shift117432%_
                  (lambda (_%ctx117458%_
                           _%delta117459%_
                           _%make-delta-context117460%_
                           _%phi117461%_
                           _%K117462%_)
                    (let ((_%$e117464%_
                           (##unchecked-structure-ref
                            _%ctx117458%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e117464%_
                          ((lambda (_%super117467%_)
                             (let* ((_%super117469%_
                                     (_%K117462%_
                                      _%super117467%_
                                      _%delta117459%_))
                                    (_%ctx+d117471%_
                                     (_%make-delta-context117460%_
                                      _%ctx117458%_
                                      _%super117469%_)))
                               (_%K117462%_
                                _%ctx+d117471%_
                                (fx- _%phi117461%_ _%delta117459%_))))
                           _%$e117464%_)
                          (error '"Bad context" _%ctx117458%_))))))
          (let _%K117434%_ ((_%ctx117436%_ _%ctx117426%_)
                            (_%phi117437%_ _%phi117427%_))
            (if (fxzero? _%phi117437%_)
                _%ctx117436%_
                (if (##structure-instance-of? _%ctx117436%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi117437%_)
                        (let ((_%$e117441%_
                               (##unchecked-structure-ref
                                _%ctx117436%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e117441%_
                              ((lambda (_%g117443117445%_)
                                 (_%K117434%_
                                  _%g117443117445%_
                                  (##fx- _%phi117437%_ '1)))
                               _%$e117441%_)
                              (_%shift117432%_
                               _%ctx117436%_
                               '1
                               _%make-phi/up117430%_
                               _%phi117437%_
                               _%K117434%_)))
                        (let ((_%$e117449%_
                               (##unchecked-structure-ref
                                _%ctx117436%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e117449%_
                              ((lambda (_%g117451117453%_)
                                 (_%K117434%_
                                  _%g117451117453%_
                                  (##fx+ _%phi117437%_ '1)))
                               _%$e117449%_)
                              (_%shift117432%_
                               _%ctx117436%_
                               '-1
                               _%make-phi/down117431%_
                               _%phi117437%_
                               _%K117434%_))))
                    _%ctx117436%_))))))
    (define gx#core-context-get
      (lambda (_%ctx117423%_ _%key117424%_)
        (hash-get
         (##unchecked-structure-ref _%ctx117423%_ '2 '#f '#f)
         _%key117424%_)))
    (define gx#core-context-put!
      (lambda (_%ctx117419%_ _%key117420%_ _%val117421%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx117419%_ '2 '#f '#f)
         _%key117420%_
         _%val117421%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx117405%_ _%key117406%_)
        (let _%lp117408%_ ((_%ctx117410%_ _%ctx117405%_))
          (let ((_%$e117412%_
                 (gx#core-context-get _%ctx117410%_ _%key117406%_)))
            (if _%$e117412%_
                _%$e117412%_
                (let ((_%$e117415%_
                       (if (##structure-instance-of?
                            _%ctx117410%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx117410%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e117415%_ (_%lp117408%_ _%$e117415%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx117394%_ _%key117395%_ _%val117396%_ _%rebind117397%_)
        (let ((_%$e117399%_ (gx#core-context-get _%ctx117394%_ _%key117395%_)))
          (if _%$e117399%_
              ((lambda (_%xval117402%_)
                 (gx#core-context-put!
                  _%ctx117394%_
                  _%key117395%_
                  (_%rebind117397%_ _%xval117402%_)))
               _%$e117399%_)
              (gx#core-context-put!
               _%ctx117394%_
               _%key117395%_
               _%val117396%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx117369%_ _%stop?117370%_)
        (let _%lp117372%_ ((_%ctx117374%_ _%ctx117369%_))
          (if (_%stop?117370%_ _%ctx117374%_)
              _%ctx117374%_
              (if (##structure-instance-of? _%ctx117374%_ 'gx#phi-context::t)
                  (_%lp117372%_
                   (##unchecked-structure-ref _%ctx117374%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx117383%_ (gx#current-expander-context))
               (_%stop?117385%_ gx#top-context?))
          (gx#core-context-top__% _%ctx117383%_ _%stop?117385%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx117387%_)
        (let ((_%stop?117389%_ gx#top-context?))
          (gx#core-context-top__% _%ctx117387%_ _%stop?117389%_))))
    (define gx#core-context-top
      (lambda _g120229_
        (let ((_g120228_ (##length _g120229_)))
          (cond ((##fx= _g120228_ 0) (apply gx#core-context-top__0 _g120229_))
                ((##fx= _g120228_ 1) (apply gx#core-context-top__1 _g120229_))
                ((##fx= _g120228_ 2) (apply gx#core-context-top__% _g120229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g120229_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx117354%_)
        (let _%lp117356%_ ((_%ctx117358%_ _%ctx117354%_))
          (if (##structure-instance-of? _%ctx117358%_ 'gx#phi-context::t)
              (_%lp117356%_
               (##unchecked-structure-ref _%ctx117358%_ '3 '#f '#f))
              _%ctx117358%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx117364%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx117364%_))))
    (define gx#core-context-root
      (lambda _g120231_
        (let ((_g120230_ (##length _g120231_)))
          (cond ((##fx= _g120230_ 0) (apply gx#core-context-root__0 _g120231_))
                ((##fx= _g120230_ 1) (apply gx#core-context-root__% _g120231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g120231_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx117336%_ . _%ignore117337%_)
        (let ((_%$e117339%_ (gx#current-expander-allow-rebind?)))
          (if _%$e117339%_
              _%$e117339%_
              (if (##structure-instance-of? _%ctx117336%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx117336%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx117336%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx117346%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx117346%_))))
    (define gx#core-context-rebind?
      (lambda _g120233_
        (let ((_g120232_ (##length _g120233_)))
          (cond ((##fx= _g120232_ 0)
                 (apply gx#core-context-rebind?__0 _g120233_))
                ((##fx= _g120232_ 1)
                 (apply gx#core-context-rebind?__% _g120233_))
                ((##fx>= _g120232_ 1)
                 (apply gx#core-context-rebind?__% _g120233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g120233_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx117319%_)
        (let ((_%$e117321%_ (gx#core-context-top__1 _%ctx117319%_)))
          (if _%$e117321%_
              ((lambda (_%ctx117324%_)
                 (if (##structure-instance-of?
                      _%ctx117324%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx117324%_ '6 '#f '#f)
                     '#f))
               _%$e117321%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx117331%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx117331%_))))
    (define gx#core-context-namespace
      (lambda _g120235_
        (let ((_g120234_ (##length _g120235_)))
          (cond ((##fx= _g120234_ 0)
                 (apply gx#core-context-namespace__0 _g120235_))
                ((##fx= _g120234_ 1)
                 (apply gx#core-context-namespace__% _g120235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g120235_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind117305%_ _%is?117306%_)
        (if (##structure-direct-instance-of?
             _%bind117305%_
             'gx#syntax-binding::t)
            (_%is?117306%_
             (##unchecked-structure-ref _%bind117305%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind117311%_)
        (let ((_%is?117313%_ gx#expander?))
          (gx#expander-binding?__% _%bind117311%_ _%is?117313%_))))
    (define gx#expander-binding?
      (lambda _g120237_
        (let ((_g120236_ (##length _g120237_)))
          (cond ((##fx= _g120236_ 1) (apply gx#expander-binding?__0 _g120237_))
                ((##fx= _g120236_ 2) (apply gx#expander-binding?__% _g120237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g120237_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind117302%_)
        (gx#expander-binding?__% _%bind117302%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind117300%_)
        (gx#expander-binding?__% _%bind117300%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind117294%_)
        (letrec ((_%direct-special-form?117296%_
                  (lambda (_%obj117298%_)
                    (##structure-direct-instance-of?
                     _%obj117298%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind117294%_
           _%direct-special-form?117296%_))))
    (define gx#special-form-binding?
      (lambda (_%bind117292%_)
        (gx#expander-binding?__% _%bind117292%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind117283%_)
        (letrec ((_%feature?117285%_
                  (lambda (_%e117287%_)
                    (let ((_%$e117289%_
                           (##structure-instance-of?
                            _%e117287%_
                            'gx#feature-expander::t)))
                      (if _%$e117289%_
                          _%$e117289%_
                          (##structure-instance-of?
                           _%e117287%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind117283%_ _%feature?117285%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind117281%_)
        (gx#expander-binding?__% _%bind117281%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id117268%_ _%bound?117269%_)
        (if (gx#identifier? _%id117268%_)
            (_%bound?117269%_ (gx#resolve-identifier__0 _%id117268%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id117274%_)
        (let ((_%bound?117276%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id117274%_ _%bound?117276%_))))
    (define gx#core-bound-identifier?
      (lambda _g120239_
        (let ((_g120238_ (##length _g120239_)))
          (cond ((##fx= _g120238_ 1)
                 (apply gx#core-bound-identifier?__0 _g120239_))
                ((##fx= _g120238_ 2)
                 (apply gx#core-bound-identifier?__% _g120239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g120239_))))))
    (define gx#core-identifier=?
      (lambda (_%x117258%_ _%y117259%_)
        (letrec ((_%y=?117261%_
                  (lambda (_%xid117265%_)
                    ((if (list? _%y117259%_) memq eq?)
                     _%xid117265%_
                     _%y117259%_))))
          (let ((_%bind117263%_ (gx#resolve-identifier__0 _%x117258%_)))
            (if (##structure-instance-of? _%bind117263%_ 'gx#binding::t)
                (_%y=?117261%_
                 (##unchecked-structure-ref _%bind117263%_ '1 '#f '#f))
                (_%y=?117261%_ (gx#stx-e _%x117258%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e117256%_)
        (if (interned-symbol? _%e117256%_)
            (string-index__0 (symbol->string _%e117256%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx117209%_ _%src117210%_ _%ctx117211%_ _%marks117212%_)
        (if (##structure? _%stx117209%_)
            (let ((_%$e117214%_ (gx#sealed-syntax-unwrap _%stx117209%_)))
              (if _%$e117214%_
                  _%$e117214%_
                  (if (gx#identifier? _%stx117209%_)
                      (let ((_%id117218%_
                             (gx#stx-unwrap__% _%stx117209%_ _%marks117212%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id117218%_ '1 '#f '#f)
                         (let ((_%$e117220%_
                                (##unchecked-structure-ref
                                 _%id117218%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e117220%_ _%$e117220%_ _%src117210%_))
                         _%ctx117211%_
                         (##unchecked-structure-ref _%id117218%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx117209%_)
                       (let ((_%$e117224%_ (gx#stx-source _%stx117209%_)))
                         (if _%$e117224%_ _%$e117224%_ _%src117210%_))
                       _%ctx117211%_
                       (reverse _%marks117212%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx117209%_
             _%src117210%_
             _%ctx117211%_
             (reverse _%marks117212%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx117230%_)
        (let* ((_%src117232%_ '#f)
               (_%ctx117234%_ (gx#current-expander-context))
               (_%marks117236%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx117230%_
           _%src117232%_
           _%ctx117234%_
           _%marks117236%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx117238%_ _%src117239%_)
        (let* ((_%ctx117241%_ (gx#current-expander-context))
               (_%marks117243%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx117238%_
           _%src117239%_
           _%ctx117241%_
           _%marks117243%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx117245%_ _%src117246%_ _%ctx117247%_)
        (let ((_%marks117249%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx117245%_
           _%src117246%_
           _%ctx117247%_
           _%marks117249%_))))
    (define gx#core-quote-syntax
      (lambda _g120241_
        (let ((_g120240_ (##length _g120241_)))
          (cond ((##fx= _g120240_ 1) (apply gx#core-quote-syntax__0 _g120241_))
                ((##fx= _g120240_ 2) (apply gx#core-quote-syntax__1 _g120241_))
                ((##fx= _g120240_ 3) (apply gx#core-quote-syntax__2 _g120241_))
                ((##fx= _g120240_ 4) (apply gx#core-quote-syntax__% _g120241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g120241_))))))
    (define gx#core-cons
      (lambda (_%hd117205%_ _%tl117206%_)
        (cons (gx#core-quote-syntax__0 _%hd117205%_) _%tl117206%_)))
    (define gx#core-list
      (lambda (_%hd117202%_ . _%rest117203%_)
        (cons (gx#core-quote-syntax__0 _%hd117202%_) _%rest117203%_)))
    (define gx#core-cons*
      (lambda (_%hd117199%_ . _%rest117200%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd117199%_) _%rest117200%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path117168%_ _%rel117169%_)
        (let ((_%path117186%_ (gx#stx-e _%stx-path117168%_))
              (_%reldir117187%_
               (let _%lp117171%_ ((_%relsrc117173%_
                                   (let ((_%$e117183%_
                                          (gx#stx-source _%stx-path117168%_)))
                                     (if _%$e117183%_
                                         _%$e117183%_
                                         _%rel117169%_))))
                 (if (##structure-instance-of? _%relsrc117173%_ 'gerbil#AST::t)
                     (_%lp117171%_
                      (let ((_%$e117176%_ (gx#stx-source _%relsrc117173%_)))
                        (if _%$e117176%_
                            _%$e117176%_
                            (gx#stx-e _%relsrc117173%_))))
                     (if (source-location-path? _%relsrc117173%_)
                         (path-directory
                          (source-location-path _%relsrc117173%_))
                         (if (string? _%relsrc117173%_)
                             (path-directory _%relsrc117173%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path117186%_ (path-normalize _%reldir117187%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path117192%_)
        (let ((_%rel117194%_ '#f))
          (gx#core-resolve-path__% _%stx-path117192%_ _%rel117194%_))))
    (define gx#core-resolve-path
      (lambda _g120243_
        (let ((_g120242_ (##length _g120243_)))
          (cond ((##fx= _g120242_ 1) (apply gx#core-resolve-path__0 _g120243_))
                ((##fx= _g120242_ 2) (apply gx#core-resolve-path__% _g120243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g120243_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr117124%_ _%ctx117125%_)
        (let* ((_%repr117126117133%_ _%repr117124%_)
               (_%E117128117137%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr117126117133%_
                         '([phi . subs]))
                  '#!void))
               (_%K117129117145%_
                (lambda (_%subs117140%_ _%phi117141%_)
                  (let ((_%subst117143%_
                         (if (null? _%subs117140%_)
                             '#f
                             (list->hash-table-eq _%subs117140%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst117143%_
                     _%ctx117125%_
                     _%phi117141%_
                     '#f)))))
          (if (##pair? _%repr117126117133%_)
              (let ((_%hd117130117148%_ (##car _%repr117126117133%_))
                    (_%tl117131117150%_ (##cdr _%repr117126117133%_)))
                (let* ((_%phi117153%_ _%hd117130117148%_)
                       (_%subs117155%_ _%tl117131117150%_))
                  (_%K117129117145%_ _%subs117155%_ _%phi117153%_)))
              (_%E117128117137%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr117160%_)
        (let ((_%ctx117162%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr117160%_ _%ctx117162%_))))
    (define gx#core-deserialize-mark
      (lambda _g120245_
        (let ((_g120244_ (##length _g120245_)))
          (cond ((##fx= _g120244_ 1)
                 (apply gx#core-deserialize-mark__0 _g120245_))
                ((##fx= _g120244_ 2)
                 (apply gx#core-deserialize-mark__% _g120245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g120245_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx117121%_)
        (gx#stx-rewrap _%stx117121%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx117119%_)
        (gx#stx-unwrap__% _%stx117119%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx117089%_)
        (let* ((_%g117090117098%_ (gx#current-expander-marks))
               (_%else117092117106%_ (lambda () _%stx117089%_))
               (_%K117094117111%_
                (lambda (_%hd117109%_)
                  (gx#stx-apply-mark _%stx117089%_ _%hd117109%_))))
          (if (##pair? _%g117090117098%_)
              (let* ((_%hd117095117114%_ (##car _%g117090117098%_))
                     (_%hd117117%_ _%hd117095117114%_))
                (_%K117094117111%_ _%hd117117%_))
              (_%else117092117106%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx117074%_ _%E117075%_)
        (let ((_%bind117077%_ (gx#resolve-identifier__0 _%stx117074%_)))
          (if (##structure-direct-instance-of?
               _%bind117077%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind117077%_ '4 '#f '#f)
              (_%E117075%_ _%stx117074%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx117082%_)
        (let ((_%E117084%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx117082%_ _%E117084%_))))
    (define gx#syntax-local-e
      (lambda _g120247_
        (let ((_g120246_ (##length _g120247_)))
          (cond ((##fx= _g120246_ 1) (apply gx#syntax-local-e__0 _g120247_))
                ((##fx= _g120246_ 2) (apply gx#syntax-local-e__% _g120247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g120247_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx117058%_ _%E117059%_)
        (let ((_%e117061%_ (gx#syntax-local-e__% _%stx117058%_ _%E117059%_)))
          (if (##structure-instance-of? _%e117061%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e117061%_ '1 '#f '#f)
              _%e117061%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx117066%_)
        (let ((_%E117068%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx117066%_ _%E117068%_))))
    (define gx#syntax-local-value
      (lambda _g120249_
        (let ((_g120248_ (##length _g120249_)))
          (cond ((##fx= _g120248_ 1)
                 (apply gx#syntax-local-value__0 _g120249_))
                ((##fx= _g120248_ 2)
                 (apply gx#syntax-local-value__% _g120249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g120249_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx117055%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx117055%_)))))
