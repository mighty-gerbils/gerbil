(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1734357961)
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
      (lambda _%$args122577%_
        (apply make-instance gx#expander-context::t _%$args122577%_)))
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
      (lambda _%$args122574%_
        (apply make-instance gx#root-context::t _%$args122574%_)))
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
      (lambda _%$args122571%_
        (apply make-instance gx#phi-context::t _%$args122571%_)))
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
      (lambda _%$args122568%_
        (apply make-instance gx#top-context::t _%$args122568%_)))
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
      (lambda _%$args122565%_
        (apply make-instance gx#module-context::t _%$args122565%_)))
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
      (lambda _%$args122562%_
        (apply make-instance gx#prelude-context::t _%$args122562%_)))
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
      (lambda _%$args122559%_
        (apply make-instance gx#local-context::t _%$args122559%_)))
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
      (lambda (_%self119465122530%_ _%id122532%_ _%super122533%_)
        (let* ((_%self122535%_ _%self119465122530%_)
               (_%self122537%_ _%self122535%_))
          (if (##fx< '3 (##structure-length _%self122537%_))
              (begin
                (##unchecked-structure-set!
                 _%self122537%_
                 _%id122532%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122537%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122537%_
                 _%super122533%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122537%_
                     '3
                     (##vector-length _%self122537%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self119465122550%_ _%id122551%_)
        (let ((_%super122553%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self119465122550%_
           _%id122551%_
           _%super122553%_))))
    (define gx#phi-context:::init!
      (lambda _g122620_
        (let ((_g122619_ (##length _g122620_)))
          (cond ((##fx= _g122619_ 2)
                 (apply gx#phi-context:::init!__0 _g122620_))
                ((##fx= _g122619_ 3)
                 (apply gx#phi-context:::init!__% _g122620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g122620_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self119466122381%_ _%super122383%_)
        (let* ((_%self122385%_ _%self119466122381%_)
               (_%self122387%_ _%self122385%_))
          (if (##fx< '3 (##structure-length _%self122387%_))
              (begin
                (##unchecked-structure-set!
                 _%self122387%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122387%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122387%_
                 _%super122383%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122387%_
                     '3
                     (##vector-length _%self122387%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self119466122400%_)
        (let ((_%super122402%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self119466122400%_ _%super122402%_))))
    (define gx#local-context:::init!
      (lambda _g122622_
        (let ((_g122621_ (##length _g122622_)))
          (cond ((##fx= _g122621_ 1)
                 (apply gx#local-context:::init!__0 _g122622_))
                ((##fx= _g122621_ 2)
                 (apply gx#local-context:::init!__% _g122622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g122622_))))))
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
      (lambda _%$args122255%_
        (apply make-instance gx#binding::t _%$args122255%_)))
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
      (lambda _%$args122252%_
        (apply make-instance gx#runtime-binding::t _%$args122252%_)))
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
      (lambda _%$args122249%_
        (apply make-instance gx#local-binding::t _%$args122249%_)))
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
      (lambda _%$args122246%_
        (apply make-instance gx#top-binding::t _%$args122246%_)))
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
      (lambda _%$args122243%_
        (apply make-instance gx#module-binding::t _%$args122243%_)))
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
      (lambda _%$args122240%_
        (apply make-instance gx#extern-binding::t _%$args122240%_)))
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
      (lambda _%$args122237%_
        (apply make-instance gx#syntax-binding::t _%$args122237%_)))
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
      (lambda _%$args122234%_
        (apply make-instance gx#import-binding::t _%$args122234%_)))
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
      (lambda _%$args122231%_
        (apply make-instance gx#alias-binding::t _%$args122231%_)))
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
      (lambda _%$args122228%_
        (apply make-instance gx#expander::t _%$args122228%_)))
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
      (lambda _%$args122225%_
        (apply make-instance gx#core-expander::t _%$args122225%_)))
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
      (lambda _%$args122222%_
        (apply make-instance gx#expression-form::t _%$args122222%_)))
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
      (lambda _%$args122219%_
        (apply make-instance gx#special-form::t _%$args122219%_)))
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
      (lambda _%$args122216%_
        (apply make-instance gx#definition-form::t _%$args122216%_)))
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
      (lambda _%$args122213%_
        (apply make-instance gx#top-special-form::t _%$args122213%_)))
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
      (lambda _%$args122210%_
        (apply make-instance gx#module-special-form::t _%$args122210%_)))
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
      (lambda _%$args122207%_
        (apply make-instance gx#feature-expander::t _%$args122207%_)))
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
      (lambda _%$args122204%_
        (apply make-instance gx#private-feature-expander::t _%$args122204%_)))
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
      (lambda _%$args122201%_
        (apply make-instance gx#reserved-expander::t _%$args122201%_)))
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
      (lambda _%$args122198%_
        (apply make-instance gx#macro-expander::t _%$args122198%_)))
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
      (lambda _%$args122195%_
        (apply make-instance gx#rename-macro-expander::t _%$args122195%_)))
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
      (lambda _%$args122192%_
        (apply make-instance gx#user-expander::t _%$args122192%_)))
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
      (lambda _%$args122189%_
        (apply make-instance gx#expander-mark::t _%$args122189%_)))
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
      (lambda (_%ctx122173%_
               _%message122174%_
               _%stx122175%_
               .
               _%details122176%_)
        (let ((_%ctx122187%_
               (let ((_%$e122178%_ _%ctx122173%_))
                 (if _%$e122178%_
                     _%$e122178%_
                     (let ((_%$e122181%_ (gx#core-context-top__0)))
                       (if _%$e122181%_
                           ((lambda (_%ctx122184%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx122184%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e122181%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message122174%_
                  (cons _%stx122175%_ _%details122176%_)
                  _%ctx122187%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx122160%_ _%expression?122161%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx122160%_ _%expression?122161%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx122166%_)
        (let ((_%expression?122168%_ '#f))
          (gx#eval-syntax__% _%stx122166%_ _%expression?122168%_))))
    (define gx#eval-syntax
      (lambda _g122624_
        (let ((_g122623_ (##length _g122624_)))
          (cond ((##fx= _g122623_ 1) (apply gx#eval-syntax__0 _g122624_))
                ((##fx= _g122623_ 2) (apply gx#eval-syntax__% _g122624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g122624_))))))
    (define gx#eval-syntax*
      (lambda (_%stx122157%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx122157%_))))
    (define gx#core-expand__%
      (lambda (_%stx122144%_ _%expression?122145%_)
        (if _%expression?122145%_
            (gx#core-expand-expression _%stx122144%_)
            (gx#core-expand-top _%stx122144%_))))
    (define gx#core-expand__0
      (lambda (_%stx122150%_)
        (let ((_%expression?122152%_ '#f))
          (gx#core-expand__% _%stx122150%_ _%expression?122152%_))))
    (define gx#core-expand
      (lambda _g122626_
        (let ((_g122625_ (##length _g122626_)))
          (cond ((##fx= _g122625_ 1) (apply gx#core-expand__0 _g122626_))
                ((##fx= _g122625_ 2) (apply gx#core-expand__% _g122626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g122626_))))))
    (define gx#core-expand-top
      (lambda (_%stx122111%_)
        (let* ((_%stx122113%_ (gx#core-expand*__0 _%stx122111%_))
               (_%e122114122121%_ _%stx122113%_)
               (_%E122116122125%_
                (lambda () (gx#core-expand-expression _%stx122113%_)))
               (_%E122115122139%_
                (lambda ()
                  (if (gx#stx-pair? _%e122114122121%_)
                      (let ((_%e122117122129%_
                             (gx#syntax-e _%e122114122121%_)))
                        (let ((_%hd122118122132%_ (##car _%e122117122129%_))
                              (_%tl122119122134%_ (##cdr _%e122117122129%_)))
                          (let ((_%form122137%_ _%hd122118122132%_))
                            (if (gx#core-bound-identifier?__0 _%form122137%_)
                                _%stx122113%_
                                (_%E122116122125%_)))))
                      (_%E122116122125%_)))))
          (_%E122115122139%_))))
    (define gx#core-expand-expression
      (lambda (_%stx122043%_)
        (letrec ((_%sealed-expression?122045%_
                  (lambda (_%hd122081%_)
                    (if (gx#sealed-syntax? _%hd122081%_)
                        (let* ((_%e122082122089%_ _%hd122081%_)
                               (_%E122084122093%_ (lambda () '#f))
                               (_%E122083122107%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e122082122089%_)
                                      (let ((_%e122085122097%_
                                             (gx#syntax-e _%e122082122089%_)))
                                        (let ((_%hd122086122100%_
                                               (##car _%e122085122097%_))
                                              (_%tl122087122102%_
                                               (##cdr _%e122085122097%_)))
                                          (let ((_%form122105%_
                                                 _%hd122086122100%_))
                                            (gx#core-bound-identifier?__%
                                             _%form122105%_
                                             gx#expression-form-binding?))))
                                      (_%E122084122093%_)))))
                          (_%E122083122107%_))
                        '#f)))
                 (_%illegal-expression122046%_
                  (lambda (_%hd122078%_ . _%_122079%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx122043%_
                     _%hd122078%_)))
                 (_%expand-e122047%_
                  (lambda (_%form122070%_ _%hd122071%_)
                    (let ((_%bind122073%_
                           (if (##structure-instance-of?
                                _%form122070%_
                                'gx#binding::t)
                               _%form122070%_
                               (gx#resolve-identifier__0 _%form122070%_))))
                      (if (gx#core-expander-binding? _%bind122073%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind122073%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd122071%_
                            (gx#stx-source _%stx122043%_)))
                          (if (##structure-direct-instance-of?
                               _%bind122073%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind122073%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd122071%_
                                 (gx#stx-source _%stx122043%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx122043%_
                               _%form122070%_)))))))
          (let ((_%hd122049%_ (gx#core-expand-head _%stx122043%_)))
            (if (_%sealed-expression?122045%_ _%hd122049%_)
                _%hd122049%_
                (if (gx#stx-pair? _%hd122049%_)
                    (let* ((_%form122053%_ (gx#stx-car _%hd122049%_))
                           (_%bind122055%_
                            (if (gx#identifier? _%form122053%_)
                                (gx#resolve-identifier__0 _%form122053%_)
                                '#f)))
                      (if (or (not _%bind122055%_)
                              (not (gx#core-expander-binding? _%bind122055%_)))
                          (_%expand-e122047%_
                           '%%app
                           (cons '%%app _%hd122049%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind122055%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd122049%_
                               _%illegal-expression122046%_)
                              (if (gx#expression-form-binding? _%bind122055%_)
                                  (_%expand-e122047%_
                                   _%bind122055%_
                                   _%hd122049%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind122055%_)
                                      (gx#core-expand-expression
                                       (_%expand-e122047%_
                                        _%bind122055%_
                                        _%hd122049%_))
                                      (_%illegal-expression122046%_
                                       _%hd122049%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd122049%_)
                        (_%illegal-expression122046%_ _%hd122049%_)
                        (if (gx#identifier? _%hd122049%_)
                            (_%expand-e122047%_
                             '%%ref
                             (cons '%%ref (cons _%hd122049%_ '())))
                            (if (gx#stx-datum? _%hd122049%_)
                                (_%expand-e122047%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd122049%_ '())))
                                (_%illegal-expression122046%_
                                 _%hd122049%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx122038%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx122041%_ (gx#core-expand-expression _%stx122038%_)))
             (values _%stx122041%_ (gx#eval-syntax* _%stx122041%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx122019%_ _%stop?122020%_)
        (let _%lp122022%_ ((_%stx122024%_ _%stx122019%_))
          (if (_%stop?122020%_ _%stx122024%_)
              _%stx122024%_
              (let ((_%rstx122026%_ (gx#core-expand1 _%stx122024%_)))
                (if (eq? _%stx122024%_ _%rstx122026%_)
                    _%stx122024%_
                    (_%lp122022%_ _%rstx122026%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx122031%_)
        (let ((_%stop?122033%_ false))
          (gx#core-expand*__% _%stx122031%_ _%stop?122033%_))))
    (define gx#core-expand*
      (lambda _g122628_
        (let ((_g122627_ (##length _g122628_)))
          (cond ((##fx= _g122627_ 1) (apply gx#core-expand*__0 _g122628_))
                ((##fx= _g122627_ 2) (apply gx#core-expand*__% _g122628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g122628_))))))
    (define gx#core-expand1
      (lambda (_%stx121971%_)
        (letrec ((_%step121973%_
                  (lambda (_%hd122010%_)
                    (let ((_%bind122012%_
                           (gx#resolve-identifier__0 _%hd122010%_)))
                      (if (##structure-instance-of?
                           _%bind122012%_
                           'gx#runtime-binding::t)
                          _%stx121971%_
                          (if (##structure-direct-instance-of?
                               _%bind122012%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind122012%_
                                '4
                                '#f
                                '#f)
                               _%stx121971%_)
                              (if (not _%bind122012%_)
                                  _%stx121971%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx121971%_))))))))
          (let* ((_%e121974121982%_ _%stx121971%_)
                 (_%E121980121986%_ (lambda () _%stx121971%_))
                 (_%E121976121992%_
                  (lambda ()
                    (let ((_%hd121990%_ _%e121974121982%_))
                      (if (gx#identifier? _%hd121990%_)
                          (_%step121973%_ _%hd121990%_)
                          (_%E121980121986%_)))))
                 (_%E121975122006%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121974121982%_)
                        (let ((_%e121977121996%_
                               (gx#syntax-e _%e121974121982%_)))
                          (let ((_%hd121978121999%_ (##car _%e121977121996%_))
                                (_%tl121979122001%_ (##cdr _%e121977121996%_)))
                            (let ((_%hd122004%_ _%hd121978121999%_))
                              (if (gx#identifier? _%hd122004%_)
                                  (_%step121973%_ _%hd122004%_)
                                  (_%E121976121992%_)))))
                        (_%E121976121992%_)))))
            (_%E121975122006%_)))))
    (define gx#core-expand-head
      (lambda (_%stx121937%_)
        (letrec ((_%stop?121939%_
                  (lambda (_%stx121941%_)
                    (let* ((_%e121942121949%_ _%stx121941%_)
                           (_%E121944121953%_ (lambda () '#f))
                           (_%E121943121967%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121942121949%_)
                                  (let ((_%e121945121957%_
                                         (gx#syntax-e _%e121942121949%_)))
                                    (let ((_%hd121946121960%_
                                           (##car _%e121945121957%_))
                                          (_%tl121947121962%_
                                           (##cdr _%e121945121957%_)))
                                      (let ((_%hd121965%_ _%hd121946121960%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd121965%_))))
                                  (_%E121944121953%_)))))
                      (_%E121943121967%_)))))
          (gx#core-expand*__% _%stx121937%_ _%stop?121939%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx121743%_
               _%expand-special121744%_
               _%begin-form121745%_
               _%expand-e121746%_)
        (letrec ((_%expand-splice121748%_
                  (lambda (_%hd121911%_
                           _%body121912%_
                           _%rest121913%_
                           _%r121914%_)
                    (if (gx#stx-list? _%body121912%_)
                        (_%K121752%_
                         (gx#stx-foldr cons _%rest121913%_ _%body121912%_)
                         _%r121914%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx121743%_
                         _%hd121911%_))))
                 (_%expand-cond-expand121749%_
                  (lambda (_%hd121907%_ _%rest121908%_ _%r121909%_)
                    (_%K121752%_
                     (cons (gx#core-expand-cond-expand% _%hd121907%_)
                           _%rest121908%_)
                     _%r121909%_)))
                 (_%expand-include121750%_
                  (lambda (_%hd121856%_ _%rest121857%_ _%r121858%_)
                    (let* ((_%e121859121869%_ _%hd121856%_)
                           (_%E121861121873%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121859121869%_)))
                           (_%E121860121903%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121859121869%_)
                                  (let ((_%e121862121877%_
                                         (gx#syntax-e _%e121859121869%_)))
                                    (let ((_%hd121863121880%_
                                           (##car _%e121862121877%_))
                                          (_%tl121864121882%_
                                           (##cdr _%e121862121877%_)))
                                      (if (gx#stx-pair? _%tl121864121882%_)
                                          (let ((_%e121865121885%_
                                                 (gx#syntax-e
                                                  _%tl121864121882%_)))
                                            (let ((_%hd121866121888%_
                                                   (##car _%e121865121885%_))
                                                  (_%tl121867121890%_
                                                   (##cdr _%e121865121885%_)))
                                              (let ((_%path121893%_
                                                     _%hd121866121888%_))
                                                (if (gx#stx-null?
                                                     _%tl121867121890%_)
                                                    (if (gx#stx-string?
                                                         _%path121893%_)
                                                        (let* ((_%rpath121895%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path121893%_
                         (gx#stx-source _%hd121856%_)))
                       (_%block121897%_
                        (gx#core-expand-include%__%
                         _%hd121856%_
                         _%rpath121895%_))
                       (_%rbody121900%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block121897%_
                            _%expand-special121744%_
                            '#f
                            _%expand-e121746%_))
                         gx#current-expander-path
                         (cons _%rpath121895%_ (gx#current-expander-path)))))
                  (_%K121752%_
                   _%rest121857%_
                   (__foldr1 cons _%r121858%_ _%rbody121900%_)))
                (_%E121861121873%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121861121873%_)))))
                                          (_%E121861121873%_))))
                                  (_%E121861121873%_)))))
                      (_%E121860121903%_))))
                 (_%expand-expression121751%_
                  (lambda (_%hd121852%_ _%rest121853%_ _%r121854%_)
                    (_%K121752%_
                     _%rest121853%_
                     (cons (_%expand-e121746%_ _%hd121852%_) _%r121854%_))))
                 (_%K121752%_
                  (lambda (_%rest121782%_ _%r121783%_)
                    (let* ((_%e121784121791%_ _%rest121782%_)
                           (_%E121786121795%_
                            (lambda ()
                              (if _%begin-form121745%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form121745%_
                                    (reverse _%r121783%_))
                                   (gx#stx-source _%stx121743%_))
                                  _%r121783%_)))
                           (_%E121785121848%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121784121791%_)
                                  (let ((_%e121787121799%_
                                         (gx#syntax-e _%e121784121791%_)))
                                    (let ((_%hd121788121802%_
                                           (##car _%e121787121799%_))
                                          (_%tl121789121804%_
                                           (##cdr _%e121787121799%_)))
                                      (let* ((_%hd121807%_ _%hd121788121802%_)
                                             (_%rest121809%_
                                              _%tl121789121804%_)
                                             (_%hd121811%_
                                              (gx#core-expand-head
                                               _%hd121807%_))
                                             (_%e121812121819%_ _%hd121811%_)
                                             (_%E121814121823%_
                                              (lambda ()
                                                (_%expand-expression121751%_
                                                 _%hd121811%_
                                                 _%rest121809%_
                                                 _%r121783%_)))
                                             (_%E121813121844%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121812121819%_)
                                                    (let ((_%e121815121827%_
                                                           (gx#syntax-e
                                                            _%e121812121819%_)))
                                                      (let ((_%hd121816121830%_
                                                             (##car _%e121815121827%_))
                                                            (_%tl121817121832%_
                                                             (##cdr _%e121815121827%_)))
                                                        (let* ((_%form121835%_
                                                                _%hd121816121830%_)
                                                               (_%body121837%_
                                                                _%tl121817121832%_)
                                                               (_%bind121839%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form121835%_)
                            (gx#resolve-identifier__0 _%form121835%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind121839%_)
                      (let ((_%$e121841%_
                             (##unchecked-structure-ref
                              _%bind121839%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e121841%_)
                            (_%expand-splice121748%_
                             _%hd121811%_
                             _%body121837%_
                             _%rest121809%_
                             _%r121783%_)
                            (if (eq? '%#cond-expand _%$e121841%_)
                                (_%expand-cond-expand121749%_
                                 _%hd121811%_
                                 _%rest121809%_
                                 _%r121783%_)
                                (if (eq? '%#include _%$e121841%_)
                                    (_%expand-include121750%_
                                     _%hd121811%_
                                     _%rest121809%_
                                     _%r121783%_)
                                    (_%expand-special121744%_
                                     _%hd121811%_
                                     _%K121752%_
                                     _%rest121809%_
                                     _%r121783%_)))))
                      (_%expand-expression121751%_
                       _%hd121811%_
                       _%rest121809%_
                       _%r121783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121814121823%_)))))
                                        (_%E121813121844%_))))
                                  (_%E121786121795%_)))))
                      (_%E121785121848%_)))))
          (let* ((_%e121753121760%_ _%stx121743%_)
                 (_%E121755121764%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121753121760%_)))
                 (_%E121754121778%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121753121760%_)
                        (let ((_%e121756121768%_
                               (gx#syntax-e _%e121753121760%_)))
                          (let ((_%hd121757121771%_ (##car _%e121756121768%_))
                                (_%tl121758121773%_ (##cdr _%e121756121768%_)))
                            (let ((_%body121776%_ _%tl121758121773%_))
                              (if (gx#stx-list? _%body121776%_)
                                  (_%K121752%_ _%body121776%_ '())
                                  (_%E121755121764%_)))))
                        (_%E121755121764%_)))))
            (_%E121754121778%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx121919%_ _%expand-special121920%_)
        (let* ((_%begin-form121922%_ '%#begin)
               (_%expand-e121924%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121919%_
           _%expand-special121920%_
           _%begin-form121922%_
           _%expand-e121924%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx121926%_ _%expand-special121927%_ _%begin-form121928%_)
        (let ((_%expand-e121930%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121926%_
           _%expand-special121927%_
           _%begin-form121928%_
           _%expand-e121930%_))))
    (define gx#core-expand-block
      (lambda _g122630_
        (let ((_g122629_ (##length _g122630_)))
          (cond ((##fx= _g122629_ 2) (apply gx#core-expand-block__0 _g122630_))
                ((##fx= _g122629_ 3) (apply gx#core-expand-block__1 _g122630_))
                ((##fx= _g122629_ 4) (apply gx#core-expand-block__% _g122630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g122630_))))))
    (define gx#core-expand-block*
      (lambda (_%stx121691%_ _%expand-special121692%_)
        (let* ((_%g121693121704%_
                (gx#core-expand-block__1
                 _%stx121691%_
                 _%expand-special121692%_
                 '#f))
               (_%E121697121708%_
                (lambda ()
                  (error '"No clause matching"
                         _%g121693121704%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K121702121739%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx121691%_)))
                (_%K121699121725%_ (lambda (_%expr121723%_) _%expr121723%_))
                (_%K121698121714%_
                 (lambda (_%body121712%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body121712%_))
                    (gx#stx-source _%stx121691%_)))))
            (let ((_%try-match121695121735%_
                   (lambda ()
                     (if (pair? _%g121693121704%_)
                         (let ((_%tl121701121730%_ (##cdr _%g121693121704%_))
                               (_%hd121700121728%_ (##car _%g121693121704%_)))
                           (if (null? _%tl121701121730%_)
                               (let ((_%expr121733%_ _%hd121700121728%_))
                                 (_%K121699121725%_ _%expr121733%_))
                               (let ((_%body121717%_ _%g121693121704%_))
                                 (_%K121698121714%_ _%body121717%_))))
                         (let ((_%body121717%_ _%g121693121704%_))
                           (_%K121698121714%_ _%body121717%_))))))
              (if (null? _%g121693121704%_)
                  (_%K121702121739%_)
                  (_%try-match121695121735%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx121516%_)
        (letrec ((_%satisfied?121518%_
                  (lambda (_%condition121619%_)
                    (let* ((_%e121620121635%_ _%condition121619%_)
                           (_%E121630121639%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121620121635%_)))
                           (_%E121623121658%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121620121635%_)
                                  (let ((_%e121631121643%_
                                         (gx#syntax-e _%e121620121635%_)))
                                    (let ((_%hd121632121646%_
                                           (##car _%e121631121643%_))
                                          (_%tl121633121648%_
                                           (##cdr _%e121631121643%_)))
                                      (let* ((_%combinator121651%_
                                              _%hd121632121646%_)
                                             (_%body121653%_
                                              _%tl121633121648%_))
                                        (if (gx#stx-list? _%body121653%_)
                                            (let ((_%$e121655%_
                                                   (gx#stx-e
                                                    _%combinator121651%_)))
                                              (if (eq? 'not _%$e121655%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?121518%_
                                                        _%body121653%_))
                                                  (if (eq? 'and _%$e121655%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?121518%_
                                                       _%body121653%_)
                                                      (if (eq? 'or
                                                               _%$e121655%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?121518%_
                                                           _%body121653%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e121655%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body121653%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx121516%_
                       _%combinator121651%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E121630121639%_)))))
                                  (_%E121630121639%_))))
                           (_%E121622121681%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121620121635%_)
                                  (let ((_%e121624121662%_
                                         (gx#syntax-e _%e121620121635%_)))
                                    (let ((_%hd121625121665%_
                                           (##car _%e121624121662%_))
                                          (_%tl121626121667%_
                                           (##cdr _%e121624121662%_)))
                                      (if (and (gx#identifier?
                                                _%hd121625121665%_)
                                               (gx#core-identifier=?
                                                _%hd121625121665%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl121626121667%_)
                                              (let ((_%e121627121670%_
                                                     (gx#syntax-e
                                                      _%tl121626121667%_)))
                                                (let ((_%hd121628121673%_
                                                       (##car _%e121627121670%_))
                                                      (_%tl121629121675%_
                                                       (##cdr _%e121627121670%_)))
                                                  (let ((_%expr121678%_
                                                         _%hd121628121673%_))
                                                    (if (gx#stx-null?
                                                         _%tl121629121675%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr121678%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E121623121658%_)))))
                                              (_%E121623121658%_))
                                          (_%E121623121658%_))))
                                  (_%E121623121658%_))))
                           (_%E121621121687%_
                            (lambda ()
                              (let ((_%id121685%_ _%e121620121635%_))
                                (if (gx#identifier? _%id121685%_)
                                    (gx#core-bound-identifier?__%
                                     _%id121685%_
                                     gx#feature-binding?)
                                    (_%E121622121681%_))))))
                      (_%E121621121687%_))))
                 (_%loop121519%_
                  (lambda (_%rest121549%_)
                    (let* ((_%e121550121558%_ _%rest121549%_)
                           (_%E121556121562%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121550121558%_)))
                           (_%E121552121566%_
                            (lambda ()
                              (if (gx#stx-null? _%e121550121558%_)
                                  '()
                                  (_%E121556121562%_))))
                           (_%E121551121615%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121550121558%_)
                                  (let ((_%e121553121570%_
                                         (gx#syntax-e _%e121550121558%_)))
                                    (let ((_%hd121554121573%_
                                           (##car _%e121553121570%_))
                                          (_%tl121555121575%_
                                           (##cdr _%e121553121570%_)))
                                      (let* ((_%hd121578%_ _%hd121554121573%_)
                                             (_%rest121580%_
                                              _%tl121555121575%_)
                                             (_%e121581121588%_ _%hd121578%_)
                                             (_%E121583121592%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e121581121588%_)))
                                             (_%E121582121611%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121581121588%_)
                                                    (let ((_%e121584121596%_
                                                           (gx#syntax-e
                                                            _%e121581121588%_)))
                                                      (let ((_%hd121585121599%_
                                                             (##car _%e121584121596%_))
                                                            (_%tl121586121601%_
                                                             (##cdr _%e121584121596%_)))
                                                        (let* ((_%condition121604%_
                                                                _%hd121585121599%_)
                                                               (_%body121606%_
                                                                _%tl121586121601%_))
                                                          (if (gx#stx-eq?
                                                               _%condition121604%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest121580%_)
                          _%body121606%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx121516%_
                           _%hd121578%_))
                      (if (_%satisfied?121518%_ _%condition121604%_)
                          _%body121606%_
                          (_%loop121519%_ _%rest121580%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121583121592%_)))))
                                        (_%E121582121611%_))))
                                  (_%E121552121566%_)))))
                      (_%E121551121615%_)))))
          (let* ((_%e121520121527%_ _%stx121516%_)
                 (_%E121522121531%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121520121527%_)))
                 (_%E121521121545%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121520121527%_)
                        (let ((_%e121523121535%_
                               (gx#syntax-e _%e121520121527%_)))
                          (let ((_%hd121524121538%_ (##car _%e121523121535%_))
                                (_%tl121525121540%_ (##cdr _%e121523121535%_)))
                            (let ((_%clauses121543%_ _%tl121525121540%_))
                              (if (gx#stx-list? _%clauses121543%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop121519%_ _%clauses121543%_))
                                  (_%E121522121531%_)))))
                        (_%E121522121531%_)))))
            (_%E121521121545%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx121459%_ _%rpath121460%_)
        (let* ((_%e121461121471%_ _%stx121459%_)
               (_%E121463121475%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121461121471%_)))
               (_%E121462121502%_
                (lambda ()
                  (if (gx#stx-pair? _%e121461121471%_)
                      (let ((_%e121464121479%_
                             (gx#syntax-e _%e121461121471%_)))
                        (let ((_%hd121465121482%_ (##car _%e121464121479%_))
                              (_%tl121466121484%_ (##cdr _%e121464121479%_)))
                          (if (gx#stx-pair? _%tl121466121484%_)
                              (let ((_%e121467121487%_
                                     (gx#syntax-e _%tl121466121484%_)))
                                (let ((_%hd121468121490%_
                                       (##car _%e121467121487%_))
                                      (_%tl121469121492%_
                                       (##cdr _%e121467121487%_)))
                                  (let ((_%path121495%_ _%hd121468121490%_))
                                    (if (gx#stx-null? _%tl121469121492%_)
                                        (if (gx#stx-string? _%path121495%_)
                                            (let ((_%rpath121500%_
                                                   (let ((_%$e121497%_
                                                          _%rpath121460%_))
                                                     (if _%$e121497%_
                                                         _%$e121497%_
                                                         (gx#core-resolve-path__%
                                                          _%path121495%_
                                                          (gx#stx-source
                                                           _%stx121459%_))))))
                                              (if (member _%rpath121500%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx121459%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath121500%_))
                                                    (gx#stx-source
                                                     _%stx121459%_)))))
                                            (_%E121463121475%_))
                                        (_%E121463121475%_)))))
                              (_%E121463121475%_))))
                      (_%E121463121475%_)))))
          (_%E121462121502%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx121509%_)
        (let ((_%rpath121511%_ '#f))
          (gx#core-expand-include%__% _%stx121509%_ _%rpath121511%_))))
    (define gx#core-expand-include%
      (lambda _g122632_
        (let ((_g122631_ (##length _g122632_)))
          (cond ((##fx= _g122631_ 1)
                 (apply gx#core-expand-include%__0 _g122632_))
                ((##fx= _g122631_ 2)
                 (apply gx#core-expand-include%__% _g122632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g122632_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K121425%_ _%stx121426%_ _%method121427%_)
        (if (procedure? _%K121425%_)
            (let ((_%$e121430%_ (gx#stx-source _%stx121426%_)))
              (if _%$e121430%_
                  ((lambda (_%g121432121434%_)
                     (gx#stx-wrap-source
                      (_%K121425%_ _%stx121426%_)
                      _%g121432121434%_))
                   _%$e121430%_)
                  (_%K121425%_ _%stx121426%_)))
            (let ((_%$e121438%_
                   (bound-method-ref _%K121425%_ _%method121427%_)))
              (if _%$e121438%_
                  ((lambda (_%g121440121442%_)
                     (gx#core-apply-expander__%
                      _%g121440121442%_
                      _%stx121426%_
                      _%method121427%_))
                   _%$e121438%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx121426%_
                   _%method121427%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K121449%_ _%stx121450%_)
        (let ((_%method121452%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K121449%_
           _%stx121450%_
           _%method121452%_))))
    (define gx#core-apply-expander
      (lambda _g122634_
        (let ((_g122633_ (##length _g122634_)))
          (cond ((##fx= _g122633_ 2)
                 (apply gx#core-apply-expander__0 _g122634_))
                ((##fx= _g122633_ 3)
                 (apply gx#core-apply-expander__% _g122634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g122634_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self119467121408%_ _%stx121410%_)
        (let* ((_%self121412%_ _%self119467121408%_)
               (_%self121414%_ _%self121412%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx121410%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self119468121248%_ _%stx121250%_)
        (let* ((_%self121252%_ _%self119468121248%_)
               (_%self121254%_ _%self121252%_)
               (_%self121263121269%_ _%self121254%_)
               (_%E121265121273%_
                (lambda ()
                  (error '"No clause matching"
                         _%self121263121269%_
                         '((macro-expander K)))
                  '#!void))
               (_%K121266121278%_
                (lambda (_%K121276%_)
                  (gx#core-apply-expander__0 _%K121276%_ _%stx121250%_)))
               (_%e121267121281%_
                (##unchecked-structure-ref _%self121263121269%_ '1 '#f '#f))
               (_%K121284%_ _%e121267121281%_))
          (_%K121266121278%_ _%K121284%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self119469121088%_ _%stx121090%_)
        (let* ((_%self121092%_ _%self119469121088%_)
               (_%self121094%_ _%self121092%_))
          (if (gx#sealed-syntax? _%stx121090%_)
              _%stx121090%_
              (let* ((_%self121103121109%_ _%self121094%_)
                     (_%E121105121113%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self121103121109%_
                               '((core-expander K)))
                        '#!void))
                     (_%K121106121118%_
                      (lambda (_%K121116%_)
                        (gx#core-apply-expander__0 _%K121116%_ _%stx121090%_)))
                     (_%e121107121121%_
                      (##unchecked-structure-ref
                       _%self121103121109%_
                       '1
                       '#f
                       '#f))
                     (_%K121124%_ _%e121107121121%_))
                (_%K121106121118%_ _%K121124%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self119470120937%_ _%stx120939%_ _%top?120940%_)
        (let* ((_%self120942%_ _%self119470120937%_)
               (_%self120944%_ _%self120942%_))
          (if (_%top?120940%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self120944%_
               _%stx120939%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx120939%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self119470120957%_ _%stx120958%_)
        (let ((_%top?120960%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self119470120957%_
           _%stx120958%_
           _%top?120960%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g122636_
        (let ((_g122635_ (##length _g122636_)))
          (cond ((##fx= _g122635_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g122636_))
                ((##fx= _g122635_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g122636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g122636_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self119471120798%_ _%stx120800%_)
        (let* ((_%self120802%_ _%self119471120798%_)
               (_%self120804%_ _%self120802%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self120804%_
           _%stx120800%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self119472120610%_ _%stx120612%_)
        (let* ((_%self120614%_ _%self119472120610%_)
               (_%self120616%_ _%self120614%_)
               (_%self120625120631%_ _%self120616%_)
               (_%E120627120635%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120625120631%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K120628120668%_
                (lambda (_%id120638%_)
                  (let* ((_%e120639120646%_ _%stx120612%_)
                         (_%E120641120650%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e120639120646%_)))
                         (_%E120640120664%_
                          (lambda ()
                            (if (gx#stx-pair? _%e120639120646%_)
                                (let ((_%e120642120654%_
                                       (gx#syntax-e _%e120639120646%_)))
                                  (let ((_%hd120643120657%_
                                         (##car _%e120642120654%_))
                                        (_%tl120644120659%_
                                         (##cdr _%e120642120654%_)))
                                    (let ((_%body120662%_ _%tl120644120659%_))
                                      (gx#core-cons
                                       _%id120638%_
                                       _%body120662%_))))
                                (_%E120641120650%_)))))
                    (_%E120640120664%_))))
               (_%e120629120671%_
                (##unchecked-structure-ref _%self120625120631%_ '1 '#f '#f))
               (_%id120674%_ _%e120629120671%_))
          (_%K120628120668%_ _%id120674%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self120436%_ _%stx120437%_ _%method120438%_)
        (let* ((_%self120439120447%_ _%self120436%_)
               (_%E120441120451%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120439120447%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K120442120458%_
                (lambda (_%phi120454%_ _%ctx120455%_ _%K120456%_)
                  (gx#core-apply-user-macro
                   _%K120456%_
                   _%stx120437%_
                   _%ctx120455%_
                   _%phi120454%_
                   _%method120438%_))))
          (if (##structure-instance-of?
               _%self120439120447%_
               'gx#user-expander::t)
              (let* ((_%e120443120461%_
                      (##unchecked-structure-ref
                       _%self120439120447%_
                       '1
                       '#f
                       '#f))
                     (_%K120464%_ _%e120443120461%_)
                     (_%e120444120466%_
                      (##unchecked-structure-ref
                       _%self120439120447%_
                       '2
                       '#f
                       '#f))
                     (_%ctx120469%_ _%e120444120466%_)
                     (_%e120445120471%_
                      (##unchecked-structure-ref
                       _%self120439120447%_
                       '3
                       '#f
                       '#f))
                     (_%phi120474%_ _%e120445120471%_))
                (_%K120442120458%_ _%phi120474%_ _%ctx120469%_ _%K120464%_))
              (_%E120441120451%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self120479%_ _%stx120480%_)
        (let ((_%method120482%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self120479%_
           _%stx120480%_
           _%method120482%_))))
    (define gx#core-apply-user-expander
      (lambda _g122638_
        (let ((_g122637_ (##length _g122638_)))
          (cond ((##fx= _g122637_ 2)
                 (apply gx#core-apply-user-expander__0 _g122638_))
                ((##fx= _g122637_ 3)
                 (apply gx#core-apply-user-expander__% _g122638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g122638_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K120426%_
               _%stx120427%_
               _%ctx120428%_
               _%phi120429%_
               _%method120430%_)
        (let ((_%mark120432%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx120428%_
                _%phi120429%_
                _%stx120427%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K120426%_
               (gx#stx-apply-mark _%stx120427%_ _%mark120432%_)
               _%method120430%_)
              _%mark120432%_))
           gx#current-expander-marks
           (cons _%mark120432%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx120274%_ _%phi120275%_ _%ctx120276%_)
        (let _%lp120278%_ ((_%bind120280%_
                            (gx#core-resolve-identifier__%
                             _%stx120274%_
                             _%phi120275%_
                             _%ctx120276%_)))
          (if (##structure-direct-instance-of?
               _%bind120280%_
               'gx#import-binding::t)
              (_%lp120278%_
               (##unchecked-structure-ref _%bind120280%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind120280%_
                   'gx#alias-binding::t)
                  (_%lp120278%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind120280%_ '4 '#f '#f)
                    _%phi120275%_
                    _%ctx120276%_))
                  _%bind120280%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx120288%_)
        (let* ((_%phi120290%_ (gx#current-expander-phi))
               (_%ctx120292%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120288%_
           _%phi120290%_
           _%ctx120292%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx120294%_ _%phi120295%_)
        (let ((_%ctx120297%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120294%_
           _%phi120295%_
           _%ctx120297%_))))
    (define gx#resolve-identifier
      (lambda _g122640_
        (let ((_g122639_ (##length _g122640_)))
          (cond ((##fx= _g122639_ 1)
                 (apply gx#resolve-identifier__0 _g122640_))
                ((##fx= _g122639_ 2)
                 (apply gx#resolve-identifier__1 _g122640_))
                ((##fx= _g122639_ 3)
                 (apply gx#resolve-identifier__% _g122640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g122640_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx120229%_
               _%val120230%_
               _%rebind?120231%_
               _%phi120232%_
               _%ctx120233%_)
        (let ((_%rebind?120238%_
               (if (not _%rebind?120231%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?120231%_)
                       _%rebind?120231%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx120229%_)
           _%val120230%_
           _%rebind?120238%_
           _%phi120232%_
           _%ctx120233%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx120243%_ _%val120244%_)
        (let* ((_%rebind?120246%_ '#f)
               (_%phi120248%_ (gx#current-expander-phi))
               (_%ctx120250%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120243%_
           _%val120244%_
           _%rebind?120246%_
           _%phi120248%_
           _%ctx120250%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx120252%_ _%val120253%_ _%rebind?120254%_)
        (let* ((_%phi120256%_ (gx#current-expander-phi))
               (_%ctx120258%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120252%_
           _%val120253%_
           _%rebind?120254%_
           _%phi120256%_
           _%ctx120258%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx120260%_ _%val120261%_ _%rebind?120262%_ _%phi120263%_)
        (let ((_%ctx120265%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120260%_
           _%val120261%_
           _%rebind?120262%_
           _%phi120263%_
           _%ctx120265%_))))
    (define gx#bind-identifier!
      (lambda _g122642_
        (let ((_g122641_ (##length _g122642_)))
          (cond ((##fx= _g122641_ 2) (apply gx#bind-identifier!__0 _g122642_))
                ((##fx= _g122641_ 3) (apply gx#bind-identifier!__1 _g122642_))
                ((##fx= _g122641_ 4) (apply gx#bind-identifier!__2 _g122642_))
                ((##fx= _g122641_ 5) (apply gx#bind-identifier!__% _g122642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g122642_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx120195%_ _%phi120196%_ _%ctx120197%_)
        (let _%lp120199%_ ((_%e120201%_ _%stx120195%_)
                           (_%marks120202%_ (gx#current-expander-marks)))
          (if (symbol? _%e120201%_)
              (gx#core-resolve-binding
               _%e120201%_
               _%phi120196%_
               _%phi120196%_
               _%ctx120197%_
               (reverse _%marks120202%_))
              (if (gx#identifier-quote? _%e120201%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e120201%_ '1 '#f '#f)
                   _%phi120196%_
                   '0
                   (##unchecked-structure-ref _%e120201%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e120201%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e120201%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e120201%_ '1 '#f '#f)
                       _%phi120196%_
                       _%phi120196%_
                       _%ctx120197%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e120201%_ '3 '#f '#f)
                        _%marks120202%_))
                      (if (##structure-direct-instance-of?
                           _%e120201%_
                           'gx#syntax-wrap::t)
                          (_%lp120199%_
                           (##unchecked-structure-ref _%e120201%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e120201%_ '3 '#f '#f)
                            _%marks120202%_))
                          (if (##structure-instance-of?
                               _%e120201%_
                               'gerbil#AST::t)
                              (_%lp120199%_
                               (##unchecked-structure-ref
                                _%e120201%_
                                '1
                                '#f
                                '#f)
                               _%marks120202%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx120195%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx120213%_)
        (let* ((_%phi120215%_ (gx#current-expander-phi))
               (_%ctx120217%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120213%_
           _%phi120215%_
           _%ctx120217%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx120219%_ _%phi120220%_)
        (let ((_%ctx120222%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120219%_
           _%phi120220%_
           _%ctx120222%_))))
    (define gx#core-resolve-identifier
      (lambda _g122644_
        (let ((_g122643_ (##length _g122644_)))
          (cond ((##fx= _g122643_ 1)
                 (apply gx#core-resolve-identifier__0 _g122644_))
                ((##fx= _g122643_ 2)
                 (apply gx#core-resolve-identifier__1 _g122644_))
                ((##fx= _g122643_ 3)
                 (apply gx#core-resolve-identifier__% _g122644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g122644_))))))
    (define gx#core-resolve-binding
      (lambda (_%id120105%_
               _%phi120106%_
               _%src-phi120107%_
               _%ctx120108%_
               _%marks120109%_)
        (letrec ((_%resolve120111%_
                  (lambda (_%ctx120179%_ _%src-phi120180%_ _%key120181%_)
                    (let _%lp120183%_ ((_%ctx120185%_
                                        (gx#core-context-shift
                                         _%ctx120179%_
                                         _%phi120106%_))
                                       (_%dphi120186%_
                                        (fx- _%phi120106%_ _%src-phi120180%_)))
                      (let ((_%$e120188%_
                             (gx#core-context-resolve
                              _%ctx120185%_
                              _%key120181%_)))
                        (if _%$e120188%_
                            _%$e120188%_
                            (if (fxzero? _%dphi120186%_)
                                '#f
                                (if (fxpositive? _%dphi120186%_)
                                    (_%lp120183%_
                                     (gx#core-context-shift _%ctx120185%_ '-1)
                                     (##fx- _%dphi120186%_ '1))
                                    (_%lp120183%_
                                     (gx#core-context-shift _%ctx120185%_ '1)
                                     (##fx+ _%dphi120186%_ '1))))))))))
          (let _%lp120113%_ ((_%ctx120115%_ _%ctx120108%_)
                             (_%src-phi120116%_ _%src-phi120107%_)
                             (_%rest120117%_ _%marks120109%_))
            (let* ((_%rest120118120126%_ _%rest120117%_)
                   (_%else120120120134%_
                    (lambda ()
                      (_%resolve120111%_
                       _%ctx120115%_
                       _%src-phi120116%_
                       _%id120105%_)))
                   (_%K120122120167%_
                    (lambda (_%rest120137%_ _%hd120138%_)
                      (let* ((_%hd120139120145%_ _%hd120138%_)
                             (_%E120141120149%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd120139120145%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K120142120159%_
                              (lambda (_%subst120152%_)
                                (let ((_%$e120156%_
                                       (let ((_%key120154%_
                                              (if _%subst120152%_
                                                  (hash-get
                                                   _%subst120152%_
                                                   _%id120105%_)
                                                  '#f)))
                                         (if _%key120154%_
                                             (_%resolve120111%_
                                              _%ctx120115%_
                                              _%src-phi120116%_
                                              _%key120154%_)
                                             '#f))))
                                  (if _%$e120156%_
                                      _%$e120156%_
                                      (_%lp120113%_
                                       (##unchecked-structure-ref
                                        _%hd120138%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd120138%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest120137%_))))))
                        (if (##structure-instance-of?
                             _%hd120139120145%_
                             'gx#expander-mark::t)
                            (let* ((_%e120143120162%_
                                    (##unchecked-structure-ref
                                     _%hd120139120145%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst120165%_ _%e120143120162%_))
                              (_%K120142120159%_ _%subst120165%_))
                            (_%E120141120149%_))))))
              (if (pair? _%rest120118120126%_)
                  (let ((_%hd120123120170%_ (##car _%rest120118120126%_))
                        (_%tl120124120172%_ (##cdr _%rest120118120126%_)))
                    (let* ((_%hd120175%_ _%hd120123120170%_)
                           (_%rest120177%_ _%tl120124120172%_))
                      (_%K120122120167%_ _%rest120177%_ _%hd120175%_)))
                  (_%else120120120134%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key119975%_
               _%val119976%_
               _%rebind?119977%_
               _%phi119978%_
               _%ctx119979%_)
        (letrec ((_%update-binding119981%_
                  (lambda (_%xval120054%_)
                    (if (or (_%rebind?119977%_
                             _%ctx119979%_
                             _%xval120054%_
                             _%val119976%_)
                            (and (##structure-direct-instance-of?
                                  _%xval120054%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval120054%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val119976%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val119976%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval120054%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val119976%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val119976%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval120054%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val119976%_
                        (if (and (##structure-direct-instance-of?
                                  _%val119976%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val119976%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval120054%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val119976%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval120054%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval120054%_
                            (if (and (##structure-direct-instance-of?
                                      _%val119976%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval120054%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key119975%_
                                 (cons (##unchecked-structure-ref
                                        _%val119976%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val119976%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval120054%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval120054%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval120054%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval120054%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key119975%_
                                 _%val119976%_
                                 _%xval120054%_))))))
                 (_%gensubst119982%_
                  (lambda (_%subst120049%_ _%id120050%_)
                    (let ((_%eid120052%_
                           (gensym (if (uninterned-symbol? _%id120050%_)
                                       '%
                                       _%id120050%_))))
                      (hash-put! _%subst120049%_ _%id120050%_ _%eid120052%_)
                      _%eid120052%_)))
                 (_%subst!119983%_
                  (lambda (_%key119985%_)
                    (let* ((_%key119986119994%_ _%key119985%_)
                           (_%else119988120002%_ (lambda () _%key119985%_))
                           (_%K119990120037%_
                            (lambda (_%mark120005%_ _%id120006%_)
                              (let* ((_%mark120007120013%_ _%mark120005%_)
                                     (_%E120009120017%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark120007120013%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K120010120029%_
                                      (lambda (_%subst120020%_)
                                        (if (not _%subst120020%_)
                                            (let ((_%subst120023%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark120005%_
                                               _%subst120023%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst119982%_
                                               _%subst120023%_
                                               _%id120006%_))
                                            (let ((_%$e120025%_
                                                   (hash-get
                                                    _%subst120020%_
                                                    _%id120006%_)))
                                              (if _%$e120025%_
                                                  _%$e120025%_
                                                  (_%gensubst119982%_
                                                   _%subst120020%_
                                                   _%id120006%_)))))))
                                (if (##structure-instance-of?
                                     _%mark120007120013%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e120011120032%_
                                            (##unchecked-structure-ref
                                             _%mark120007120013%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst120035%_ _%e120011120032%_))
                                      (_%K120010120029%_ _%subst120035%_))
                                    (_%E120009120017%_))))))
                      (if (pair? _%key119986119994%_)
                          (let ((_%hd119991120040%_
                                 (##car _%key119986119994%_))
                                (_%tl119992120042%_
                                 (##cdr _%key119986119994%_)))
                            (let* ((_%id120045%_ _%hd119991120040%_)
                                   (_%mark120047%_ _%tl119992120042%_))
                              (_%K119990120037%_ _%mark120047%_ _%id120045%_)))
                          (_%else119988120002%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx119979%_ _%phi119978%_)
           (_%subst!119983%_ _%key119975%_)
           _%val119976%_
           _%update-binding119981%_))))
    (define gx#core-bind!__0
      (lambda (_%key120075%_ _%val120076%_)
        (let* ((_%rebind?120078%_ false)
               (_%phi120080%_ (gx#current-expander-phi))
               (_%ctx120082%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key120075%_
           _%val120076%_
           _%rebind?120078%_
           _%phi120080%_
           _%ctx120082%_))))
    (define gx#core-bind!__1
      (lambda (_%key120084%_ _%val120085%_ _%rebind?120086%_)
        (let* ((_%phi120088%_ (gx#current-expander-phi))
               (_%ctx120090%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key120084%_
           _%val120085%_
           _%rebind?120086%_
           _%phi120088%_
           _%ctx120090%_))))
    (define gx#core-bind!__2
      (lambda (_%key120092%_ _%val120093%_ _%rebind?120094%_ _%phi120095%_)
        (let ((_%ctx120097%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key120092%_
           _%val120093%_
           _%rebind?120094%_
           _%phi120095%_
           _%ctx120097%_))))
    (define gx#core-bind!
      (lambda _g122646_
        (let ((_g122645_ (##length _g122646_)))
          (cond ((##fx= _g122645_ 2) (apply gx#core-bind!__0 _g122646_))
                ((##fx= _g122645_ 3) (apply gx#core-bind!__1 _g122646_))
                ((##fx= _g122645_ 4) (apply gx#core-bind!__2 _g122646_))
                ((##fx= _g122645_ 5) (apply gx#core-bind!__% _g122646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g122646_))))))
    (define gx#core-identifier-key
      (lambda (_%stx119906%_)
        (if (symbol? _%stx119906%_)
            (let* ((_%g119908119916%_ (gx#current-expander-marks))
                   (_%else119910119924%_ (lambda () _%stx119906%_))
                   (_%K119912119929%_
                    (lambda (_%hd119927%_) (cons _%stx119906%_ _%hd119927%_))))
              (if (pair? _%g119908119916%_)
                  (let* ((_%hd119913119932%_ (##car _%g119908119916%_))
                         (_%hd119935%_ _%hd119913119932%_))
                    (_%K119912119929%_ _%hd119935%_))
                  (_%else119910119924%_)))
            (if (gx#identifier? _%stx119906%_)
                (let* ((_%id119938%_ (gx#syntax-local-unwrap _%stx119906%_))
                       (_%eid119940%_ (gx#stx-e _%id119938%_))
                       (_%marks119942%_
                        (gx#stx-identifier-marks* _%id119938%_))
                       (_%marks119944119952%_ _%marks119942%_)
                       (_%else119946119960%_ (lambda () _%eid119940%_))
                       (_%K119948119965%_
                        (lambda (_%hd119963%_)
                          (cons _%eid119940%_ _%hd119963%_))))
                  (if (pair? _%marks119944119952%_)
                      (let* ((_%hd119949119968%_ (##car _%marks119944119952%_))
                             (_%hd119971%_ _%hd119949119968%_))
                        (_%K119948119965%_ _%hd119971%_))
                      (_%else119946119960%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx119906%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx119845%_ _%phi119846%_)
        (letrec ((_%make-phi119848%_
                  (lambda (_%super119904%_)
                    (let ((__obj122618
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj122618
                       (##gensym 'phi)
                       _%super119904%_)
                      __obj122618)))
                 (_%make-phi/up119849%_
                  (lambda (_%ctx119899%_ _%super119900%_)
                    (let ((_%ctx+1119902%_
                           (_%make-phi119848%_ _%super119900%_)))
                      (##unchecked-structure-set!
                       _%ctx119899%_
                       _%ctx+1119902%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1119902%_
                       _%ctx119899%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1119902%_)))
                 (_%make-phi/down119850%_
                  (lambda (_%ctx119894%_ _%super119895%_)
                    (let ((_%ctx-1119897%_
                           (_%make-phi119848%_ _%super119895%_)))
                      (##unchecked-structure-set!
                       _%ctx-1119897%_
                       _%ctx119894%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx119894%_
                       _%ctx-1119897%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1119897%_)))
                 (_%shift119851%_
                  (lambda (_%ctx119877%_
                           _%delta119878%_
                           _%make-delta-context119879%_
                           _%phi119880%_
                           _%K119881%_)
                    (let ((_%$e119883%_
                           (##unchecked-structure-ref
                            _%ctx119877%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e119883%_
                          ((lambda (_%super119886%_)
                             (let* ((_%super119888%_
                                     (_%K119881%_
                                      _%super119886%_
                                      _%delta119878%_))
                                    (_%ctx+d119890%_
                                     (_%make-delta-context119879%_
                                      _%ctx119877%_
                                      _%super119888%_)))
                               (_%K119881%_
                                _%ctx+d119890%_
                                (fx- _%phi119880%_ _%delta119878%_))))
                           _%$e119883%_)
                          (error '"Bad context" _%ctx119877%_))))))
          (let _%K119853%_ ((_%ctx119855%_ _%ctx119845%_)
                            (_%phi119856%_ _%phi119846%_))
            (if (fxzero? _%phi119856%_)
                _%ctx119855%_
                (if (##structure-instance-of? _%ctx119855%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi119856%_)
                        (let ((_%$e119860%_
                               (##unchecked-structure-ref
                                _%ctx119855%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e119860%_
                              ((lambda (_%g119862119864%_)
                                 (_%K119853%_
                                  _%g119862119864%_
                                  (##fx- _%phi119856%_ '1)))
                               _%$e119860%_)
                              (_%shift119851%_
                               _%ctx119855%_
                               '1
                               _%make-phi/up119849%_
                               _%phi119856%_
                               _%K119853%_)))
                        (let ((_%$e119868%_
                               (##unchecked-structure-ref
                                _%ctx119855%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e119868%_
                              ((lambda (_%g119870119872%_)
                                 (_%K119853%_
                                  _%g119870119872%_
                                  (##fx+ _%phi119856%_ '1)))
                               _%$e119868%_)
                              (_%shift119851%_
                               _%ctx119855%_
                               '-1
                               _%make-phi/down119850%_
                               _%phi119856%_
                               _%K119853%_))))
                    _%ctx119855%_))))))
    (define gx#core-context-get
      (lambda (_%ctx119842%_ _%key119843%_)
        (hash-get
         (##unchecked-structure-ref _%ctx119842%_ '2 '#f '#f)
         _%key119843%_)))
    (define gx#core-context-put!
      (lambda (_%ctx119838%_ _%key119839%_ _%val119840%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx119838%_ '2 '#f '#f)
         _%key119839%_
         _%val119840%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx119824%_ _%key119825%_)
        (let _%lp119827%_ ((_%ctx119829%_ _%ctx119824%_))
          (let ((_%$e119831%_
                 (gx#core-context-get _%ctx119829%_ _%key119825%_)))
            (if _%$e119831%_
                _%$e119831%_
                (let ((_%$e119834%_
                       (if (##structure-instance-of?
                            _%ctx119829%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx119829%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e119834%_ (_%lp119827%_ _%$e119834%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx119813%_ _%key119814%_ _%val119815%_ _%rebind119816%_)
        (let ((_%$e119818%_ (gx#core-context-get _%ctx119813%_ _%key119814%_)))
          (if _%$e119818%_
              ((lambda (_%xval119821%_)
                 (gx#core-context-put!
                  _%ctx119813%_
                  _%key119814%_
                  (_%rebind119816%_ _%xval119821%_)))
               _%$e119818%_)
              (gx#core-context-put!
               _%ctx119813%_
               _%key119814%_
               _%val119815%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx119788%_ _%stop?119789%_)
        (let _%lp119791%_ ((_%ctx119793%_ _%ctx119788%_))
          (if (_%stop?119789%_ _%ctx119793%_)
              _%ctx119793%_
              (if (##structure-instance-of? _%ctx119793%_ 'gx#phi-context::t)
                  (_%lp119791%_
                   (##unchecked-structure-ref _%ctx119793%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx119802%_ (gx#current-expander-context))
               (_%stop?119804%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119802%_ _%stop?119804%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx119806%_)
        (let ((_%stop?119808%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119806%_ _%stop?119808%_))))
    (define gx#core-context-top
      (lambda _g122648_
        (let ((_g122647_ (##length _g122648_)))
          (cond ((##fx= _g122647_ 0) (apply gx#core-context-top__0 _g122648_))
                ((##fx= _g122647_ 1) (apply gx#core-context-top__1 _g122648_))
                ((##fx= _g122647_ 2) (apply gx#core-context-top__% _g122648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g122648_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx119773%_)
        (let _%lp119775%_ ((_%ctx119777%_ _%ctx119773%_))
          (if (##structure-instance-of? _%ctx119777%_ 'gx#phi-context::t)
              (_%lp119775%_
               (##unchecked-structure-ref _%ctx119777%_ '3 '#f '#f))
              _%ctx119777%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx119783%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx119783%_))))
    (define gx#core-context-root
      (lambda _g122650_
        (let ((_g122649_ (##length _g122650_)))
          (cond ((##fx= _g122649_ 0) (apply gx#core-context-root__0 _g122650_))
                ((##fx= _g122649_ 1) (apply gx#core-context-root__% _g122650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g122650_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx119755%_ . _%ignore119756%_)
        (let ((_%$e119758%_ (gx#current-expander-allow-rebind?)))
          (if _%$e119758%_
              _%$e119758%_
              (if (##structure-instance-of? _%ctx119755%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx119755%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx119755%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx119765%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx119765%_))))
    (define gx#core-context-rebind?
      (lambda _g122652_
        (let ((_g122651_ (##length _g122652_)))
          (cond ((##fx= _g122651_ 0)
                 (apply gx#core-context-rebind?__0 _g122652_))
                ((##fx= _g122651_ 1)
                 (apply gx#core-context-rebind?__% _g122652_))
                ((##fx>= _g122651_ 1)
                 (apply gx#core-context-rebind?__% _g122652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g122652_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx119738%_)
        (let ((_%$e119740%_ (gx#core-context-top__1 _%ctx119738%_)))
          (if _%$e119740%_
              ((lambda (_%ctx119743%_)
                 (if (##structure-instance-of?
                      _%ctx119743%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx119743%_ '6 '#f '#f)
                     '#f))
               _%$e119740%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx119750%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx119750%_))))
    (define gx#core-context-namespace
      (lambda _g122654_
        (let ((_g122653_ (##length _g122654_)))
          (cond ((##fx= _g122653_ 0)
                 (apply gx#core-context-namespace__0 _g122654_))
                ((##fx= _g122653_ 1)
                 (apply gx#core-context-namespace__% _g122654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g122654_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind119724%_ _%is?119725%_)
        (if (##structure-direct-instance-of?
             _%bind119724%_
             'gx#syntax-binding::t)
            (_%is?119725%_
             (##unchecked-structure-ref _%bind119724%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind119730%_)
        (let ((_%is?119732%_ gx#expander?))
          (gx#expander-binding?__% _%bind119730%_ _%is?119732%_))))
    (define gx#expander-binding?
      (lambda _g122656_
        (let ((_g122655_ (##length _g122656_)))
          (cond ((##fx= _g122655_ 1) (apply gx#expander-binding?__0 _g122656_))
                ((##fx= _g122655_ 2) (apply gx#expander-binding?__% _g122656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g122656_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind119721%_)
        (gx#expander-binding?__% _%bind119721%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind119719%_)
        (gx#expander-binding?__% _%bind119719%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind119713%_)
        (letrec ((_%direct-special-form?119715%_
                  (lambda (_%obj119717%_)
                    (##structure-direct-instance-of?
                     _%obj119717%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind119713%_
           _%direct-special-form?119715%_))))
    (define gx#special-form-binding?
      (lambda (_%bind119711%_)
        (gx#expander-binding?__% _%bind119711%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind119702%_)
        (letrec ((_%feature?119704%_
                  (lambda (_%e119706%_)
                    (let ((_%$e119708%_
                           (##structure-instance-of?
                            _%e119706%_
                            'gx#feature-expander::t)))
                      (if _%$e119708%_
                          _%$e119708%_
                          (##structure-instance-of?
                           _%e119706%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind119702%_ _%feature?119704%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind119700%_)
        (gx#expander-binding?__% _%bind119700%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id119687%_ _%bound?119688%_)
        (if (gx#identifier? _%id119687%_)
            (_%bound?119688%_ (gx#resolve-identifier__0 _%id119687%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id119693%_)
        (let ((_%bound?119695%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id119693%_ _%bound?119695%_))))
    (define gx#core-bound-identifier?
      (lambda _g122658_
        (let ((_g122657_ (##length _g122658_)))
          (cond ((##fx= _g122657_ 1)
                 (apply gx#core-bound-identifier?__0 _g122658_))
                ((##fx= _g122657_ 2)
                 (apply gx#core-bound-identifier?__% _g122658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g122658_))))))
    (define gx#core-identifier=?
      (lambda (_%x119677%_ _%y119678%_)
        (letrec ((_%y=?119680%_
                  (lambda (_%xid119684%_)
                    ((if (list? _%y119678%_) memq eq?)
                     _%xid119684%_
                     _%y119678%_))))
          (let ((_%bind119682%_ (gx#resolve-identifier__0 _%x119677%_)))
            (if (##structure-instance-of? _%bind119682%_ 'gx#binding::t)
                (_%y=?119680%_
                 (##unchecked-structure-ref _%bind119682%_ '1 '#f '#f))
                (_%y=?119680%_ (gx#stx-e _%x119677%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e119675%_)
        (if (interned-symbol? _%e119675%_)
            (string-index__0 (symbol->string _%e119675%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx119628%_ _%src119629%_ _%ctx119630%_ _%marks119631%_)
        (if (##structure? _%stx119628%_)
            (let ((_%$e119633%_ (gx#sealed-syntax-unwrap _%stx119628%_)))
              (if _%$e119633%_
                  _%$e119633%_
                  (if (gx#identifier? _%stx119628%_)
                      (let ((_%id119637%_
                             (gx#stx-unwrap__% _%stx119628%_ _%marks119631%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id119637%_ '1 '#f '#f)
                         (let ((_%$e119639%_
                                (##unchecked-structure-ref
                                 _%id119637%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e119639%_ _%$e119639%_ _%src119629%_))
                         _%ctx119630%_
                         (##unchecked-structure-ref _%id119637%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx119628%_)
                       (let ((_%$e119643%_ (gx#stx-source _%stx119628%_)))
                         (if _%$e119643%_ _%$e119643%_ _%src119629%_))
                       _%ctx119630%_
                       (reverse _%marks119631%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx119628%_
             _%src119629%_
             _%ctx119630%_
             (reverse _%marks119631%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx119649%_)
        (let* ((_%src119651%_ '#f)
               (_%ctx119653%_ (gx#current-expander-context))
               (_%marks119655%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119649%_
           _%src119651%_
           _%ctx119653%_
           _%marks119655%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx119657%_ _%src119658%_)
        (let* ((_%ctx119660%_ (gx#current-expander-context))
               (_%marks119662%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119657%_
           _%src119658%_
           _%ctx119660%_
           _%marks119662%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx119664%_ _%src119665%_ _%ctx119666%_)
        (let ((_%marks119668%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119664%_
           _%src119665%_
           _%ctx119666%_
           _%marks119668%_))))
    (define gx#core-quote-syntax
      (lambda _g122660_
        (let ((_g122659_ (##length _g122660_)))
          (cond ((##fx= _g122659_ 1) (apply gx#core-quote-syntax__0 _g122660_))
                ((##fx= _g122659_ 2) (apply gx#core-quote-syntax__1 _g122660_))
                ((##fx= _g122659_ 3) (apply gx#core-quote-syntax__2 _g122660_))
                ((##fx= _g122659_ 4) (apply gx#core-quote-syntax__% _g122660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g122660_))))))
    (define gx#core-cons
      (lambda (_%hd119624%_ _%tl119625%_)
        (cons (gx#core-quote-syntax__0 _%hd119624%_) _%tl119625%_)))
    (define gx#core-list
      (lambda (_%hd119621%_ . _%rest119622%_)
        (cons (gx#core-quote-syntax__0 _%hd119621%_) _%rest119622%_)))
    (define gx#core-cons*
      (lambda (_%hd119618%_ . _%rest119619%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd119618%_) _%rest119619%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path119587%_ _%rel119588%_)
        (let ((_%path119605%_ (gx#stx-e _%stx-path119587%_))
              (_%reldir119606%_
               (let _%lp119590%_ ((_%relsrc119592%_
                                   (let ((_%$e119602%_
                                          (gx#stx-source _%stx-path119587%_)))
                                     (if _%$e119602%_
                                         _%$e119602%_
                                         _%rel119588%_))))
                 (if (##structure-instance-of? _%relsrc119592%_ 'gerbil#AST::t)
                     (_%lp119590%_
                      (let ((_%$e119595%_ (gx#stx-source _%relsrc119592%_)))
                        (if _%$e119595%_
                            _%$e119595%_
                            (gx#stx-e _%relsrc119592%_))))
                     (if (source-location-path? _%relsrc119592%_)
                         (path-directory
                          (source-location-path _%relsrc119592%_))
                         (if (string? _%relsrc119592%_)
                             (path-directory _%relsrc119592%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path119605%_ (path-normalize _%reldir119606%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path119611%_)
        (let ((_%rel119613%_ '#f))
          (gx#core-resolve-path__% _%stx-path119611%_ _%rel119613%_))))
    (define gx#core-resolve-path
      (lambda _g122662_
        (let ((_g122661_ (##length _g122662_)))
          (cond ((##fx= _g122661_ 1) (apply gx#core-resolve-path__0 _g122662_))
                ((##fx= _g122661_ 2) (apply gx#core-resolve-path__% _g122662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g122662_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr119543%_ _%ctx119544%_)
        (let* ((_%repr119545119552%_ _%repr119543%_)
               (_%E119547119556%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr119545119552%_
                         '([phi . subs]))
                  '#!void))
               (_%K119548119564%_
                (lambda (_%subs119559%_ _%phi119560%_)
                  (let ((_%subst119562%_
                         (if (null? _%subs119559%_)
                             '#f
                             (list->hash-table-eq _%subs119559%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst119562%_
                     _%ctx119544%_
                     _%phi119560%_
                     '#f)))))
          (if (pair? _%repr119545119552%_)
              (let ((_%hd119549119567%_ (##car _%repr119545119552%_))
                    (_%tl119550119569%_ (##cdr _%repr119545119552%_)))
                (let* ((_%phi119572%_ _%hd119549119567%_)
                       (_%subs119574%_ _%tl119550119569%_))
                  (_%K119548119564%_ _%subs119574%_ _%phi119572%_)))
              (_%E119547119556%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr119579%_)
        (let ((_%ctx119581%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr119579%_ _%ctx119581%_))))
    (define gx#core-deserialize-mark
      (lambda _g122664_
        (let ((_g122663_ (##length _g122664_)))
          (cond ((##fx= _g122663_ 1)
                 (apply gx#core-deserialize-mark__0 _g122664_))
                ((##fx= _g122663_ 2)
                 (apply gx#core-deserialize-mark__% _g122664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g122664_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx119540%_)
        (gx#stx-rewrap _%stx119540%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx119538%_)
        (gx#stx-unwrap__% _%stx119538%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx119508%_)
        (let* ((_%g119509119517%_ (gx#current-expander-marks))
               (_%else119511119525%_ (lambda () _%stx119508%_))
               (_%K119513119530%_
                (lambda (_%hd119528%_)
                  (gx#stx-apply-mark _%stx119508%_ _%hd119528%_))))
          (if (pair? _%g119509119517%_)
              (let* ((_%hd119514119533%_ (##car _%g119509119517%_))
                     (_%hd119536%_ _%hd119514119533%_))
                (_%K119513119530%_ _%hd119536%_))
              (_%else119511119525%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx119493%_ _%E119494%_)
        (let ((_%bind119496%_ (gx#resolve-identifier__0 _%stx119493%_)))
          (if (##structure-direct-instance-of?
               _%bind119496%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind119496%_ '4 '#f '#f)
              (_%E119494%_ _%stx119493%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx119501%_)
        (let ((_%E119503%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx119501%_ _%E119503%_))))
    (define gx#syntax-local-e
      (lambda _g122666_
        (let ((_g122665_ (##length _g122666_)))
          (cond ((##fx= _g122665_ 1) (apply gx#syntax-local-e__0 _g122666_))
                ((##fx= _g122665_ 2) (apply gx#syntax-local-e__% _g122666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g122666_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx119477%_ _%E119478%_)
        (let ((_%e119480%_ (gx#syntax-local-e__% _%stx119477%_ _%E119478%_)))
          (if (##structure-instance-of? _%e119480%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e119480%_ '1 '#f '#f)
              _%e119480%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx119485%_)
        (let ((_%E119487%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx119485%_ _%E119487%_))))
    (define gx#syntax-local-value
      (lambda _g122668_
        (let ((_g122667_ (##length _g122668_)))
          (cond ((##fx= _g122667_ 1)
                 (apply gx#syntax-local-value__0 _g122668_))
                ((##fx= _g122667_ 2)
                 (apply gx#syntax-local-value__% _g122668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g122668_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx119474%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx119474%_)))))
