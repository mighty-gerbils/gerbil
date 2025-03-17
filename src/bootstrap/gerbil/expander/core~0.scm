(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1742223872)
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
      (lambda _%$args122513%_
        (apply make-instance gx#expander-context::t _%$args122513%_)))
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
      (lambda _%$args122510%_
        (apply make-instance gx#root-context::t _%$args122510%_)))
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
      (lambda _%$args122507%_
        (apply make-instance gx#phi-context::t _%$args122507%_)))
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
      (lambda _%$args122504%_
        (apply make-instance gx#top-context::t _%$args122504%_)))
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
      (lambda _%$args122501%_
        (apply make-instance gx#module-context::t _%$args122501%_)))
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
      (lambda _%$args122498%_
        (apply make-instance gx#prelude-context::t _%$args122498%_)))
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
      (lambda _%$args122495%_
        (apply make-instance gx#local-context::t _%$args122495%_)))
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
      (lambda (_%self119401122466%_ _%id122468%_ _%super122469%_)
        (let* ((_%self122471%_ _%self119401122466%_)
               (_%self122473%_ _%self122471%_))
          (if (##fx< '3 (##structure-length _%self122473%_))
              (begin
                (##unchecked-structure-set!
                 _%self122473%_
                 _%id122468%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122473%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122473%_
                 _%super122469%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122473%_
                     '3
                     (##structure-length _%self122473%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self119401122486%_ _%id122487%_)
        (let ((_%super122489%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self119401122486%_
           _%id122487%_
           _%super122489%_))))
    (define gx#phi-context:::init!
      (lambda _g122556_
        (let ((_g122555_ (##length _g122556_)))
          (cond ((##fx= _g122555_ 2)
                 (apply gx#phi-context:::init!__0 _g122556_))
                ((##fx= _g122555_ 3)
                 (apply gx#phi-context:::init!__% _g122556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g122556_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self119402122317%_ _%super122319%_)
        (let* ((_%self122321%_ _%self119402122317%_)
               (_%self122323%_ _%self122321%_))
          (if (##fx< '3 (##structure-length _%self122323%_))
              (begin
                (##unchecked-structure-set!
                 _%self122323%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122323%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122323%_
                 _%super122319%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122323%_
                     '3
                     (##structure-length _%self122323%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self119402122336%_)
        (let ((_%super122338%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self119402122336%_ _%super122338%_))))
    (define gx#local-context:::init!
      (lambda _g122558_
        (let ((_g122557_ (##length _g122558_)))
          (cond ((##fx= _g122557_ 1)
                 (apply gx#local-context:::init!__0 _g122558_))
                ((##fx= _g122557_ 2)
                 (apply gx#local-context:::init!__% _g122558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g122558_))))))
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
      (lambda _%$args122191%_
        (apply make-instance gx#binding::t _%$args122191%_)))
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
      (lambda _%$args122188%_
        (apply make-instance gx#runtime-binding::t _%$args122188%_)))
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
      (lambda _%$args122185%_
        (apply make-instance gx#local-binding::t _%$args122185%_)))
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
      (lambda _%$args122182%_
        (apply make-instance gx#top-binding::t _%$args122182%_)))
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
      (lambda _%$args122179%_
        (apply make-instance gx#module-binding::t _%$args122179%_)))
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
      (lambda _%$args122176%_
        (apply make-instance gx#extern-binding::t _%$args122176%_)))
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
      (lambda _%$args122173%_
        (apply make-instance gx#syntax-binding::t _%$args122173%_)))
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
      (lambda _%$args122170%_
        (apply make-instance gx#import-binding::t _%$args122170%_)))
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
      (lambda _%$args122167%_
        (apply make-instance gx#alias-binding::t _%$args122167%_)))
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
      (lambda _%$args122164%_
        (apply make-instance gx#expander::t _%$args122164%_)))
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
      (lambda _%$args122161%_
        (apply make-instance gx#core-expander::t _%$args122161%_)))
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
      (lambda _%$args122158%_
        (apply make-instance gx#expression-form::t _%$args122158%_)))
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
      (lambda _%$args122155%_
        (apply make-instance gx#special-form::t _%$args122155%_)))
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
      (lambda _%$args122152%_
        (apply make-instance gx#definition-form::t _%$args122152%_)))
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
      (lambda _%$args122149%_
        (apply make-instance gx#top-special-form::t _%$args122149%_)))
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
      (lambda _%$args122146%_
        (apply make-instance gx#module-special-form::t _%$args122146%_)))
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
      (lambda _%$args122143%_
        (apply make-instance gx#feature-expander::t _%$args122143%_)))
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
      (lambda _%$args122140%_
        (apply make-instance gx#private-feature-expander::t _%$args122140%_)))
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
      (lambda _%$args122137%_
        (apply make-instance gx#reserved-expander::t _%$args122137%_)))
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
      (lambda _%$args122134%_
        (apply make-instance gx#macro-expander::t _%$args122134%_)))
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
      (lambda _%$args122131%_
        (apply make-instance gx#rename-macro-expander::t _%$args122131%_)))
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
      (lambda _%$args122128%_
        (apply make-instance gx#user-expander::t _%$args122128%_)))
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
      (lambda _%$args122125%_
        (apply make-instance gx#expander-mark::t _%$args122125%_)))
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
      (lambda (_%ctx122109%_
               _%message122110%_
               _%stx122111%_
               .
               _%details122112%_)
        (let ((_%ctx122123%_
               (let ((_%$e122114%_ _%ctx122109%_))
                 (if _%$e122114%_
                     _%$e122114%_
                     (let ((_%$e122117%_ (gx#core-context-top__0)))
                       (if _%$e122117%_
                           ((lambda (_%ctx122120%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx122120%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e122117%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message122110%_
                  (cons _%stx122111%_ _%details122112%_)
                  _%ctx122123%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx122096%_ _%expression?122097%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx122096%_ _%expression?122097%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx122102%_)
        (let ((_%expression?122104%_ '#f))
          (gx#eval-syntax__% _%stx122102%_ _%expression?122104%_))))
    (define gx#eval-syntax
      (lambda _g122560_
        (let ((_g122559_ (##length _g122560_)))
          (cond ((##fx= _g122559_ 1) (apply gx#eval-syntax__0 _g122560_))
                ((##fx= _g122559_ 2) (apply gx#eval-syntax__% _g122560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g122560_))))))
    (define gx#eval-syntax*
      (lambda (_%stx122093%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx122093%_))))
    (define gx#core-expand__%
      (lambda (_%stx122080%_ _%expression?122081%_)
        (if _%expression?122081%_
            (gx#core-expand-expression _%stx122080%_)
            (gx#core-expand-top _%stx122080%_))))
    (define gx#core-expand__0
      (lambda (_%stx122086%_)
        (let ((_%expression?122088%_ '#f))
          (gx#core-expand__% _%stx122086%_ _%expression?122088%_))))
    (define gx#core-expand
      (lambda _g122562_
        (let ((_g122561_ (##length _g122562_)))
          (cond ((##fx= _g122561_ 1) (apply gx#core-expand__0 _g122562_))
                ((##fx= _g122561_ 2) (apply gx#core-expand__% _g122562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g122562_))))))
    (define gx#core-expand-top
      (lambda (_%stx122047%_)
        (let* ((_%stx122049%_ (gx#core-expand*__0 _%stx122047%_))
               (_%e122050122057%_ _%stx122049%_)
               (_%E122052122061%_
                (lambda () (gx#core-expand-expression _%stx122049%_)))
               (_%E122051122075%_
                (lambda ()
                  (if (gx#stx-pair? _%e122050122057%_)
                      (let ((_%e122053122065%_
                             (gx#syntax-e _%e122050122057%_)))
                        (let ((_%hd122054122068%_ (##car _%e122053122065%_))
                              (_%tl122055122070%_ (##cdr _%e122053122065%_)))
                          (let ((_%form122073%_ _%hd122054122068%_))
                            (if (gx#core-bound-identifier?__0 _%form122073%_)
                                _%stx122049%_
                                (_%E122052122061%_)))))
                      (_%E122052122061%_)))))
          (_%E122051122075%_))))
    (define gx#core-expand-expression
      (lambda (_%stx121979%_)
        (letrec ((_%sealed-expression?121981%_
                  (lambda (_%hd122017%_)
                    (if (gx#sealed-syntax? _%hd122017%_)
                        (let* ((_%e122018122025%_ _%hd122017%_)
                               (_%E122020122029%_ (lambda () '#f))
                               (_%E122019122043%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e122018122025%_)
                                      (let ((_%e122021122033%_
                                             (gx#syntax-e _%e122018122025%_)))
                                        (let ((_%hd122022122036%_
                                               (##car _%e122021122033%_))
                                              (_%tl122023122038%_
                                               (##cdr _%e122021122033%_)))
                                          (let ((_%form122041%_
                                                 _%hd122022122036%_))
                                            (gx#core-bound-identifier?__%
                                             _%form122041%_
                                             gx#expression-form-binding?))))
                                      (_%E122020122029%_)))))
                          (_%E122019122043%_))
                        '#f)))
                 (_%illegal-expression121982%_
                  (lambda (_%hd122014%_ . _%_122015%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx121979%_
                     _%hd122014%_)))
                 (_%expand-e121983%_
                  (lambda (_%form122006%_ _%hd122007%_)
                    (let ((_%bind122009%_
                           (if (##structure-instance-of?
                                _%form122006%_
                                'gx#binding::t)
                               _%form122006%_
                               (gx#resolve-identifier__0 _%form122006%_))))
                      (if (gx#core-expander-binding? _%bind122009%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind122009%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd122007%_
                            (gx#stx-source _%stx121979%_)))
                          (if (##structure-direct-instance-of?
                               _%bind122009%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind122009%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd122007%_
                                 (gx#stx-source _%stx121979%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx121979%_
                               _%form122006%_)))))))
          (let ((_%hd121985%_ (gx#core-expand-head _%stx121979%_)))
            (if (_%sealed-expression?121981%_ _%hd121985%_)
                _%hd121985%_
                (if (gx#stx-pair? _%hd121985%_)
                    (let* ((_%form121989%_ (gx#stx-car _%hd121985%_))
                           (_%bind121991%_
                            (if (gx#identifier? _%form121989%_)
                                (gx#resolve-identifier__0 _%form121989%_)
                                '#f)))
                      (if (or (not _%bind121991%_)
                              (not (gx#core-expander-binding? _%bind121991%_)))
                          (_%expand-e121983%_
                           '%%app
                           (cons '%%app _%hd121985%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind121991%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd121985%_
                               _%illegal-expression121982%_)
                              (if (gx#expression-form-binding? _%bind121991%_)
                                  (_%expand-e121983%_
                                   _%bind121991%_
                                   _%hd121985%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind121991%_)
                                      (gx#core-expand-expression
                                       (_%expand-e121983%_
                                        _%bind121991%_
                                        _%hd121985%_))
                                      (_%illegal-expression121982%_
                                       _%hd121985%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd121985%_)
                        (_%illegal-expression121982%_ _%hd121985%_)
                        (if (gx#identifier? _%hd121985%_)
                            (_%expand-e121983%_
                             '%%ref
                             (cons '%%ref (cons _%hd121985%_ '())))
                            (if (gx#stx-datum? _%hd121985%_)
                                (_%expand-e121983%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd121985%_ '())))
                                (_%illegal-expression121982%_
                                 _%hd121985%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx121974%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx121977%_ (gx#core-expand-expression _%stx121974%_)))
             (values _%stx121977%_ (gx#eval-syntax* _%stx121977%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx121955%_ _%stop?121956%_)
        (let _%lp121958%_ ((_%stx121960%_ _%stx121955%_))
          (if (_%stop?121956%_ _%stx121960%_)
              _%stx121960%_
              (let ((_%rstx121962%_ (gx#core-expand1 _%stx121960%_)))
                (if (eq? _%stx121960%_ _%rstx121962%_)
                    _%stx121960%_
                    (_%lp121958%_ _%rstx121962%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx121967%_)
        (let ((_%stop?121969%_ false))
          (gx#core-expand*__% _%stx121967%_ _%stop?121969%_))))
    (define gx#core-expand*
      (lambda _g122564_
        (let ((_g122563_ (##length _g122564_)))
          (cond ((##fx= _g122563_ 1) (apply gx#core-expand*__0 _g122564_))
                ((##fx= _g122563_ 2) (apply gx#core-expand*__% _g122564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g122564_))))))
    (define gx#core-expand1
      (lambda (_%stx121907%_)
        (letrec ((_%step121909%_
                  (lambda (_%hd121946%_)
                    (let ((_%bind121948%_
                           (gx#resolve-identifier__0 _%hd121946%_)))
                      (if (##structure-instance-of?
                           _%bind121948%_
                           'gx#runtime-binding::t)
                          _%stx121907%_
                          (if (##structure-direct-instance-of?
                               _%bind121948%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind121948%_
                                '4
                                '#f
                                '#f)
                               _%stx121907%_)
                              (if (not _%bind121948%_)
                                  _%stx121907%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx121907%_))))))))
          (let* ((_%e121910121918%_ _%stx121907%_)
                 (_%E121916121922%_ (lambda () _%stx121907%_))
                 (_%E121912121928%_
                  (lambda ()
                    (let ((_%hd121926%_ _%e121910121918%_))
                      (if (gx#identifier? _%hd121926%_)
                          (_%step121909%_ _%hd121926%_)
                          (_%E121916121922%_)))))
                 (_%E121911121942%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121910121918%_)
                        (let ((_%e121913121932%_
                               (gx#syntax-e _%e121910121918%_)))
                          (let ((_%hd121914121935%_ (##car _%e121913121932%_))
                                (_%tl121915121937%_ (##cdr _%e121913121932%_)))
                            (let ((_%hd121940%_ _%hd121914121935%_))
                              (if (gx#identifier? _%hd121940%_)
                                  (_%step121909%_ _%hd121940%_)
                                  (_%E121912121928%_)))))
                        (_%E121912121928%_)))))
            (_%E121911121942%_)))))
    (define gx#core-expand-head
      (lambda (_%stx121873%_)
        (letrec ((_%stop?121875%_
                  (lambda (_%stx121877%_)
                    (let* ((_%e121878121885%_ _%stx121877%_)
                           (_%E121880121889%_ (lambda () '#f))
                           (_%E121879121903%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121878121885%_)
                                  (let ((_%e121881121893%_
                                         (gx#syntax-e _%e121878121885%_)))
                                    (let ((_%hd121882121896%_
                                           (##car _%e121881121893%_))
                                          (_%tl121883121898%_
                                           (##cdr _%e121881121893%_)))
                                      (let ((_%hd121901%_ _%hd121882121896%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd121901%_))))
                                  (_%E121880121889%_)))))
                      (_%E121879121903%_)))))
          (gx#core-expand*__% _%stx121873%_ _%stop?121875%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx121679%_
               _%expand-special121680%_
               _%begin-form121681%_
               _%expand-e121682%_)
        (letrec ((_%expand-splice121684%_
                  (lambda (_%hd121847%_
                           _%body121848%_
                           _%rest121849%_
                           _%r121850%_)
                    (if (gx#stx-list? _%body121848%_)
                        (_%K121688%_
                         (gx#stx-foldr cons _%rest121849%_ _%body121848%_)
                         _%r121850%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx121679%_
                         _%hd121847%_))))
                 (_%expand-cond-expand121685%_
                  (lambda (_%hd121843%_ _%rest121844%_ _%r121845%_)
                    (_%K121688%_
                     (cons (gx#core-expand-cond-expand% _%hd121843%_)
                           _%rest121844%_)
                     _%r121845%_)))
                 (_%expand-include121686%_
                  (lambda (_%hd121792%_ _%rest121793%_ _%r121794%_)
                    (let* ((_%e121795121805%_ _%hd121792%_)
                           (_%E121797121809%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121795121805%_)))
                           (_%E121796121839%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121795121805%_)
                                  (let ((_%e121798121813%_
                                         (gx#syntax-e _%e121795121805%_)))
                                    (let ((_%hd121799121816%_
                                           (##car _%e121798121813%_))
                                          (_%tl121800121818%_
                                           (##cdr _%e121798121813%_)))
                                      (if (gx#stx-pair? _%tl121800121818%_)
                                          (let ((_%e121801121821%_
                                                 (gx#syntax-e
                                                  _%tl121800121818%_)))
                                            (let ((_%hd121802121824%_
                                                   (##car _%e121801121821%_))
                                                  (_%tl121803121826%_
                                                   (##cdr _%e121801121821%_)))
                                              (let ((_%path121829%_
                                                     _%hd121802121824%_))
                                                (if (gx#stx-null?
                                                     _%tl121803121826%_)
                                                    (if (gx#stx-string?
                                                         _%path121829%_)
                                                        (let* ((_%rpath121831%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path121829%_
                         (gx#stx-source _%hd121792%_)))
                       (_%block121833%_
                        (gx#core-expand-include%__%
                         _%hd121792%_
                         _%rpath121831%_))
                       (_%rbody121836%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block121833%_
                            _%expand-special121680%_
                            '#f
                            _%expand-e121682%_))
                         gx#current-expander-path
                         (cons _%rpath121831%_ (gx#current-expander-path)))))
                  (_%K121688%_
                   _%rest121793%_
                   (__foldr1 cons _%r121794%_ _%rbody121836%_)))
                (_%E121797121809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121797121809%_)))))
                                          (_%E121797121809%_))))
                                  (_%E121797121809%_)))))
                      (_%E121796121839%_))))
                 (_%expand-expression121687%_
                  (lambda (_%hd121788%_ _%rest121789%_ _%r121790%_)
                    (_%K121688%_
                     _%rest121789%_
                     (cons (_%expand-e121682%_ _%hd121788%_) _%r121790%_))))
                 (_%K121688%_
                  (lambda (_%rest121718%_ _%r121719%_)
                    (let* ((_%e121720121727%_ _%rest121718%_)
                           (_%E121722121731%_
                            (lambda ()
                              (if _%begin-form121681%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form121681%_
                                    (reverse _%r121719%_))
                                   (gx#stx-source _%stx121679%_))
                                  _%r121719%_)))
                           (_%E121721121784%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121720121727%_)
                                  (let ((_%e121723121735%_
                                         (gx#syntax-e _%e121720121727%_)))
                                    (let ((_%hd121724121738%_
                                           (##car _%e121723121735%_))
                                          (_%tl121725121740%_
                                           (##cdr _%e121723121735%_)))
                                      (let* ((_%hd121743%_ _%hd121724121738%_)
                                             (_%rest121745%_
                                              _%tl121725121740%_)
                                             (_%hd121747%_
                                              (gx#core-expand-head
                                               _%hd121743%_))
                                             (_%e121748121755%_ _%hd121747%_)
                                             (_%E121750121759%_
                                              (lambda ()
                                                (_%expand-expression121687%_
                                                 _%hd121747%_
                                                 _%rest121745%_
                                                 _%r121719%_)))
                                             (_%E121749121780%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121748121755%_)
                                                    (let ((_%e121751121763%_
                                                           (gx#syntax-e
                                                            _%e121748121755%_)))
                                                      (let ((_%hd121752121766%_
                                                             (##car _%e121751121763%_))
                                                            (_%tl121753121768%_
                                                             (##cdr _%e121751121763%_)))
                                                        (let* ((_%form121771%_
                                                                _%hd121752121766%_)
                                                               (_%body121773%_
                                                                _%tl121753121768%_)
                                                               (_%bind121775%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form121771%_)
                            (gx#resolve-identifier__0 _%form121771%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind121775%_)
                      (let ((_%$e121777%_
                             (##unchecked-structure-ref
                              _%bind121775%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e121777%_)
                            (_%expand-splice121684%_
                             _%hd121747%_
                             _%body121773%_
                             _%rest121745%_
                             _%r121719%_)
                            (if (eq? '%#cond-expand _%$e121777%_)
                                (_%expand-cond-expand121685%_
                                 _%hd121747%_
                                 _%rest121745%_
                                 _%r121719%_)
                                (if (eq? '%#include _%$e121777%_)
                                    (_%expand-include121686%_
                                     _%hd121747%_
                                     _%rest121745%_
                                     _%r121719%_)
                                    (_%expand-special121680%_
                                     _%hd121747%_
                                     _%K121688%_
                                     _%rest121745%_
                                     _%r121719%_)))))
                      (_%expand-expression121687%_
                       _%hd121747%_
                       _%rest121745%_
                       _%r121719%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121750121759%_)))))
                                        (_%E121749121780%_))))
                                  (_%E121722121731%_)))))
                      (_%E121721121784%_)))))
          (let* ((_%e121689121696%_ _%stx121679%_)
                 (_%E121691121700%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121689121696%_)))
                 (_%E121690121714%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121689121696%_)
                        (let ((_%e121692121704%_
                               (gx#syntax-e _%e121689121696%_)))
                          (let ((_%hd121693121707%_ (##car _%e121692121704%_))
                                (_%tl121694121709%_ (##cdr _%e121692121704%_)))
                            (let ((_%body121712%_ _%tl121694121709%_))
                              (if (gx#stx-list? _%body121712%_)
                                  (_%K121688%_ _%body121712%_ '())
                                  (_%E121691121700%_)))))
                        (_%E121691121700%_)))))
            (_%E121690121714%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx121855%_ _%expand-special121856%_)
        (let* ((_%begin-form121858%_ '%#begin)
               (_%expand-e121860%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121855%_
           _%expand-special121856%_
           _%begin-form121858%_
           _%expand-e121860%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx121862%_ _%expand-special121863%_ _%begin-form121864%_)
        (let ((_%expand-e121866%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121862%_
           _%expand-special121863%_
           _%begin-form121864%_
           _%expand-e121866%_))))
    (define gx#core-expand-block
      (lambda _g122566_
        (let ((_g122565_ (##length _g122566_)))
          (cond ((##fx= _g122565_ 2) (apply gx#core-expand-block__0 _g122566_))
                ((##fx= _g122565_ 3) (apply gx#core-expand-block__1 _g122566_))
                ((##fx= _g122565_ 4) (apply gx#core-expand-block__% _g122566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g122566_))))))
    (define gx#core-expand-block*
      (lambda (_%stx121627%_ _%expand-special121628%_)
        (let* ((_%g121629121640%_
                (gx#core-expand-block__1
                 _%stx121627%_
                 _%expand-special121628%_
                 '#f))
               (_%E121633121644%_
                (lambda ()
                  (error '"No clause matching"
                         _%g121629121640%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K121638121675%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx121627%_)))
                (_%K121635121661%_ (lambda (_%expr121659%_) _%expr121659%_))
                (_%K121634121650%_
                 (lambda (_%body121648%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body121648%_))
                    (gx#stx-source _%stx121627%_)))))
            (let ((_%try-match121631121671%_
                   (lambda ()
                     (if (pair? _%g121629121640%_)
                         (let ((_%tl121637121666%_ (##cdr _%g121629121640%_))
                               (_%hd121636121664%_ (##car _%g121629121640%_)))
                           (if (null? _%tl121637121666%_)
                               (let ((_%expr121669%_ _%hd121636121664%_))
                                 (_%K121635121661%_ _%expr121669%_))
                               (let ((_%body121653%_ _%g121629121640%_))
                                 (_%K121634121650%_ _%body121653%_))))
                         (let ((_%body121653%_ _%g121629121640%_))
                           (_%K121634121650%_ _%body121653%_))))))
              (if (null? _%g121629121640%_)
                  (_%K121638121675%_)
                  (_%try-match121631121671%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx121452%_)
        (letrec ((_%satisfied?121454%_
                  (lambda (_%condition121555%_)
                    (let* ((_%e121556121571%_ _%condition121555%_)
                           (_%E121566121575%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121556121571%_)))
                           (_%E121559121594%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121556121571%_)
                                  (let ((_%e121567121579%_
                                         (gx#syntax-e _%e121556121571%_)))
                                    (let ((_%hd121568121582%_
                                           (##car _%e121567121579%_))
                                          (_%tl121569121584%_
                                           (##cdr _%e121567121579%_)))
                                      (let* ((_%combinator121587%_
                                              _%hd121568121582%_)
                                             (_%body121589%_
                                              _%tl121569121584%_))
                                        (if (gx#stx-list? _%body121589%_)
                                            (let ((_%$e121591%_
                                                   (gx#stx-e
                                                    _%combinator121587%_)))
                                              (if (eq? 'not _%$e121591%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?121454%_
                                                        _%body121589%_))
                                                  (if (eq? 'and _%$e121591%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?121454%_
                                                       _%body121589%_)
                                                      (if (eq? 'or
                                                               _%$e121591%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?121454%_
                                                           _%body121589%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e121591%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body121589%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx121452%_
                       _%combinator121587%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E121566121575%_)))))
                                  (_%E121566121575%_))))
                           (_%E121558121617%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121556121571%_)
                                  (let ((_%e121560121598%_
                                         (gx#syntax-e _%e121556121571%_)))
                                    (let ((_%hd121561121601%_
                                           (##car _%e121560121598%_))
                                          (_%tl121562121603%_
                                           (##cdr _%e121560121598%_)))
                                      (if (and (gx#identifier?
                                                _%hd121561121601%_)
                                               (gx#core-identifier=?
                                                _%hd121561121601%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl121562121603%_)
                                              (let ((_%e121563121606%_
                                                     (gx#syntax-e
                                                      _%tl121562121603%_)))
                                                (let ((_%hd121564121609%_
                                                       (##car _%e121563121606%_))
                                                      (_%tl121565121611%_
                                                       (##cdr _%e121563121606%_)))
                                                  (let ((_%expr121614%_
                                                         _%hd121564121609%_))
                                                    (if (gx#stx-null?
                                                         _%tl121565121611%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr121614%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E121559121594%_)))))
                                              (_%E121559121594%_))
                                          (_%E121559121594%_))))
                                  (_%E121559121594%_))))
                           (_%E121557121623%_
                            (lambda ()
                              (let ((_%id121621%_ _%e121556121571%_))
                                (if (gx#identifier? _%id121621%_)
                                    (gx#core-bound-identifier?__%
                                     _%id121621%_
                                     gx#feature-binding?)
                                    (_%E121558121617%_))))))
                      (_%E121557121623%_))))
                 (_%loop121455%_
                  (lambda (_%rest121485%_)
                    (let* ((_%e121486121494%_ _%rest121485%_)
                           (_%E121492121498%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121486121494%_)))
                           (_%E121488121502%_
                            (lambda ()
                              (if (gx#stx-null? _%e121486121494%_)
                                  '()
                                  (_%E121492121498%_))))
                           (_%E121487121551%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121486121494%_)
                                  (let ((_%e121489121506%_
                                         (gx#syntax-e _%e121486121494%_)))
                                    (let ((_%hd121490121509%_
                                           (##car _%e121489121506%_))
                                          (_%tl121491121511%_
                                           (##cdr _%e121489121506%_)))
                                      (let* ((_%hd121514%_ _%hd121490121509%_)
                                             (_%rest121516%_
                                              _%tl121491121511%_)
                                             (_%e121517121524%_ _%hd121514%_)
                                             (_%E121519121528%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e121517121524%_)))
                                             (_%E121518121547%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121517121524%_)
                                                    (let ((_%e121520121532%_
                                                           (gx#syntax-e
                                                            _%e121517121524%_)))
                                                      (let ((_%hd121521121535%_
                                                             (##car _%e121520121532%_))
                                                            (_%tl121522121537%_
                                                             (##cdr _%e121520121532%_)))
                                                        (let* ((_%condition121540%_
                                                                _%hd121521121535%_)
                                                               (_%body121542%_
                                                                _%tl121522121537%_))
                                                          (if (gx#stx-eq?
                                                               _%condition121540%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest121516%_)
                          _%body121542%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx121452%_
                           _%hd121514%_))
                      (if (_%satisfied?121454%_ _%condition121540%_)
                          _%body121542%_
                          (_%loop121455%_ _%rest121516%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121519121528%_)))))
                                        (_%E121518121547%_))))
                                  (_%E121488121502%_)))))
                      (_%E121487121551%_)))))
          (let* ((_%e121456121463%_ _%stx121452%_)
                 (_%E121458121467%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121456121463%_)))
                 (_%E121457121481%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121456121463%_)
                        (let ((_%e121459121471%_
                               (gx#syntax-e _%e121456121463%_)))
                          (let ((_%hd121460121474%_ (##car _%e121459121471%_))
                                (_%tl121461121476%_ (##cdr _%e121459121471%_)))
                            (let ((_%clauses121479%_ _%tl121461121476%_))
                              (if (gx#stx-list? _%clauses121479%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop121455%_ _%clauses121479%_))
                                  (_%E121458121467%_)))))
                        (_%E121458121467%_)))))
            (_%E121457121481%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx121395%_ _%rpath121396%_)
        (let* ((_%e121397121407%_ _%stx121395%_)
               (_%E121399121411%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121397121407%_)))
               (_%E121398121438%_
                (lambda ()
                  (if (gx#stx-pair? _%e121397121407%_)
                      (let ((_%e121400121415%_
                             (gx#syntax-e _%e121397121407%_)))
                        (let ((_%hd121401121418%_ (##car _%e121400121415%_))
                              (_%tl121402121420%_ (##cdr _%e121400121415%_)))
                          (if (gx#stx-pair? _%tl121402121420%_)
                              (let ((_%e121403121423%_
                                     (gx#syntax-e _%tl121402121420%_)))
                                (let ((_%hd121404121426%_
                                       (##car _%e121403121423%_))
                                      (_%tl121405121428%_
                                       (##cdr _%e121403121423%_)))
                                  (let ((_%path121431%_ _%hd121404121426%_))
                                    (if (gx#stx-null? _%tl121405121428%_)
                                        (if (gx#stx-string? _%path121431%_)
                                            (let ((_%rpath121436%_
                                                   (let ((_%$e121433%_
                                                          _%rpath121396%_))
                                                     (if _%$e121433%_
                                                         _%$e121433%_
                                                         (gx#core-resolve-path__%
                                                          _%path121431%_
                                                          (gx#stx-source
                                                           _%stx121395%_))))))
                                              (if (member _%rpath121436%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx121395%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath121436%_))
                                                    (gx#stx-source
                                                     _%stx121395%_)))))
                                            (_%E121399121411%_))
                                        (_%E121399121411%_)))))
                              (_%E121399121411%_))))
                      (_%E121399121411%_)))))
          (_%E121398121438%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx121445%_)
        (let ((_%rpath121447%_ '#f))
          (gx#core-expand-include%__% _%stx121445%_ _%rpath121447%_))))
    (define gx#core-expand-include%
      (lambda _g122568_
        (let ((_g122567_ (##length _g122568_)))
          (cond ((##fx= _g122567_ 1)
                 (apply gx#core-expand-include%__0 _g122568_))
                ((##fx= _g122567_ 2)
                 (apply gx#core-expand-include%__% _g122568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g122568_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K121361%_ _%stx121362%_ _%method121363%_)
        (if (procedure? _%K121361%_)
            (let ((_%$e121366%_ (gx#stx-source _%stx121362%_)))
              (if _%$e121366%_
                  ((lambda (_%g121368121370%_)
                     (gx#stx-wrap-source
                      (_%K121361%_ _%stx121362%_)
                      _%g121368121370%_))
                   _%$e121366%_)
                  (_%K121361%_ _%stx121362%_)))
            (let ((_%$e121374%_
                   (bound-method-ref _%K121361%_ _%method121363%_)))
              (if _%$e121374%_
                  ((lambda (_%g121376121378%_)
                     (gx#core-apply-expander__%
                      _%g121376121378%_
                      _%stx121362%_
                      _%method121363%_))
                   _%$e121374%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx121362%_
                   _%method121363%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K121385%_ _%stx121386%_)
        (let ((_%method121388%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K121385%_
           _%stx121386%_
           _%method121388%_))))
    (define gx#core-apply-expander
      (lambda _g122570_
        (let ((_g122569_ (##length _g122570_)))
          (cond ((##fx= _g122569_ 2)
                 (apply gx#core-apply-expander__0 _g122570_))
                ((##fx= _g122569_ 3)
                 (apply gx#core-apply-expander__% _g122570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g122570_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self119403121344%_ _%stx121346%_)
        (let* ((_%self121348%_ _%self119403121344%_)
               (_%self121350%_ _%self121348%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx121346%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self119404121184%_ _%stx121186%_)
        (let* ((_%self121188%_ _%self119404121184%_)
               (_%self121190%_ _%self121188%_)
               (_%self121199121205%_ _%self121190%_)
               (_%E121201121209%_
                (lambda ()
                  (error '"No clause matching"
                         _%self121199121205%_
                         '((macro-expander K)))
                  '#!void))
               (_%K121202121214%_
                (lambda (_%K121212%_)
                  (gx#core-apply-expander__0 _%K121212%_ _%stx121186%_)))
               (_%e121203121217%_
                (##unchecked-structure-ref _%self121199121205%_ '1 '#f '#f))
               (_%K121220%_ _%e121203121217%_))
          (_%K121202121214%_ _%K121220%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self119405121024%_ _%stx121026%_)
        (let* ((_%self121028%_ _%self119405121024%_)
               (_%self121030%_ _%self121028%_))
          (if (gx#sealed-syntax? _%stx121026%_)
              _%stx121026%_
              (let* ((_%self121039121045%_ _%self121030%_)
                     (_%E121041121049%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self121039121045%_
                               '((core-expander K)))
                        '#!void))
                     (_%K121042121054%_
                      (lambda (_%K121052%_)
                        (gx#core-apply-expander__0 _%K121052%_ _%stx121026%_)))
                     (_%e121043121057%_
                      (##unchecked-structure-ref
                       _%self121039121045%_
                       '1
                       '#f
                       '#f))
                     (_%K121060%_ _%e121043121057%_))
                (_%K121042121054%_ _%K121060%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self119406120873%_ _%stx120875%_ _%top?120876%_)
        (let* ((_%self120878%_ _%self119406120873%_)
               (_%self120880%_ _%self120878%_))
          (if (_%top?120876%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self120880%_
               _%stx120875%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx120875%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self119406120893%_ _%stx120894%_)
        (let ((_%top?120896%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self119406120893%_
           _%stx120894%_
           _%top?120896%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g122572_
        (let ((_g122571_ (##length _g122572_)))
          (cond ((##fx= _g122571_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g122572_))
                ((##fx= _g122571_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g122572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g122572_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self119407120734%_ _%stx120736%_)
        (let* ((_%self120738%_ _%self119407120734%_)
               (_%self120740%_ _%self120738%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self120740%_
           _%stx120736%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self119408120546%_ _%stx120548%_)
        (let* ((_%self120550%_ _%self119408120546%_)
               (_%self120552%_ _%self120550%_)
               (_%self120561120567%_ _%self120552%_)
               (_%E120563120571%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120561120567%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K120564120604%_
                (lambda (_%id120574%_)
                  (let* ((_%e120575120582%_ _%stx120548%_)
                         (_%E120577120586%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e120575120582%_)))
                         (_%E120576120600%_
                          (lambda ()
                            (if (gx#stx-pair? _%e120575120582%_)
                                (let ((_%e120578120590%_
                                       (gx#syntax-e _%e120575120582%_)))
                                  (let ((_%hd120579120593%_
                                         (##car _%e120578120590%_))
                                        (_%tl120580120595%_
                                         (##cdr _%e120578120590%_)))
                                    (let ((_%body120598%_ _%tl120580120595%_))
                                      (gx#core-cons
                                       _%id120574%_
                                       _%body120598%_))))
                                (_%E120577120586%_)))))
                    (_%E120576120600%_))))
               (_%e120565120607%_
                (##unchecked-structure-ref _%self120561120567%_ '1 '#f '#f))
               (_%id120610%_ _%e120565120607%_))
          (_%K120564120604%_ _%id120610%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self120372%_ _%stx120373%_ _%method120374%_)
        (let* ((_%self120375120383%_ _%self120372%_)
               (_%E120377120387%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120375120383%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K120378120394%_
                (lambda (_%phi120390%_ _%ctx120391%_ _%K120392%_)
                  (gx#core-apply-user-macro
                   _%K120392%_
                   _%stx120373%_
                   _%ctx120391%_
                   _%phi120390%_
                   _%method120374%_))))
          (if (##structure-instance-of?
               _%self120375120383%_
               'gx#user-expander::t)
              (let* ((_%e120379120397%_
                      (##unchecked-structure-ref
                       _%self120375120383%_
                       '1
                       '#f
                       '#f))
                     (_%K120400%_ _%e120379120397%_)
                     (_%e120380120402%_
                      (##unchecked-structure-ref
                       _%self120375120383%_
                       '2
                       '#f
                       '#f))
                     (_%ctx120405%_ _%e120380120402%_)
                     (_%e120381120407%_
                      (##unchecked-structure-ref
                       _%self120375120383%_
                       '3
                       '#f
                       '#f))
                     (_%phi120410%_ _%e120381120407%_))
                (_%K120378120394%_ _%phi120410%_ _%ctx120405%_ _%K120400%_))
              (_%E120377120387%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self120415%_ _%stx120416%_)
        (let ((_%method120418%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self120415%_
           _%stx120416%_
           _%method120418%_))))
    (define gx#core-apply-user-expander
      (lambda _g122574_
        (let ((_g122573_ (##length _g122574_)))
          (cond ((##fx= _g122573_ 2)
                 (apply gx#core-apply-user-expander__0 _g122574_))
                ((##fx= _g122573_ 3)
                 (apply gx#core-apply-user-expander__% _g122574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g122574_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K120362%_
               _%stx120363%_
               _%ctx120364%_
               _%phi120365%_
               _%method120366%_)
        (let ((_%mark120368%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx120364%_
                _%phi120365%_
                _%stx120363%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K120362%_
               (gx#stx-apply-mark _%stx120363%_ _%mark120368%_)
               _%method120366%_)
              _%mark120368%_))
           gx#current-expander-marks
           (cons _%mark120368%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx120210%_ _%phi120211%_ _%ctx120212%_)
        (let _%lp120214%_ ((_%bind120216%_
                            (gx#core-resolve-identifier__%
                             _%stx120210%_
                             _%phi120211%_
                             _%ctx120212%_)))
          (if (##structure-direct-instance-of?
               _%bind120216%_
               'gx#import-binding::t)
              (_%lp120214%_
               (##unchecked-structure-ref _%bind120216%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind120216%_
                   'gx#alias-binding::t)
                  (_%lp120214%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind120216%_ '4 '#f '#f)
                    _%phi120211%_
                    _%ctx120212%_))
                  _%bind120216%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx120224%_)
        (let* ((_%phi120226%_ (gx#current-expander-phi))
               (_%ctx120228%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120224%_
           _%phi120226%_
           _%ctx120228%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx120230%_ _%phi120231%_)
        (let ((_%ctx120233%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120230%_
           _%phi120231%_
           _%ctx120233%_))))
    (define gx#resolve-identifier
      (lambda _g122576_
        (let ((_g122575_ (##length _g122576_)))
          (cond ((##fx= _g122575_ 1)
                 (apply gx#resolve-identifier__0 _g122576_))
                ((##fx= _g122575_ 2)
                 (apply gx#resolve-identifier__1 _g122576_))
                ((##fx= _g122575_ 3)
                 (apply gx#resolve-identifier__% _g122576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g122576_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx120165%_
               _%val120166%_
               _%rebind?120167%_
               _%phi120168%_
               _%ctx120169%_)
        (let ((_%rebind?120174%_
               (if (not _%rebind?120167%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?120167%_)
                       _%rebind?120167%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx120165%_)
           _%val120166%_
           _%rebind?120174%_
           _%phi120168%_
           _%ctx120169%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx120179%_ _%val120180%_)
        (let* ((_%rebind?120182%_ '#f)
               (_%phi120184%_ (gx#current-expander-phi))
               (_%ctx120186%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120179%_
           _%val120180%_
           _%rebind?120182%_
           _%phi120184%_
           _%ctx120186%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx120188%_ _%val120189%_ _%rebind?120190%_)
        (let* ((_%phi120192%_ (gx#current-expander-phi))
               (_%ctx120194%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120188%_
           _%val120189%_
           _%rebind?120190%_
           _%phi120192%_
           _%ctx120194%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx120196%_ _%val120197%_ _%rebind?120198%_ _%phi120199%_)
        (let ((_%ctx120201%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120196%_
           _%val120197%_
           _%rebind?120198%_
           _%phi120199%_
           _%ctx120201%_))))
    (define gx#bind-identifier!
      (lambda _g122578_
        (let ((_g122577_ (##length _g122578_)))
          (cond ((##fx= _g122577_ 2) (apply gx#bind-identifier!__0 _g122578_))
                ((##fx= _g122577_ 3) (apply gx#bind-identifier!__1 _g122578_))
                ((##fx= _g122577_ 4) (apply gx#bind-identifier!__2 _g122578_))
                ((##fx= _g122577_ 5) (apply gx#bind-identifier!__% _g122578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g122578_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx120131%_ _%phi120132%_ _%ctx120133%_)
        (let _%lp120135%_ ((_%e120137%_ _%stx120131%_)
                           (_%marks120138%_ (gx#current-expander-marks)))
          (if (symbol? _%e120137%_)
              (gx#core-resolve-binding
               _%e120137%_
               _%phi120132%_
               _%phi120132%_
               _%ctx120133%_
               (reverse _%marks120138%_))
              (if (gx#identifier-quote? _%e120137%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e120137%_ '1 '#f '#f)
                   _%phi120132%_
                   '0
                   (##unchecked-structure-ref _%e120137%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e120137%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e120137%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e120137%_ '1 '#f '#f)
                       _%phi120132%_
                       _%phi120132%_
                       _%ctx120133%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e120137%_ '3 '#f '#f)
                        _%marks120138%_))
                      (if (##structure-direct-instance-of?
                           _%e120137%_
                           'gx#syntax-wrap::t)
                          (_%lp120135%_
                           (##unchecked-structure-ref _%e120137%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e120137%_ '3 '#f '#f)
                            _%marks120138%_))
                          (if (##structure-instance-of?
                               _%e120137%_
                               'gerbil#AST::t)
                              (_%lp120135%_
                               (##unchecked-structure-ref
                                _%e120137%_
                                '1
                                '#f
                                '#f)
                               _%marks120138%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx120131%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx120149%_)
        (let* ((_%phi120151%_ (gx#current-expander-phi))
               (_%ctx120153%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120149%_
           _%phi120151%_
           _%ctx120153%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx120155%_ _%phi120156%_)
        (let ((_%ctx120158%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120155%_
           _%phi120156%_
           _%ctx120158%_))))
    (define gx#core-resolve-identifier
      (lambda _g122580_
        (let ((_g122579_ (##length _g122580_)))
          (cond ((##fx= _g122579_ 1)
                 (apply gx#core-resolve-identifier__0 _g122580_))
                ((##fx= _g122579_ 2)
                 (apply gx#core-resolve-identifier__1 _g122580_))
                ((##fx= _g122579_ 3)
                 (apply gx#core-resolve-identifier__% _g122580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g122580_))))))
    (define gx#core-resolve-binding
      (lambda (_%id120041%_
               _%phi120042%_
               _%src-phi120043%_
               _%ctx120044%_
               _%marks120045%_)
        (letrec ((_%resolve120047%_
                  (lambda (_%ctx120115%_ _%src-phi120116%_ _%key120117%_)
                    (let _%lp120119%_ ((_%ctx120121%_
                                        (gx#core-context-shift
                                         _%ctx120115%_
                                         _%phi120042%_))
                                       (_%dphi120122%_
                                        (fx- _%phi120042%_ _%src-phi120116%_)))
                      (let ((_%$e120124%_
                             (gx#core-context-resolve
                              _%ctx120121%_
                              _%key120117%_)))
                        (if _%$e120124%_
                            _%$e120124%_
                            (if (fxzero? _%dphi120122%_)
                                '#f
                                (if (fxpositive? _%dphi120122%_)
                                    (_%lp120119%_
                                     (gx#core-context-shift _%ctx120121%_ '-1)
                                     (##fx- _%dphi120122%_ '1))
                                    (_%lp120119%_
                                     (gx#core-context-shift _%ctx120121%_ '1)
                                     (##fx+ _%dphi120122%_ '1))))))))))
          (let _%lp120049%_ ((_%ctx120051%_ _%ctx120044%_)
                             (_%src-phi120052%_ _%src-phi120043%_)
                             (_%rest120053%_ _%marks120045%_))
            (let* ((_%rest120054120062%_ _%rest120053%_)
                   (_%else120056120070%_
                    (lambda ()
                      (_%resolve120047%_
                       _%ctx120051%_
                       _%src-phi120052%_
                       _%id120041%_)))
                   (_%K120058120103%_
                    (lambda (_%rest120073%_ _%hd120074%_)
                      (let* ((_%hd120075120081%_ _%hd120074%_)
                             (_%E120077120085%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd120075120081%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K120078120095%_
                              (lambda (_%subst120088%_)
                                (let ((_%$e120092%_
                                       (let ((_%key120090%_
                                              (if _%subst120088%_
                                                  (hash-get
                                                   _%subst120088%_
                                                   _%id120041%_)
                                                  '#f)))
                                         (if _%key120090%_
                                             (_%resolve120047%_
                                              _%ctx120051%_
                                              _%src-phi120052%_
                                              _%key120090%_)
                                             '#f))))
                                  (if _%$e120092%_
                                      _%$e120092%_
                                      (_%lp120049%_
                                       (##unchecked-structure-ref
                                        _%hd120074%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd120074%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest120073%_))))))
                        (if (##structure-instance-of?
                             _%hd120075120081%_
                             'gx#expander-mark::t)
                            (let* ((_%e120079120098%_
                                    (##unchecked-structure-ref
                                     _%hd120075120081%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst120101%_ _%e120079120098%_))
                              (_%K120078120095%_ _%subst120101%_))
                            (_%E120077120085%_))))))
              (if (pair? _%rest120054120062%_)
                  (let ((_%hd120059120106%_ (##car _%rest120054120062%_))
                        (_%tl120060120108%_ (##cdr _%rest120054120062%_)))
                    (let* ((_%hd120111%_ _%hd120059120106%_)
                           (_%rest120113%_ _%tl120060120108%_))
                      (_%K120058120103%_ _%rest120113%_ _%hd120111%_)))
                  (_%else120056120070%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key119911%_
               _%val119912%_
               _%rebind?119913%_
               _%phi119914%_
               _%ctx119915%_)
        (letrec ((_%update-binding119917%_
                  (lambda (_%xval119990%_)
                    (if (or (_%rebind?119913%_
                             _%ctx119915%_
                             _%xval119990%_
                             _%val119912%_)
                            (and (##structure-direct-instance-of?
                                  _%xval119990%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval119990%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val119912%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val119912%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval119990%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val119912%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val119912%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval119990%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val119912%_
                        (if (and (##structure-direct-instance-of?
                                  _%val119912%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val119912%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval119990%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val119912%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval119990%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval119990%_
                            (if (and (##structure-direct-instance-of?
                                      _%val119912%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval119990%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key119911%_
                                 (cons (##unchecked-structure-ref
                                        _%val119912%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val119912%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval119990%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval119990%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval119990%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval119990%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key119911%_
                                 _%val119912%_
                                 _%xval119990%_))))))
                 (_%gensubst119918%_
                  (lambda (_%subst119985%_ _%id119986%_)
                    (let ((_%eid119988%_
                           (gensym (if (uninterned-symbol? _%id119986%_)
                                       '%
                                       _%id119986%_))))
                      (hash-put! _%subst119985%_ _%id119986%_ _%eid119988%_)
                      _%eid119988%_)))
                 (_%subst!119919%_
                  (lambda (_%key119921%_)
                    (let* ((_%key119922119930%_ _%key119921%_)
                           (_%else119924119938%_ (lambda () _%key119921%_))
                           (_%K119926119973%_
                            (lambda (_%mark119941%_ _%id119942%_)
                              (let* ((_%mark119943119949%_ _%mark119941%_)
                                     (_%E119945119953%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark119943119949%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K119946119965%_
                                      (lambda (_%subst119956%_)
                                        (if (not _%subst119956%_)
                                            (let ((_%subst119959%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark119941%_
                                               _%subst119959%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst119918%_
                                               _%subst119959%_
                                               _%id119942%_))
                                            (let ((_%$e119961%_
                                                   (hash-get
                                                    _%subst119956%_
                                                    _%id119942%_)))
                                              (if _%$e119961%_
                                                  _%$e119961%_
                                                  (_%gensubst119918%_
                                                   _%subst119956%_
                                                   _%id119942%_)))))))
                                (if (##structure-instance-of?
                                     _%mark119943119949%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e119947119968%_
                                            (##unchecked-structure-ref
                                             _%mark119943119949%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst119971%_ _%e119947119968%_))
                                      (_%K119946119965%_ _%subst119971%_))
                                    (_%E119945119953%_))))))
                      (if (pair? _%key119922119930%_)
                          (let ((_%hd119927119976%_
                                 (##car _%key119922119930%_))
                                (_%tl119928119978%_
                                 (##cdr _%key119922119930%_)))
                            (let* ((_%id119981%_ _%hd119927119976%_)
                                   (_%mark119983%_ _%tl119928119978%_))
                              (_%K119926119973%_ _%mark119983%_ _%id119981%_)))
                          (_%else119924119938%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx119915%_ _%phi119914%_)
           (_%subst!119919%_ _%key119911%_)
           _%val119912%_
           _%update-binding119917%_))))
    (define gx#core-bind!__0
      (lambda (_%key120011%_ _%val120012%_)
        (let* ((_%rebind?120014%_ false)
               (_%phi120016%_ (gx#current-expander-phi))
               (_%ctx120018%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key120011%_
           _%val120012%_
           _%rebind?120014%_
           _%phi120016%_
           _%ctx120018%_))))
    (define gx#core-bind!__1
      (lambda (_%key120020%_ _%val120021%_ _%rebind?120022%_)
        (let* ((_%phi120024%_ (gx#current-expander-phi))
               (_%ctx120026%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key120020%_
           _%val120021%_
           _%rebind?120022%_
           _%phi120024%_
           _%ctx120026%_))))
    (define gx#core-bind!__2
      (lambda (_%key120028%_ _%val120029%_ _%rebind?120030%_ _%phi120031%_)
        (let ((_%ctx120033%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key120028%_
           _%val120029%_
           _%rebind?120030%_
           _%phi120031%_
           _%ctx120033%_))))
    (define gx#core-bind!
      (lambda _g122582_
        (let ((_g122581_ (##length _g122582_)))
          (cond ((##fx= _g122581_ 2) (apply gx#core-bind!__0 _g122582_))
                ((##fx= _g122581_ 3) (apply gx#core-bind!__1 _g122582_))
                ((##fx= _g122581_ 4) (apply gx#core-bind!__2 _g122582_))
                ((##fx= _g122581_ 5) (apply gx#core-bind!__% _g122582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g122582_))))))
    (define gx#core-identifier-key
      (lambda (_%stx119842%_)
        (if (symbol? _%stx119842%_)
            (let* ((_%g119844119852%_ (gx#current-expander-marks))
                   (_%else119846119860%_ (lambda () _%stx119842%_))
                   (_%K119848119865%_
                    (lambda (_%hd119863%_) (cons _%stx119842%_ _%hd119863%_))))
              (if (pair? _%g119844119852%_)
                  (let* ((_%hd119849119868%_ (##car _%g119844119852%_))
                         (_%hd119871%_ _%hd119849119868%_))
                    (_%K119848119865%_ _%hd119871%_))
                  (_%else119846119860%_)))
            (if (gx#identifier? _%stx119842%_)
                (let* ((_%id119874%_ (gx#syntax-local-unwrap _%stx119842%_))
                       (_%eid119876%_ (gx#stx-e _%id119874%_))
                       (_%marks119878%_
                        (gx#stx-identifier-marks* _%id119874%_))
                       (_%marks119880119888%_ _%marks119878%_)
                       (_%else119882119896%_ (lambda () _%eid119876%_))
                       (_%K119884119901%_
                        (lambda (_%hd119899%_)
                          (cons _%eid119876%_ _%hd119899%_))))
                  (if (pair? _%marks119880119888%_)
                      (let* ((_%hd119885119904%_ (##car _%marks119880119888%_))
                             (_%hd119907%_ _%hd119885119904%_))
                        (_%K119884119901%_ _%hd119907%_))
                      (_%else119882119896%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx119842%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx119781%_ _%phi119782%_)
        (letrec ((_%make-phi119784%_
                  (lambda (_%super119840%_)
                    (let ((__obj122554
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj122554
                       (##gensym 'phi)
                       _%super119840%_)
                      __obj122554)))
                 (_%make-phi/up119785%_
                  (lambda (_%ctx119835%_ _%super119836%_)
                    (let ((_%ctx+1119838%_
                           (_%make-phi119784%_ _%super119836%_)))
                      (##unchecked-structure-set!
                       _%ctx119835%_
                       _%ctx+1119838%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1119838%_
                       _%ctx119835%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1119838%_)))
                 (_%make-phi/down119786%_
                  (lambda (_%ctx119830%_ _%super119831%_)
                    (let ((_%ctx-1119833%_
                           (_%make-phi119784%_ _%super119831%_)))
                      (##unchecked-structure-set!
                       _%ctx-1119833%_
                       _%ctx119830%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx119830%_
                       _%ctx-1119833%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1119833%_)))
                 (_%shift119787%_
                  (lambda (_%ctx119813%_
                           _%delta119814%_
                           _%make-delta-context119815%_
                           _%phi119816%_
                           _%K119817%_)
                    (let ((_%$e119819%_
                           (##unchecked-structure-ref
                            _%ctx119813%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e119819%_
                          ((lambda (_%super119822%_)
                             (let* ((_%super119824%_
                                     (_%K119817%_
                                      _%super119822%_
                                      _%delta119814%_))
                                    (_%ctx+d119826%_
                                     (_%make-delta-context119815%_
                                      _%ctx119813%_
                                      _%super119824%_)))
                               (_%K119817%_
                                _%ctx+d119826%_
                                (fx- _%phi119816%_ _%delta119814%_))))
                           _%$e119819%_)
                          (error '"Bad context" _%ctx119813%_))))))
          (let _%K119789%_ ((_%ctx119791%_ _%ctx119781%_)
                            (_%phi119792%_ _%phi119782%_))
            (if (fxzero? _%phi119792%_)
                _%ctx119791%_
                (if (##structure-instance-of? _%ctx119791%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi119792%_)
                        (let ((_%$e119796%_
                               (##unchecked-structure-ref
                                _%ctx119791%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e119796%_
                              ((lambda (_%g119798119800%_)
                                 (_%K119789%_
                                  _%g119798119800%_
                                  (##fx- _%phi119792%_ '1)))
                               _%$e119796%_)
                              (_%shift119787%_
                               _%ctx119791%_
                               '1
                               _%make-phi/up119785%_
                               _%phi119792%_
                               _%K119789%_)))
                        (let ((_%$e119804%_
                               (##unchecked-structure-ref
                                _%ctx119791%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e119804%_
                              ((lambda (_%g119806119808%_)
                                 (_%K119789%_
                                  _%g119806119808%_
                                  (##fx+ _%phi119792%_ '1)))
                               _%$e119804%_)
                              (_%shift119787%_
                               _%ctx119791%_
                               '-1
                               _%make-phi/down119786%_
                               _%phi119792%_
                               _%K119789%_))))
                    _%ctx119791%_))))))
    (define gx#core-context-get
      (lambda (_%ctx119778%_ _%key119779%_)
        (hash-get
         (##unchecked-structure-ref _%ctx119778%_ '2 '#f '#f)
         _%key119779%_)))
    (define gx#core-context-put!
      (lambda (_%ctx119774%_ _%key119775%_ _%val119776%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx119774%_ '2 '#f '#f)
         _%key119775%_
         _%val119776%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx119760%_ _%key119761%_)
        (let _%lp119763%_ ((_%ctx119765%_ _%ctx119760%_))
          (let ((_%$e119767%_
                 (gx#core-context-get _%ctx119765%_ _%key119761%_)))
            (if _%$e119767%_
                _%$e119767%_
                (let ((_%$e119770%_
                       (if (##structure-instance-of?
                            _%ctx119765%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx119765%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e119770%_ (_%lp119763%_ _%$e119770%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx119749%_ _%key119750%_ _%val119751%_ _%rebind119752%_)
        (let ((_%$e119754%_ (gx#core-context-get _%ctx119749%_ _%key119750%_)))
          (if _%$e119754%_
              ((lambda (_%xval119757%_)
                 (gx#core-context-put!
                  _%ctx119749%_
                  _%key119750%_
                  (_%rebind119752%_ _%xval119757%_)))
               _%$e119754%_)
              (gx#core-context-put!
               _%ctx119749%_
               _%key119750%_
               _%val119751%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx119724%_ _%stop?119725%_)
        (let _%lp119727%_ ((_%ctx119729%_ _%ctx119724%_))
          (if (_%stop?119725%_ _%ctx119729%_)
              _%ctx119729%_
              (if (##structure-instance-of? _%ctx119729%_ 'gx#phi-context::t)
                  (_%lp119727%_
                   (##unchecked-structure-ref _%ctx119729%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx119738%_ (gx#current-expander-context))
               (_%stop?119740%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119738%_ _%stop?119740%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx119742%_)
        (let ((_%stop?119744%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119742%_ _%stop?119744%_))))
    (define gx#core-context-top
      (lambda _g122584_
        (let ((_g122583_ (##length _g122584_)))
          (cond ((##fx= _g122583_ 0) (apply gx#core-context-top__0 _g122584_))
                ((##fx= _g122583_ 1) (apply gx#core-context-top__1 _g122584_))
                ((##fx= _g122583_ 2) (apply gx#core-context-top__% _g122584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g122584_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx119709%_)
        (let _%lp119711%_ ((_%ctx119713%_ _%ctx119709%_))
          (if (##structure-instance-of? _%ctx119713%_ 'gx#phi-context::t)
              (_%lp119711%_
               (##unchecked-structure-ref _%ctx119713%_ '3 '#f '#f))
              _%ctx119713%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx119719%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx119719%_))))
    (define gx#core-context-root
      (lambda _g122586_
        (let ((_g122585_ (##length _g122586_)))
          (cond ((##fx= _g122585_ 0) (apply gx#core-context-root__0 _g122586_))
                ((##fx= _g122585_ 1) (apply gx#core-context-root__% _g122586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g122586_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx119691%_ . _%ignore119692%_)
        (let ((_%$e119694%_ (gx#current-expander-allow-rebind?)))
          (if _%$e119694%_
              _%$e119694%_
              (if (##structure-instance-of? _%ctx119691%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx119691%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx119691%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx119701%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx119701%_))))
    (define gx#core-context-rebind?
      (lambda _g122588_
        (let ((_g122587_ (##length _g122588_)))
          (cond ((##fx= _g122587_ 0)
                 (apply gx#core-context-rebind?__0 _g122588_))
                ((##fx= _g122587_ 1)
                 (apply gx#core-context-rebind?__% _g122588_))
                ((##fx>= _g122587_ 1)
                 (apply gx#core-context-rebind?__% _g122588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g122588_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx119674%_)
        (let ((_%$e119676%_ (gx#core-context-top__1 _%ctx119674%_)))
          (if _%$e119676%_
              ((lambda (_%ctx119679%_)
                 (if (##structure-instance-of?
                      _%ctx119679%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx119679%_ '6 '#f '#f)
                     '#f))
               _%$e119676%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx119686%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx119686%_))))
    (define gx#core-context-namespace
      (lambda _g122590_
        (let ((_g122589_ (##length _g122590_)))
          (cond ((##fx= _g122589_ 0)
                 (apply gx#core-context-namespace__0 _g122590_))
                ((##fx= _g122589_ 1)
                 (apply gx#core-context-namespace__% _g122590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g122590_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind119660%_ _%is?119661%_)
        (if (##structure-direct-instance-of?
             _%bind119660%_
             'gx#syntax-binding::t)
            (_%is?119661%_
             (##unchecked-structure-ref _%bind119660%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind119666%_)
        (let ((_%is?119668%_ gx#expander?))
          (gx#expander-binding?__% _%bind119666%_ _%is?119668%_))))
    (define gx#expander-binding?
      (lambda _g122592_
        (let ((_g122591_ (##length _g122592_)))
          (cond ((##fx= _g122591_ 1) (apply gx#expander-binding?__0 _g122592_))
                ((##fx= _g122591_ 2) (apply gx#expander-binding?__% _g122592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g122592_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind119657%_)
        (gx#expander-binding?__% _%bind119657%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind119655%_)
        (gx#expander-binding?__% _%bind119655%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind119649%_)
        (letrec ((_%direct-special-form?119651%_
                  (lambda (_%obj119653%_)
                    (##structure-direct-instance-of?
                     _%obj119653%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind119649%_
           _%direct-special-form?119651%_))))
    (define gx#special-form-binding?
      (lambda (_%bind119647%_)
        (gx#expander-binding?__% _%bind119647%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind119638%_)
        (letrec ((_%feature?119640%_
                  (lambda (_%e119642%_)
                    (let ((_%$e119644%_
                           (##structure-instance-of?
                            _%e119642%_
                            'gx#feature-expander::t)))
                      (if _%$e119644%_
                          _%$e119644%_
                          (##structure-instance-of?
                           _%e119642%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind119638%_ _%feature?119640%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind119636%_)
        (gx#expander-binding?__% _%bind119636%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id119623%_ _%bound?119624%_)
        (if (gx#identifier? _%id119623%_)
            (_%bound?119624%_ (gx#resolve-identifier__0 _%id119623%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id119629%_)
        (let ((_%bound?119631%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id119629%_ _%bound?119631%_))))
    (define gx#core-bound-identifier?
      (lambda _g122594_
        (let ((_g122593_ (##length _g122594_)))
          (cond ((##fx= _g122593_ 1)
                 (apply gx#core-bound-identifier?__0 _g122594_))
                ((##fx= _g122593_ 2)
                 (apply gx#core-bound-identifier?__% _g122594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g122594_))))))
    (define gx#core-identifier=?
      (lambda (_%x119613%_ _%y119614%_)
        (letrec ((_%y=?119616%_
                  (lambda (_%xid119620%_)
                    ((if (list? _%y119614%_) memq eq?)
                     _%xid119620%_
                     _%y119614%_))))
          (let ((_%bind119618%_ (gx#resolve-identifier__0 _%x119613%_)))
            (if (##structure-instance-of? _%bind119618%_ 'gx#binding::t)
                (_%y=?119616%_
                 (##unchecked-structure-ref _%bind119618%_ '1 '#f '#f))
                (_%y=?119616%_ (gx#stx-e _%x119613%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e119611%_)
        (if (interned-symbol? _%e119611%_)
            (string-index__0 (symbol->string _%e119611%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx119564%_ _%src119565%_ _%ctx119566%_ _%marks119567%_)
        (if (##structure? _%stx119564%_)
            (let ((_%$e119569%_ (gx#sealed-syntax-unwrap _%stx119564%_)))
              (if _%$e119569%_
                  _%$e119569%_
                  (if (gx#identifier? _%stx119564%_)
                      (let ((_%id119573%_
                             (gx#stx-unwrap__% _%stx119564%_ _%marks119567%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id119573%_ '1 '#f '#f)
                         (let ((_%$e119575%_
                                (##unchecked-structure-ref
                                 _%id119573%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e119575%_ _%$e119575%_ _%src119565%_))
                         _%ctx119566%_
                         (##unchecked-structure-ref _%id119573%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx119564%_)
                       (let ((_%$e119579%_ (gx#stx-source _%stx119564%_)))
                         (if _%$e119579%_ _%$e119579%_ _%src119565%_))
                       _%ctx119566%_
                       (reverse _%marks119567%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx119564%_
             _%src119565%_
             _%ctx119566%_
             (reverse _%marks119567%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx119585%_)
        (let* ((_%src119587%_ '#f)
               (_%ctx119589%_ (gx#current-expander-context))
               (_%marks119591%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119585%_
           _%src119587%_
           _%ctx119589%_
           _%marks119591%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx119593%_ _%src119594%_)
        (let* ((_%ctx119596%_ (gx#current-expander-context))
               (_%marks119598%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119593%_
           _%src119594%_
           _%ctx119596%_
           _%marks119598%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx119600%_ _%src119601%_ _%ctx119602%_)
        (let ((_%marks119604%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119600%_
           _%src119601%_
           _%ctx119602%_
           _%marks119604%_))))
    (define gx#core-quote-syntax
      (lambda _g122596_
        (let ((_g122595_ (##length _g122596_)))
          (cond ((##fx= _g122595_ 1) (apply gx#core-quote-syntax__0 _g122596_))
                ((##fx= _g122595_ 2) (apply gx#core-quote-syntax__1 _g122596_))
                ((##fx= _g122595_ 3) (apply gx#core-quote-syntax__2 _g122596_))
                ((##fx= _g122595_ 4) (apply gx#core-quote-syntax__% _g122596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g122596_))))))
    (define gx#core-cons
      (lambda (_%hd119560%_ _%tl119561%_)
        (cons (gx#core-quote-syntax__0 _%hd119560%_) _%tl119561%_)))
    (define gx#core-list
      (lambda (_%hd119557%_ . _%rest119558%_)
        (cons (gx#core-quote-syntax__0 _%hd119557%_) _%rest119558%_)))
    (define gx#core-cons*
      (lambda (_%hd119554%_ . _%rest119555%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd119554%_) _%rest119555%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path119523%_ _%rel119524%_)
        (let ((_%path119541%_ (gx#stx-e _%stx-path119523%_))
              (_%reldir119542%_
               (let _%lp119526%_ ((_%relsrc119528%_
                                   (let ((_%$e119538%_
                                          (gx#stx-source _%stx-path119523%_)))
                                     (if _%$e119538%_
                                         _%$e119538%_
                                         _%rel119524%_))))
                 (if (##structure-instance-of? _%relsrc119528%_ 'gerbil#AST::t)
                     (_%lp119526%_
                      (let ((_%$e119531%_ (gx#stx-source _%relsrc119528%_)))
                        (if _%$e119531%_
                            _%$e119531%_
                            (gx#stx-e _%relsrc119528%_))))
                     (if (source-location-path? _%relsrc119528%_)
                         (path-directory
                          (source-location-path _%relsrc119528%_))
                         (if (string? _%relsrc119528%_)
                             (path-directory _%relsrc119528%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path119541%_ (path-normalize _%reldir119542%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path119547%_)
        (let ((_%rel119549%_ '#f))
          (gx#core-resolve-path__% _%stx-path119547%_ _%rel119549%_))))
    (define gx#core-resolve-path
      (lambda _g122598_
        (let ((_g122597_ (##length _g122598_)))
          (cond ((##fx= _g122597_ 1) (apply gx#core-resolve-path__0 _g122598_))
                ((##fx= _g122597_ 2) (apply gx#core-resolve-path__% _g122598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g122598_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr119479%_ _%ctx119480%_)
        (let* ((_%repr119481119488%_ _%repr119479%_)
               (_%E119483119492%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr119481119488%_
                         '([phi . subs]))
                  '#!void))
               (_%K119484119500%_
                (lambda (_%subs119495%_ _%phi119496%_)
                  (let ((_%subst119498%_
                         (if (null? _%subs119495%_)
                             '#f
                             (list->hash-table-eq _%subs119495%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst119498%_
                     _%ctx119480%_
                     _%phi119496%_
                     '#f)))))
          (if (pair? _%repr119481119488%_)
              (let ((_%hd119485119503%_ (##car _%repr119481119488%_))
                    (_%tl119486119505%_ (##cdr _%repr119481119488%_)))
                (let* ((_%phi119508%_ _%hd119485119503%_)
                       (_%subs119510%_ _%tl119486119505%_))
                  (_%K119484119500%_ _%subs119510%_ _%phi119508%_)))
              (_%E119483119492%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr119515%_)
        (let ((_%ctx119517%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr119515%_ _%ctx119517%_))))
    (define gx#core-deserialize-mark
      (lambda _g122600_
        (let ((_g122599_ (##length _g122600_)))
          (cond ((##fx= _g122599_ 1)
                 (apply gx#core-deserialize-mark__0 _g122600_))
                ((##fx= _g122599_ 2)
                 (apply gx#core-deserialize-mark__% _g122600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g122600_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx119476%_)
        (gx#stx-rewrap _%stx119476%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx119474%_)
        (gx#stx-unwrap__% _%stx119474%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx119444%_)
        (let* ((_%g119445119453%_ (gx#current-expander-marks))
               (_%else119447119461%_ (lambda () _%stx119444%_))
               (_%K119449119466%_
                (lambda (_%hd119464%_)
                  (gx#stx-apply-mark _%stx119444%_ _%hd119464%_))))
          (if (pair? _%g119445119453%_)
              (let* ((_%hd119450119469%_ (##car _%g119445119453%_))
                     (_%hd119472%_ _%hd119450119469%_))
                (_%K119449119466%_ _%hd119472%_))
              (_%else119447119461%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx119429%_ _%E119430%_)
        (let ((_%bind119432%_ (gx#resolve-identifier__0 _%stx119429%_)))
          (if (##structure-direct-instance-of?
               _%bind119432%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind119432%_ '4 '#f '#f)
              (_%E119430%_ _%stx119429%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx119437%_)
        (let ((_%E119439%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx119437%_ _%E119439%_))))
    (define gx#syntax-local-e
      (lambda _g122602_
        (let ((_g122601_ (##length _g122602_)))
          (cond ((##fx= _g122601_ 1) (apply gx#syntax-local-e__0 _g122602_))
                ((##fx= _g122601_ 2) (apply gx#syntax-local-e__% _g122602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g122602_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx119413%_ _%E119414%_)
        (let ((_%e119416%_ (gx#syntax-local-e__% _%stx119413%_ _%E119414%_)))
          (if (##structure-instance-of? _%e119416%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e119416%_ '1 '#f '#f)
              _%e119416%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx119421%_)
        (let ((_%E119423%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx119421%_ _%E119423%_))))
    (define gx#syntax-local-value
      (lambda _g122604_
        (let ((_g122603_ (##length _g122604_)))
          (cond ((##fx= _g122603_ 1)
                 (apply gx#syntax-local-value__0 _g122604_))
                ((##fx= _g122603_ 2)
                 (apply gx#syntax-local-value__% _g122604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g122604_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx119410%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx119410%_)))))
