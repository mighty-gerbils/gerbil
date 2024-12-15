(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1734225193)
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
      (lambda _%$args122488%_
        (apply make-instance gx#expander-context::t _%$args122488%_)))
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
      (lambda _%$args122485%_
        (apply make-instance gx#root-context::t _%$args122485%_)))
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
      (lambda _%$args122482%_
        (apply make-instance gx#phi-context::t _%$args122482%_)))
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
      (lambda _%$args122479%_
        (apply make-instance gx#top-context::t _%$args122479%_)))
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
      (lambda _%$args122476%_
        (apply make-instance gx#module-context::t _%$args122476%_)))
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
      (lambda _%$args122473%_
        (apply make-instance gx#prelude-context::t _%$args122473%_)))
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
      (lambda _%$args122470%_
        (apply make-instance gx#local-context::t _%$args122470%_)))
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
      (lambda (_%self119376122441%_ _%id122443%_ _%super122444%_)
        (let* ((_%self122446%_ _%self119376122441%_)
               (_%self122448%_ _%self122446%_))
          (if (##fx< '3 (##structure-length _%self122448%_))
              (begin
                (##unchecked-structure-set!
                 _%self122448%_
                 _%id122443%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122448%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122448%_
                 _%super122444%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122448%_
                     '3
                     (##vector-length _%self122448%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self119376122461%_ _%id122462%_)
        (let ((_%super122464%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self119376122461%_
           _%id122462%_
           _%super122464%_))))
    (define gx#phi-context:::init!
      (lambda _g122531_
        (let ((_g122530_ (##length _g122531_)))
          (cond ((##fx= _g122530_ 2)
                 (apply gx#phi-context:::init!__0 _g122531_))
                ((##fx= _g122530_ 3)
                 (apply gx#phi-context:::init!__% _g122531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g122531_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self119377122292%_ _%super122294%_)
        (let* ((_%self122296%_ _%self119377122292%_)
               (_%self122298%_ _%self122296%_))
          (if (##fx< '3 (##structure-length _%self122298%_))
              (begin
                (##unchecked-structure-set!
                 _%self122298%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122298%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122298%_
                 _%super122294%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122298%_
                     '3
                     (##vector-length _%self122298%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self119377122311%_)
        (let ((_%super122313%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self119377122311%_ _%super122313%_))))
    (define gx#local-context:::init!
      (lambda _g122533_
        (let ((_g122532_ (##length _g122533_)))
          (cond ((##fx= _g122532_ 1)
                 (apply gx#local-context:::init!__0 _g122533_))
                ((##fx= _g122532_ 2)
                 (apply gx#local-context:::init!__% _g122533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g122533_))))))
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
      (lambda _%$args122166%_
        (apply make-instance gx#binding::t _%$args122166%_)))
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
      (lambda _%$args122163%_
        (apply make-instance gx#runtime-binding::t _%$args122163%_)))
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
      (lambda _%$args122160%_
        (apply make-instance gx#local-binding::t _%$args122160%_)))
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
      (lambda _%$args122157%_
        (apply make-instance gx#top-binding::t _%$args122157%_)))
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
      (lambda _%$args122154%_
        (apply make-instance gx#module-binding::t _%$args122154%_)))
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
      (lambda _%$args122151%_
        (apply make-instance gx#extern-binding::t _%$args122151%_)))
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
      (lambda _%$args122148%_
        (apply make-instance gx#syntax-binding::t _%$args122148%_)))
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
      (lambda _%$args122145%_
        (apply make-instance gx#import-binding::t _%$args122145%_)))
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
      (lambda _%$args122142%_
        (apply make-instance gx#alias-binding::t _%$args122142%_)))
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
      (lambda _%$args122139%_
        (apply make-instance gx#expander::t _%$args122139%_)))
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
      (lambda _%$args122136%_
        (apply make-instance gx#core-expander::t _%$args122136%_)))
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
      (lambda _%$args122133%_
        (apply make-instance gx#expression-form::t _%$args122133%_)))
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
      (lambda _%$args122130%_
        (apply make-instance gx#special-form::t _%$args122130%_)))
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
      (lambda _%$args122127%_
        (apply make-instance gx#definition-form::t _%$args122127%_)))
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
      (lambda _%$args122124%_
        (apply make-instance gx#top-special-form::t _%$args122124%_)))
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
      (lambda _%$args122121%_
        (apply make-instance gx#module-special-form::t _%$args122121%_)))
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
      (lambda _%$args122118%_
        (apply make-instance gx#feature-expander::t _%$args122118%_)))
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
      (lambda _%$args122115%_
        (apply make-instance gx#private-feature-expander::t _%$args122115%_)))
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
      (lambda _%$args122112%_
        (apply make-instance gx#reserved-expander::t _%$args122112%_)))
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
      (lambda _%$args122109%_
        (apply make-instance gx#macro-expander::t _%$args122109%_)))
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
      (lambda _%$args122106%_
        (apply make-instance gx#rename-macro-expander::t _%$args122106%_)))
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
      (lambda _%$args122103%_
        (apply make-instance gx#user-expander::t _%$args122103%_)))
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
      (lambda _%$args122100%_
        (apply make-instance gx#expander-mark::t _%$args122100%_)))
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
      (lambda (_%ctx122084%_
               _%message122085%_
               _%stx122086%_
               .
               _%details122087%_)
        (let ((_%ctx122098%_
               (let ((_%$e122089%_ _%ctx122084%_))
                 (if _%$e122089%_
                     _%$e122089%_
                     (let ((_%$e122092%_ (gx#core-context-top__0)))
                       (if _%$e122092%_
                           ((lambda (_%ctx122095%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx122095%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e122092%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message122085%_
                  (cons _%stx122086%_ _%details122087%_)
                  _%ctx122098%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx122071%_ _%expression?122072%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx122071%_ _%expression?122072%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx122077%_)
        (let ((_%expression?122079%_ '#f))
          (gx#eval-syntax__% _%stx122077%_ _%expression?122079%_))))
    (define gx#eval-syntax
      (lambda _g122535_
        (let ((_g122534_ (##length _g122535_)))
          (cond ((##fx= _g122534_ 1) (apply gx#eval-syntax__0 _g122535_))
                ((##fx= _g122534_ 2) (apply gx#eval-syntax__% _g122535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g122535_))))))
    (define gx#eval-syntax*
      (lambda (_%stx122068%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx122068%_))))
    (define gx#core-expand__%
      (lambda (_%stx122055%_ _%expression?122056%_)
        (if _%expression?122056%_
            (gx#core-expand-expression _%stx122055%_)
            (gx#core-expand-top _%stx122055%_))))
    (define gx#core-expand__0
      (lambda (_%stx122061%_)
        (let ((_%expression?122063%_ '#f))
          (gx#core-expand__% _%stx122061%_ _%expression?122063%_))))
    (define gx#core-expand
      (lambda _g122537_
        (let ((_g122536_ (##length _g122537_)))
          (cond ((##fx= _g122536_ 1) (apply gx#core-expand__0 _g122537_))
                ((##fx= _g122536_ 2) (apply gx#core-expand__% _g122537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g122537_))))))
    (define gx#core-expand-top
      (lambda (_%stx122022%_)
        (let* ((_%stx122024%_ (gx#core-expand*__0 _%stx122022%_))
               (_%e122025122032%_ _%stx122024%_)
               (_%E122027122036%_
                (lambda () (gx#core-expand-expression _%stx122024%_)))
               (_%E122026122050%_
                (lambda ()
                  (if (gx#stx-pair? _%e122025122032%_)
                      (let ((_%e122028122040%_
                             (gx#syntax-e _%e122025122032%_)))
                        (let ((_%hd122029122043%_ (##car _%e122028122040%_))
                              (_%tl122030122045%_ (##cdr _%e122028122040%_)))
                          (let ((_%form122048%_ _%hd122029122043%_))
                            (if (gx#core-bound-identifier?__0 _%form122048%_)
                                _%stx122024%_
                                (_%E122027122036%_)))))
                      (_%E122027122036%_)))))
          (_%E122026122050%_))))
    (define gx#core-expand-expression
      (lambda (_%stx121954%_)
        (letrec ((_%sealed-expression?121956%_
                  (lambda (_%hd121992%_)
                    (if (gx#sealed-syntax? _%hd121992%_)
                        (let* ((_%e121993122000%_ _%hd121992%_)
                               (_%E121995122004%_ (lambda () '#f))
                               (_%E121994122018%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e121993122000%_)
                                      (let ((_%e121996122008%_
                                             (gx#syntax-e _%e121993122000%_)))
                                        (let ((_%hd121997122011%_
                                               (##car _%e121996122008%_))
                                              (_%tl121998122013%_
                                               (##cdr _%e121996122008%_)))
                                          (let ((_%form122016%_
                                                 _%hd121997122011%_))
                                            (gx#core-bound-identifier?__%
                                             _%form122016%_
                                             gx#expression-form-binding?))))
                                      (_%E121995122004%_)))))
                          (_%E121994122018%_))
                        '#f)))
                 (_%illegal-expression121957%_
                  (lambda (_%hd121989%_ . _%_121990%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx121954%_
                     _%hd121989%_)))
                 (_%expand-e121958%_
                  (lambda (_%form121981%_ _%hd121982%_)
                    (let ((_%bind121984%_
                           (if (##structure-instance-of?
                                _%form121981%_
                                'gx#binding::t)
                               _%form121981%_
                               (gx#resolve-identifier__0 _%form121981%_))))
                      (if (gx#core-expander-binding? _%bind121984%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind121984%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd121982%_
                            (gx#stx-source _%stx121954%_)))
                          (if (##structure-direct-instance-of?
                               _%bind121984%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind121984%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd121982%_
                                 (gx#stx-source _%stx121954%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx121954%_
                               _%form121981%_)))))))
          (let ((_%hd121960%_ (gx#core-expand-head _%stx121954%_)))
            (if (_%sealed-expression?121956%_ _%hd121960%_)
                _%hd121960%_
                (if (gx#stx-pair? _%hd121960%_)
                    (let* ((_%form121964%_ (gx#stx-car _%hd121960%_))
                           (_%bind121966%_
                            (if (gx#identifier? _%form121964%_)
                                (gx#resolve-identifier__0 _%form121964%_)
                                '#f)))
                      (if (or (not _%bind121966%_)
                              (not (gx#core-expander-binding? _%bind121966%_)))
                          (_%expand-e121958%_
                           '%%app
                           (cons '%%app _%hd121960%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind121966%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd121960%_
                               _%illegal-expression121957%_)
                              (if (gx#expression-form-binding? _%bind121966%_)
                                  (_%expand-e121958%_
                                   _%bind121966%_
                                   _%hd121960%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind121966%_)
                                      (gx#core-expand-expression
                                       (_%expand-e121958%_
                                        _%bind121966%_
                                        _%hd121960%_))
                                      (_%illegal-expression121957%_
                                       _%hd121960%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd121960%_)
                        (_%illegal-expression121957%_ _%hd121960%_)
                        (if (gx#identifier? _%hd121960%_)
                            (_%expand-e121958%_
                             '%%ref
                             (cons '%%ref (cons _%hd121960%_ '())))
                            (if (gx#stx-datum? _%hd121960%_)
                                (_%expand-e121958%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd121960%_ '())))
                                (_%illegal-expression121957%_
                                 _%hd121960%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx121949%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx121952%_ (gx#core-expand-expression _%stx121949%_)))
             (values _%stx121952%_ (gx#eval-syntax* _%stx121952%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx121930%_ _%stop?121931%_)
        (let _%lp121933%_ ((_%stx121935%_ _%stx121930%_))
          (if (_%stop?121931%_ _%stx121935%_)
              _%stx121935%_
              (let ((_%rstx121937%_ (gx#core-expand1 _%stx121935%_)))
                (if (eq? _%stx121935%_ _%rstx121937%_)
                    _%stx121935%_
                    (_%lp121933%_ _%rstx121937%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx121942%_)
        (let ((_%stop?121944%_ false))
          (gx#core-expand*__% _%stx121942%_ _%stop?121944%_))))
    (define gx#core-expand*
      (lambda _g122539_
        (let ((_g122538_ (##length _g122539_)))
          (cond ((##fx= _g122538_ 1) (apply gx#core-expand*__0 _g122539_))
                ((##fx= _g122538_ 2) (apply gx#core-expand*__% _g122539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g122539_))))))
    (define gx#core-expand1
      (lambda (_%stx121882%_)
        (letrec ((_%step121884%_
                  (lambda (_%hd121921%_)
                    (let ((_%bind121923%_
                           (gx#resolve-identifier__0 _%hd121921%_)))
                      (if (##structure-instance-of?
                           _%bind121923%_
                           'gx#runtime-binding::t)
                          _%stx121882%_
                          (if (##structure-direct-instance-of?
                               _%bind121923%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind121923%_
                                '4
                                '#f
                                '#f)
                               _%stx121882%_)
                              (if (not _%bind121923%_)
                                  _%stx121882%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx121882%_))))))))
          (let* ((_%e121885121893%_ _%stx121882%_)
                 (_%E121891121897%_ (lambda () _%stx121882%_))
                 (_%E121887121903%_
                  (lambda ()
                    (let ((_%hd121901%_ _%e121885121893%_))
                      (if (gx#identifier? _%hd121901%_)
                          (_%step121884%_ _%hd121901%_)
                          (_%E121891121897%_)))))
                 (_%E121886121917%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121885121893%_)
                        (let ((_%e121888121907%_
                               (gx#syntax-e _%e121885121893%_)))
                          (let ((_%hd121889121910%_ (##car _%e121888121907%_))
                                (_%tl121890121912%_ (##cdr _%e121888121907%_)))
                            (let ((_%hd121915%_ _%hd121889121910%_))
                              (if (gx#identifier? _%hd121915%_)
                                  (_%step121884%_ _%hd121915%_)
                                  (_%E121887121903%_)))))
                        (_%E121887121903%_)))))
            (_%E121886121917%_)))))
    (define gx#core-expand-head
      (lambda (_%stx121848%_)
        (letrec ((_%stop?121850%_
                  (lambda (_%stx121852%_)
                    (let* ((_%e121853121860%_ _%stx121852%_)
                           (_%E121855121864%_ (lambda () '#f))
                           (_%E121854121878%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121853121860%_)
                                  (let ((_%e121856121868%_
                                         (gx#syntax-e _%e121853121860%_)))
                                    (let ((_%hd121857121871%_
                                           (##car _%e121856121868%_))
                                          (_%tl121858121873%_
                                           (##cdr _%e121856121868%_)))
                                      (let ((_%hd121876%_ _%hd121857121871%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd121876%_))))
                                  (_%E121855121864%_)))))
                      (_%E121854121878%_)))))
          (gx#core-expand*__% _%stx121848%_ _%stop?121850%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx121654%_
               _%expand-special121655%_
               _%begin-form121656%_
               _%expand-e121657%_)
        (letrec ((_%expand-splice121659%_
                  (lambda (_%hd121822%_
                           _%body121823%_
                           _%rest121824%_
                           _%r121825%_)
                    (if (gx#stx-list? _%body121823%_)
                        (_%K121663%_
                         (gx#stx-foldr cons _%rest121824%_ _%body121823%_)
                         _%r121825%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx121654%_
                         _%hd121822%_))))
                 (_%expand-cond-expand121660%_
                  (lambda (_%hd121818%_ _%rest121819%_ _%r121820%_)
                    (_%K121663%_
                     (cons (gx#core-expand-cond-expand% _%hd121818%_)
                           _%rest121819%_)
                     _%r121820%_)))
                 (_%expand-include121661%_
                  (lambda (_%hd121767%_ _%rest121768%_ _%r121769%_)
                    (let* ((_%e121770121780%_ _%hd121767%_)
                           (_%E121772121784%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121770121780%_)))
                           (_%E121771121814%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121770121780%_)
                                  (let ((_%e121773121788%_
                                         (gx#syntax-e _%e121770121780%_)))
                                    (let ((_%hd121774121791%_
                                           (##car _%e121773121788%_))
                                          (_%tl121775121793%_
                                           (##cdr _%e121773121788%_)))
                                      (if (gx#stx-pair? _%tl121775121793%_)
                                          (let ((_%e121776121796%_
                                                 (gx#syntax-e
                                                  _%tl121775121793%_)))
                                            (let ((_%hd121777121799%_
                                                   (##car _%e121776121796%_))
                                                  (_%tl121778121801%_
                                                   (##cdr _%e121776121796%_)))
                                              (let ((_%path121804%_
                                                     _%hd121777121799%_))
                                                (if (gx#stx-null?
                                                     _%tl121778121801%_)
                                                    (if (gx#stx-string?
                                                         _%path121804%_)
                                                        (let* ((_%rpath121806%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path121804%_
                         (gx#stx-source _%hd121767%_)))
                       (_%block121808%_
                        (gx#core-expand-include%__%
                         _%hd121767%_
                         _%rpath121806%_))
                       (_%rbody121811%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block121808%_
                            _%expand-special121655%_
                            '#f
                            _%expand-e121657%_))
                         gx#current-expander-path
                         (cons _%rpath121806%_ (gx#current-expander-path)))))
                  (_%K121663%_
                   _%rest121768%_
                   (__foldr1 cons _%r121769%_ _%rbody121811%_)))
                (_%E121772121784%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121772121784%_)))))
                                          (_%E121772121784%_))))
                                  (_%E121772121784%_)))))
                      (_%E121771121814%_))))
                 (_%expand-expression121662%_
                  (lambda (_%hd121763%_ _%rest121764%_ _%r121765%_)
                    (_%K121663%_
                     _%rest121764%_
                     (cons (_%expand-e121657%_ _%hd121763%_) _%r121765%_))))
                 (_%K121663%_
                  (lambda (_%rest121693%_ _%r121694%_)
                    (let* ((_%e121695121702%_ _%rest121693%_)
                           (_%E121697121706%_
                            (lambda ()
                              (if _%begin-form121656%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form121656%_
                                    (reverse _%r121694%_))
                                   (gx#stx-source _%stx121654%_))
                                  _%r121694%_)))
                           (_%E121696121759%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121695121702%_)
                                  (let ((_%e121698121710%_
                                         (gx#syntax-e _%e121695121702%_)))
                                    (let ((_%hd121699121713%_
                                           (##car _%e121698121710%_))
                                          (_%tl121700121715%_
                                           (##cdr _%e121698121710%_)))
                                      (let* ((_%hd121718%_ _%hd121699121713%_)
                                             (_%rest121720%_
                                              _%tl121700121715%_)
                                             (_%hd121722%_
                                              (gx#core-expand-head
                                               _%hd121718%_))
                                             (_%e121723121730%_ _%hd121722%_)
                                             (_%E121725121734%_
                                              (lambda ()
                                                (_%expand-expression121662%_
                                                 _%hd121722%_
                                                 _%rest121720%_
                                                 _%r121694%_)))
                                             (_%E121724121755%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121723121730%_)
                                                    (let ((_%e121726121738%_
                                                           (gx#syntax-e
                                                            _%e121723121730%_)))
                                                      (let ((_%hd121727121741%_
                                                             (##car _%e121726121738%_))
                                                            (_%tl121728121743%_
                                                             (##cdr _%e121726121738%_)))
                                                        (let* ((_%form121746%_
                                                                _%hd121727121741%_)
                                                               (_%body121748%_
                                                                _%tl121728121743%_)
                                                               (_%bind121750%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form121746%_)
                            (gx#resolve-identifier__0 _%form121746%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind121750%_)
                      (let ((_%$e121752%_
                             (##unchecked-structure-ref
                              _%bind121750%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e121752%_)
                            (_%expand-splice121659%_
                             _%hd121722%_
                             _%body121748%_
                             _%rest121720%_
                             _%r121694%_)
                            (if (eq? '%#cond-expand _%$e121752%_)
                                (_%expand-cond-expand121660%_
                                 _%hd121722%_
                                 _%rest121720%_
                                 _%r121694%_)
                                (if (eq? '%#include _%$e121752%_)
                                    (_%expand-include121661%_
                                     _%hd121722%_
                                     _%rest121720%_
                                     _%r121694%_)
                                    (_%expand-special121655%_
                                     _%hd121722%_
                                     _%K121663%_
                                     _%rest121720%_
                                     _%r121694%_)))))
                      (_%expand-expression121662%_
                       _%hd121722%_
                       _%rest121720%_
                       _%r121694%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121725121734%_)))))
                                        (_%E121724121755%_))))
                                  (_%E121697121706%_)))))
                      (_%E121696121759%_)))))
          (let* ((_%e121664121671%_ _%stx121654%_)
                 (_%E121666121675%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121664121671%_)))
                 (_%E121665121689%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121664121671%_)
                        (let ((_%e121667121679%_
                               (gx#syntax-e _%e121664121671%_)))
                          (let ((_%hd121668121682%_ (##car _%e121667121679%_))
                                (_%tl121669121684%_ (##cdr _%e121667121679%_)))
                            (let ((_%body121687%_ _%tl121669121684%_))
                              (if (gx#stx-list? _%body121687%_)
                                  (_%K121663%_ _%body121687%_ '())
                                  (_%E121666121675%_)))))
                        (_%E121666121675%_)))))
            (_%E121665121689%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx121830%_ _%expand-special121831%_)
        (let* ((_%begin-form121833%_ '%#begin)
               (_%expand-e121835%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121830%_
           _%expand-special121831%_
           _%begin-form121833%_
           _%expand-e121835%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx121837%_ _%expand-special121838%_ _%begin-form121839%_)
        (let ((_%expand-e121841%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121837%_
           _%expand-special121838%_
           _%begin-form121839%_
           _%expand-e121841%_))))
    (define gx#core-expand-block
      (lambda _g122541_
        (let ((_g122540_ (##length _g122541_)))
          (cond ((##fx= _g122540_ 2) (apply gx#core-expand-block__0 _g122541_))
                ((##fx= _g122540_ 3) (apply gx#core-expand-block__1 _g122541_))
                ((##fx= _g122540_ 4) (apply gx#core-expand-block__% _g122541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g122541_))))))
    (define gx#core-expand-block*
      (lambda (_%stx121602%_ _%expand-special121603%_)
        (let* ((_%g121604121615%_
                (gx#core-expand-block__1
                 _%stx121602%_
                 _%expand-special121603%_
                 '#f))
               (_%E121608121619%_
                (lambda ()
                  (error '"No clause matching"
                         _%g121604121615%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K121613121650%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx121602%_)))
                (_%K121610121636%_ (lambda (_%expr121634%_) _%expr121634%_))
                (_%K121609121625%_
                 (lambda (_%body121623%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body121623%_))
                    (gx#stx-source _%stx121602%_)))))
            (let ((_%try-match121606121646%_
                   (lambda ()
                     (if (pair? _%g121604121615%_)
                         (let ((_%tl121612121641%_ (##cdr _%g121604121615%_))
                               (_%hd121611121639%_ (##car _%g121604121615%_)))
                           (if (null? _%tl121612121641%_)
                               (let ((_%expr121644%_ _%hd121611121639%_))
                                 (_%K121610121636%_ _%expr121644%_))
                               (let ((_%body121628%_ _%g121604121615%_))
                                 (_%K121609121625%_ _%body121628%_))))
                         (let ((_%body121628%_ _%g121604121615%_))
                           (_%K121609121625%_ _%body121628%_))))))
              (if (null? _%g121604121615%_)
                  (_%K121613121650%_)
                  (_%try-match121606121646%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx121427%_)
        (letrec ((_%satisfied?121429%_
                  (lambda (_%condition121530%_)
                    (let* ((_%e121531121546%_ _%condition121530%_)
                           (_%E121541121550%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121531121546%_)))
                           (_%E121534121569%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121531121546%_)
                                  (let ((_%e121542121554%_
                                         (gx#syntax-e _%e121531121546%_)))
                                    (let ((_%hd121543121557%_
                                           (##car _%e121542121554%_))
                                          (_%tl121544121559%_
                                           (##cdr _%e121542121554%_)))
                                      (let* ((_%combinator121562%_
                                              _%hd121543121557%_)
                                             (_%body121564%_
                                              _%tl121544121559%_))
                                        (if (gx#stx-list? _%body121564%_)
                                            (let ((_%$e121566%_
                                                   (gx#stx-e
                                                    _%combinator121562%_)))
                                              (if (eq? 'not _%$e121566%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?121429%_
                                                        _%body121564%_))
                                                  (if (eq? 'and _%$e121566%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?121429%_
                                                       _%body121564%_)
                                                      (if (eq? 'or
                                                               _%$e121566%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?121429%_
                                                           _%body121564%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e121566%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body121564%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx121427%_
                       _%combinator121562%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E121541121550%_)))))
                                  (_%E121541121550%_))))
                           (_%E121533121592%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121531121546%_)
                                  (let ((_%e121535121573%_
                                         (gx#syntax-e _%e121531121546%_)))
                                    (let ((_%hd121536121576%_
                                           (##car _%e121535121573%_))
                                          (_%tl121537121578%_
                                           (##cdr _%e121535121573%_)))
                                      (if (and (gx#identifier?
                                                _%hd121536121576%_)
                                               (gx#core-identifier=?
                                                _%hd121536121576%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl121537121578%_)
                                              (let ((_%e121538121581%_
                                                     (gx#syntax-e
                                                      _%tl121537121578%_)))
                                                (let ((_%hd121539121584%_
                                                       (##car _%e121538121581%_))
                                                      (_%tl121540121586%_
                                                       (##cdr _%e121538121581%_)))
                                                  (let ((_%expr121589%_
                                                         _%hd121539121584%_))
                                                    (if (gx#stx-null?
                                                         _%tl121540121586%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr121589%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E121534121569%_)))))
                                              (_%E121534121569%_))
                                          (_%E121534121569%_))))
                                  (_%E121534121569%_))))
                           (_%E121532121598%_
                            (lambda ()
                              (let ((_%id121596%_ _%e121531121546%_))
                                (if (gx#identifier? _%id121596%_)
                                    (gx#core-bound-identifier?__%
                                     _%id121596%_
                                     gx#feature-binding?)
                                    (_%E121533121592%_))))))
                      (_%E121532121598%_))))
                 (_%loop121430%_
                  (lambda (_%rest121460%_)
                    (let* ((_%e121461121469%_ _%rest121460%_)
                           (_%E121467121473%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121461121469%_)))
                           (_%E121463121477%_
                            (lambda ()
                              (if (gx#stx-null? _%e121461121469%_)
                                  '()
                                  (_%E121467121473%_))))
                           (_%E121462121526%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121461121469%_)
                                  (let ((_%e121464121481%_
                                         (gx#syntax-e _%e121461121469%_)))
                                    (let ((_%hd121465121484%_
                                           (##car _%e121464121481%_))
                                          (_%tl121466121486%_
                                           (##cdr _%e121464121481%_)))
                                      (let* ((_%hd121489%_ _%hd121465121484%_)
                                             (_%rest121491%_
                                              _%tl121466121486%_)
                                             (_%e121492121499%_ _%hd121489%_)
                                             (_%E121494121503%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e121492121499%_)))
                                             (_%E121493121522%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121492121499%_)
                                                    (let ((_%e121495121507%_
                                                           (gx#syntax-e
                                                            _%e121492121499%_)))
                                                      (let ((_%hd121496121510%_
                                                             (##car _%e121495121507%_))
                                                            (_%tl121497121512%_
                                                             (##cdr _%e121495121507%_)))
                                                        (let* ((_%condition121515%_
                                                                _%hd121496121510%_)
                                                               (_%body121517%_
                                                                _%tl121497121512%_))
                                                          (if (gx#stx-eq?
                                                               _%condition121515%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest121491%_)
                          _%body121517%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx121427%_
                           _%hd121489%_))
                      (if (_%satisfied?121429%_ _%condition121515%_)
                          _%body121517%_
                          (_%loop121430%_ _%rest121491%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121494121503%_)))))
                                        (_%E121493121522%_))))
                                  (_%E121463121477%_)))))
                      (_%E121462121526%_)))))
          (let* ((_%e121431121438%_ _%stx121427%_)
                 (_%E121433121442%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121431121438%_)))
                 (_%E121432121456%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121431121438%_)
                        (let ((_%e121434121446%_
                               (gx#syntax-e _%e121431121438%_)))
                          (let ((_%hd121435121449%_ (##car _%e121434121446%_))
                                (_%tl121436121451%_ (##cdr _%e121434121446%_)))
                            (let ((_%clauses121454%_ _%tl121436121451%_))
                              (if (gx#stx-list? _%clauses121454%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop121430%_ _%clauses121454%_))
                                  (_%E121433121442%_)))))
                        (_%E121433121442%_)))))
            (_%E121432121456%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx121370%_ _%rpath121371%_)
        (let* ((_%e121372121382%_ _%stx121370%_)
               (_%E121374121386%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121372121382%_)))
               (_%E121373121413%_
                (lambda ()
                  (if (gx#stx-pair? _%e121372121382%_)
                      (let ((_%e121375121390%_
                             (gx#syntax-e _%e121372121382%_)))
                        (let ((_%hd121376121393%_ (##car _%e121375121390%_))
                              (_%tl121377121395%_ (##cdr _%e121375121390%_)))
                          (if (gx#stx-pair? _%tl121377121395%_)
                              (let ((_%e121378121398%_
                                     (gx#syntax-e _%tl121377121395%_)))
                                (let ((_%hd121379121401%_
                                       (##car _%e121378121398%_))
                                      (_%tl121380121403%_
                                       (##cdr _%e121378121398%_)))
                                  (let ((_%path121406%_ _%hd121379121401%_))
                                    (if (gx#stx-null? _%tl121380121403%_)
                                        (if (gx#stx-string? _%path121406%_)
                                            (let ((_%rpath121411%_
                                                   (let ((_%$e121408%_
                                                          _%rpath121371%_))
                                                     (if _%$e121408%_
                                                         _%$e121408%_
                                                         (gx#core-resolve-path__%
                                                          _%path121406%_
                                                          (gx#stx-source
                                                           _%stx121370%_))))))
                                              (if (member _%rpath121411%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx121370%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath121411%_))
                                                    (gx#stx-source
                                                     _%stx121370%_)))))
                                            (_%E121374121386%_))
                                        (_%E121374121386%_)))))
                              (_%E121374121386%_))))
                      (_%E121374121386%_)))))
          (_%E121373121413%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx121420%_)
        (let ((_%rpath121422%_ '#f))
          (gx#core-expand-include%__% _%stx121420%_ _%rpath121422%_))))
    (define gx#core-expand-include%
      (lambda _g122543_
        (let ((_g122542_ (##length _g122543_)))
          (cond ((##fx= _g122542_ 1)
                 (apply gx#core-expand-include%__0 _g122543_))
                ((##fx= _g122542_ 2)
                 (apply gx#core-expand-include%__% _g122543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g122543_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K121336%_ _%stx121337%_ _%method121338%_)
        (if (procedure? _%K121336%_)
            (let ((_%$e121341%_ (gx#stx-source _%stx121337%_)))
              (if _%$e121341%_
                  ((lambda (_%g121343121345%_)
                     (gx#stx-wrap-source
                      (_%K121336%_ _%stx121337%_)
                      _%g121343121345%_))
                   _%$e121341%_)
                  (_%K121336%_ _%stx121337%_)))
            (let ((_%$e121349%_
                   (bound-method-ref _%K121336%_ _%method121338%_)))
              (if _%$e121349%_
                  ((lambda (_%g121351121353%_)
                     (gx#core-apply-expander__%
                      _%g121351121353%_
                      _%stx121337%_
                      _%method121338%_))
                   _%$e121349%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx121337%_
                   _%method121338%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K121360%_ _%stx121361%_)
        (let ((_%method121363%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K121360%_
           _%stx121361%_
           _%method121363%_))))
    (define gx#core-apply-expander
      (lambda _g122545_
        (let ((_g122544_ (##length _g122545_)))
          (cond ((##fx= _g122544_ 2)
                 (apply gx#core-apply-expander__0 _g122545_))
                ((##fx= _g122544_ 3)
                 (apply gx#core-apply-expander__% _g122545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g122545_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self119378121319%_ _%stx121321%_)
        (let* ((_%self121323%_ _%self119378121319%_)
               (_%self121325%_ _%self121323%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx121321%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self119379121159%_ _%stx121161%_)
        (let* ((_%self121163%_ _%self119379121159%_)
               (_%self121165%_ _%self121163%_)
               (_%self121174121180%_ _%self121165%_)
               (_%E121176121184%_
                (lambda ()
                  (error '"No clause matching"
                         _%self121174121180%_
                         '((macro-expander K)))
                  '#!void))
               (_%K121177121189%_
                (lambda (_%K121187%_)
                  (gx#core-apply-expander__0 _%K121187%_ _%stx121161%_)))
               (_%e121178121192%_
                (##unchecked-structure-ref _%self121174121180%_ '1 '#f '#f))
               (_%K121195%_ _%e121178121192%_))
          (_%K121177121189%_ _%K121195%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self119380120999%_ _%stx121001%_)
        (let* ((_%self121003%_ _%self119380120999%_)
               (_%self121005%_ _%self121003%_))
          (if (gx#sealed-syntax? _%stx121001%_)
              _%stx121001%_
              (let* ((_%self121014121020%_ _%self121005%_)
                     (_%E121016121024%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self121014121020%_
                               '((core-expander K)))
                        '#!void))
                     (_%K121017121029%_
                      (lambda (_%K121027%_)
                        (gx#core-apply-expander__0 _%K121027%_ _%stx121001%_)))
                     (_%e121018121032%_
                      (##unchecked-structure-ref
                       _%self121014121020%_
                       '1
                       '#f
                       '#f))
                     (_%K121035%_ _%e121018121032%_))
                (_%K121017121029%_ _%K121035%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self119381120848%_ _%stx120850%_ _%top?120851%_)
        (let* ((_%self120853%_ _%self119381120848%_)
               (_%self120855%_ _%self120853%_))
          (if (_%top?120851%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self120855%_
               _%stx120850%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx120850%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self119381120868%_ _%stx120869%_)
        (let ((_%top?120871%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self119381120868%_
           _%stx120869%_
           _%top?120871%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g122547_
        (let ((_g122546_ (##length _g122547_)))
          (cond ((##fx= _g122546_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g122547_))
                ((##fx= _g122546_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g122547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g122547_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self119382120709%_ _%stx120711%_)
        (let* ((_%self120713%_ _%self119382120709%_)
               (_%self120715%_ _%self120713%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self120715%_
           _%stx120711%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self119383120521%_ _%stx120523%_)
        (let* ((_%self120525%_ _%self119383120521%_)
               (_%self120527%_ _%self120525%_)
               (_%self120536120542%_ _%self120527%_)
               (_%E120538120546%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120536120542%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K120539120579%_
                (lambda (_%id120549%_)
                  (let* ((_%e120550120557%_ _%stx120523%_)
                         (_%E120552120561%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e120550120557%_)))
                         (_%E120551120575%_
                          (lambda ()
                            (if (gx#stx-pair? _%e120550120557%_)
                                (let ((_%e120553120565%_
                                       (gx#syntax-e _%e120550120557%_)))
                                  (let ((_%hd120554120568%_
                                         (##car _%e120553120565%_))
                                        (_%tl120555120570%_
                                         (##cdr _%e120553120565%_)))
                                    (let ((_%body120573%_ _%tl120555120570%_))
                                      (gx#core-cons
                                       _%id120549%_
                                       _%body120573%_))))
                                (_%E120552120561%_)))))
                    (_%E120551120575%_))))
               (_%e120540120582%_
                (##unchecked-structure-ref _%self120536120542%_ '1 '#f '#f))
               (_%id120585%_ _%e120540120582%_))
          (_%K120539120579%_ _%id120585%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self120347%_ _%stx120348%_ _%method120349%_)
        (let* ((_%self120350120358%_ _%self120347%_)
               (_%E120352120362%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120350120358%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K120353120369%_
                (lambda (_%phi120365%_ _%ctx120366%_ _%K120367%_)
                  (gx#core-apply-user-macro
                   _%K120367%_
                   _%stx120348%_
                   _%ctx120366%_
                   _%phi120365%_
                   _%method120349%_))))
          (if (##structure-instance-of?
               _%self120350120358%_
               'gx#user-expander::t)
              (let* ((_%e120354120372%_
                      (##unchecked-structure-ref
                       _%self120350120358%_
                       '1
                       '#f
                       '#f))
                     (_%K120375%_ _%e120354120372%_)
                     (_%e120355120377%_
                      (##unchecked-structure-ref
                       _%self120350120358%_
                       '2
                       '#f
                       '#f))
                     (_%ctx120380%_ _%e120355120377%_)
                     (_%e120356120382%_
                      (##unchecked-structure-ref
                       _%self120350120358%_
                       '3
                       '#f
                       '#f))
                     (_%phi120385%_ _%e120356120382%_))
                (_%K120353120369%_ _%phi120385%_ _%ctx120380%_ _%K120375%_))
              (_%E120352120362%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self120390%_ _%stx120391%_)
        (let ((_%method120393%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self120390%_
           _%stx120391%_
           _%method120393%_))))
    (define gx#core-apply-user-expander
      (lambda _g122549_
        (let ((_g122548_ (##length _g122549_)))
          (cond ((##fx= _g122548_ 2)
                 (apply gx#core-apply-user-expander__0 _g122549_))
                ((##fx= _g122548_ 3)
                 (apply gx#core-apply-user-expander__% _g122549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g122549_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K120337%_
               _%stx120338%_
               _%ctx120339%_
               _%phi120340%_
               _%method120341%_)
        (let ((_%mark120343%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx120339%_
                _%phi120340%_
                _%stx120338%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K120337%_
               (gx#stx-apply-mark _%stx120338%_ _%mark120343%_)
               _%method120341%_)
              _%mark120343%_))
           gx#current-expander-marks
           (cons _%mark120343%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx120185%_ _%phi120186%_ _%ctx120187%_)
        (let _%lp120189%_ ((_%bind120191%_
                            (gx#core-resolve-identifier__%
                             _%stx120185%_
                             _%phi120186%_
                             _%ctx120187%_)))
          (if (##structure-direct-instance-of?
               _%bind120191%_
               'gx#import-binding::t)
              (_%lp120189%_
               (##unchecked-structure-ref _%bind120191%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind120191%_
                   'gx#alias-binding::t)
                  (_%lp120189%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind120191%_ '4 '#f '#f)
                    _%phi120186%_
                    _%ctx120187%_))
                  _%bind120191%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx120199%_)
        (let* ((_%phi120201%_ (gx#current-expander-phi))
               (_%ctx120203%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120199%_
           _%phi120201%_
           _%ctx120203%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx120205%_ _%phi120206%_)
        (let ((_%ctx120208%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120205%_
           _%phi120206%_
           _%ctx120208%_))))
    (define gx#resolve-identifier
      (lambda _g122551_
        (let ((_g122550_ (##length _g122551_)))
          (cond ((##fx= _g122550_ 1)
                 (apply gx#resolve-identifier__0 _g122551_))
                ((##fx= _g122550_ 2)
                 (apply gx#resolve-identifier__1 _g122551_))
                ((##fx= _g122550_ 3)
                 (apply gx#resolve-identifier__% _g122551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g122551_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx120140%_
               _%val120141%_
               _%rebind?120142%_
               _%phi120143%_
               _%ctx120144%_)
        (let ((_%rebind?120149%_
               (if (not _%rebind?120142%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?120142%_)
                       _%rebind?120142%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx120140%_)
           _%val120141%_
           _%rebind?120149%_
           _%phi120143%_
           _%ctx120144%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx120154%_ _%val120155%_)
        (let* ((_%rebind?120157%_ '#f)
               (_%phi120159%_ (gx#current-expander-phi))
               (_%ctx120161%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120154%_
           _%val120155%_
           _%rebind?120157%_
           _%phi120159%_
           _%ctx120161%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx120163%_ _%val120164%_ _%rebind?120165%_)
        (let* ((_%phi120167%_ (gx#current-expander-phi))
               (_%ctx120169%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120163%_
           _%val120164%_
           _%rebind?120165%_
           _%phi120167%_
           _%ctx120169%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx120171%_ _%val120172%_ _%rebind?120173%_ _%phi120174%_)
        (let ((_%ctx120176%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120171%_
           _%val120172%_
           _%rebind?120173%_
           _%phi120174%_
           _%ctx120176%_))))
    (define gx#bind-identifier!
      (lambda _g122553_
        (let ((_g122552_ (##length _g122553_)))
          (cond ((##fx= _g122552_ 2) (apply gx#bind-identifier!__0 _g122553_))
                ((##fx= _g122552_ 3) (apply gx#bind-identifier!__1 _g122553_))
                ((##fx= _g122552_ 4) (apply gx#bind-identifier!__2 _g122553_))
                ((##fx= _g122552_ 5) (apply gx#bind-identifier!__% _g122553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g122553_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx120106%_ _%phi120107%_ _%ctx120108%_)
        (let _%lp120110%_ ((_%e120112%_ _%stx120106%_)
                           (_%marks120113%_ (gx#current-expander-marks)))
          (if (symbol? _%e120112%_)
              (gx#core-resolve-binding
               _%e120112%_
               _%phi120107%_
               _%phi120107%_
               _%ctx120108%_
               (reverse _%marks120113%_))
              (if (gx#identifier-quote? _%e120112%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e120112%_ '1 '#f '#f)
                   _%phi120107%_
                   '0
                   (##unchecked-structure-ref _%e120112%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e120112%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e120112%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e120112%_ '1 '#f '#f)
                       _%phi120107%_
                       _%phi120107%_
                       _%ctx120108%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e120112%_ '3 '#f '#f)
                        _%marks120113%_))
                      (if (##structure-direct-instance-of?
                           _%e120112%_
                           'gx#syntax-wrap::t)
                          (_%lp120110%_
                           (##unchecked-structure-ref _%e120112%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e120112%_ '3 '#f '#f)
                            _%marks120113%_))
                          (if (##structure-instance-of?
                               _%e120112%_
                               'gerbil#AST::t)
                              (_%lp120110%_
                               (##unchecked-structure-ref
                                _%e120112%_
                                '1
                                '#f
                                '#f)
                               _%marks120113%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx120106%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx120124%_)
        (let* ((_%phi120126%_ (gx#current-expander-phi))
               (_%ctx120128%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120124%_
           _%phi120126%_
           _%ctx120128%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx120130%_ _%phi120131%_)
        (let ((_%ctx120133%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120130%_
           _%phi120131%_
           _%ctx120133%_))))
    (define gx#core-resolve-identifier
      (lambda _g122555_
        (let ((_g122554_ (##length _g122555_)))
          (cond ((##fx= _g122554_ 1)
                 (apply gx#core-resolve-identifier__0 _g122555_))
                ((##fx= _g122554_ 2)
                 (apply gx#core-resolve-identifier__1 _g122555_))
                ((##fx= _g122554_ 3)
                 (apply gx#core-resolve-identifier__% _g122555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g122555_))))))
    (define gx#core-resolve-binding
      (lambda (_%id120016%_
               _%phi120017%_
               _%src-phi120018%_
               _%ctx120019%_
               _%marks120020%_)
        (letrec ((_%resolve120022%_
                  (lambda (_%ctx120090%_ _%src-phi120091%_ _%key120092%_)
                    (let _%lp120094%_ ((_%ctx120096%_
                                        (gx#core-context-shift
                                         _%ctx120090%_
                                         _%phi120017%_))
                                       (_%dphi120097%_
                                        (fx- _%phi120017%_ _%src-phi120091%_)))
                      (let ((_%$e120099%_
                             (gx#core-context-resolve
                              _%ctx120096%_
                              _%key120092%_)))
                        (if _%$e120099%_
                            _%$e120099%_
                            (if (fxzero? _%dphi120097%_)
                                '#f
                                (if (fxpositive? _%dphi120097%_)
                                    (_%lp120094%_
                                     (gx#core-context-shift _%ctx120096%_ '-1)
                                     (##fx- _%dphi120097%_ '1))
                                    (_%lp120094%_
                                     (gx#core-context-shift _%ctx120096%_ '1)
                                     (##fx+ _%dphi120097%_ '1))))))))))
          (let _%lp120024%_ ((_%ctx120026%_ _%ctx120019%_)
                             (_%src-phi120027%_ _%src-phi120018%_)
                             (_%rest120028%_ _%marks120020%_))
            (let* ((_%rest120029120037%_ _%rest120028%_)
                   (_%else120031120045%_
                    (lambda ()
                      (_%resolve120022%_
                       _%ctx120026%_
                       _%src-phi120027%_
                       _%id120016%_)))
                   (_%K120033120078%_
                    (lambda (_%rest120048%_ _%hd120049%_)
                      (let* ((_%hd120050120056%_ _%hd120049%_)
                             (_%E120052120060%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd120050120056%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K120053120070%_
                              (lambda (_%subst120063%_)
                                (let ((_%$e120067%_
                                       (let ((_%key120065%_
                                              (if _%subst120063%_
                                                  (hash-get
                                                   _%subst120063%_
                                                   _%id120016%_)
                                                  '#f)))
                                         (if _%key120065%_
                                             (_%resolve120022%_
                                              _%ctx120026%_
                                              _%src-phi120027%_
                                              _%key120065%_)
                                             '#f))))
                                  (if _%$e120067%_
                                      _%$e120067%_
                                      (_%lp120024%_
                                       (##unchecked-structure-ref
                                        _%hd120049%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd120049%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest120048%_))))))
                        (if (##structure-instance-of?
                             _%hd120050120056%_
                             'gx#expander-mark::t)
                            (let* ((_%e120054120073%_
                                    (##unchecked-structure-ref
                                     _%hd120050120056%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst120076%_ _%e120054120073%_))
                              (_%K120053120070%_ _%subst120076%_))
                            (_%E120052120060%_))))))
              (if (pair? _%rest120029120037%_)
                  (let ((_%hd120034120081%_ (##car _%rest120029120037%_))
                        (_%tl120035120083%_ (##cdr _%rest120029120037%_)))
                    (let* ((_%hd120086%_ _%hd120034120081%_)
                           (_%rest120088%_ _%tl120035120083%_))
                      (_%K120033120078%_ _%rest120088%_ _%hd120086%_)))
                  (_%else120031120045%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key119886%_
               _%val119887%_
               _%rebind?119888%_
               _%phi119889%_
               _%ctx119890%_)
        (letrec ((_%update-binding119892%_
                  (lambda (_%xval119965%_)
                    (if (or (_%rebind?119888%_
                             _%ctx119890%_
                             _%xval119965%_
                             _%val119887%_)
                            (and (##structure-direct-instance-of?
                                  _%xval119965%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval119965%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val119887%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val119887%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval119965%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val119887%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val119887%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval119965%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val119887%_
                        (if (and (##structure-direct-instance-of?
                                  _%val119887%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val119887%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval119965%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val119887%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval119965%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval119965%_
                            (if (and (##structure-direct-instance-of?
                                      _%val119887%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval119965%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key119886%_
                                 (cons (##unchecked-structure-ref
                                        _%val119887%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val119887%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval119965%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval119965%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval119965%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval119965%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key119886%_
                                 _%val119887%_
                                 _%xval119965%_))))))
                 (_%gensubst119893%_
                  (lambda (_%subst119960%_ _%id119961%_)
                    (let ((_%eid119963%_
                           (gensym (if (uninterned-symbol? _%id119961%_)
                                       '%
                                       _%id119961%_))))
                      (hash-put! _%subst119960%_ _%id119961%_ _%eid119963%_)
                      _%eid119963%_)))
                 (_%subst!119894%_
                  (lambda (_%key119896%_)
                    (let* ((_%key119897119905%_ _%key119896%_)
                           (_%else119899119913%_ (lambda () _%key119896%_))
                           (_%K119901119948%_
                            (lambda (_%mark119916%_ _%id119917%_)
                              (let* ((_%mark119918119924%_ _%mark119916%_)
                                     (_%E119920119928%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark119918119924%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K119921119940%_
                                      (lambda (_%subst119931%_)
                                        (if (not _%subst119931%_)
                                            (let ((_%subst119934%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark119916%_
                                               _%subst119934%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst119893%_
                                               _%subst119934%_
                                               _%id119917%_))
                                            (let ((_%$e119936%_
                                                   (hash-get
                                                    _%subst119931%_
                                                    _%id119917%_)))
                                              (if _%$e119936%_
                                                  _%$e119936%_
                                                  (_%gensubst119893%_
                                                   _%subst119931%_
                                                   _%id119917%_)))))))
                                (if (##structure-instance-of?
                                     _%mark119918119924%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e119922119943%_
                                            (##unchecked-structure-ref
                                             _%mark119918119924%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst119946%_ _%e119922119943%_))
                                      (_%K119921119940%_ _%subst119946%_))
                                    (_%E119920119928%_))))))
                      (if (pair? _%key119897119905%_)
                          (let ((_%hd119902119951%_
                                 (##car _%key119897119905%_))
                                (_%tl119903119953%_
                                 (##cdr _%key119897119905%_)))
                            (let* ((_%id119956%_ _%hd119902119951%_)
                                   (_%mark119958%_ _%tl119903119953%_))
                              (_%K119901119948%_ _%mark119958%_ _%id119956%_)))
                          (_%else119899119913%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx119890%_ _%phi119889%_)
           (_%subst!119894%_ _%key119886%_)
           _%val119887%_
           _%update-binding119892%_))))
    (define gx#core-bind!__0
      (lambda (_%key119986%_ _%val119987%_)
        (let* ((_%rebind?119989%_ false)
               (_%phi119991%_ (gx#current-expander-phi))
               (_%ctx119993%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119986%_
           _%val119987%_
           _%rebind?119989%_
           _%phi119991%_
           _%ctx119993%_))))
    (define gx#core-bind!__1
      (lambda (_%key119995%_ _%val119996%_ _%rebind?119997%_)
        (let* ((_%phi119999%_ (gx#current-expander-phi))
               (_%ctx120001%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119995%_
           _%val119996%_
           _%rebind?119997%_
           _%phi119999%_
           _%ctx120001%_))))
    (define gx#core-bind!__2
      (lambda (_%key120003%_ _%val120004%_ _%rebind?120005%_ _%phi120006%_)
        (let ((_%ctx120008%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key120003%_
           _%val120004%_
           _%rebind?120005%_
           _%phi120006%_
           _%ctx120008%_))))
    (define gx#core-bind!
      (lambda _g122557_
        (let ((_g122556_ (##length _g122557_)))
          (cond ((##fx= _g122556_ 2) (apply gx#core-bind!__0 _g122557_))
                ((##fx= _g122556_ 3) (apply gx#core-bind!__1 _g122557_))
                ((##fx= _g122556_ 4) (apply gx#core-bind!__2 _g122557_))
                ((##fx= _g122556_ 5) (apply gx#core-bind!__% _g122557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g122557_))))))
    (define gx#core-identifier-key
      (lambda (_%stx119817%_)
        (if (symbol? _%stx119817%_)
            (let* ((_%g119819119827%_ (gx#current-expander-marks))
                   (_%else119821119835%_ (lambda () _%stx119817%_))
                   (_%K119823119840%_
                    (lambda (_%hd119838%_) (cons _%stx119817%_ _%hd119838%_))))
              (if (pair? _%g119819119827%_)
                  (let* ((_%hd119824119843%_ (##car _%g119819119827%_))
                         (_%hd119846%_ _%hd119824119843%_))
                    (_%K119823119840%_ _%hd119846%_))
                  (_%else119821119835%_)))
            (if (gx#identifier? _%stx119817%_)
                (let* ((_%id119849%_ (gx#syntax-local-unwrap _%stx119817%_))
                       (_%eid119851%_ (gx#stx-e _%id119849%_))
                       (_%marks119853%_
                        (gx#stx-identifier-marks* _%id119849%_))
                       (_%marks119855119863%_ _%marks119853%_)
                       (_%else119857119871%_ (lambda () _%eid119851%_))
                       (_%K119859119876%_
                        (lambda (_%hd119874%_)
                          (cons _%eid119851%_ _%hd119874%_))))
                  (if (pair? _%marks119855119863%_)
                      (let* ((_%hd119860119879%_ (##car _%marks119855119863%_))
                             (_%hd119882%_ _%hd119860119879%_))
                        (_%K119859119876%_ _%hd119882%_))
                      (_%else119857119871%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx119817%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx119756%_ _%phi119757%_)
        (letrec ((_%make-phi119759%_
                  (lambda (_%super119815%_)
                    (let ((__obj122529
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj122529
                       (##gensym 'phi)
                       _%super119815%_)
                      __obj122529)))
                 (_%make-phi/up119760%_
                  (lambda (_%ctx119810%_ _%super119811%_)
                    (let ((_%ctx+1119813%_
                           (_%make-phi119759%_ _%super119811%_)))
                      (##unchecked-structure-set!
                       _%ctx119810%_
                       _%ctx+1119813%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1119813%_
                       _%ctx119810%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1119813%_)))
                 (_%make-phi/down119761%_
                  (lambda (_%ctx119805%_ _%super119806%_)
                    (let ((_%ctx-1119808%_
                           (_%make-phi119759%_ _%super119806%_)))
                      (##unchecked-structure-set!
                       _%ctx-1119808%_
                       _%ctx119805%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx119805%_
                       _%ctx-1119808%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1119808%_)))
                 (_%shift119762%_
                  (lambda (_%ctx119788%_
                           _%delta119789%_
                           _%make-delta-context119790%_
                           _%phi119791%_
                           _%K119792%_)
                    (let ((_%$e119794%_
                           (##unchecked-structure-ref
                            _%ctx119788%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e119794%_
                          ((lambda (_%super119797%_)
                             (let* ((_%super119799%_
                                     (_%K119792%_
                                      _%super119797%_
                                      _%delta119789%_))
                                    (_%ctx+d119801%_
                                     (_%make-delta-context119790%_
                                      _%ctx119788%_
                                      _%super119799%_)))
                               (_%K119792%_
                                _%ctx+d119801%_
                                (fx- _%phi119791%_ _%delta119789%_))))
                           _%$e119794%_)
                          (error '"Bad context" _%ctx119788%_))))))
          (let _%K119764%_ ((_%ctx119766%_ _%ctx119756%_)
                            (_%phi119767%_ _%phi119757%_))
            (if (fxzero? _%phi119767%_)
                _%ctx119766%_
                (if (##structure-instance-of? _%ctx119766%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi119767%_)
                        (let ((_%$e119771%_
                               (##unchecked-structure-ref
                                _%ctx119766%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e119771%_
                              ((lambda (_%g119773119775%_)
                                 (_%K119764%_
                                  _%g119773119775%_
                                  (##fx- _%phi119767%_ '1)))
                               _%$e119771%_)
                              (_%shift119762%_
                               _%ctx119766%_
                               '1
                               _%make-phi/up119760%_
                               _%phi119767%_
                               _%K119764%_)))
                        (let ((_%$e119779%_
                               (##unchecked-structure-ref
                                _%ctx119766%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e119779%_
                              ((lambda (_%g119781119783%_)
                                 (_%K119764%_
                                  _%g119781119783%_
                                  (##fx+ _%phi119767%_ '1)))
                               _%$e119779%_)
                              (_%shift119762%_
                               _%ctx119766%_
                               '-1
                               _%make-phi/down119761%_
                               _%phi119767%_
                               _%K119764%_))))
                    _%ctx119766%_))))))
    (define gx#core-context-get
      (lambda (_%ctx119753%_ _%key119754%_)
        (hash-get
         (##unchecked-structure-ref _%ctx119753%_ '2 '#f '#f)
         _%key119754%_)))
    (define gx#core-context-put!
      (lambda (_%ctx119749%_ _%key119750%_ _%val119751%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx119749%_ '2 '#f '#f)
         _%key119750%_
         _%val119751%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx119735%_ _%key119736%_)
        (let _%lp119738%_ ((_%ctx119740%_ _%ctx119735%_))
          (let ((_%$e119742%_
                 (gx#core-context-get _%ctx119740%_ _%key119736%_)))
            (if _%$e119742%_
                _%$e119742%_
                (let ((_%$e119745%_
                       (if (##structure-instance-of?
                            _%ctx119740%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx119740%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e119745%_ (_%lp119738%_ _%$e119745%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx119724%_ _%key119725%_ _%val119726%_ _%rebind119727%_)
        (let ((_%$e119729%_ (gx#core-context-get _%ctx119724%_ _%key119725%_)))
          (if _%$e119729%_
              ((lambda (_%xval119732%_)
                 (gx#core-context-put!
                  _%ctx119724%_
                  _%key119725%_
                  (_%rebind119727%_ _%xval119732%_)))
               _%$e119729%_)
              (gx#core-context-put!
               _%ctx119724%_
               _%key119725%_
               _%val119726%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx119699%_ _%stop?119700%_)
        (let _%lp119702%_ ((_%ctx119704%_ _%ctx119699%_))
          (if (_%stop?119700%_ _%ctx119704%_)
              _%ctx119704%_
              (if (##structure-instance-of? _%ctx119704%_ 'gx#phi-context::t)
                  (_%lp119702%_
                   (##unchecked-structure-ref _%ctx119704%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx119713%_ (gx#current-expander-context))
               (_%stop?119715%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119713%_ _%stop?119715%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx119717%_)
        (let ((_%stop?119719%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119717%_ _%stop?119719%_))))
    (define gx#core-context-top
      (lambda _g122559_
        (let ((_g122558_ (##length _g122559_)))
          (cond ((##fx= _g122558_ 0) (apply gx#core-context-top__0 _g122559_))
                ((##fx= _g122558_ 1) (apply gx#core-context-top__1 _g122559_))
                ((##fx= _g122558_ 2) (apply gx#core-context-top__% _g122559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g122559_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx119684%_)
        (let _%lp119686%_ ((_%ctx119688%_ _%ctx119684%_))
          (if (##structure-instance-of? _%ctx119688%_ 'gx#phi-context::t)
              (_%lp119686%_
               (##unchecked-structure-ref _%ctx119688%_ '3 '#f '#f))
              _%ctx119688%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx119694%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx119694%_))))
    (define gx#core-context-root
      (lambda _g122561_
        (let ((_g122560_ (##length _g122561_)))
          (cond ((##fx= _g122560_ 0) (apply gx#core-context-root__0 _g122561_))
                ((##fx= _g122560_ 1) (apply gx#core-context-root__% _g122561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g122561_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx119666%_ . _%ignore119667%_)
        (let ((_%$e119669%_ (gx#current-expander-allow-rebind?)))
          (if _%$e119669%_
              _%$e119669%_
              (if (##structure-instance-of? _%ctx119666%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx119666%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx119666%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx119676%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx119676%_))))
    (define gx#core-context-rebind?
      (lambda _g122563_
        (let ((_g122562_ (##length _g122563_)))
          (cond ((##fx= _g122562_ 0)
                 (apply gx#core-context-rebind?__0 _g122563_))
                ((##fx= _g122562_ 1)
                 (apply gx#core-context-rebind?__% _g122563_))
                ((##fx>= _g122562_ 1)
                 (apply gx#core-context-rebind?__% _g122563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g122563_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx119649%_)
        (let ((_%$e119651%_ (gx#core-context-top__1 _%ctx119649%_)))
          (if _%$e119651%_
              ((lambda (_%ctx119654%_)
                 (if (##structure-instance-of?
                      _%ctx119654%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx119654%_ '6 '#f '#f)
                     '#f))
               _%$e119651%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx119661%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx119661%_))))
    (define gx#core-context-namespace
      (lambda _g122565_
        (let ((_g122564_ (##length _g122565_)))
          (cond ((##fx= _g122564_ 0)
                 (apply gx#core-context-namespace__0 _g122565_))
                ((##fx= _g122564_ 1)
                 (apply gx#core-context-namespace__% _g122565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g122565_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind119635%_ _%is?119636%_)
        (if (##structure-direct-instance-of?
             _%bind119635%_
             'gx#syntax-binding::t)
            (_%is?119636%_
             (##unchecked-structure-ref _%bind119635%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind119641%_)
        (let ((_%is?119643%_ gx#expander?))
          (gx#expander-binding?__% _%bind119641%_ _%is?119643%_))))
    (define gx#expander-binding?
      (lambda _g122567_
        (let ((_g122566_ (##length _g122567_)))
          (cond ((##fx= _g122566_ 1) (apply gx#expander-binding?__0 _g122567_))
                ((##fx= _g122566_ 2) (apply gx#expander-binding?__% _g122567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g122567_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind119632%_)
        (gx#expander-binding?__% _%bind119632%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind119630%_)
        (gx#expander-binding?__% _%bind119630%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind119624%_)
        (letrec ((_%direct-special-form?119626%_
                  (lambda (_%obj119628%_)
                    (##structure-direct-instance-of?
                     _%obj119628%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind119624%_
           _%direct-special-form?119626%_))))
    (define gx#special-form-binding?
      (lambda (_%bind119622%_)
        (gx#expander-binding?__% _%bind119622%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind119613%_)
        (letrec ((_%feature?119615%_
                  (lambda (_%e119617%_)
                    (let ((_%$e119619%_
                           (##structure-instance-of?
                            _%e119617%_
                            'gx#feature-expander::t)))
                      (if _%$e119619%_
                          _%$e119619%_
                          (##structure-instance-of?
                           _%e119617%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind119613%_ _%feature?119615%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind119611%_)
        (gx#expander-binding?__% _%bind119611%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id119598%_ _%bound?119599%_)
        (if (gx#identifier? _%id119598%_)
            (_%bound?119599%_ (gx#resolve-identifier__0 _%id119598%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id119604%_)
        (let ((_%bound?119606%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id119604%_ _%bound?119606%_))))
    (define gx#core-bound-identifier?
      (lambda _g122569_
        (let ((_g122568_ (##length _g122569_)))
          (cond ((##fx= _g122568_ 1)
                 (apply gx#core-bound-identifier?__0 _g122569_))
                ((##fx= _g122568_ 2)
                 (apply gx#core-bound-identifier?__% _g122569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g122569_))))))
    (define gx#core-identifier=?
      (lambda (_%x119588%_ _%y119589%_)
        (letrec ((_%y=?119591%_
                  (lambda (_%xid119595%_)
                    ((if (list? _%y119589%_) memq eq?)
                     _%xid119595%_
                     _%y119589%_))))
          (let ((_%bind119593%_ (gx#resolve-identifier__0 _%x119588%_)))
            (if (##structure-instance-of? _%bind119593%_ 'gx#binding::t)
                (_%y=?119591%_
                 (##unchecked-structure-ref _%bind119593%_ '1 '#f '#f))
                (_%y=?119591%_ (gx#stx-e _%x119588%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e119586%_)
        (if (interned-symbol? _%e119586%_)
            (string-index__0 (symbol->string _%e119586%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx119539%_ _%src119540%_ _%ctx119541%_ _%marks119542%_)
        (if (##structure? _%stx119539%_)
            (let ((_%$e119544%_ (gx#sealed-syntax-unwrap _%stx119539%_)))
              (if _%$e119544%_
                  _%$e119544%_
                  (if (gx#identifier? _%stx119539%_)
                      (let ((_%id119548%_
                             (gx#stx-unwrap__% _%stx119539%_ _%marks119542%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id119548%_ '1 '#f '#f)
                         (let ((_%$e119550%_
                                (##unchecked-structure-ref
                                 _%id119548%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e119550%_ _%$e119550%_ _%src119540%_))
                         _%ctx119541%_
                         (##unchecked-structure-ref _%id119548%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx119539%_)
                       (let ((_%$e119554%_ (gx#stx-source _%stx119539%_)))
                         (if _%$e119554%_ _%$e119554%_ _%src119540%_))
                       _%ctx119541%_
                       (reverse _%marks119542%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx119539%_
             _%src119540%_
             _%ctx119541%_
             (reverse _%marks119542%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx119560%_)
        (let* ((_%src119562%_ '#f)
               (_%ctx119564%_ (gx#current-expander-context))
               (_%marks119566%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119560%_
           _%src119562%_
           _%ctx119564%_
           _%marks119566%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx119568%_ _%src119569%_)
        (let* ((_%ctx119571%_ (gx#current-expander-context))
               (_%marks119573%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119568%_
           _%src119569%_
           _%ctx119571%_
           _%marks119573%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx119575%_ _%src119576%_ _%ctx119577%_)
        (let ((_%marks119579%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119575%_
           _%src119576%_
           _%ctx119577%_
           _%marks119579%_))))
    (define gx#core-quote-syntax
      (lambda _g122571_
        (let ((_g122570_ (##length _g122571_)))
          (cond ((##fx= _g122570_ 1) (apply gx#core-quote-syntax__0 _g122571_))
                ((##fx= _g122570_ 2) (apply gx#core-quote-syntax__1 _g122571_))
                ((##fx= _g122570_ 3) (apply gx#core-quote-syntax__2 _g122571_))
                ((##fx= _g122570_ 4) (apply gx#core-quote-syntax__% _g122571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g122571_))))))
    (define gx#core-cons
      (lambda (_%hd119535%_ _%tl119536%_)
        (cons (gx#core-quote-syntax__0 _%hd119535%_) _%tl119536%_)))
    (define gx#core-list
      (lambda (_%hd119532%_ . _%rest119533%_)
        (cons (gx#core-quote-syntax__0 _%hd119532%_) _%rest119533%_)))
    (define gx#core-cons*
      (lambda (_%hd119529%_ . _%rest119530%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd119529%_) _%rest119530%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path119498%_ _%rel119499%_)
        (let ((_%path119516%_ (gx#stx-e _%stx-path119498%_))
              (_%reldir119517%_
               (let _%lp119501%_ ((_%relsrc119503%_
                                   (let ((_%$e119513%_
                                          (gx#stx-source _%stx-path119498%_)))
                                     (if _%$e119513%_
                                         _%$e119513%_
                                         _%rel119499%_))))
                 (if (##structure-instance-of? _%relsrc119503%_ 'gerbil#AST::t)
                     (_%lp119501%_
                      (let ((_%$e119506%_ (gx#stx-source _%relsrc119503%_)))
                        (if _%$e119506%_
                            _%$e119506%_
                            (gx#stx-e _%relsrc119503%_))))
                     (if (source-location-path? _%relsrc119503%_)
                         (path-directory
                          (source-location-path _%relsrc119503%_))
                         (if (string? _%relsrc119503%_)
                             (path-directory _%relsrc119503%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path119516%_ (path-normalize _%reldir119517%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path119522%_)
        (let ((_%rel119524%_ '#f))
          (gx#core-resolve-path__% _%stx-path119522%_ _%rel119524%_))))
    (define gx#core-resolve-path
      (lambda _g122573_
        (let ((_g122572_ (##length _g122573_)))
          (cond ((##fx= _g122572_ 1) (apply gx#core-resolve-path__0 _g122573_))
                ((##fx= _g122572_ 2) (apply gx#core-resolve-path__% _g122573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g122573_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr119454%_ _%ctx119455%_)
        (let* ((_%repr119456119463%_ _%repr119454%_)
               (_%E119458119467%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr119456119463%_
                         '([phi . subs]))
                  '#!void))
               (_%K119459119475%_
                (lambda (_%subs119470%_ _%phi119471%_)
                  (let ((_%subst119473%_
                         (if (null? _%subs119470%_)
                             '#f
                             (list->hash-table-eq _%subs119470%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst119473%_
                     _%ctx119455%_
                     _%phi119471%_
                     '#f)))))
          (if (pair? _%repr119456119463%_)
              (let ((_%hd119460119478%_ (##car _%repr119456119463%_))
                    (_%tl119461119480%_ (##cdr _%repr119456119463%_)))
                (let* ((_%phi119483%_ _%hd119460119478%_)
                       (_%subs119485%_ _%tl119461119480%_))
                  (_%K119459119475%_ _%subs119485%_ _%phi119483%_)))
              (_%E119458119467%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr119490%_)
        (let ((_%ctx119492%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr119490%_ _%ctx119492%_))))
    (define gx#core-deserialize-mark
      (lambda _g122575_
        (let ((_g122574_ (##length _g122575_)))
          (cond ((##fx= _g122574_ 1)
                 (apply gx#core-deserialize-mark__0 _g122575_))
                ((##fx= _g122574_ 2)
                 (apply gx#core-deserialize-mark__% _g122575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g122575_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx119451%_)
        (gx#stx-rewrap _%stx119451%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx119449%_)
        (gx#stx-unwrap__% _%stx119449%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx119419%_)
        (let* ((_%g119420119428%_ (gx#current-expander-marks))
               (_%else119422119436%_ (lambda () _%stx119419%_))
               (_%K119424119441%_
                (lambda (_%hd119439%_)
                  (gx#stx-apply-mark _%stx119419%_ _%hd119439%_))))
          (if (pair? _%g119420119428%_)
              (let* ((_%hd119425119444%_ (##car _%g119420119428%_))
                     (_%hd119447%_ _%hd119425119444%_))
                (_%K119424119441%_ _%hd119447%_))
              (_%else119422119436%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx119404%_ _%E119405%_)
        (let ((_%bind119407%_ (gx#resolve-identifier__0 _%stx119404%_)))
          (if (##structure-direct-instance-of?
               _%bind119407%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind119407%_ '4 '#f '#f)
              (_%E119405%_ _%stx119404%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx119412%_)
        (let ((_%E119414%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx119412%_ _%E119414%_))))
    (define gx#syntax-local-e
      (lambda _g122577_
        (let ((_g122576_ (##length _g122577_)))
          (cond ((##fx= _g122576_ 1) (apply gx#syntax-local-e__0 _g122577_))
                ((##fx= _g122576_ 2) (apply gx#syntax-local-e__% _g122577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g122577_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx119388%_ _%E119389%_)
        (let ((_%e119391%_ (gx#syntax-local-e__% _%stx119388%_ _%E119389%_)))
          (if (##structure-instance-of? _%e119391%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e119391%_ '1 '#f '#f)
              _%e119391%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx119396%_)
        (let ((_%E119398%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx119396%_ _%E119398%_))))
    (define gx#syntax-local-value
      (lambda _g122579_
        (let ((_g122578_ (##length _g122579_)))
          (cond ((##fx= _g122578_ 1)
                 (apply gx#syntax-local-value__0 _g122579_))
                ((##fx= _g122578_ 2)
                 (apply gx#syntax-local-value__% _g122579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g122579_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx119385%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx119385%_)))))
