(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1713001407)
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
      (lambda _%$args119825%_
        (apply make-instance gx#expander-context::t _%$args119825%_)))
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
      (lambda _%$args119822%_
        (apply make-instance gx#root-context::t _%$args119822%_)))
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
      (lambda _%$args119819%_
        (apply make-instance gx#phi-context::t _%$args119819%_)))
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
      (lambda _%$args119816%_
        (apply make-instance gx#top-context::t _%$args119816%_)))
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
      (lambda _%$args119813%_
        (apply make-instance gx#module-context::t _%$args119813%_)))
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
      (lambda _%$args119810%_
        (apply make-instance gx#prelude-context::t _%$args119810%_)))
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
      (lambda _%$args119807%_
        (apply make-instance gx#local-context::t _%$args119807%_)))
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
      (lambda (_%self116713119778%_ _%id119780%_ _%super119781%_)
        (let* ((_%self119783%_ _%self116713119778%_)
               (_%self119785%_ _%self119783%_))
          (if (##fx< '3 (##structure-length _%self119785%_))
              (begin
                (##unchecked-structure-set!
                 _%self119785%_
                 _%id119780%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119785%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119785%_
                 _%super119781%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119785%_
                     '3
                     (##vector-length _%self119785%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self116713119798%_ _%id119799%_)
        (let ((_%super119801%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self116713119798%_
           _%id119799%_
           _%super119801%_))))
    (define gx#phi-context:::init!
      (lambda _g119868_
        (let ((_g119867_ (##length _g119868_)))
          (cond ((##fx= _g119867_ 2)
                 (apply gx#phi-context:::init!__0 _g119868_))
                ((##fx= _g119867_ 3)
                 (apply gx#phi-context:::init!__% _g119868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g119868_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self116714119629%_ _%super119631%_)
        (let* ((_%self119633%_ _%self116714119629%_)
               (_%self119635%_ _%self119633%_))
          (if (##fx< '3 (##structure-length _%self119635%_))
              (begin
                (##unchecked-structure-set!
                 _%self119635%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119635%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119635%_
                 _%super119631%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119635%_
                     '3
                     (##vector-length _%self119635%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self116714119648%_)
        (let ((_%super119650%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self116714119648%_ _%super119650%_))))
    (define gx#local-context:::init!
      (lambda _g119870_
        (let ((_g119869_ (##length _g119870_)))
          (cond ((##fx= _g119869_ 1)
                 (apply gx#local-context:::init!__0 _g119870_))
                ((##fx= _g119869_ 2)
                 (apply gx#local-context:::init!__% _g119870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g119870_))))))
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
      (lambda _%$args119503%_
        (apply make-instance gx#binding::t _%$args119503%_)))
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
      (lambda _%$args119500%_
        (apply make-instance gx#runtime-binding::t _%$args119500%_)))
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
      (lambda _%$args119497%_
        (apply make-instance gx#local-binding::t _%$args119497%_)))
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
      (lambda _%$args119494%_
        (apply make-instance gx#top-binding::t _%$args119494%_)))
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
      (lambda _%$args119491%_
        (apply make-instance gx#module-binding::t _%$args119491%_)))
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
      (lambda _%$args119488%_
        (apply make-instance gx#extern-binding::t _%$args119488%_)))
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
      (lambda _%$args119485%_
        (apply make-instance gx#syntax-binding::t _%$args119485%_)))
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
      (lambda _%$args119482%_
        (apply make-instance gx#import-binding::t _%$args119482%_)))
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
      (lambda _%$args119479%_
        (apply make-instance gx#alias-binding::t _%$args119479%_)))
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
      (lambda _%$args119476%_
        (apply make-instance gx#expander::t _%$args119476%_)))
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
      (lambda _%$args119473%_
        (apply make-instance gx#core-expander::t _%$args119473%_)))
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
      (lambda _%$args119470%_
        (apply make-instance gx#expression-form::t _%$args119470%_)))
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
      (lambda _%$args119467%_
        (apply make-instance gx#special-form::t _%$args119467%_)))
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
      (lambda _%$args119464%_
        (apply make-instance gx#definition-form::t _%$args119464%_)))
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
      (lambda _%$args119461%_
        (apply make-instance gx#top-special-form::t _%$args119461%_)))
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
      (lambda _%$args119458%_
        (apply make-instance gx#module-special-form::t _%$args119458%_)))
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
      (lambda _%$args119455%_
        (apply make-instance gx#feature-expander::t _%$args119455%_)))
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
      (lambda _%$args119452%_
        (apply make-instance gx#private-feature-expander::t _%$args119452%_)))
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
      (lambda _%$args119449%_
        (apply make-instance gx#reserved-expander::t _%$args119449%_)))
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
      (lambda _%$args119446%_
        (apply make-instance gx#macro-expander::t _%$args119446%_)))
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
      (lambda _%$args119443%_
        (apply make-instance gx#rename-macro-expander::t _%$args119443%_)))
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
      (lambda _%$args119440%_
        (apply make-instance gx#user-expander::t _%$args119440%_)))
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
      (lambda _%$args119437%_
        (apply make-instance gx#expander-mark::t _%$args119437%_)))
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
      (lambda (_%ctx119421%_
               _%message119422%_
               _%stx119423%_
               .
               _%details119424%_)
        (let ((_%ctx119435%_
               (let ((_%$e119426%_ _%ctx119421%_))
                 (if _%$e119426%_
                     _%$e119426%_
                     (let ((_%$e119429%_ (gx#core-context-top__0)))
                       (if _%$e119429%_
                           ((lambda (_%ctx119432%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx119432%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e119429%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message119422%_
                  (cons _%stx119423%_ _%details119424%_)
                  _%ctx119435%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx119408%_ _%expression?119409%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx119408%_ _%expression?119409%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx119414%_)
        (let ((_%expression?119416%_ '#f))
          (gx#eval-syntax__% _%stx119414%_ _%expression?119416%_))))
    (define gx#eval-syntax
      (lambda _g119872_
        (let ((_g119871_ (##length _g119872_)))
          (cond ((##fx= _g119871_ 1) (apply gx#eval-syntax__0 _g119872_))
                ((##fx= _g119871_ 2) (apply gx#eval-syntax__% _g119872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g119872_))))))
    (define gx#eval-syntax*
      (lambda (_%stx119405%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx119405%_))))
    (define gx#core-expand__%
      (lambda (_%stx119392%_ _%expression?119393%_)
        (if _%expression?119393%_
            (gx#core-expand-expression _%stx119392%_)
            (gx#core-expand-top _%stx119392%_))))
    (define gx#core-expand__0
      (lambda (_%stx119398%_)
        (let ((_%expression?119400%_ '#f))
          (gx#core-expand__% _%stx119398%_ _%expression?119400%_))))
    (define gx#core-expand
      (lambda _g119874_
        (let ((_g119873_ (##length _g119874_)))
          (cond ((##fx= _g119873_ 1) (apply gx#core-expand__0 _g119874_))
                ((##fx= _g119873_ 2) (apply gx#core-expand__% _g119874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g119874_))))))
    (define gx#core-expand-top
      (lambda (_%stx119359%_)
        (let* ((_%stx119361%_ (gx#core-expand*__0 _%stx119359%_))
               (_%e119362119369%_ _%stx119361%_)
               (_%E119364119373%_
                (lambda () (gx#core-expand-expression _%stx119361%_)))
               (_%E119363119387%_
                (lambda ()
                  (if (gx#stx-pair? _%e119362119369%_)
                      (let ((_%e119365119377%_
                             (gx#syntax-e _%e119362119369%_)))
                        (let ((_%hd119366119380%_ (##car _%e119365119377%_))
                              (_%tl119367119382%_ (##cdr _%e119365119377%_)))
                          (let ((_%form119385%_ _%hd119366119380%_))
                            (if (gx#core-bound-identifier?__0 _%form119385%_)
                                _%stx119361%_
                                (_%E119364119373%_)))))
                      (_%E119364119373%_)))))
          (_%E119363119387%_))))
    (define gx#core-expand-expression
      (lambda (_%stx119291%_)
        (letrec ((_%sealed-expression?119293%_
                  (lambda (_%hd119329%_)
                    (if (gx#sealed-syntax? _%hd119329%_)
                        (let* ((_%e119330119337%_ _%hd119329%_)
                               (_%E119332119341%_ (lambda () '#f))
                               (_%E119331119355%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e119330119337%_)
                                      (let ((_%e119333119345%_
                                             (gx#syntax-e _%e119330119337%_)))
                                        (let ((_%hd119334119348%_
                                               (##car _%e119333119345%_))
                                              (_%tl119335119350%_
                                               (##cdr _%e119333119345%_)))
                                          (let ((_%form119353%_
                                                 _%hd119334119348%_))
                                            (gx#core-bound-identifier?__%
                                             _%form119353%_
                                             gx#expression-form-binding?))))
                                      (_%E119332119341%_)))))
                          (_%E119331119355%_))
                        '#f)))
                 (_%illegal-expression119294%_
                  (lambda (_%hd119326%_ . _%_119327%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx119291%_
                     _%hd119326%_)))
                 (_%expand-e119295%_
                  (lambda (_%form119318%_ _%hd119319%_)
                    (let ((_%bind119321%_
                           (if (##structure-instance-of?
                                _%form119318%_
                                'gx#binding::t)
                               _%form119318%_
                               (gx#resolve-identifier__0 _%form119318%_))))
                      (if (gx#core-expander-binding? _%bind119321%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind119321%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd119319%_
                            (gx#stx-source _%stx119291%_)))
                          (if (##structure-direct-instance-of?
                               _%bind119321%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind119321%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd119319%_
                                 (gx#stx-source _%stx119291%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx119291%_
                               _%form119318%_)))))))
          (let ((_%hd119297%_ (gx#core-expand-head _%stx119291%_)))
            (if (_%sealed-expression?119293%_ _%hd119297%_)
                _%hd119297%_
                (if (gx#stx-pair? _%hd119297%_)
                    (let* ((_%form119301%_ (gx#stx-car _%hd119297%_))
                           (_%bind119303%_
                            (if (gx#identifier? _%form119301%_)
                                (gx#resolve-identifier__0 _%form119301%_)
                                '#f)))
                      (if (or (not _%bind119303%_)
                              (not (gx#core-expander-binding? _%bind119303%_)))
                          (_%expand-e119295%_
                           '%%app
                           (cons '%%app _%hd119297%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind119303%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd119297%_
                               _%illegal-expression119294%_)
                              (if (gx#expression-form-binding? _%bind119303%_)
                                  (_%expand-e119295%_
                                   _%bind119303%_
                                   _%hd119297%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind119303%_)
                                      (gx#core-expand-expression
                                       (_%expand-e119295%_
                                        _%bind119303%_
                                        _%hd119297%_))
                                      (_%illegal-expression119294%_
                                       _%hd119297%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd119297%_)
                        (_%illegal-expression119294%_ _%hd119297%_)
                        (if (gx#identifier? _%hd119297%_)
                            (_%expand-e119295%_
                             '%%ref
                             (cons '%%ref (cons _%hd119297%_ '())))
                            (if (gx#stx-datum? _%hd119297%_)
                                (_%expand-e119295%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd119297%_ '())))
                                (_%illegal-expression119294%_
                                 _%hd119297%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx119286%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx119289%_ (gx#core-expand-expression _%stx119286%_)))
             (values _%stx119289%_ (gx#eval-syntax* _%stx119289%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx119267%_ _%stop?119268%_)
        (let _%lp119270%_ ((_%stx119272%_ _%stx119267%_))
          (if (_%stop?119268%_ _%stx119272%_)
              _%stx119272%_
              (let ((_%rstx119274%_ (gx#core-expand1 _%stx119272%_)))
                (if (eq? _%stx119272%_ _%rstx119274%_)
                    _%stx119272%_
                    (_%lp119270%_ _%rstx119274%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx119279%_)
        (let ((_%stop?119281%_ false))
          (gx#core-expand*__% _%stx119279%_ _%stop?119281%_))))
    (define gx#core-expand*
      (lambda _g119876_
        (let ((_g119875_ (##length _g119876_)))
          (cond ((##fx= _g119875_ 1) (apply gx#core-expand*__0 _g119876_))
                ((##fx= _g119875_ 2) (apply gx#core-expand*__% _g119876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g119876_))))))
    (define gx#core-expand1
      (lambda (_%stx119219%_)
        (letrec ((_%step119221%_
                  (lambda (_%hd119258%_)
                    (let ((_%bind119260%_
                           (gx#resolve-identifier__0 _%hd119258%_)))
                      (if (##structure-instance-of?
                           _%bind119260%_
                           'gx#runtime-binding::t)
                          _%stx119219%_
                          (if (##structure-direct-instance-of?
                               _%bind119260%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind119260%_
                                '4
                                '#f
                                '#f)
                               _%stx119219%_)
                              (if (not _%bind119260%_)
                                  _%stx119219%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx119219%_))))))))
          (let* ((_%e119222119230%_ _%stx119219%_)
                 (_%E119228119234%_ (lambda () _%stx119219%_))
                 (_%E119224119240%_
                  (lambda ()
                    (let ((_%hd119238%_ _%e119222119230%_))
                      (if (gx#identifier? _%hd119238%_)
                          (_%step119221%_ _%hd119238%_)
                          (_%E119228119234%_)))))
                 (_%E119223119254%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119222119230%_)
                        (let ((_%e119225119244%_
                               (gx#syntax-e _%e119222119230%_)))
                          (let ((_%hd119226119247%_ (##car _%e119225119244%_))
                                (_%tl119227119249%_ (##cdr _%e119225119244%_)))
                            (let ((_%hd119252%_ _%hd119226119247%_))
                              (if (gx#identifier? _%hd119252%_)
                                  (_%step119221%_ _%hd119252%_)
                                  (_%E119224119240%_)))))
                        (_%E119224119240%_)))))
            (_%E119223119254%_)))))
    (define gx#core-expand-head
      (lambda (_%stx119185%_)
        (letrec ((_%stop?119187%_
                  (lambda (_%stx119189%_)
                    (let* ((_%e119190119197%_ _%stx119189%_)
                           (_%E119192119201%_ (lambda () '#f))
                           (_%E119191119215%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119190119197%_)
                                  (let ((_%e119193119205%_
                                         (gx#syntax-e _%e119190119197%_)))
                                    (let ((_%hd119194119208%_
                                           (##car _%e119193119205%_))
                                          (_%tl119195119210%_
                                           (##cdr _%e119193119205%_)))
                                      (let ((_%hd119213%_ _%hd119194119208%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd119213%_))))
                                  (_%E119192119201%_)))))
                      (_%E119191119215%_)))))
          (gx#core-expand*__% _%stx119185%_ _%stop?119187%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx118991%_
               _%expand-special118992%_
               _%begin-form118993%_
               _%expand-e118994%_)
        (letrec ((_%expand-splice118996%_
                  (lambda (_%hd119159%_
                           _%body119160%_
                           _%rest119161%_
                           _%r119162%_)
                    (if (gx#stx-list? _%body119160%_)
                        (_%K119000%_
                         (gx#stx-foldr cons _%rest119161%_ _%body119160%_)
                         _%r119162%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx118991%_
                         _%hd119159%_))))
                 (_%expand-cond-expand118997%_
                  (lambda (_%hd119155%_ _%rest119156%_ _%r119157%_)
                    (_%K119000%_
                     (cons (gx#core-expand-cond-expand% _%hd119155%_)
                           _%rest119156%_)
                     _%r119157%_)))
                 (_%expand-include118998%_
                  (lambda (_%hd119104%_ _%rest119105%_ _%r119106%_)
                    (let* ((_%e119107119117%_ _%hd119104%_)
                           (_%E119109119121%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e119107119117%_)))
                           (_%E119108119151%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119107119117%_)
                                  (let ((_%e119110119125%_
                                         (gx#syntax-e _%e119107119117%_)))
                                    (let ((_%hd119111119128%_
                                           (##car _%e119110119125%_))
                                          (_%tl119112119130%_
                                           (##cdr _%e119110119125%_)))
                                      (if (gx#stx-pair? _%tl119112119130%_)
                                          (let ((_%e119113119133%_
                                                 (gx#syntax-e
                                                  _%tl119112119130%_)))
                                            (let ((_%hd119114119136%_
                                                   (##car _%e119113119133%_))
                                                  (_%tl119115119138%_
                                                   (##cdr _%e119113119133%_)))
                                              (let ((_%path119141%_
                                                     _%hd119114119136%_))
                                                (if (gx#stx-null?
                                                     _%tl119115119138%_)
                                                    (if (gx#stx-string?
                                                         _%path119141%_)
                                                        (let* ((_%rpath119143%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path119141%_
                         (gx#stx-source _%hd119104%_)))
                       (_%block119145%_
                        (gx#core-expand-include%__%
                         _%hd119104%_
                         _%rpath119143%_))
                       (_%rbody119148%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block119145%_
                            _%expand-special118992%_
                            '#f
                            _%expand-e118994%_))
                         gx#current-expander-path
                         (cons _%rpath119143%_ (gx#current-expander-path)))))
                  (_%K119000%_
                   _%rest119105%_
                   (__foldr1 cons _%r119106%_ _%rbody119148%_)))
                (_%E119109119121%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119109119121%_)))))
                                          (_%E119109119121%_))))
                                  (_%E119109119121%_)))))
                      (_%E119108119151%_))))
                 (_%expand-expression118999%_
                  (lambda (_%hd119100%_ _%rest119101%_ _%r119102%_)
                    (_%K119000%_
                     _%rest119101%_
                     (cons (_%expand-e118994%_ _%hd119100%_) _%r119102%_))))
                 (_%K119000%_
                  (lambda (_%rest119030%_ _%r119031%_)
                    (let* ((_%e119032119039%_ _%rest119030%_)
                           (_%E119034119043%_
                            (lambda ()
                              (if _%begin-form118993%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form118993%_
                                    (reverse _%r119031%_))
                                   (gx#stx-source _%stx118991%_))
                                  _%r119031%_)))
                           (_%E119033119096%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119032119039%_)
                                  (let ((_%e119035119047%_
                                         (gx#syntax-e _%e119032119039%_)))
                                    (let ((_%hd119036119050%_
                                           (##car _%e119035119047%_))
                                          (_%tl119037119052%_
                                           (##cdr _%e119035119047%_)))
                                      (let* ((_%hd119055%_ _%hd119036119050%_)
                                             (_%rest119057%_
                                              _%tl119037119052%_)
                                             (_%hd119059%_
                                              (gx#core-expand-head
                                               _%hd119055%_))
                                             (_%e119060119067%_ _%hd119059%_)
                                             (_%E119062119071%_
                                              (lambda ()
                                                (_%expand-expression118999%_
                                                 _%hd119059%_
                                                 _%rest119057%_
                                                 _%r119031%_)))
                                             (_%E119061119092%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e119060119067%_)
                                                    (let ((_%e119063119075%_
                                                           (gx#syntax-e
                                                            _%e119060119067%_)))
                                                      (let ((_%hd119064119078%_
                                                             (##car _%e119063119075%_))
                                                            (_%tl119065119080%_
                                                             (##cdr _%e119063119075%_)))
                                                        (let* ((_%form119083%_
                                                                _%hd119064119078%_)
                                                               (_%body119085%_
                                                                _%tl119065119080%_)
                                                               (_%bind119087%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form119083%_)
                            (gx#resolve-identifier__0 _%form119083%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind119087%_)
                      (let ((_%$e119089%_
                             (##unchecked-structure-ref
                              _%bind119087%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e119089%_)
                            (_%expand-splice118996%_
                             _%hd119059%_
                             _%body119085%_
                             _%rest119057%_
                             _%r119031%_)
                            (if (eq? '%#cond-expand _%$e119089%_)
                                (_%expand-cond-expand118997%_
                                 _%hd119059%_
                                 _%rest119057%_
                                 _%r119031%_)
                                (if (eq? '%#include _%$e119089%_)
                                    (_%expand-include118998%_
                                     _%hd119059%_
                                     _%rest119057%_
                                     _%r119031%_)
                                    (_%expand-special118992%_
                                     _%hd119059%_
                                     _%K119000%_
                                     _%rest119057%_
                                     _%r119031%_)))))
                      (_%expand-expression118999%_
                       _%hd119059%_
                       _%rest119057%_
                       _%r119031%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119062119071%_)))))
                                        (_%E119061119092%_))))
                                  (_%E119034119043%_)))))
                      (_%E119033119096%_)))))
          (let* ((_%e119001119008%_ _%stx118991%_)
                 (_%E119003119012%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119001119008%_)))
                 (_%E119002119026%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119001119008%_)
                        (let ((_%e119004119016%_
                               (gx#syntax-e _%e119001119008%_)))
                          (let ((_%hd119005119019%_ (##car _%e119004119016%_))
                                (_%tl119006119021%_ (##cdr _%e119004119016%_)))
                            (let ((_%body119024%_ _%tl119006119021%_))
                              (if (gx#stx-list? _%body119024%_)
                                  (_%K119000%_ _%body119024%_ '())
                                  (_%E119003119012%_)))))
                        (_%E119003119012%_)))))
            (_%E119002119026%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx119167%_ _%expand-special119168%_)
        (let* ((_%begin-form119170%_ '%#begin)
               (_%expand-e119172%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx119167%_
           _%expand-special119168%_
           _%begin-form119170%_
           _%expand-e119172%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx119174%_ _%expand-special119175%_ _%begin-form119176%_)
        (let ((_%expand-e119178%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx119174%_
           _%expand-special119175%_
           _%begin-form119176%_
           _%expand-e119178%_))))
    (define gx#core-expand-block
      (lambda _g119878_
        (let ((_g119877_ (##length _g119878_)))
          (cond ((##fx= _g119877_ 2) (apply gx#core-expand-block__0 _g119878_))
                ((##fx= _g119877_ 3) (apply gx#core-expand-block__1 _g119878_))
                ((##fx= _g119877_ 4) (apply gx#core-expand-block__% _g119878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g119878_))))))
    (define gx#core-expand-block*
      (lambda (_%stx118939%_ _%expand-special118940%_)
        (let* ((_%g118941118952%_
                (gx#core-expand-block__1
                 _%stx118939%_
                 _%expand-special118940%_
                 '#f))
               (_%E118945118956%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118941118952%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K118950118987%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx118939%_)))
                (_%K118947118973%_ (lambda (_%expr118971%_) _%expr118971%_))
                (_%K118946118962%_
                 (lambda (_%body118960%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body118960%_))
                    (gx#stx-source _%stx118939%_)))))
            (let ((_%try-match118943118983%_
                   (lambda ()
                     (if (##pair? _%g118941118952%_)
                         (let ((_%tl118949118978%_ (##cdr _%g118941118952%_))
                               (_%hd118948118976%_ (##car _%g118941118952%_)))
                           (if (##null? _%tl118949118978%_)
                               (let ((_%expr118981%_ _%hd118948118976%_))
                                 (_%K118947118973%_ _%expr118981%_))
                               (let ((_%body118965%_ _%g118941118952%_))
                                 (_%K118946118962%_ _%body118965%_))))
                         (let ((_%body118965%_ _%g118941118952%_))
                           (_%K118946118962%_ _%body118965%_))))))
              (if (##null? _%g118941118952%_)
                  (_%K118950118987%_)
                  (_%try-match118943118983%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx118764%_)
        (letrec ((_%satisfied?118766%_
                  (lambda (_%condition118867%_)
                    (let* ((_%e118868118883%_ _%condition118867%_)
                           (_%E118878118887%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118868118883%_)))
                           (_%E118871118906%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118868118883%_)
                                  (let ((_%e118879118891%_
                                         (gx#syntax-e _%e118868118883%_)))
                                    (let ((_%hd118880118894%_
                                           (##car _%e118879118891%_))
                                          (_%tl118881118896%_
                                           (##cdr _%e118879118891%_)))
                                      (let* ((_%combinator118899%_
                                              _%hd118880118894%_)
                                             (_%body118901%_
                                              _%tl118881118896%_))
                                        (if (gx#stx-list? _%body118901%_)
                                            (let ((_%$e118903%_
                                                   (gx#stx-e
                                                    _%combinator118899%_)))
                                              (if (eq? 'not _%$e118903%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?118766%_
                                                        _%body118901%_))
                                                  (if (eq? 'and _%$e118903%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?118766%_
                                                       _%body118901%_)
                                                      (if (eq? 'or
                                                               _%$e118903%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?118766%_
                                                           _%body118901%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e118903%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body118901%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx118764%_
                       _%combinator118899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118878118887%_)))))
                                  (_%E118878118887%_))))
                           (_%E118870118929%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118868118883%_)
                                  (let ((_%e118872118910%_
                                         (gx#syntax-e _%e118868118883%_)))
                                    (let ((_%hd118873118913%_
                                           (##car _%e118872118910%_))
                                          (_%tl118874118915%_
                                           (##cdr _%e118872118910%_)))
                                      (if (and (gx#identifier?
                                                _%hd118873118913%_)
                                               (gx#core-identifier=?
                                                _%hd118873118913%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl118874118915%_)
                                              (let ((_%e118875118918%_
                                                     (gx#syntax-e
                                                      _%tl118874118915%_)))
                                                (let ((_%hd118876118921%_
                                                       (##car _%e118875118918%_))
                                                      (_%tl118877118923%_
                                                       (##cdr _%e118875118918%_)))
                                                  (let ((_%expr118926%_
                                                         _%hd118876118921%_))
                                                    (if (gx#stx-null?
                                                         _%tl118877118923%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr118926%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E118871118906%_)))))
                                              (_%E118871118906%_))
                                          (_%E118871118906%_))))
                                  (_%E118871118906%_))))
                           (_%E118869118935%_
                            (lambda ()
                              (let ((_%id118933%_ _%e118868118883%_))
                                (if (gx#identifier? _%id118933%_)
                                    (gx#core-bound-identifier?__%
                                     _%id118933%_
                                     gx#feature-binding?)
                                    (_%E118870118929%_))))))
                      (_%E118869118935%_))))
                 (_%loop118767%_
                  (lambda (_%rest118797%_)
                    (let* ((_%e118798118806%_ _%rest118797%_)
                           (_%E118804118810%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118798118806%_)))
                           (_%E118800118814%_
                            (lambda ()
                              (if (gx#stx-null? _%e118798118806%_)
                                  '()
                                  (_%E118804118810%_))))
                           (_%E118799118863%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118798118806%_)
                                  (let ((_%e118801118818%_
                                         (gx#syntax-e _%e118798118806%_)))
                                    (let ((_%hd118802118821%_
                                           (##car _%e118801118818%_))
                                          (_%tl118803118823%_
                                           (##cdr _%e118801118818%_)))
                                      (let* ((_%hd118826%_ _%hd118802118821%_)
                                             (_%rest118828%_
                                              _%tl118803118823%_)
                                             (_%e118829118836%_ _%hd118826%_)
                                             (_%E118831118840%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e118829118836%_)))
                                             (_%E118830118859%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e118829118836%_)
                                                    (let ((_%e118832118844%_
                                                           (gx#syntax-e
                                                            _%e118829118836%_)))
                                                      (let ((_%hd118833118847%_
                                                             (##car _%e118832118844%_))
                                                            (_%tl118834118849%_
                                                             (##cdr _%e118832118844%_)))
                                                        (let* ((_%condition118852%_
                                                                _%hd118833118847%_)
                                                               (_%body118854%_
                                                                _%tl118834118849%_))
                                                          (if (gx#stx-eq?
                                                               _%condition118852%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest118828%_)
                          _%body118854%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx118764%_
                           _%hd118826%_))
                      (if (_%satisfied?118766%_ _%condition118852%_)
                          _%body118854%_
                          (_%loop118767%_ _%rest118828%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118831118840%_)))))
                                        (_%E118830118859%_))))
                                  (_%E118800118814%_)))))
                      (_%E118799118863%_)))))
          (let* ((_%e118768118775%_ _%stx118764%_)
                 (_%E118770118779%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118768118775%_)))
                 (_%E118769118793%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118768118775%_)
                        (let ((_%e118771118783%_
                               (gx#syntax-e _%e118768118775%_)))
                          (let ((_%hd118772118786%_ (##car _%e118771118783%_))
                                (_%tl118773118788%_ (##cdr _%e118771118783%_)))
                            (let ((_%clauses118791%_ _%tl118773118788%_))
                              (if (gx#stx-list? _%clauses118791%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop118767%_ _%clauses118791%_))
                                  (_%E118770118779%_)))))
                        (_%E118770118779%_)))))
            (_%E118769118793%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx118707%_ _%rpath118708%_)
        (let* ((_%e118709118719%_ _%stx118707%_)
               (_%E118711118723%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118709118719%_)))
               (_%E118710118750%_
                (lambda ()
                  (if (gx#stx-pair? _%e118709118719%_)
                      (let ((_%e118712118727%_
                             (gx#syntax-e _%e118709118719%_)))
                        (let ((_%hd118713118730%_ (##car _%e118712118727%_))
                              (_%tl118714118732%_ (##cdr _%e118712118727%_)))
                          (if (gx#stx-pair? _%tl118714118732%_)
                              (let ((_%e118715118735%_
                                     (gx#syntax-e _%tl118714118732%_)))
                                (let ((_%hd118716118738%_
                                       (##car _%e118715118735%_))
                                      (_%tl118717118740%_
                                       (##cdr _%e118715118735%_)))
                                  (let ((_%path118743%_ _%hd118716118738%_))
                                    (if (gx#stx-null? _%tl118717118740%_)
                                        (if (gx#stx-string? _%path118743%_)
                                            (let ((_%rpath118748%_
                                                   (let ((_%$e118745%_
                                                          _%rpath118708%_))
                                                     (if _%$e118745%_
                                                         _%$e118745%_
                                                         (gx#core-resolve-path__%
                                                          _%path118743%_
                                                          (gx#stx-source
                                                           _%stx118707%_))))))
                                              (if (member _%rpath118748%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx118707%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath118748%_))
                                                    (gx#stx-source
                                                     _%stx118707%_)))))
                                            (_%E118711118723%_))
                                        (_%E118711118723%_)))))
                              (_%E118711118723%_))))
                      (_%E118711118723%_)))))
          (_%E118710118750%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx118757%_)
        (let ((_%rpath118759%_ '#f))
          (gx#core-expand-include%__% _%stx118757%_ _%rpath118759%_))))
    (define gx#core-expand-include%
      (lambda _g119880_
        (let ((_g119879_ (##length _g119880_)))
          (cond ((##fx= _g119879_ 1)
                 (apply gx#core-expand-include%__0 _g119880_))
                ((##fx= _g119879_ 2)
                 (apply gx#core-expand-include%__% _g119880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g119880_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K118673%_ _%stx118674%_ _%method118675%_)
        (if (procedure? _%K118673%_)
            (let ((_%$e118678%_ (gx#stx-source _%stx118674%_)))
              (if _%$e118678%_
                  ((lambda (_%g118680118682%_)
                     (gx#stx-wrap-source
                      (_%K118673%_ _%stx118674%_)
                      _%g118680118682%_))
                   _%$e118678%_)
                  (_%K118673%_ _%stx118674%_)))
            (let ((_%$e118686%_
                   (bound-method-ref _%K118673%_ _%method118675%_)))
              (if _%$e118686%_
                  ((lambda (_%g118688118690%_)
                     (gx#core-apply-expander__%
                      _%g118688118690%_
                      _%stx118674%_
                      _%method118675%_))
                   _%$e118686%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx118674%_
                   _%method118675%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K118697%_ _%stx118698%_)
        (let ((_%method118700%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K118697%_
           _%stx118698%_
           _%method118700%_))))
    (define gx#core-apply-expander
      (lambda _g119882_
        (let ((_g119881_ (##length _g119882_)))
          (cond ((##fx= _g119881_ 2)
                 (apply gx#core-apply-expander__0 _g119882_))
                ((##fx= _g119881_ 3)
                 (apply gx#core-apply-expander__% _g119882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g119882_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116715118656%_ _%stx118658%_)
        (let* ((_%self118660%_ _%self116715118656%_)
               (_%self118662%_ _%self118660%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx118658%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116716118496%_ _%stx118498%_)
        (let* ((_%self118500%_ _%self116716118496%_)
               (_%self118502%_ _%self118500%_)
               (_%self118511118517%_ _%self118502%_)
               (_%E118513118521%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118511118517%_
                         '((macro-expander K)))
                  '#!void))
               (_%K118514118526%_
                (lambda (_%K118524%_)
                  (gx#core-apply-expander__0 _%K118524%_ _%stx118498%_)))
               (_%e118515118529%_
                (##unchecked-structure-ref _%self118511118517%_ '1 '#f '#f))
               (_%K118532%_ _%e118515118529%_))
          (_%K118514118526%_ _%K118532%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116717118336%_ _%stx118338%_)
        (let* ((_%self118340%_ _%self116717118336%_)
               (_%self118342%_ _%self118340%_))
          (if (gx#sealed-syntax? _%stx118338%_)
              _%stx118338%_
              (let* ((_%self118351118357%_ _%self118342%_)
                     (_%E118353118361%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self118351118357%_
                               '((core-expander K)))
                        '#!void))
                     (_%K118354118366%_
                      (lambda (_%K118364%_)
                        (gx#core-apply-expander__0 _%K118364%_ _%stx118338%_)))
                     (_%e118355118369%_
                      (##unchecked-structure-ref
                       _%self118351118357%_
                       '1
                       '#f
                       '#f))
                     (_%K118372%_ _%e118355118369%_))
                (_%K118354118366%_ _%K118372%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116718118185%_ _%stx118187%_ _%top?118188%_)
        (let* ((_%self118190%_ _%self116718118185%_)
               (_%self118192%_ _%self118190%_))
          (if (_%top?118188%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self118192%_
               _%stx118187%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx118187%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116718118205%_ _%stx118206%_)
        (let ((_%top?118208%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116718118205%_
           _%stx118206%_
           _%top?118208%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g119884_
        (let ((_g119883_ (##length _g119884_)))
          (cond ((##fx= _g119883_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g119884_))
                ((##fx= _g119883_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g119884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g119884_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116719118046%_ _%stx118048%_)
        (let* ((_%self118050%_ _%self116719118046%_)
               (_%self118052%_ _%self118050%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self118052%_
           _%stx118048%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116720117858%_ _%stx117860%_)
        (let* ((_%self117862%_ _%self116720117858%_)
               (_%self117864%_ _%self117862%_)
               (_%self117873117879%_ _%self117864%_)
               (_%E117875117883%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117873117879%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K117876117916%_
                (lambda (_%id117886%_)
                  (let* ((_%e117887117894%_ _%stx117860%_)
                         (_%E117889117898%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e117887117894%_)))
                         (_%E117888117912%_
                          (lambda ()
                            (if (gx#stx-pair? _%e117887117894%_)
                                (let ((_%e117890117902%_
                                       (gx#syntax-e _%e117887117894%_)))
                                  (let ((_%hd117891117905%_
                                         (##car _%e117890117902%_))
                                        (_%tl117892117907%_
                                         (##cdr _%e117890117902%_)))
                                    (let ((_%body117910%_ _%tl117892117907%_))
                                      (gx#core-cons
                                       _%id117886%_
                                       _%body117910%_))))
                                (_%E117889117898%_)))))
                    (_%E117888117912%_))))
               (_%e117877117919%_
                (##unchecked-structure-ref _%self117873117879%_ '1 '#f '#f))
               (_%id117922%_ _%e117877117919%_))
          (_%K117876117916%_ _%id117922%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self117684%_ _%stx117685%_ _%method117686%_)
        (let* ((_%self117687117695%_ _%self117684%_)
               (_%E117689117699%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117687117695%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K117690117706%_
                (lambda (_%phi117702%_ _%ctx117703%_ _%K117704%_)
                  (gx#core-apply-user-macro
                   _%K117704%_
                   _%stx117685%_
                   _%ctx117703%_
                   _%phi117702%_
                   _%method117686%_))))
          (if (##structure-instance-of?
               _%self117687117695%_
               'gx#user-expander::t)
              (let* ((_%e117691117709%_
                      (##unchecked-structure-ref
                       _%self117687117695%_
                       '1
                       '#f
                       '#f))
                     (_%K117712%_ _%e117691117709%_)
                     (_%e117692117714%_
                      (##unchecked-structure-ref
                       _%self117687117695%_
                       '2
                       '#f
                       '#f))
                     (_%ctx117717%_ _%e117692117714%_)
                     (_%e117693117719%_
                      (##unchecked-structure-ref
                       _%self117687117695%_
                       '3
                       '#f
                       '#f))
                     (_%phi117722%_ _%e117693117719%_))
                (_%K117690117706%_ _%phi117722%_ _%ctx117717%_ _%K117712%_))
              (_%E117689117699%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self117727%_ _%stx117728%_)
        (let ((_%method117730%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self117727%_
           _%stx117728%_
           _%method117730%_))))
    (define gx#core-apply-user-expander
      (lambda _g119886_
        (let ((_g119885_ (##length _g119886_)))
          (cond ((##fx= _g119885_ 2)
                 (apply gx#core-apply-user-expander__0 _g119886_))
                ((##fx= _g119885_ 3)
                 (apply gx#core-apply-user-expander__% _g119886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g119886_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K117674%_
               _%stx117675%_
               _%ctx117676%_
               _%phi117677%_
               _%method117678%_)
        (let ((_%mark117680%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx117676%_
                _%phi117677%_
                _%stx117675%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K117674%_
               (gx#stx-apply-mark _%stx117675%_ _%mark117680%_)
               _%method117678%_)
              _%mark117680%_))
           gx#current-expander-marks
           (cons _%mark117680%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx117522%_ _%phi117523%_ _%ctx117524%_)
        (let _%lp117526%_ ((_%bind117528%_
                            (gx#core-resolve-identifier__%
                             _%stx117522%_
                             _%phi117523%_
                             _%ctx117524%_)))
          (if (##structure-direct-instance-of?
               _%bind117528%_
               'gx#import-binding::t)
              (_%lp117526%_
               (##unchecked-structure-ref _%bind117528%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind117528%_
                   'gx#alias-binding::t)
                  (_%lp117526%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind117528%_ '4 '#f '#f)
                    _%phi117523%_
                    _%ctx117524%_))
                  _%bind117528%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx117536%_)
        (let* ((_%phi117538%_ (gx#current-expander-phi))
               (_%ctx117540%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117536%_
           _%phi117538%_
           _%ctx117540%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx117542%_ _%phi117543%_)
        (let ((_%ctx117545%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117542%_
           _%phi117543%_
           _%ctx117545%_))))
    (define gx#resolve-identifier
      (lambda _g119888_
        (let ((_g119887_ (##length _g119888_)))
          (cond ((##fx= _g119887_ 1)
                 (apply gx#resolve-identifier__0 _g119888_))
                ((##fx= _g119887_ 2)
                 (apply gx#resolve-identifier__1 _g119888_))
                ((##fx= _g119887_ 3)
                 (apply gx#resolve-identifier__% _g119888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g119888_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx117477%_
               _%val117478%_
               _%rebind?117479%_
               _%phi117480%_
               _%ctx117481%_)
        (let ((_%rebind?117486%_
               (if (not _%rebind?117479%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?117479%_)
                       _%rebind?117479%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx117477%_)
           _%val117478%_
           _%rebind?117486%_
           _%phi117480%_
           _%ctx117481%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx117491%_ _%val117492%_)
        (let* ((_%rebind?117494%_ '#f)
               (_%phi117496%_ (gx#current-expander-phi))
               (_%ctx117498%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117491%_
           _%val117492%_
           _%rebind?117494%_
           _%phi117496%_
           _%ctx117498%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx117500%_ _%val117501%_ _%rebind?117502%_)
        (let* ((_%phi117504%_ (gx#current-expander-phi))
               (_%ctx117506%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117500%_
           _%val117501%_
           _%rebind?117502%_
           _%phi117504%_
           _%ctx117506%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx117508%_ _%val117509%_ _%rebind?117510%_ _%phi117511%_)
        (let ((_%ctx117513%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117508%_
           _%val117509%_
           _%rebind?117510%_
           _%phi117511%_
           _%ctx117513%_))))
    (define gx#bind-identifier!
      (lambda _g119890_
        (let ((_g119889_ (##length _g119890_)))
          (cond ((##fx= _g119889_ 2) (apply gx#bind-identifier!__0 _g119890_))
                ((##fx= _g119889_ 3) (apply gx#bind-identifier!__1 _g119890_))
                ((##fx= _g119889_ 4) (apply gx#bind-identifier!__2 _g119890_))
                ((##fx= _g119889_ 5) (apply gx#bind-identifier!__% _g119890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g119890_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx117443%_ _%phi117444%_ _%ctx117445%_)
        (let _%lp117447%_ ((_%e117449%_ _%stx117443%_)
                           (_%marks117450%_ (gx#current-expander-marks)))
          (if (symbol? _%e117449%_)
              (gx#core-resolve-binding
               _%e117449%_
               _%phi117444%_
               _%phi117444%_
               _%ctx117445%_
               (reverse _%marks117450%_))
              (if (gx#identifier-quote? _%e117449%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e117449%_ '1 '#f '#f)
                   _%phi117444%_
                   '0
                   (##unchecked-structure-ref _%e117449%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e117449%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e117449%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e117449%_ '1 '#f '#f)
                       _%phi117444%_
                       _%phi117444%_
                       _%ctx117445%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e117449%_ '3 '#f '#f)
                        _%marks117450%_))
                      (if (##structure-direct-instance-of?
                           _%e117449%_
                           'gx#syntax-wrap::t)
                          (_%lp117447%_
                           (##unchecked-structure-ref _%e117449%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e117449%_ '3 '#f '#f)
                            _%marks117450%_))
                          (if (##structure-instance-of?
                               _%e117449%_
                               'gerbil#AST::t)
                              (_%lp117447%_
                               (##unchecked-structure-ref
                                _%e117449%_
                                '1
                                '#f
                                '#f)
                               _%marks117450%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx117443%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx117461%_)
        (let* ((_%phi117463%_ (gx#current-expander-phi))
               (_%ctx117465%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117461%_
           _%phi117463%_
           _%ctx117465%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx117467%_ _%phi117468%_)
        (let ((_%ctx117470%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117467%_
           _%phi117468%_
           _%ctx117470%_))))
    (define gx#core-resolve-identifier
      (lambda _g119892_
        (let ((_g119891_ (##length _g119892_)))
          (cond ((##fx= _g119891_ 1)
                 (apply gx#core-resolve-identifier__0 _g119892_))
                ((##fx= _g119891_ 2)
                 (apply gx#core-resolve-identifier__1 _g119892_))
                ((##fx= _g119891_ 3)
                 (apply gx#core-resolve-identifier__% _g119892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g119892_))))))
    (define gx#core-resolve-binding
      (lambda (_%id117353%_
               _%phi117354%_
               _%src-phi117355%_
               _%ctx117356%_
               _%marks117357%_)
        (letrec ((_%resolve117359%_
                  (lambda (_%ctx117427%_ _%src-phi117428%_ _%key117429%_)
                    (let _%lp117431%_ ((_%ctx117433%_
                                        (gx#core-context-shift
                                         _%ctx117427%_
                                         _%phi117354%_))
                                       (_%dphi117434%_
                                        (fx- _%phi117354%_ _%src-phi117428%_)))
                      (let ((_%$e117436%_
                             (gx#core-context-resolve
                              _%ctx117433%_
                              _%key117429%_)))
                        (if _%$e117436%_
                            _%$e117436%_
                            (if (fxzero? _%dphi117434%_)
                                '#f
                                (if (fxpositive? _%dphi117434%_)
                                    (_%lp117431%_
                                     (gx#core-context-shift _%ctx117433%_ '-1)
                                     (##fx- _%dphi117434%_ '1))
                                    (_%lp117431%_
                                     (gx#core-context-shift _%ctx117433%_ '1)
                                     (##fx+ _%dphi117434%_ '1))))))))))
          (let _%lp117361%_ ((_%ctx117363%_ _%ctx117356%_)
                             (_%src-phi117364%_ _%src-phi117355%_)
                             (_%rest117365%_ _%marks117357%_))
            (let* ((_%rest117366117374%_ _%rest117365%_)
                   (_%else117368117382%_
                    (lambda ()
                      (_%resolve117359%_
                       _%ctx117363%_
                       _%src-phi117364%_
                       _%id117353%_)))
                   (_%K117370117415%_
                    (lambda (_%rest117385%_ _%hd117386%_)
                      (let* ((_%hd117387117393%_ _%hd117386%_)
                             (_%E117389117397%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd117387117393%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K117390117407%_
                              (lambda (_%subst117400%_)
                                (let ((_%$e117404%_
                                       (let ((_%key117402%_
                                              (if _%subst117400%_
                                                  (hash-get
                                                   _%subst117400%_
                                                   _%id117353%_)
                                                  '#f)))
                                         (if _%key117402%_
                                             (_%resolve117359%_
                                              _%ctx117363%_
                                              _%src-phi117364%_
                                              _%key117402%_)
                                             '#f))))
                                  (if _%$e117404%_
                                      _%$e117404%_
                                      (_%lp117361%_
                                       (##unchecked-structure-ref
                                        _%hd117386%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd117386%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest117385%_))))))
                        (if (##structure-instance-of?
                             _%hd117387117393%_
                             'gx#expander-mark::t)
                            (let* ((_%e117391117410%_
                                    (##unchecked-structure-ref
                                     _%hd117387117393%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst117413%_ _%e117391117410%_))
                              (_%K117390117407%_ _%subst117413%_))
                            (_%E117389117397%_))))))
              (if (##pair? _%rest117366117374%_)
                  (let ((_%hd117371117418%_ (##car _%rest117366117374%_))
                        (_%tl117372117420%_ (##cdr _%rest117366117374%_)))
                    (let* ((_%hd117423%_ _%hd117371117418%_)
                           (_%rest117425%_ _%tl117372117420%_))
                      (_%K117370117415%_ _%rest117425%_ _%hd117423%_)))
                  (_%else117368117382%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key117223%_
               _%val117224%_
               _%rebind?117225%_
               _%phi117226%_
               _%ctx117227%_)
        (letrec ((_%update-binding117229%_
                  (lambda (_%xval117302%_)
                    (if (or (_%rebind?117225%_
                             _%ctx117227%_
                             _%xval117302%_
                             _%val117224%_)
                            (and (##structure-direct-instance-of?
                                  _%xval117302%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval117302%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val117224%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val117224%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval117302%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val117224%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val117224%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval117302%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val117224%_
                        (if (and (##structure-direct-instance-of?
                                  _%val117224%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val117224%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval117302%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val117224%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval117302%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval117302%_
                            (if (and (##structure-direct-instance-of?
                                      _%val117224%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval117302%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key117223%_
                                 (cons (##unchecked-structure-ref
                                        _%val117224%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val117224%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval117302%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval117302%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval117302%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval117302%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key117223%_
                                 _%val117224%_
                                 _%xval117302%_))))))
                 (_%gensubst117230%_
                  (lambda (_%subst117297%_ _%id117298%_)
                    (let ((_%eid117300%_
                           (gensym (if (uninterned-symbol? _%id117298%_)
                                       '%
                                       _%id117298%_))))
                      (hash-put! _%subst117297%_ _%id117298%_ _%eid117300%_)
                      _%eid117300%_)))
                 (_%subst!117231%_
                  (lambda (_%key117233%_)
                    (let* ((_%key117234117242%_ _%key117233%_)
                           (_%else117236117250%_ (lambda () _%key117233%_))
                           (_%K117238117285%_
                            (lambda (_%mark117253%_ _%id117254%_)
                              (let* ((_%mark117255117261%_ _%mark117253%_)
                                     (_%E117257117265%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark117255117261%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K117258117277%_
                                      (lambda (_%subst117268%_)
                                        (if (not _%subst117268%_)
                                            (let ((_%subst117271%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark117253%_
                                               _%subst117271%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst117230%_
                                               _%subst117271%_
                                               _%id117254%_))
                                            (let ((_%$e117273%_
                                                   (hash-get
                                                    _%subst117268%_
                                                    _%id117254%_)))
                                              (if _%$e117273%_
                                                  _%$e117273%_
                                                  (_%gensubst117230%_
                                                   _%subst117268%_
                                                   _%id117254%_)))))))
                                (if (##structure-instance-of?
                                     _%mark117255117261%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e117259117280%_
                                            (##unchecked-structure-ref
                                             _%mark117255117261%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst117283%_ _%e117259117280%_))
                                      (_%K117258117277%_ _%subst117283%_))
                                    (_%E117257117265%_))))))
                      (if (##pair? _%key117234117242%_)
                          (let ((_%hd117239117288%_
                                 (##car _%key117234117242%_))
                                (_%tl117240117290%_
                                 (##cdr _%key117234117242%_)))
                            (let* ((_%id117293%_ _%hd117239117288%_)
                                   (_%mark117295%_ _%tl117240117290%_))
                              (_%K117238117285%_ _%mark117295%_ _%id117293%_)))
                          (_%else117236117250%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx117227%_ _%phi117226%_)
           (_%subst!117231%_ _%key117223%_)
           _%val117224%_
           _%update-binding117229%_))))
    (define gx#core-bind!__0
      (lambda (_%key117323%_ _%val117324%_)
        (let* ((_%rebind?117326%_ false)
               (_%phi117328%_ (gx#current-expander-phi))
               (_%ctx117330%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117323%_
           _%val117324%_
           _%rebind?117326%_
           _%phi117328%_
           _%ctx117330%_))))
    (define gx#core-bind!__1
      (lambda (_%key117332%_ _%val117333%_ _%rebind?117334%_)
        (let* ((_%phi117336%_ (gx#current-expander-phi))
               (_%ctx117338%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117332%_
           _%val117333%_
           _%rebind?117334%_
           _%phi117336%_
           _%ctx117338%_))))
    (define gx#core-bind!__2
      (lambda (_%key117340%_ _%val117341%_ _%rebind?117342%_ _%phi117343%_)
        (let ((_%ctx117345%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117340%_
           _%val117341%_
           _%rebind?117342%_
           _%phi117343%_
           _%ctx117345%_))))
    (define gx#core-bind!
      (lambda _g119894_
        (let ((_g119893_ (##length _g119894_)))
          (cond ((##fx= _g119893_ 2) (apply gx#core-bind!__0 _g119894_))
                ((##fx= _g119893_ 3) (apply gx#core-bind!__1 _g119894_))
                ((##fx= _g119893_ 4) (apply gx#core-bind!__2 _g119894_))
                ((##fx= _g119893_ 5) (apply gx#core-bind!__% _g119894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g119894_))))))
    (define gx#core-identifier-key
      (lambda (_%stx117154%_)
        (if (symbol? _%stx117154%_)
            (let* ((_%g117156117164%_ (gx#current-expander-marks))
                   (_%else117158117172%_ (lambda () _%stx117154%_))
                   (_%K117160117177%_
                    (lambda (_%hd117175%_) (cons _%stx117154%_ _%hd117175%_))))
              (if (##pair? _%g117156117164%_)
                  (let* ((_%hd117161117180%_ (##car _%g117156117164%_))
                         (_%hd117183%_ _%hd117161117180%_))
                    (_%K117160117177%_ _%hd117183%_))
                  (_%else117158117172%_)))
            (if (gx#identifier? _%stx117154%_)
                (let* ((_%id117186%_ (gx#syntax-local-unwrap _%stx117154%_))
                       (_%eid117188%_ (gx#stx-e _%id117186%_))
                       (_%marks117190%_
                        (gx#stx-identifier-marks* _%id117186%_))
                       (_%marks117192117200%_ _%marks117190%_)
                       (_%else117194117208%_ (lambda () _%eid117188%_))
                       (_%K117196117213%_
                        (lambda (_%hd117211%_)
                          (cons _%eid117188%_ _%hd117211%_))))
                  (if (##pair? _%marks117192117200%_)
                      (let* ((_%hd117197117216%_ (##car _%marks117192117200%_))
                             (_%hd117219%_ _%hd117197117216%_))
                        (_%K117196117213%_ _%hd117219%_))
                      (_%else117194117208%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx117154%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx117093%_ _%phi117094%_)
        (letrec ((_%make-phi117096%_
                  (lambda (_%super117152%_)
                    (let ((__obj119866
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj119866
                       (##gensym 'phi)
                       _%super117152%_)
                      __obj119866)))
                 (_%make-phi/up117097%_
                  (lambda (_%ctx117147%_ _%super117148%_)
                    (let ((_%ctx+1117150%_
                           (_%make-phi117096%_ _%super117148%_)))
                      (##unchecked-structure-set!
                       _%ctx117147%_
                       _%ctx+1117150%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1117150%_
                       _%ctx117147%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1117150%_)))
                 (_%make-phi/down117098%_
                  (lambda (_%ctx117142%_ _%super117143%_)
                    (let ((_%ctx-1117145%_
                           (_%make-phi117096%_ _%super117143%_)))
                      (##unchecked-structure-set!
                       _%ctx-1117145%_
                       _%ctx117142%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx117142%_
                       _%ctx-1117145%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1117145%_)))
                 (_%shift117099%_
                  (lambda (_%ctx117125%_
                           _%delta117126%_
                           _%make-delta-context117127%_
                           _%phi117128%_
                           _%K117129%_)
                    (let ((_%$e117131%_
                           (##unchecked-structure-ref
                            _%ctx117125%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e117131%_
                          ((lambda (_%super117134%_)
                             (let* ((_%super117136%_
                                     (_%K117129%_
                                      _%super117134%_
                                      _%delta117126%_))
                                    (_%ctx+d117138%_
                                     (_%make-delta-context117127%_
                                      _%ctx117125%_
                                      _%super117136%_)))
                               (_%K117129%_
                                _%ctx+d117138%_
                                (fx- _%phi117128%_ _%delta117126%_))))
                           _%$e117131%_)
                          (error '"Bad context" _%ctx117125%_))))))
          (let _%K117101%_ ((_%ctx117103%_ _%ctx117093%_)
                            (_%phi117104%_ _%phi117094%_))
            (if (fxzero? _%phi117104%_)
                _%ctx117103%_
                (if (##structure-instance-of? _%ctx117103%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi117104%_)
                        (let ((_%$e117108%_
                               (##unchecked-structure-ref
                                _%ctx117103%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e117108%_
                              ((lambda (_%g117110117112%_)
                                 (_%K117101%_
                                  _%g117110117112%_
                                  (##fx- _%phi117104%_ '1)))
                               _%$e117108%_)
                              (_%shift117099%_
                               _%ctx117103%_
                               '1
                               _%make-phi/up117097%_
                               _%phi117104%_
                               _%K117101%_)))
                        (let ((_%$e117116%_
                               (##unchecked-structure-ref
                                _%ctx117103%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e117116%_
                              ((lambda (_%g117118117120%_)
                                 (_%K117101%_
                                  _%g117118117120%_
                                  (##fx+ _%phi117104%_ '1)))
                               _%$e117116%_)
                              (_%shift117099%_
                               _%ctx117103%_
                               '-1
                               _%make-phi/down117098%_
                               _%phi117104%_
                               _%K117101%_))))
                    _%ctx117103%_))))))
    (define gx#core-context-get
      (lambda (_%ctx117090%_ _%key117091%_)
        (hash-get
         (##unchecked-structure-ref _%ctx117090%_ '2 '#f '#f)
         _%key117091%_)))
    (define gx#core-context-put!
      (lambda (_%ctx117086%_ _%key117087%_ _%val117088%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx117086%_ '2 '#f '#f)
         _%key117087%_
         _%val117088%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx117072%_ _%key117073%_)
        (let _%lp117075%_ ((_%ctx117077%_ _%ctx117072%_))
          (let ((_%$e117079%_
                 (gx#core-context-get _%ctx117077%_ _%key117073%_)))
            (if _%$e117079%_
                _%$e117079%_
                (let ((_%$e117082%_
                       (if (##structure-instance-of?
                            _%ctx117077%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx117077%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e117082%_ (_%lp117075%_ _%$e117082%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx117061%_ _%key117062%_ _%val117063%_ _%rebind117064%_)
        (let ((_%$e117066%_ (gx#core-context-get _%ctx117061%_ _%key117062%_)))
          (if _%$e117066%_
              ((lambda (_%xval117069%_)
                 (gx#core-context-put!
                  _%ctx117061%_
                  _%key117062%_
                  (_%rebind117064%_ _%xval117069%_)))
               _%$e117066%_)
              (gx#core-context-put!
               _%ctx117061%_
               _%key117062%_
               _%val117063%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx117036%_ _%stop?117037%_)
        (let _%lp117039%_ ((_%ctx117041%_ _%ctx117036%_))
          (if (_%stop?117037%_ _%ctx117041%_)
              _%ctx117041%_
              (if (##structure-instance-of? _%ctx117041%_ 'gx#phi-context::t)
                  (_%lp117039%_
                   (##unchecked-structure-ref _%ctx117041%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx117050%_ (gx#current-expander-context))
               (_%stop?117052%_ gx#top-context?))
          (gx#core-context-top__% _%ctx117050%_ _%stop?117052%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx117054%_)
        (let ((_%stop?117056%_ gx#top-context?))
          (gx#core-context-top__% _%ctx117054%_ _%stop?117056%_))))
    (define gx#core-context-top
      (lambda _g119896_
        (let ((_g119895_ (##length _g119896_)))
          (cond ((##fx= _g119895_ 0) (apply gx#core-context-top__0 _g119896_))
                ((##fx= _g119895_ 1) (apply gx#core-context-top__1 _g119896_))
                ((##fx= _g119895_ 2) (apply gx#core-context-top__% _g119896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g119896_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx117021%_)
        (let _%lp117023%_ ((_%ctx117025%_ _%ctx117021%_))
          (if (##structure-instance-of? _%ctx117025%_ 'gx#phi-context::t)
              (_%lp117023%_
               (##unchecked-structure-ref _%ctx117025%_ '3 '#f '#f))
              _%ctx117025%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx117031%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx117031%_))))
    (define gx#core-context-root
      (lambda _g119898_
        (let ((_g119897_ (##length _g119898_)))
          (cond ((##fx= _g119897_ 0) (apply gx#core-context-root__0 _g119898_))
                ((##fx= _g119897_ 1) (apply gx#core-context-root__% _g119898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g119898_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx117003%_ . _%ignore117004%_)
        (let ((_%$e117006%_ (gx#current-expander-allow-rebind?)))
          (if _%$e117006%_
              _%$e117006%_
              (if (##structure-instance-of? _%ctx117003%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx117003%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx117003%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx117013%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx117013%_))))
    (define gx#core-context-rebind?
      (lambda _g119900_
        (let ((_g119899_ (##length _g119900_)))
          (cond ((##fx= _g119899_ 0)
                 (apply gx#core-context-rebind?__0 _g119900_))
                ((##fx= _g119899_ 1)
                 (apply gx#core-context-rebind?__% _g119900_))
                ((##fx>= _g119899_ 1)
                 (apply gx#core-context-rebind?__% _g119900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g119900_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx116986%_)
        (let ((_%$e116988%_ (gx#core-context-top__1 _%ctx116986%_)))
          (if _%$e116988%_
              ((lambda (_%ctx116991%_)
                 (if (##structure-instance-of?
                      _%ctx116991%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx116991%_ '6 '#f '#f)
                     '#f))
               _%$e116988%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx116998%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx116998%_))))
    (define gx#core-context-namespace
      (lambda _g119902_
        (let ((_g119901_ (##length _g119902_)))
          (cond ((##fx= _g119901_ 0)
                 (apply gx#core-context-namespace__0 _g119902_))
                ((##fx= _g119901_ 1)
                 (apply gx#core-context-namespace__% _g119902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g119902_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind116972%_ _%is?116973%_)
        (if (##structure-direct-instance-of?
             _%bind116972%_
             'gx#syntax-binding::t)
            (_%is?116973%_
             (##unchecked-structure-ref _%bind116972%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind116978%_)
        (let ((_%is?116980%_ gx#expander?))
          (gx#expander-binding?__% _%bind116978%_ _%is?116980%_))))
    (define gx#expander-binding?
      (lambda _g119904_
        (let ((_g119903_ (##length _g119904_)))
          (cond ((##fx= _g119903_ 1) (apply gx#expander-binding?__0 _g119904_))
                ((##fx= _g119903_ 2) (apply gx#expander-binding?__% _g119904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g119904_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind116969%_)
        (gx#expander-binding?__% _%bind116969%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind116967%_)
        (gx#expander-binding?__% _%bind116967%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind116961%_)
        (letrec ((_%direct-special-form?116963%_
                  (lambda (_%obj116965%_)
                    (##structure-direct-instance-of?
                     _%obj116965%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind116961%_
           _%direct-special-form?116963%_))))
    (define gx#special-form-binding?
      (lambda (_%bind116959%_)
        (gx#expander-binding?__% _%bind116959%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind116950%_)
        (letrec ((_%feature?116952%_
                  (lambda (_%e116954%_)
                    (let ((_%$e116956%_
                           (##structure-instance-of?
                            _%e116954%_
                            'gx#feature-expander::t)))
                      (if _%$e116956%_
                          _%$e116956%_
                          (##structure-instance-of?
                           _%e116954%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind116950%_ _%feature?116952%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind116948%_)
        (gx#expander-binding?__% _%bind116948%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id116935%_ _%bound?116936%_)
        (if (gx#identifier? _%id116935%_)
            (_%bound?116936%_ (gx#resolve-identifier__0 _%id116935%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id116941%_)
        (let ((_%bound?116943%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id116941%_ _%bound?116943%_))))
    (define gx#core-bound-identifier?
      (lambda _g119906_
        (let ((_g119905_ (##length _g119906_)))
          (cond ((##fx= _g119905_ 1)
                 (apply gx#core-bound-identifier?__0 _g119906_))
                ((##fx= _g119905_ 2)
                 (apply gx#core-bound-identifier?__% _g119906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g119906_))))))
    (define gx#core-identifier=?
      (lambda (_%x116925%_ _%y116926%_)
        (letrec ((_%y=?116928%_
                  (lambda (_%xid116932%_)
                    ((if (list? _%y116926%_) memq eq?)
                     _%xid116932%_
                     _%y116926%_))))
          (let ((_%bind116930%_ (gx#resolve-identifier__0 _%x116925%_)))
            (if (##structure-instance-of? _%bind116930%_ 'gx#binding::t)
                (_%y=?116928%_
                 (##unchecked-structure-ref _%bind116930%_ '1 '#f '#f))
                (_%y=?116928%_ (gx#stx-e _%x116925%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e116923%_)
        (if (interned-symbol? _%e116923%_)
            (string-index__0 (symbol->string _%e116923%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx116876%_ _%src116877%_ _%ctx116878%_ _%marks116879%_)
        (if (##structure? _%stx116876%_)
            (let ((_%$e116881%_ (gx#sealed-syntax-unwrap _%stx116876%_)))
              (if _%$e116881%_
                  _%$e116881%_
                  (if (gx#identifier? _%stx116876%_)
                      (let ((_%id116885%_
                             (gx#stx-unwrap__% _%stx116876%_ _%marks116879%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id116885%_ '1 '#f '#f)
                         (let ((_%$e116887%_
                                (##unchecked-structure-ref
                                 _%id116885%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e116887%_ _%$e116887%_ _%src116877%_))
                         _%ctx116878%_
                         (##unchecked-structure-ref _%id116885%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx116876%_)
                       (let ((_%$e116891%_ (gx#stx-source _%stx116876%_)))
                         (if _%$e116891%_ _%$e116891%_ _%src116877%_))
                       _%ctx116878%_
                       (reverse _%marks116879%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx116876%_
             _%src116877%_
             _%ctx116878%_
             (reverse _%marks116879%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx116897%_)
        (let* ((_%src116899%_ '#f)
               (_%ctx116901%_ (gx#current-expander-context))
               (_%marks116903%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116897%_
           _%src116899%_
           _%ctx116901%_
           _%marks116903%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx116905%_ _%src116906%_)
        (let* ((_%ctx116908%_ (gx#current-expander-context))
               (_%marks116910%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116905%_
           _%src116906%_
           _%ctx116908%_
           _%marks116910%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx116912%_ _%src116913%_ _%ctx116914%_)
        (let ((_%marks116916%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116912%_
           _%src116913%_
           _%ctx116914%_
           _%marks116916%_))))
    (define gx#core-quote-syntax
      (lambda _g119908_
        (let ((_g119907_ (##length _g119908_)))
          (cond ((##fx= _g119907_ 1) (apply gx#core-quote-syntax__0 _g119908_))
                ((##fx= _g119907_ 2) (apply gx#core-quote-syntax__1 _g119908_))
                ((##fx= _g119907_ 3) (apply gx#core-quote-syntax__2 _g119908_))
                ((##fx= _g119907_ 4) (apply gx#core-quote-syntax__% _g119908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g119908_))))))
    (define gx#core-cons
      (lambda (_%hd116872%_ _%tl116873%_)
        (cons (gx#core-quote-syntax__0 _%hd116872%_) _%tl116873%_)))
    (define gx#core-list
      (lambda (_%hd116869%_ . _%rest116870%_)
        (cons (gx#core-quote-syntax__0 _%hd116869%_) _%rest116870%_)))
    (define gx#core-cons*
      (lambda (_%hd116866%_ . _%rest116867%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd116866%_) _%rest116867%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path116835%_ _%rel116836%_)
        (let ((_%path116853%_ (gx#stx-e _%stx-path116835%_))
              (_%reldir116854%_
               (let _%lp116838%_ ((_%relsrc116840%_
                                   (let ((_%$e116850%_
                                          (gx#stx-source _%stx-path116835%_)))
                                     (if _%$e116850%_
                                         _%$e116850%_
                                         _%rel116836%_))))
                 (if (##structure-instance-of? _%relsrc116840%_ 'gerbil#AST::t)
                     (_%lp116838%_
                      (let ((_%$e116843%_ (gx#stx-source _%relsrc116840%_)))
                        (if _%$e116843%_
                            _%$e116843%_
                            (gx#stx-e _%relsrc116840%_))))
                     (if (source-location-path? _%relsrc116840%_)
                         (path-directory
                          (source-location-path _%relsrc116840%_))
                         (if (string? _%relsrc116840%_)
                             (path-directory _%relsrc116840%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path116853%_ (path-normalize _%reldir116854%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path116859%_)
        (let ((_%rel116861%_ '#f))
          (gx#core-resolve-path__% _%stx-path116859%_ _%rel116861%_))))
    (define gx#core-resolve-path
      (lambda _g119910_
        (let ((_g119909_ (##length _g119910_)))
          (cond ((##fx= _g119909_ 1) (apply gx#core-resolve-path__0 _g119910_))
                ((##fx= _g119909_ 2) (apply gx#core-resolve-path__% _g119910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g119910_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr116791%_ _%ctx116792%_)
        (let* ((_%repr116793116800%_ _%repr116791%_)
               (_%E116795116804%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr116793116800%_
                         '([phi . subs]))
                  '#!void))
               (_%K116796116812%_
                (lambda (_%subs116807%_ _%phi116808%_)
                  (let ((_%subst116810%_
                         (if (null? _%subs116807%_)
                             '#f
                             (list->hash-table-eq _%subs116807%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst116810%_
                     _%ctx116792%_
                     _%phi116808%_
                     '#f)))))
          (if (##pair? _%repr116793116800%_)
              (let ((_%hd116797116815%_ (##car _%repr116793116800%_))
                    (_%tl116798116817%_ (##cdr _%repr116793116800%_)))
                (let* ((_%phi116820%_ _%hd116797116815%_)
                       (_%subs116822%_ _%tl116798116817%_))
                  (_%K116796116812%_ _%subs116822%_ _%phi116820%_)))
              (_%E116795116804%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr116827%_)
        (let ((_%ctx116829%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr116827%_ _%ctx116829%_))))
    (define gx#core-deserialize-mark
      (lambda _g119912_
        (let ((_g119911_ (##length _g119912_)))
          (cond ((##fx= _g119911_ 1)
                 (apply gx#core-deserialize-mark__0 _g119912_))
                ((##fx= _g119911_ 2)
                 (apply gx#core-deserialize-mark__% _g119912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g119912_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx116788%_)
        (gx#stx-rewrap _%stx116788%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx116786%_)
        (gx#stx-unwrap__% _%stx116786%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx116756%_)
        (let* ((_%g116757116765%_ (gx#current-expander-marks))
               (_%else116759116773%_ (lambda () _%stx116756%_))
               (_%K116761116778%_
                (lambda (_%hd116776%_)
                  (gx#stx-apply-mark _%stx116756%_ _%hd116776%_))))
          (if (##pair? _%g116757116765%_)
              (let* ((_%hd116762116781%_ (##car _%g116757116765%_))
                     (_%hd116784%_ _%hd116762116781%_))
                (_%K116761116778%_ _%hd116784%_))
              (_%else116759116773%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx116741%_ _%E116742%_)
        (let ((_%bind116744%_ (gx#resolve-identifier__0 _%stx116741%_)))
          (if (##structure-direct-instance-of?
               _%bind116744%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind116744%_ '4 '#f '#f)
              (_%E116742%_ _%stx116741%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx116749%_)
        (let ((_%E116751%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx116749%_ _%E116751%_))))
    (define gx#syntax-local-e
      (lambda _g119914_
        (let ((_g119913_ (##length _g119914_)))
          (cond ((##fx= _g119913_ 1) (apply gx#syntax-local-e__0 _g119914_))
                ((##fx= _g119913_ 2) (apply gx#syntax-local-e__% _g119914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g119914_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx116725%_ _%E116726%_)
        (let ((_%e116728%_ (gx#syntax-local-e__% _%stx116725%_ _%E116726%_)))
          (if (##structure-instance-of? _%e116728%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e116728%_ '1 '#f '#f)
              _%e116728%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx116733%_)
        (let ((_%E116735%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx116733%_ _%E116735%_))))
    (define gx#syntax-local-value
      (lambda _g119916_
        (let ((_g119915_ (##length _g119916_)))
          (cond ((##fx= _g119915_ 1)
                 (apply gx#syntax-local-value__0 _g119916_))
                ((##fx= _g119915_ 2)
                 (apply gx#syntax-local-value__% _g119916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g119916_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx116722%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx116722%_)))))
