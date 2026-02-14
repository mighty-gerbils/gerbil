(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1771092628)
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
      (lambda _%$args177716%_
        (apply make-instance gx#expander-context::t _%$args177716%_)))
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
      (lambda _%$args177713%_
        (apply make-instance gx#root-context::t _%$args177713%_)))
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
      (lambda _%$args177710%_
        (apply make-instance gx#phi-context::t _%$args177710%_)))
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
      (lambda _%$args177707%_
        (apply make-instance gx#top-context::t _%$args177707%_)))
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
      (lambda _%$args177704%_
        (apply make-instance gx#module-context::t _%$args177704%_)))
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
      (lambda _%$args177701%_
        (apply make-instance gx#prelude-context::t _%$args177701%_)))
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
      (lambda _%$args177698%_
        (apply make-instance gx#local-context::t _%$args177698%_)))
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
      (lambda (_%self177671%_ _%id177672%_ _%super177673%_)
        (let ((_%self177676%_ _%self177671%_))
          (if (##fx< '3 (##structure-length _%self177676%_))
              (begin
                (##unchecked-structure-set!
                 _%self177676%_
                 _%id177672%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177676%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177676%_
                 _%super177673%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self177676%_
                     '3
                     (##structure-length _%self177676%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self177689%_ _%id177690%_)
        (let ((_%super177692%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self177689%_
           _%id177690%_
           _%super177692%_))))
    (define gx#phi-context:::init!
      (lambda _g177758_
        (let ((_g177759_ (##length _g177758_)))
          (cond ((##fx= _g177759_ 2)
                 (apply gx#phi-context:::init!__0 _g177758_))
                ((##fx= _g177759_ 3)
                 (apply gx#phi-context:::init!__% _g177758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g177758_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self177524%_ _%super177525%_)
        (let ((_%self177528%_ _%self177524%_))
          (if (##fx< '3 (##structure-length _%self177528%_))
              (begin
                (##unchecked-structure-set!
                 _%self177528%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177528%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177528%_
                 _%super177525%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self177528%_
                     '3
                     (##structure-length _%self177528%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self177541%_)
        (let ((_%super177543%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self177541%_ _%super177543%_))))
    (define gx#local-context:::init!
      (lambda _g177760_
        (let ((_g177761_ (##length _g177760_)))
          (cond ((##fx= _g177761_ 1)
                 (apply gx#local-context:::init!__0 _g177760_))
                ((##fx= _g177761_ 2)
                 (apply gx#local-context:::init!__% _g177760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g177760_))))))
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
      (lambda _%$args177398%_
        (apply make-instance gx#binding::t _%$args177398%_)))
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
      (lambda (_%self177381%_ _%id177382%_ _%key177383%_ _%phi177384%_)
        (let ((_%self177387%_ _%self177381%_))
          (##unchecked-structure-set! _%self177387%_ _%id177382%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self177387%_ _%key177383%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self177387%_
           _%phi177384%_
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
      (lambda _%$args177256%_
        (apply make-instance gx#runtime-binding::t _%$args177256%_)))
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
      (lambda _%$args177253%_
        (apply make-instance gx#local-binding::t _%$args177253%_)))
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
      (lambda _%$args177250%_
        (apply make-instance gx#top-binding::t _%$args177250%_)))
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
      (lambda _%$args177247%_
        (apply make-instance gx#module-binding::t _%$args177247%_)))
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
      (lambda _%$args177244%_
        (apply make-instance gx#extern-binding::t _%$args177244%_)))
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
      (lambda (_%self176860%_
               _%id176861%_
               _%key176862%_
               _%phi176863%_
               _%ctx176864%_)
        (let ((_%self176867%_ _%self176860%_))
          (gx#binding:::init!
           _%self176867%_
           _%id176861%_
           _%key176862%_
           _%phi176863%_)
          (##unchecked-structure-set!
           _%self176867%_
           _%ctx176864%_
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
      (lambda _%$args176613%_
        (apply make-instance gx#syntax-binding::t _%$args176613%_)))
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
      (lambda _%$args176610%_
        (apply make-instance gx#import-binding::t _%$args176610%_)))
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
      (lambda _%$args176607%_
        (apply make-instance gx#alias-binding::t _%$args176607%_)))
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
      (lambda (_%self176589%_
               _%id176590%_
               _%key176591%_
               _%phi176592%_
               _%e176593%_)
        (let ((_%self176596%_ _%self176589%_))
          (gx#binding:::init!
           _%self176596%_
           _%id176590%_
           _%key176591%_
           _%phi176592%_)
          (##unchecked-structure-set! _%self176596%_ _%e176593%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self176447%_
               _%id176448%_
               _%key176449%_
               _%phi176450%_
               _%e176451%_
               _%ctx176452%_
               _%weak?176453%_)
        (let ((_%self176456%_ _%self176447%_))
          (gx#binding:::init!
           _%self176456%_
           _%id176448%_
           _%key176449%_
           _%phi176450%_)
          (##unchecked-structure-set! _%self176456%_ _%e176451%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self176456%_ _%ctx176452%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self176456%_
           _%weak?176453%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self176307%_
               _%id176308%_
               _%key176309%_
               _%phi176310%_
               _%e176311%_)
        (let ((_%self176314%_ _%self176307%_))
          (gx#binding:::init!
           _%self176314%_
           _%id176308%_
           _%key176309%_
           _%phi176310%_)
          (##unchecked-structure-set! _%self176314%_ _%e176311%_ '5 '#f '#f))))
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
      (lambda _%$args176182%_
        (apply make-instance gx#expander::t _%$args176182%_)))
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
      (lambda _%$args176179%_
        (apply make-instance gx#core-expander::t _%$args176179%_)))
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
      (lambda _%$args176176%_
        (apply make-instance gx#expression-form::t _%$args176176%_)))
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
      (lambda _%$args176173%_
        (apply make-instance gx#special-form::t _%$args176173%_)))
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
      (lambda _%$args176170%_
        (apply make-instance gx#definition-form::t _%$args176170%_)))
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
      (lambda _%$args176167%_
        (apply make-instance gx#top-special-form::t _%$args176167%_)))
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
      (lambda _%$args176164%_
        (apply make-instance gx#module-special-form::t _%$args176164%_)))
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
      (lambda _%$args176161%_
        (apply make-instance gx#feature-expander::t _%$args176161%_)))
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
      (lambda _%$args176158%_
        (apply make-instance gx#private-feature-expander::t _%$args176158%_)))
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
      (lambda _%$args176155%_
        (apply make-instance gx#reserved-expander::t _%$args176155%_)))
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
      (lambda _%$args176152%_
        (apply make-instance gx#macro-expander::t _%$args176152%_)))
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
      (lambda _%$args176149%_
        (apply make-instance gx#rename-macro-expander::t _%$args176149%_)))
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
      (lambda _%$args176146%_
        (apply make-instance gx#user-expander::t _%$args176146%_)))
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
      (lambda _%$args176143%_
        (apply make-instance gx#expander-mark::t _%$args176143%_)))
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
      (lambda (_%ctx176127%_
               _%message176128%_
               _%stx176129%_
               .
               _%details176130%_)
        (let ((_%ctx176141%_
               (let ((_%$e176132%_ _%ctx176127%_))
                 (if _%$e176132%_
                     _%$e176132%_
                     (let ((_%$e176135%_ (gx#core-context-top__0)))
                       (if _%$e176135%_
                           ((lambda (_%ctx176138%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx176138%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e176135%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message176128%_
                  (cons _%stx176129%_ _%details176130%_)
                  _%ctx176141%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx176114%_ _%expression?176115%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx176114%_ _%expression?176115%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx176120%_)
        (let ((_%expression?176122%_ '#f))
          (gx#eval-syntax__% _%stx176120%_ _%expression?176122%_))))
    (define gx#eval-syntax
      (lambda _g177762_
        (let ((_g177763_ (##length _g177762_)))
          (cond ((##fx= _g177763_ 1) (apply gx#eval-syntax__0 _g177762_))
                ((##fx= _g177763_ 2) (apply gx#eval-syntax__% _g177762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g177762_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx176099%_ _%expression?176100%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx176099%_ _%expression?176100%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx176106%_)
        (let ((_%expression?176108%_ '#f))
          (gx#eval-syntax+1__% _%stx176106%_ _%expression?176108%_))))
    (define gx#eval-syntax+1
      (lambda _g177764_
        (let ((_g177765_ (##length _g177764_)))
          (cond ((##fx= _g177765_ 1) (apply gx#eval-syntax+1__0 _g177764_))
                ((##fx= _g177765_ 2) (apply gx#eval-syntax+1__% _g177764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g177764_))))))
    (define gx#eval-expression+1
      (lambda (_%stx176096%_) (gx#eval-syntax+1__% _%stx176096%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx176094%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx176094%_))))
    (define gx#core-expand__%
      (lambda (_%stx176081%_ _%expression?176082%_)
        (if _%expression?176082%_
            (gx#core-expand-expression _%stx176081%_)
            (gx#core-expand-top _%stx176081%_))))
    (define gx#core-expand__0
      (lambda (_%stx176087%_)
        (let ((_%expression?176089%_ '#f))
          (gx#core-expand__% _%stx176087%_ _%expression?176089%_))))
    (define gx#core-expand
      (lambda _g177766_
        (let ((_g177767_ (##length _g177766_)))
          (cond ((##fx= _g177767_ 1) (apply gx#core-expand__0 _g177766_))
                ((##fx= _g177767_ 2) (apply gx#core-expand__% _g177766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g177766_))))))
    (define gx#core-expand-top
      (lambda (_%stx176048%_)
        (let* ((_%stx176050%_ (gx#core-expand*__0 _%stx176048%_))
               (_%e176051176058%_ _%stx176050%_)
               (_%E176053176062%_
                (lambda () (gx#core-expand-expression _%stx176050%_)))
               (_%E176052176076%_
                (lambda ()
                  (if (gx#stx-pair? _%e176051176058%_)
                      (let ((_%e176054176066%_
                             (gx#syntax-e _%e176051176058%_)))
                        (let ((_%hd176055176069%_ (##car _%e176054176066%_))
                              (_%tl176056176071%_ (##cdr _%e176054176066%_)))
                          (let ((_%form176074%_ _%hd176055176069%_))
                            (if (gx#core-bound-identifier?__0 _%form176074%_)
                                _%stx176050%_
                                (_%E176053176062%_)))))
                      (_%E176053176062%_)))))
          (_%E176052176076%_))))
    (define gx#core-expand-expression
      (lambda (_%stx175980%_)
        (letrec ((_%sealed-expression?175982%_
                  (lambda (_%hd176018%_)
                    (if (gx#sealed-syntax? _%hd176018%_)
                        (let* ((_%e176019176026%_ _%hd176018%_)
                               (_%E176021176030%_ (lambda () '#f))
                               (_%E176020176044%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e176019176026%_)
                                      (let ((_%e176022176034%_
                                             (gx#syntax-e _%e176019176026%_)))
                                        (let ((_%hd176023176037%_
                                               (##car _%e176022176034%_))
                                              (_%tl176024176039%_
                                               (##cdr _%e176022176034%_)))
                                          (let ((_%form176042%_
                                                 _%hd176023176037%_))
                                            (gx#core-bound-identifier?__%
                                             _%form176042%_
                                             gx#expression-form-binding?))))
                                      (_%E176021176030%_)))))
                          (_%E176020176044%_))
                        '#f)))
                 (_%illegal-expression175983%_
                  (lambda (_%hd176015%_ . _%_176016%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx175980%_
                     _%hd176015%_)))
                 (_%expand-e175984%_
                  (lambda (_%form176007%_ _%hd176008%_)
                    (let ((_%bind176010%_
                           (if (##structure-instance-of?
                                _%form176007%_
                                'gx#binding::t)
                               _%form176007%_
                               (gx#resolve-identifier__0 _%form176007%_))))
                      (if (gx#core-expander-binding? _%bind176010%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind176010%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd176008%_
                            (gx#stx-source _%stx175980%_)))
                          (if (##structure-direct-instance-of?
                               _%bind176010%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind176010%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd176008%_
                                 (gx#stx-source _%stx175980%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx175980%_
                               _%form176007%_)))))))
          (let ((_%hd175986%_ (gx#core-expand-head _%stx175980%_)))
            (if (_%sealed-expression?175982%_ _%hd175986%_)
                _%hd175986%_
                (if (gx#stx-pair? _%hd175986%_)
                    (let* ((_%form175990%_ (gx#stx-car _%hd175986%_))
                           (_%bind175992%_
                            (if (gx#identifier? _%form175990%_)
                                (gx#resolve-identifier__0 _%form175990%_)
                                '#f)))
                      (if (or (not _%bind175992%_)
                              (not (gx#core-expander-binding? _%bind175992%_)))
                          (_%expand-e175984%_
                           '%%app
                           (cons '%%app _%hd175986%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind175992%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd175986%_
                               _%illegal-expression175983%_)
                              (if (gx#expression-form-binding? _%bind175992%_)
                                  (_%expand-e175984%_
                                   _%bind175992%_
                                   _%hd175986%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind175992%_)
                                      (gx#core-expand-expression
                                       (_%expand-e175984%_
                                        _%bind175992%_
                                        _%hd175986%_))
                                      (_%illegal-expression175983%_
                                       _%hd175986%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd175986%_)
                        (_%illegal-expression175983%_ _%hd175986%_)
                        (if (gx#identifier? _%hd175986%_)
                            (_%expand-e175984%_
                             '%%ref
                             (cons '%%ref (cons _%hd175986%_ '())))
                            (if (gx#stx-datum? _%hd175986%_)
                                (_%expand-e175984%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd175986%_ '())))
                                (_%illegal-expression175983%_
                                 _%hd175986%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx175975%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx175978%_ (gx#core-expand-expression _%stx175975%_)))
             (values _%stx175978%_ (gx#eval-syntax* _%stx175978%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx175956%_ _%stop?175957%_)
        (let _%lp175959%_ ((_%stx175961%_ _%stx175956%_))
          (if (_%stop?175957%_ _%stx175961%_)
              _%stx175961%_
              (let ((_%rstx175963%_ (gx#core-expand1 _%stx175961%_)))
                (if (eq? _%stx175961%_ _%rstx175963%_)
                    _%stx175961%_
                    (_%lp175959%_ _%rstx175963%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx175968%_)
        (let ((_%stop?175970%_ false))
          (gx#core-expand*__% _%stx175968%_ _%stop?175970%_))))
    (define gx#core-expand*
      (lambda _g177768_
        (let ((_g177769_ (##length _g177768_)))
          (cond ((##fx= _g177769_ 1) (apply gx#core-expand*__0 _g177768_))
                ((##fx= _g177769_ 2) (apply gx#core-expand*__% _g177768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g177768_))))))
    (define gx#core-expand1
      (lambda (_%stx175908%_)
        (letrec ((_%step175910%_
                  (lambda (_%hd175947%_)
                    (let ((_%bind175949%_
                           (gx#resolve-identifier__0 _%hd175947%_)))
                      (if (##structure-instance-of?
                           _%bind175949%_
                           'gx#runtime-binding::t)
                          _%stx175908%_
                          (if (##structure-direct-instance-of?
                               _%bind175949%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind175949%_
                                '5
                                '#f
                                '#f)
                               _%stx175908%_)
                              (if (not _%bind175949%_)
                                  _%stx175908%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx175908%_))))))))
          (let* ((_%e175911175919%_ _%stx175908%_)
                 (_%E175917175923%_ (lambda () _%stx175908%_))
                 (_%E175913175929%_
                  (lambda ()
                    (let ((_%hd175927%_ _%e175911175919%_))
                      (if (gx#identifier? _%hd175927%_)
                          (_%step175910%_ _%hd175927%_)
                          (_%E175917175923%_)))))
                 (_%E175912175943%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175911175919%_)
                        (let ((_%e175914175933%_
                               (gx#syntax-e _%e175911175919%_)))
                          (let ((_%hd175915175936%_ (##car _%e175914175933%_))
                                (_%tl175916175938%_ (##cdr _%e175914175933%_)))
                            (let ((_%hd175941%_ _%hd175915175936%_))
                              (if (gx#identifier? _%hd175941%_)
                                  (_%step175910%_ _%hd175941%_)
                                  (_%E175913175929%_)))))
                        (_%E175913175929%_)))))
            (_%E175912175943%_)))))
    (define gx#core-expand-head
      (lambda (_%stx175874%_)
        (letrec ((_%stop?175876%_
                  (lambda (_%stx175878%_)
                    (let* ((_%e175879175886%_ _%stx175878%_)
                           (_%E175881175890%_ (lambda () '#f))
                           (_%E175880175904%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175879175886%_)
                                  (let ((_%e175882175894%_
                                         (gx#syntax-e _%e175879175886%_)))
                                    (let ((_%hd175883175897%_
                                           (##car _%e175882175894%_))
                                          (_%tl175884175899%_
                                           (##cdr _%e175882175894%_)))
                                      (let ((_%hd175902%_ _%hd175883175897%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd175902%_))))
                                  (_%E175881175890%_)))))
                      (_%E175880175904%_)))))
          (gx#core-expand*__% _%stx175874%_ _%stop?175876%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx175680%_
               _%expand-special175681%_
               _%begin-form175682%_
               _%expand-e175683%_)
        (letrec ((_%expand-splice175685%_
                  (lambda (_%hd175848%_
                           _%body175849%_
                           _%rest175850%_
                           _%r175851%_)
                    (if (gx#stx-list? _%body175849%_)
                        (_%K175689%_
                         (gx#stx-foldr cons _%rest175850%_ _%body175849%_)
                         _%r175851%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx175680%_
                         _%hd175848%_))))
                 (_%expand-cond-expand175686%_
                  (lambda (_%hd175844%_ _%rest175845%_ _%r175846%_)
                    (_%K175689%_
                     (cons (gx#core-expand-cond-expand% _%hd175844%_)
                           _%rest175845%_)
                     _%r175846%_)))
                 (_%expand-include175687%_
                  (lambda (_%hd175793%_ _%rest175794%_ _%r175795%_)
                    (let* ((_%e175796175806%_ _%hd175793%_)
                           (_%E175798175810%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e175796175806%_)))
                           (_%E175797175840%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175796175806%_)
                                  (let ((_%e175799175814%_
                                         (gx#syntax-e _%e175796175806%_)))
                                    (let ((_%hd175800175817%_
                                           (##car _%e175799175814%_))
                                          (_%tl175801175819%_
                                           (##cdr _%e175799175814%_)))
                                      (if (gx#stx-pair? _%tl175801175819%_)
                                          (let ((_%e175802175822%_
                                                 (gx#syntax-e
                                                  _%tl175801175819%_)))
                                            (let ((_%hd175803175825%_
                                                   (##car _%e175802175822%_))
                                                  (_%tl175804175827%_
                                                   (##cdr _%e175802175822%_)))
                                              (let ((_%path175830%_
                                                     _%hd175803175825%_))
                                                (if (gx#stx-null?
                                                     _%tl175804175827%_)
                                                    (if (gx#stx-string?
                                                         _%path175830%_)
                                                        (let* ((_%rpath175832%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path175830%_
                         (gx#stx-source _%hd175793%_)))
                       (_%block175834%_
                        (gx#core-expand-include%__%
                         _%hd175793%_
                         _%rpath175832%_))
                       (_%rbody175837%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block175834%_
                            _%expand-special175681%_
                            '#f
                            _%expand-e175683%_))
                         gx#current-expander-path
                         (cons _%rpath175832%_ (gx#current-expander-path)))))
                  (_%K175689%_
                   _%rest175794%_
                   (foldr__0 cons _%r175795%_ _%rbody175837%_)))
                (_%E175798175810%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E175798175810%_)))))
                                          (_%E175798175810%_))))
                                  (_%E175798175810%_)))))
                      (_%E175797175840%_))))
                 (_%expand-expression175688%_
                  (lambda (_%hd175789%_ _%rest175790%_ _%r175791%_)
                    (_%K175689%_
                     _%rest175790%_
                     (cons (_%expand-e175683%_ _%hd175789%_) _%r175791%_))))
                 (_%K175689%_
                  (lambda (_%rest175719%_ _%r175720%_)
                    (let* ((_%e175721175728%_ _%rest175719%_)
                           (_%E175723175732%_
                            (lambda ()
                              (if _%begin-form175682%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form175682%_
                                    (reverse _%r175720%_))
                                   (gx#stx-source _%stx175680%_))
                                  _%r175720%_)))
                           (_%E175722175785%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175721175728%_)
                                  (let ((_%e175724175736%_
                                         (gx#syntax-e _%e175721175728%_)))
                                    (let ((_%hd175725175739%_
                                           (##car _%e175724175736%_))
                                          (_%tl175726175741%_
                                           (##cdr _%e175724175736%_)))
                                      (let* ((_%hd175744%_ _%hd175725175739%_)
                                             (_%rest175746%_
                                              _%tl175726175741%_)
                                             (_%hd175748%_
                                              (gx#core-expand-head
                                               _%hd175744%_))
                                             (_%e175749175756%_ _%hd175748%_)
                                             (_%E175751175760%_
                                              (lambda ()
                                                (_%expand-expression175688%_
                                                 _%hd175748%_
                                                 _%rest175746%_
                                                 _%r175720%_)))
                                             (_%E175750175781%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e175749175756%_)
                                                    (let ((_%e175752175764%_
                                                           (gx#syntax-e
                                                            _%e175749175756%_)))
                                                      (let ((_%hd175753175767%_
                                                             (##car _%e175752175764%_))
                                                            (_%tl175754175769%_
                                                             (##cdr _%e175752175764%_)))
                                                        (let* ((_%form175772%_
                                                                _%hd175753175767%_)
                                                               (_%body175774%_
                                                                _%tl175754175769%_)
                                                               (_%bind175776%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form175772%_)
                            (gx#resolve-identifier__0 _%form175772%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind175776%_)
                      (let ((_%$e175778%_
                             (##unchecked-structure-ref
                              _%bind175776%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e175778%_)
                            (_%expand-splice175685%_
                             _%hd175748%_
                             _%body175774%_
                             _%rest175746%_
                             _%r175720%_)
                            (if (eq? '%#cond-expand _%$e175778%_)
                                (_%expand-cond-expand175686%_
                                 _%hd175748%_
                                 _%rest175746%_
                                 _%r175720%_)
                                (if (eq? '%#include _%$e175778%_)
                                    (_%expand-include175687%_
                                     _%hd175748%_
                                     _%rest175746%_
                                     _%r175720%_)
                                    (_%expand-special175681%_
                                     _%hd175748%_
                                     _%K175689%_
                                     _%rest175746%_
                                     _%r175720%_)))))
                      (_%expand-expression175688%_
                       _%hd175748%_
                       _%rest175746%_
                       _%r175720%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E175751175760%_)))))
                                        (_%E175750175781%_))))
                                  (_%E175723175732%_)))))
                      (_%E175722175785%_)))))
          (let* ((_%e175690175697%_ _%stx175680%_)
                 (_%E175692175701%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e175690175697%_)))
                 (_%E175691175715%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175690175697%_)
                        (let ((_%e175693175705%_
                               (gx#syntax-e _%e175690175697%_)))
                          (let ((_%hd175694175708%_ (##car _%e175693175705%_))
                                (_%tl175695175710%_ (##cdr _%e175693175705%_)))
                            (let ((_%body175713%_ _%tl175695175710%_))
                              (if (gx#stx-list? _%body175713%_)
                                  (_%K175689%_ _%body175713%_ '())
                                  (_%E175692175701%_)))))
                        (_%E175692175701%_)))))
            (_%E175691175715%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx175856%_ _%expand-special175857%_)
        (let* ((_%begin-form175859%_ '%#begin)
               (_%expand-e175861%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx175856%_
           _%expand-special175857%_
           _%begin-form175859%_
           _%expand-e175861%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx175863%_ _%expand-special175864%_ _%begin-form175865%_)
        (let ((_%expand-e175867%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx175863%_
           _%expand-special175864%_
           _%begin-form175865%_
           _%expand-e175867%_))))
    (define gx#core-expand-block
      (lambda _g177770_
        (let ((_g177771_ (##length _g177770_)))
          (cond ((##fx= _g177771_ 2) (apply gx#core-expand-block__0 _g177770_))
                ((##fx= _g177771_ 3) (apply gx#core-expand-block__1 _g177770_))
                ((##fx= _g177771_ 4) (apply gx#core-expand-block__% _g177770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g177770_))))))
    (define gx#core-expand-block*
      (lambda (_%stx175628%_ _%expand-special175629%_)
        (let* ((_%g175630175641%_
                (gx#core-expand-block__1
                 _%stx175628%_
                 _%expand-special175629%_
                 '#f))
               (_%E175634175645%_
                (lambda ()
                  (error '"No clause matching"
                         _%g175630175641%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K175639175676%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx175628%_)))
                (_%K175636175662%_ (lambda (_%expr175660%_) _%expr175660%_))
                (_%K175635175651%_
                 (lambda (_%body175649%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body175649%_))
                    (gx#stx-source _%stx175628%_)))))
            (let ((_%try-match175632175672%_
                   (lambda ()
                     (if (pair? _%g175630175641%_)
                         (let ((_%tl175638175667%_ (##cdr _%g175630175641%_))
                               (_%hd175637175665%_ (##car _%g175630175641%_)))
                           (if (null? _%tl175638175667%_)
                               (let ((_%expr175670%_ _%hd175637175665%_))
                                 (_%K175636175662%_ _%expr175670%_))
                               (let ((_%body175654%_ _%g175630175641%_))
                                 (_%K175635175651%_ _%body175654%_))))
                         (let ((_%body175654%_ _%g175630175641%_))
                           (_%K175635175651%_ _%body175654%_))))))
              (if (null? _%g175630175641%_)
                  (_%K175639175676%_)
                  (_%try-match175632175672%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx175454%_)
        (letrec ((_%satisfied?175456%_
                  (lambda (_%condition175557%_)
                    (let* ((_%e175558175573%_ _%condition175557%_)
                           (_%E175568175577%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e175558175573%_)))
                           (_%E175561175596%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175558175573%_)
                                  (let ((_%e175569175581%_
                                         (gx#syntax-e _%e175558175573%_)))
                                    (let ((_%hd175570175584%_
                                           (##car _%e175569175581%_))
                                          (_%tl175571175586%_
                                           (##cdr _%e175569175581%_)))
                                      (let* ((_%combinator175589%_
                                              _%hd175570175584%_)
                                             (_%body175591%_
                                              _%tl175571175586%_))
                                        (if (gx#stx-list? _%body175591%_)
                                            (let ((_%$e175593%_
                                                   (gx#stx-e
                                                    _%combinator175589%_)))
                                              (if (eq? 'not _%$e175593%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?175456%_
                                                        _%body175591%_))
                                                  (if (eq? 'and _%$e175593%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?175456%_
                                                       _%body175591%_)
                                                      (if (eq? 'or
                                                               _%$e175593%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?175456%_
                                                           _%body175591%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e175593%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body175591%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx175454%_
                       _%combinator175589%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E175568175577%_)))))
                                  (_%E175568175577%_))))
                           (_%E175560175618%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175558175573%_)
                                  (let ((_%e175562175600%_
                                         (gx#syntax-e _%e175558175573%_)))
                                    (let ((_%hd175563175603%_
                                           (##car _%e175562175600%_))
                                          (_%tl175564175605%_
                                           (##cdr _%e175562175600%_)))
                                      (if (and (gx#identifier?
                                                _%hd175563175603%_)
                                               (gx#core-identifier=?
                                                _%hd175563175603%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl175564175605%_)
                                              (let ((_%e175565175608%_
                                                     (gx#syntax-e
                                                      _%tl175564175605%_)))
                                                (let ((_%hd175566175611%_
                                                       (##car _%e175565175608%_))
                                                      (_%tl175567175613%_
                                                       (##cdr _%e175565175608%_)))
                                                  (let ((_%expr175616%_
                                                         _%hd175566175611%_))
                                                    (if (gx#stx-null?
                                                         _%tl175567175613%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr175616%_)
                                                        (_%E175561175596%_)))))
                                              (_%E175561175596%_))
                                          (_%E175561175596%_))))
                                  (_%E175561175596%_))))
                           (_%E175559175624%_
                            (lambda ()
                              (let ((_%id175622%_ _%e175558175573%_))
                                (if (gx#identifier? _%id175622%_)
                                    (gx#core-bound-identifier?__%
                                     _%id175622%_
                                     gx#feature-binding?)
                                    (_%E175560175618%_))))))
                      (_%E175559175624%_))))
                 (_%loop175457%_
                  (lambda (_%rest175487%_)
                    (let* ((_%e175488175496%_ _%rest175487%_)
                           (_%E175494175500%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e175488175496%_)))
                           (_%E175490175504%_
                            (lambda ()
                              (if (gx#stx-null? _%e175488175496%_)
                                  '()
                                  (_%E175494175500%_))))
                           (_%E175489175553%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175488175496%_)
                                  (let ((_%e175491175508%_
                                         (gx#syntax-e _%e175488175496%_)))
                                    (let ((_%hd175492175511%_
                                           (##car _%e175491175508%_))
                                          (_%tl175493175513%_
                                           (##cdr _%e175491175508%_)))
                                      (let* ((_%hd175516%_ _%hd175492175511%_)
                                             (_%rest175518%_
                                              _%tl175493175513%_)
                                             (_%e175519175526%_ _%hd175516%_)
                                             (_%E175521175530%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e175519175526%_)))
                                             (_%E175520175549%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e175519175526%_)
                                                    (let ((_%e175522175534%_
                                                           (gx#syntax-e
                                                            _%e175519175526%_)))
                                                      (let ((_%hd175523175537%_
                                                             (##car _%e175522175534%_))
                                                            (_%tl175524175539%_
                                                             (##cdr _%e175522175534%_)))
                                                        (let* ((_%condition175542%_
                                                                _%hd175523175537%_)
                                                               (_%body175544%_
                                                                _%tl175524175539%_))
                                                          (if (gx#stx-eq?
                                                               _%condition175542%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest175518%_)
                          _%body175544%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx175454%_
                           _%hd175516%_))
                      (if (_%satisfied?175456%_ _%condition175542%_)
                          _%body175544%_
                          (_%loop175457%_ _%rest175518%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E175521175530%_)))))
                                        (_%E175520175549%_))))
                                  (_%E175490175504%_)))))
                      (_%E175489175553%_)))))
          (let* ((_%e175458175465%_ _%stx175454%_)
                 (_%E175460175469%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e175458175465%_)))
                 (_%E175459175483%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175458175465%_)
                        (let ((_%e175461175473%_
                               (gx#syntax-e _%e175458175465%_)))
                          (let ((_%hd175462175476%_ (##car _%e175461175473%_))
                                (_%tl175463175478%_ (##cdr _%e175461175473%_)))
                            (let ((_%clauses175481%_ _%tl175463175478%_))
                              (if (gx#stx-list? _%clauses175481%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop175457%_ _%clauses175481%_))
                                  (_%E175460175469%_)))))
                        (_%E175460175469%_)))))
            (_%E175459175483%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx175397%_ _%rpath175398%_)
        (let* ((_%e175399175409%_ _%stx175397%_)
               (_%E175401175413%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175399175409%_)))
               (_%E175400175440%_
                (lambda ()
                  (if (gx#stx-pair? _%e175399175409%_)
                      (let ((_%e175402175417%_
                             (gx#syntax-e _%e175399175409%_)))
                        (let ((_%hd175403175420%_ (##car _%e175402175417%_))
                              (_%tl175404175422%_ (##cdr _%e175402175417%_)))
                          (if (gx#stx-pair? _%tl175404175422%_)
                              (let ((_%e175405175425%_
                                     (gx#syntax-e _%tl175404175422%_)))
                                (let ((_%hd175406175428%_
                                       (##car _%e175405175425%_))
                                      (_%tl175407175430%_
                                       (##cdr _%e175405175425%_)))
                                  (let ((_%path175433%_ _%hd175406175428%_))
                                    (if (gx#stx-null? _%tl175407175430%_)
                                        (if (gx#stx-string? _%path175433%_)
                                            (let ((_%rpath175438%_
                                                   (let ((_%$e175435%_
                                                          _%rpath175398%_))
                                                     (if _%$e175435%_
                                                         _%$e175435%_
                                                         (gx#core-resolve-path__%
                                                          _%path175433%_
                                                          (gx#stx-source
                                                           _%stx175397%_))))))
                                              (if (member _%rpath175438%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx175397%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath175438%_))
                                                    (gx#stx-source
                                                     _%stx175397%_)))))
                                            (_%E175401175413%_))
                                        (_%E175401175413%_)))))
                              (_%E175401175413%_))))
                      (_%E175401175413%_)))))
          (_%E175400175440%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx175447%_)
        (let ((_%rpath175449%_ '#f))
          (gx#core-expand-include%__% _%stx175447%_ _%rpath175449%_))))
    (define gx#core-expand-include%
      (lambda _g177772_
        (let ((_g177773_ (##length _g177772_)))
          (cond ((##fx= _g177773_ 1)
                 (apply gx#core-expand-include%__0 _g177772_))
                ((##fx= _g177773_ 2)
                 (apply gx#core-expand-include%__% _g177772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g177772_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K175363%_ _%stx175364%_ _%method175365%_)
        (if (procedure? _%K175363%_)
            (let ((_%$e175368%_ (gx#stx-source _%stx175364%_)))
              (if _%$e175368%_
                  ((lambda (_%g175370175372%_)
                     (gx#stx-wrap-source
                      (_%K175363%_ _%stx175364%_)
                      _%g175370175372%_))
                   _%$e175368%_)
                  (_%K175363%_ _%stx175364%_)))
            (let ((_%$e175376%_
                   (bound-method-ref _%K175363%_ _%method175365%_)))
              (if _%$e175376%_
                  ((lambda (_%g175378175380%_)
                     (gx#core-apply-expander__%
                      _%g175378175380%_
                      _%stx175364%_
                      _%method175365%_))
                   _%$e175376%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx175364%_
                   _%method175365%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K175387%_ _%stx175388%_)
        (let ((_%method175390%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K175387%_
           _%stx175388%_
           _%method175390%_))))
    (define gx#core-apply-expander
      (lambda _g177774_
        (let ((_g177775_ (##length _g177774_)))
          (cond ((##fx= _g177775_ 2)
                 (apply gx#core-apply-expander__0 _g177774_))
                ((##fx= _g177775_ 3)
                 (apply gx#core-apply-expander__% _g177774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g177774_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self175348%_ _%stx175349%_)
        (let ((_%self175352%_ _%self175348%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx175349%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self175191%_ _%stx175192%_)
        (let* ((_%self175195%_ _%self175191%_)
               (_%self175204175210%_ _%self175195%_)
               (_%E175206175213%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175204175210%_
                         '((macro-expander K)))
                  '#!void))
               (_%K175207175218%_
                (lambda (_%K175216%_)
                  (gx#core-apply-expander__0 _%K175216%_ _%stx175192%_)))
               (_%e175208175221%_
                (##unchecked-structure-ref _%self175204175210%_ '1 '#f '#f))
               (_%K175224%_ _%e175208175221%_))
          (_%K175207175218%_ _%K175224%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self175034%_ _%stx175035%_)
        (let ((_%self175038%_ _%self175034%_))
          (if (gx#sealed-syntax? _%stx175035%_)
              _%stx175035%_
              (let* ((_%self175047175053%_ _%self175038%_)
                     (_%E175049175056%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self175047175053%_
                               '((core-expander K)))
                        '#!void))
                     (_%K175050175061%_
                      (lambda (_%K175059%_)
                        (gx#core-apply-expander__0 _%K175059%_ _%stx175035%_)))
                     (_%e175051175064%_
                      (##unchecked-structure-ref
                       _%self175047175053%_
                       '1
                       '#f
                       '#f))
                     (_%K175067%_ _%e175051175064%_))
                (_%K175050175061%_ _%K175067%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self174885%_ _%stx174886%_ _%top?174887%_)
        (let ((_%self174890%_ _%self174885%_))
          (if (_%top?174887%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self174890%_
               _%stx174886%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx174886%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self174903%_ _%stx174904%_)
        (let ((_%top?174906%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self174903%_
           _%stx174904%_
           _%top?174906%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g177776_
        (let ((_g177777_ (##length _g177776_)))
          (cond ((##fx= _g177777_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g177776_))
                ((##fx= _g177777_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g177776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g177776_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self174748%_ _%stx174749%_)
        (let ((_%self174752%_ _%self174748%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self174752%_
           _%stx174749%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self174563%_ _%stx174564%_)
        (let* ((_%self174567%_ _%self174563%_)
               (_%self174576174582%_ _%self174567%_)
               (_%E174578174585%_
                (lambda ()
                  (error '"No clause matching"
                         _%self174576174582%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K174579174618%_
                (lambda (_%id174588%_)
                  (let* ((_%e174589174596%_ _%stx174564%_)
                         (_%E174591174600%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e174589174596%_)))
                         (_%E174590174614%_
                          (lambda ()
                            (if (gx#stx-pair? _%e174589174596%_)
                                (let ((_%e174592174604%_
                                       (gx#syntax-e _%e174589174596%_)))
                                  (let ((_%hd174593174607%_
                                         (##car _%e174592174604%_))
                                        (_%tl174594174609%_
                                         (##cdr _%e174592174604%_)))
                                    (let ((_%body174612%_ _%tl174594174609%_))
                                      (gx#core-cons
                                       _%id174588%_
                                       _%body174612%_))))
                                (_%E174591174600%_)))))
                    (_%E174590174614%_))))
               (_%e174580174621%_
                (##unchecked-structure-ref _%self174576174582%_ '1 '#f '#f))
               (_%id174624%_ _%e174580174621%_))
          (_%K174579174618%_ _%id174624%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self174390%_ _%stx174391%_ _%method174392%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx174391%_))
              (force-output))
            '#!void)
        (let* ((_%self174393174401%_ _%self174390%_)
               (_%E174395174404%_
                (lambda ()
                  (error '"No clause matching"
                         _%self174393174401%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K174396174411%_
                (lambda (_%phi174407%_ _%ctx174408%_ _%K174409%_)
                  (gx#core-apply-user-macro
                   _%K174409%_
                   _%stx174391%_
                   _%ctx174408%_
                   _%phi174407%_
                   _%method174392%_))))
          (if (##structure-instance-of?
               _%self174393174401%_
               'gx#user-expander::t)
              (let* ((_%e174397174414%_
                      (##unchecked-structure-ref
                       _%self174393174401%_
                       '1
                       '#f
                       '#f))
                     (_%K174417%_ _%e174397174414%_)
                     (_%e174398174419%_
                      (##unchecked-structure-ref
                       _%self174393174401%_
                       '2
                       '#f
                       '#f))
                     (_%ctx174422%_ _%e174398174419%_)
                     (_%e174399174424%_
                      (##unchecked-structure-ref
                       _%self174393174401%_
                       '3
                       '#f
                       '#f))
                     (_%phi174427%_ _%e174399174424%_))
                (_%K174396174411%_ _%phi174427%_ _%ctx174422%_ _%K174417%_))
              (_%E174395174404%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self174432%_ _%stx174433%_)
        (let ((_%method174435%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self174432%_
           _%stx174433%_
           _%method174435%_))))
    (define gx#core-apply-user-expander
      (lambda _g177778_
        (let ((_g177779_ (##length _g177778_)))
          (cond ((##fx= _g177779_ 2)
                 (apply gx#core-apply-user-expander__0 _g177778_))
                ((##fx= _g177779_ 3)
                 (apply gx#core-apply-user-expander__% _g177778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g177778_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K174380%_
               _%stx174381%_
               _%ctx174382%_
               _%phi174383%_
               _%method174384%_)
        (let ((_%mark174386%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx174382%_
                _%phi174383%_
                _%stx174381%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K174380%_
               (gx#stx-apply-mark _%stx174381%_ _%mark174386%_)
               _%method174384%_)
              _%mark174386%_))
           gx#current-expander-marks
           (cons _%mark174386%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx174228%_ _%phi174229%_ _%ctx174230%_)
        (let _%lp174232%_ ((_%bind174234%_
                            (gx#core-resolve-identifier__%
                             _%stx174228%_
                             _%phi174229%_
                             _%ctx174230%_)))
          (if (##structure-direct-instance-of?
               _%bind174234%_
               'gx#import-binding::t)
              (_%lp174232%_
               (##unchecked-structure-ref _%bind174234%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind174234%_
                   'gx#alias-binding::t)
                  (_%lp174232%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind174234%_ '5 '#f '#f)
                    _%phi174229%_
                    _%ctx174230%_))
                  _%bind174234%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx174242%_)
        (let* ((_%phi174244%_ (gx#current-expander-phi))
               (_%ctx174246%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx174242%_
           _%phi174244%_
           _%ctx174246%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx174248%_ _%phi174249%_)
        (let ((_%ctx174251%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx174248%_
           _%phi174249%_
           _%ctx174251%_))))
    (define gx#resolve-identifier
      (lambda _g177780_
        (let ((_g177781_ (##length _g177780_)))
          (cond ((##fx= _g177781_ 1)
                 (apply gx#resolve-identifier__0 _g177780_))
                ((##fx= _g177781_ 2)
                 (apply gx#resolve-identifier__1 _g177780_))
                ((##fx= _g177781_ 3)
                 (apply gx#resolve-identifier__% _g177780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g177780_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx174183%_
               _%val174184%_
               _%rebind?174185%_
               _%phi174186%_
               _%ctx174187%_)
        (let ((_%rebind?174192%_
               (if (not _%rebind?174185%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?174185%_)
                       _%rebind?174185%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx174183%_)
           _%val174184%_
           _%rebind?174192%_
           _%phi174186%_
           _%ctx174187%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx174197%_ _%val174198%_)
        (let* ((_%rebind?174200%_ '#f)
               (_%phi174202%_ (gx#current-expander-phi))
               (_%ctx174204%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174197%_
           _%val174198%_
           _%rebind?174200%_
           _%phi174202%_
           _%ctx174204%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx174206%_ _%val174207%_ _%rebind?174208%_)
        (let* ((_%phi174210%_ (gx#current-expander-phi))
               (_%ctx174212%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174206%_
           _%val174207%_
           _%rebind?174208%_
           _%phi174210%_
           _%ctx174212%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx174214%_ _%val174215%_ _%rebind?174216%_ _%phi174217%_)
        (let ((_%ctx174219%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174214%_
           _%val174215%_
           _%rebind?174216%_
           _%phi174217%_
           _%ctx174219%_))))
    (define gx#bind-identifier!
      (lambda _g177782_
        (let ((_g177783_ (##length _g177782_)))
          (cond ((##fx= _g177783_ 2) (apply gx#bind-identifier!__0 _g177782_))
                ((##fx= _g177783_ 3) (apply gx#bind-identifier!__1 _g177782_))
                ((##fx= _g177783_ 4) (apply gx#bind-identifier!__2 _g177782_))
                ((##fx= _g177783_ 5) (apply gx#bind-identifier!__% _g177782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g177782_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx174149%_ _%phi174150%_ _%ctx174151%_)
        (let _%lp174153%_ ((_%e174155%_ _%stx174149%_)
                           (_%marks174156%_ (gx#current-expander-marks)))
          (if (symbol? _%e174155%_)
              (gx#core-resolve-binding
               _%e174155%_
               _%phi174150%_
               _%phi174150%_
               _%ctx174151%_
               (reverse _%marks174156%_))
              (if (gx#identifier-quote? _%e174155%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e174155%_ '1 '#f '#f)
                   _%phi174150%_
                   '0
                   (##unchecked-structure-ref _%e174155%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e174155%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e174155%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e174155%_ '1 '#f '#f)
                       _%phi174150%_
                       _%phi174150%_
                       _%ctx174151%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e174155%_ '3 '#f '#f)
                        _%marks174156%_))
                      (if (##structure-direct-instance-of?
                           _%e174155%_
                           'gx#syntax-wrap::t)
                          (_%lp174153%_
                           (##unchecked-structure-ref _%e174155%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e174155%_ '3 '#f '#f)
                            _%marks174156%_))
                          (if (##structure-instance-of?
                               _%e174155%_
                               'gerbil#AST::t)
                              (_%lp174153%_
                               (##unchecked-structure-ref
                                _%e174155%_
                                '1
                                '#f
                                '#f)
                               _%marks174156%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx174149%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx174167%_)
        (let* ((_%phi174169%_ (gx#current-expander-phi))
               (_%ctx174171%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx174167%_
           _%phi174169%_
           _%ctx174171%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx174173%_ _%phi174174%_)
        (let ((_%ctx174176%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx174173%_
           _%phi174174%_
           _%ctx174176%_))))
    (define gx#core-resolve-identifier
      (lambda _g177784_
        (let ((_g177785_ (##length _g177784_)))
          (cond ((##fx= _g177785_ 1)
                 (apply gx#core-resolve-identifier__0 _g177784_))
                ((##fx= _g177785_ 2)
                 (apply gx#core-resolve-identifier__1 _g177784_))
                ((##fx= _g177785_ 3)
                 (apply gx#core-resolve-identifier__% _g177784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g177784_))))))
    (define gx#core-resolve-binding
      (lambda (_%id174060%_
               _%phi174061%_
               _%src-phi174062%_
               _%ctx174063%_
               _%marks174064%_)
        (letrec ((_%resolve174066%_
                  (lambda (_%ctx174133%_ _%src-phi174134%_ _%key174135%_)
                    (let _%lp174137%_ ((_%ctx174139%_
                                        (gx#core-context-shift
                                         _%ctx174133%_
                                         _%phi174061%_))
                                       (_%dphi174140%_
                                        (fx- _%phi174061%_ _%src-phi174134%_)))
                      (let ((_%$e174142%_
                             (gx#core-context-resolve
                              _%ctx174139%_
                              _%key174135%_)))
                        (if _%$e174142%_
                            _%$e174142%_
                            (if (fxzero? _%dphi174140%_)
                                '#f
                                (if (fxpositive? _%dphi174140%_)
                                    (_%lp174137%_
                                     (gx#core-context-shift _%ctx174139%_ '-1)
                                     (##fx- _%dphi174140%_ '1))
                                    (_%lp174137%_
                                     (gx#core-context-shift _%ctx174139%_ '1)
                                     (##fx+ _%dphi174140%_ '1))))))))))
          (let _%lp174068%_ ((_%ctx174070%_ _%ctx174063%_)
                             (_%src-phi174071%_ _%src-phi174062%_)
                             (_%rest174072%_ _%marks174064%_))
            (let* ((_%rest174073174081%_ _%rest174072%_)
                   (_%else174075174089%_
                    (lambda ()
                      (_%resolve174066%_
                       _%ctx174070%_
                       _%src-phi174071%_
                       _%id174060%_)))
                   (_%K174077174121%_
                    (lambda (_%rest174092%_ _%hd174093%_)
                      (let* ((_%hd174094174100%_ _%hd174093%_)
                             (_%E174096174103%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd174094174100%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K174097174113%_
                              (lambda (_%subst174106%_)
                                (let ((_%$e174110%_
                                       (let ((_%key174108%_
                                              (if _%subst174106%_
                                                  (hash-get
                                                   _%subst174106%_
                                                   _%id174060%_)
                                                  '#f)))
                                         (if _%key174108%_
                                             (_%resolve174066%_
                                              _%ctx174070%_
                                              _%src-phi174071%_
                                              _%key174108%_)
                                             '#f))))
                                  (if _%$e174110%_
                                      _%$e174110%_
                                      (_%lp174068%_
                                       (##unchecked-structure-ref
                                        _%hd174093%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd174093%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest174092%_))))))
                        (if (##structure-instance-of?
                             _%hd174094174100%_
                             'gx#expander-mark::t)
                            (let* ((_%e174098174116%_
                                    (##unchecked-structure-ref
                                     _%hd174094174100%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst174119%_ _%e174098174116%_))
                              (_%K174097174113%_ _%subst174119%_))
                            (_%E174096174103%_))))))
              (if (pair? _%rest174073174081%_)
                  (let ((_%hd174078174124%_ (##car _%rest174073174081%_))
                        (_%tl174079174126%_ (##cdr _%rest174073174081%_)))
                    (let* ((_%hd174129%_ _%hd174078174124%_)
                           (_%rest174131%_ _%tl174079174126%_))
                      (_%K174077174121%_ _%rest174131%_ _%hd174129%_)))
                  (_%else174075174089%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key173931%_
               _%val173932%_
               _%rebind?173933%_
               _%phi173934%_
               _%ctx173935%_)
        (letrec ((_%update-binding173937%_
                  (lambda (_%xval174009%_)
                    (if (or (_%rebind?173933%_
                             _%ctx173935%_
                             _%xval174009%_
                             _%val173932%_)
                            (and (##structure-direct-instance-of?
                                  _%xval174009%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval174009%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val173932%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val173932%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval174009%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val173932%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val173932%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval174009%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val173932%_
                        (if (and (##structure-direct-instance-of?
                                  _%val173932%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val173932%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval174009%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val173932%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval174009%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval174009%_
                            (if (and (##structure-direct-instance-of?
                                      _%val173932%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval174009%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key173931%_
                                 (cons (##unchecked-structure-ref
                                        _%val173932%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val173932%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval174009%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval174009%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval174009%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval174009%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key173931%_
                                 _%val173932%_
                                 _%xval174009%_))))))
                 (_%gensubst173938%_
                  (lambda (_%subst174004%_ _%id174005%_)
                    (let ((_%eid174007%_
                           (gensym (if (uninterned-symbol? _%id174005%_)
                                       '%
                                       _%id174005%_))))
                      (hash-put! _%subst174004%_ _%id174005%_ _%eid174007%_)
                      _%eid174007%_)))
                 (_%subst!173939%_
                  (lambda (_%key173941%_)
                    (let* ((_%key173942173950%_ _%key173941%_)
                           (_%else173944173958%_ (lambda () _%key173941%_))
                           (_%K173946173992%_
                            (lambda (_%mark173961%_ _%id173962%_)
                              (let* ((_%mark173963173969%_ _%mark173961%_)
                                     (_%E173965173972%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark173963173969%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K173966173984%_
                                      (lambda (_%subst173975%_)
                                        (if (not _%subst173975%_)
                                            (let ((_%subst173978%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark173961%_
                                               _%subst173978%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst173938%_
                                               _%subst173978%_
                                               _%id173962%_))
                                            (let ((_%$e173980%_
                                                   (hash-get
                                                    _%subst173975%_
                                                    _%id173962%_)))
                                              (if _%$e173980%_
                                                  _%$e173980%_
                                                  (_%gensubst173938%_
                                                   _%subst173975%_
                                                   _%id173962%_)))))))
                                (if (##structure-instance-of?
                                     _%mark173963173969%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e173967173987%_
                                            (##unchecked-structure-ref
                                             _%mark173963173969%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst173990%_ _%e173967173987%_))
                                      (_%K173966173984%_ _%subst173990%_))
                                    (_%E173965173972%_))))))
                      (if (pair? _%key173942173950%_)
                          (let ((_%hd173947173995%_
                                 (##car _%key173942173950%_))
                                (_%tl173948173997%_
                                 (##cdr _%key173942173950%_)))
                            (let* ((_%id174000%_ _%hd173947173995%_)
                                   (_%mark174002%_ _%tl173948173997%_))
                              (_%K173946173992%_ _%mark174002%_ _%id174000%_)))
                          (_%else173944173958%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx173935%_ _%phi173934%_)
           (_%subst!173939%_ _%key173931%_)
           _%val173932%_
           _%update-binding173937%_))))
    (define gx#core-bind!__0
      (lambda (_%key174030%_ _%val174031%_)
        (let* ((_%rebind?174033%_ false)
               (_%phi174035%_ (gx#current-expander-phi))
               (_%ctx174037%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174030%_
           _%val174031%_
           _%rebind?174033%_
           _%phi174035%_
           _%ctx174037%_))))
    (define gx#core-bind!__1
      (lambda (_%key174039%_ _%val174040%_ _%rebind?174041%_)
        (let* ((_%phi174043%_ (gx#current-expander-phi))
               (_%ctx174045%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174039%_
           _%val174040%_
           _%rebind?174041%_
           _%phi174043%_
           _%ctx174045%_))))
    (define gx#core-bind!__2
      (lambda (_%key174047%_ _%val174048%_ _%rebind?174049%_ _%phi174050%_)
        (let ((_%ctx174052%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174047%_
           _%val174048%_
           _%rebind?174049%_
           _%phi174050%_
           _%ctx174052%_))))
    (define gx#core-bind!
      (lambda _g177786_
        (let ((_g177787_ (##length _g177786_)))
          (cond ((##fx= _g177787_ 2) (apply gx#core-bind!__0 _g177786_))
                ((##fx= _g177787_ 3) (apply gx#core-bind!__1 _g177786_))
                ((##fx= _g177787_ 4) (apply gx#core-bind!__2 _g177786_))
                ((##fx= _g177787_ 5) (apply gx#core-bind!__% _g177786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g177786_))))))
    (define gx#core-identifier-key
      (lambda (_%stx173862%_)
        (if (symbol? _%stx173862%_)
            (let* ((_%g173864173872%_ (gx#current-expander-marks))
                   (_%else173866173880%_ (lambda () _%stx173862%_))
                   (_%K173868173885%_
                    (lambda (_%hd173883%_) (cons _%stx173862%_ _%hd173883%_))))
              (if (pair? _%g173864173872%_)
                  (let* ((_%hd173869173888%_ (##car _%g173864173872%_))
                         (_%hd173891%_ _%hd173869173888%_))
                    (_%K173868173885%_ _%hd173891%_))
                  (_%else173866173880%_)))
            (if (gx#identifier? _%stx173862%_)
                (let* ((_%id173894%_ (gx#syntax-local-unwrap _%stx173862%_))
                       (_%eid173896%_ (gx#stx-e _%id173894%_))
                       (_%marks173898%_
                        (gx#stx-identifier-marks* _%id173894%_))
                       (_%marks173900173908%_ _%marks173898%_)
                       (_%else173902173916%_ (lambda () _%eid173896%_))
                       (_%K173904173921%_
                        (lambda (_%hd173919%_)
                          (cons _%eid173896%_ _%hd173919%_))))
                  (if (pair? _%marks173900173908%_)
                      (let* ((_%hd173905173924%_ (##car _%marks173900173908%_))
                             (_%hd173927%_ _%hd173905173924%_))
                        (_%K173904173921%_ _%hd173927%_))
                      (_%else173902173916%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx173862%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx173801%_ _%phi173802%_)
        (letrec ((_%make-phi173804%_
                  (lambda (_%super173860%_)
                    (let ((__obj177757
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj177757
                       (##gensym 'phi)
                       _%super173860%_)
                      __obj177757)))
                 (_%make-phi/up173805%_
                  (lambda (_%ctx173855%_ _%super173856%_)
                    (let ((_%ctx+1173858%_
                           (_%make-phi173804%_ _%super173856%_)))
                      (##unchecked-structure-set!
                       _%ctx173855%_
                       _%ctx+1173858%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1173858%_
                       _%ctx173855%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1173858%_)))
                 (_%make-phi/down173806%_
                  (lambda (_%ctx173850%_ _%super173851%_)
                    (let ((_%ctx-1173853%_
                           (_%make-phi173804%_ _%super173851%_)))
                      (##unchecked-structure-set!
                       _%ctx-1173853%_
                       _%ctx173850%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx173850%_
                       _%ctx-1173853%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1173853%_)))
                 (_%shift173807%_
                  (lambda (_%ctx173833%_
                           _%delta173834%_
                           _%make-delta-context173835%_
                           _%phi173836%_
                           _%K173837%_)
                    (let ((_%$e173839%_
                           (##unchecked-structure-ref
                            _%ctx173833%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e173839%_
                          ((lambda (_%super173842%_)
                             (let* ((_%super173844%_
                                     (_%K173837%_
                                      _%super173842%_
                                      _%delta173834%_))
                                    (_%ctx+d173846%_
                                     (_%make-delta-context173835%_
                                      _%ctx173833%_
                                      _%super173844%_)))
                               (_%K173837%_
                                _%ctx+d173846%_
                                (fx- _%phi173836%_ _%delta173834%_))))
                           _%$e173839%_)
                          (error '"Bad context" _%ctx173833%_))))))
          (let _%K173809%_ ((_%ctx173811%_ _%ctx173801%_)
                            (_%phi173812%_ _%phi173802%_))
            (if (fxzero? _%phi173812%_)
                _%ctx173811%_
                (if (##structure-instance-of? _%ctx173811%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi173812%_)
                        (let ((_%$e173816%_
                               (##unchecked-structure-ref
                                _%ctx173811%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e173816%_
                              ((lambda (_%g173818173820%_)
                                 (_%K173809%_
                                  _%g173818173820%_
                                  (##fx- _%phi173812%_ '1)))
                               _%$e173816%_)
                              (_%shift173807%_
                               _%ctx173811%_
                               '1
                               _%make-phi/up173805%_
                               _%phi173812%_
                               _%K173809%_)))
                        (let ((_%$e173824%_
                               (##unchecked-structure-ref
                                _%ctx173811%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e173824%_
                              ((lambda (_%g173826173828%_)
                                 (_%K173809%_
                                  _%g173826173828%_
                                  (##fx+ _%phi173812%_ '1)))
                               _%$e173824%_)
                              (_%shift173807%_
                               _%ctx173811%_
                               '-1
                               _%make-phi/down173806%_
                               _%phi173812%_
                               _%K173809%_))))
                    _%ctx173811%_))))))
    (define gx#core-context-get
      (lambda (_%ctx173798%_ _%key173799%_)
        (hash-get
         (##unchecked-structure-ref _%ctx173798%_ '2 '#f '#f)
         _%key173799%_)))
    (define gx#core-context-put!
      (lambda (_%ctx173794%_ _%key173795%_ _%val173796%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx173794%_ '2 '#f '#f)
         _%key173795%_
         _%val173796%_)
        _%val173796%_))
    (define gx#core-context-resolve
      (lambda (_%ctx173780%_ _%key173781%_)
        (let _%lp173783%_ ((_%ctx173785%_ _%ctx173780%_))
          (let ((_%$e173787%_
                 (gx#core-context-get _%ctx173785%_ _%key173781%_)))
            (if _%$e173787%_
                _%$e173787%_
                (let ((_%$e173790%_
                       (if (##structure-instance-of?
                            _%ctx173785%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx173785%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e173790%_ (_%lp173783%_ _%$e173790%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx173769%_ _%key173770%_ _%val173771%_ _%rebind173772%_)
        (let ((_%$e173774%_ (gx#core-context-get _%ctx173769%_ _%key173770%_)))
          (if _%$e173774%_
              ((lambda (_%xval173777%_)
                 (gx#core-context-put!
                  _%ctx173769%_
                  _%key173770%_
                  (_%rebind173772%_ _%xval173777%_)))
               _%$e173774%_)
              (gx#core-context-put!
               _%ctx173769%_
               _%key173770%_
               _%val173771%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx173744%_ _%stop?173745%_)
        (let _%lp173747%_ ((_%ctx173749%_ _%ctx173744%_))
          (if (_%stop?173745%_ _%ctx173749%_)
              _%ctx173749%_
              (if (##structure-instance-of? _%ctx173749%_ 'gx#phi-context::t)
                  (_%lp173747%_
                   (##unchecked-structure-ref _%ctx173749%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx173758%_ (gx#current-expander-context))
               (_%stop?173760%_ gx#top-context?))
          (gx#core-context-top__% _%ctx173758%_ _%stop?173760%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx173762%_)
        (let ((_%stop?173764%_ gx#top-context?))
          (gx#core-context-top__% _%ctx173762%_ _%stop?173764%_))))
    (define gx#core-context-top
      (lambda _g177788_
        (let ((_g177789_ (##length _g177788_)))
          (cond ((##fx= _g177789_ 0) (apply gx#core-context-top__0 _g177788_))
                ((##fx= _g177789_ 1) (apply gx#core-context-top__1 _g177788_))
                ((##fx= _g177789_ 2) (apply gx#core-context-top__% _g177788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g177788_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx173729%_)
        (let _%lp173731%_ ((_%ctx173733%_ _%ctx173729%_))
          (if (##structure-instance-of? _%ctx173733%_ 'gx#phi-context::t)
              (_%lp173731%_
               (##unchecked-structure-ref _%ctx173733%_ '3 '#f '#f))
              _%ctx173733%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx173739%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx173739%_))))
    (define gx#core-context-root
      (lambda _g177790_
        (let ((_g177791_ (##length _g177790_)))
          (cond ((##fx= _g177791_ 0) (apply gx#core-context-root__0 _g177790_))
                ((##fx= _g177791_ 1) (apply gx#core-context-root__% _g177790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g177790_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx173711%_ . _%ignore173712%_)
        (let ((_%$e173714%_ (gx#current-expander-allow-rebind?)))
          (if _%$e173714%_
              _%$e173714%_
              (if (##structure-instance-of? _%ctx173711%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx173711%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx173711%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx173721%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx173721%_))))
    (define gx#core-context-rebind?
      (lambda _g177792_
        (let ((_g177793_ (##length _g177792_)))
          (cond ((##fx= _g177793_ 0)
                 (apply gx#core-context-rebind?__0 _g177792_))
                ((##fx= _g177793_ 1)
                 (apply gx#core-context-rebind?__% _g177792_))
                ((##fx>= _g177793_ 1)
                 (apply gx#core-context-rebind?__% _g177792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g177792_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx173694%_)
        (let ((_%$e173696%_ (gx#core-context-top__1 _%ctx173694%_)))
          (if _%$e173696%_
              ((lambda (_%ctx173699%_)
                 (if (##structure-instance-of?
                      _%ctx173699%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx173699%_ '6 '#f '#f)
                     '#f))
               _%$e173696%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx173706%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx173706%_))))
    (define gx#core-context-namespace
      (lambda _g177794_
        (let ((_g177795_ (##length _g177794_)))
          (cond ((##fx= _g177795_ 0)
                 (apply gx#core-context-namespace__0 _g177794_))
                ((##fx= _g177795_ 1)
                 (apply gx#core-context-namespace__% _g177794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g177794_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind173680%_ _%is?173681%_)
        (if (##structure-direct-instance-of?
             _%bind173680%_
             'gx#syntax-binding::t)
            (_%is?173681%_
             (##unchecked-structure-ref _%bind173680%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind173686%_)
        (let ((_%is?173688%_ gx#expander?))
          (gx#expander-binding?__% _%bind173686%_ _%is?173688%_))))
    (define gx#expander-binding?
      (lambda _g177796_
        (let ((_g177797_ (##length _g177796_)))
          (cond ((##fx= _g177797_ 1) (apply gx#expander-binding?__0 _g177796_))
                ((##fx= _g177797_ 2) (apply gx#expander-binding?__% _g177796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g177796_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind173677%_)
        (gx#expander-binding?__% _%bind173677%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind173675%_)
        (gx#expander-binding?__% _%bind173675%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind173669%_)
        (letrec ((_%direct-special-form?173671%_
                  (lambda (_%obj173673%_)
                    (##structure-direct-instance-of?
                     _%obj173673%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind173669%_
           _%direct-special-form?173671%_))))
    (define gx#special-form-binding?
      (lambda (_%bind173667%_)
        (gx#expander-binding?__% _%bind173667%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind173658%_)
        (letrec ((_%feature?173660%_
                  (lambda (_%e173662%_)
                    (let ((_%$e173664%_
                           (##structure-instance-of?
                            _%e173662%_
                            'gx#feature-expander::t)))
                      (if _%$e173664%_
                          _%$e173664%_
                          (##structure-instance-of?
                           _%e173662%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind173658%_ _%feature?173660%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind173656%_)
        (gx#expander-binding?__% _%bind173656%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id173643%_ _%bound?173644%_)
        (if (gx#identifier? _%id173643%_)
            (_%bound?173644%_ (gx#resolve-identifier__0 _%id173643%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id173649%_)
        (let ((_%bound?173651%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id173649%_ _%bound?173651%_))))
    (define gx#core-bound-identifier?
      (lambda _g177798_
        (let ((_g177799_ (##length _g177798_)))
          (cond ((##fx= _g177799_ 1)
                 (apply gx#core-bound-identifier?__0 _g177798_))
                ((##fx= _g177799_ 2)
                 (apply gx#core-bound-identifier?__% _g177798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g177798_))))))
    (define gx#core-identifier=?
      (lambda (_%x173633%_ _%y173634%_)
        (letrec ((_%y=?173636%_
                  (lambda (_%xid173640%_)
                    ((if (list? _%y173634%_) memq eq?)
                     _%xid173640%_
                     _%y173634%_))))
          (let ((_%bind173638%_ (gx#resolve-identifier__0 _%x173633%_)))
            (if (##structure-instance-of? _%bind173638%_ 'gx#binding::t)
                (_%y=?173636%_
                 (##unchecked-structure-ref _%bind173638%_ '1 '#f '#f))
                (_%y=?173636%_ (gx#stx-e _%x173633%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e173631%_)
        (if (interned-symbol? _%e173631%_)
            (string-index__0 (symbol->string _%e173631%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx173584%_ _%src173585%_ _%ctx173586%_ _%marks173587%_)
        (if (##structure? _%stx173584%_)
            (let ((_%$e173589%_ (gx#sealed-syntax-unwrap _%stx173584%_)))
              (if _%$e173589%_
                  _%$e173589%_
                  (if (gx#identifier? _%stx173584%_)
                      (let ((_%id173593%_
                             (gx#stx-unwrap__% _%stx173584%_ _%marks173587%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id173593%_ '1 '#f '#f)
                         (let ((_%$e173595%_
                                (##unchecked-structure-ref
                                 _%id173593%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e173595%_ _%$e173595%_ _%src173585%_))
                         _%ctx173586%_
                         (##unchecked-structure-ref _%id173593%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx173584%_)
                       (let ((_%$e173599%_ (gx#stx-source _%stx173584%_)))
                         (if _%$e173599%_ _%$e173599%_ _%src173585%_))
                       _%ctx173586%_
                       (reverse _%marks173587%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx173584%_
             _%src173585%_
             _%ctx173586%_
             (reverse _%marks173587%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx173605%_)
        (let* ((_%src173607%_ '#f)
               (_%ctx173609%_ (gx#current-expander-context))
               (_%marks173611%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx173605%_
           _%src173607%_
           _%ctx173609%_
           _%marks173611%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx173613%_ _%src173614%_)
        (let* ((_%ctx173616%_ (gx#current-expander-context))
               (_%marks173618%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx173613%_
           _%src173614%_
           _%ctx173616%_
           _%marks173618%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx173620%_ _%src173621%_ _%ctx173622%_)
        (let ((_%marks173624%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx173620%_
           _%src173621%_
           _%ctx173622%_
           _%marks173624%_))))
    (define gx#core-quote-syntax
      (lambda _g177800_
        (let ((_g177801_ (##length _g177800_)))
          (cond ((##fx= _g177801_ 1) (apply gx#core-quote-syntax__0 _g177800_))
                ((##fx= _g177801_ 2) (apply gx#core-quote-syntax__1 _g177800_))
                ((##fx= _g177801_ 3) (apply gx#core-quote-syntax__2 _g177800_))
                ((##fx= _g177801_ 4) (apply gx#core-quote-syntax__% _g177800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g177800_))))))
    (define gx#core-cons
      (lambda (_%hd173580%_ _%tl173581%_)
        (cons (gx#core-quote-syntax__0 _%hd173580%_) _%tl173581%_)))
    (define gx#core-list
      (lambda (_%hd173577%_ . _%rest173578%_)
        (cons (gx#core-quote-syntax__0 _%hd173577%_) _%rest173578%_)))
    (define gx#core-cons*
      (lambda (_%hd173574%_ . _%rest173575%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd173574%_) _%rest173575%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path173543%_ _%rel173544%_)
        (let ((_%path173561%_ (gx#stx-e _%stx-path173543%_))
              (_%reldir173562%_
               (let _%lp173546%_ ((_%relsrc173548%_
                                   (let ((_%$e173558%_
                                          (gx#stx-source _%stx-path173543%_)))
                                     (if _%$e173558%_
                                         _%$e173558%_
                                         _%rel173544%_))))
                 (if (##structure-instance-of? _%relsrc173548%_ 'gerbil#AST::t)
                     (_%lp173546%_
                      (let ((_%$e173551%_ (gx#stx-source _%relsrc173548%_)))
                        (if _%$e173551%_
                            _%$e173551%_
                            (gx#stx-e _%relsrc173548%_))))
                     (if (source-location-path? _%relsrc173548%_)
                         (path-directory
                          (source-location-path _%relsrc173548%_))
                         (if (string? _%relsrc173548%_)
                             (path-directory _%relsrc173548%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path173561%_ (path-normalize _%reldir173562%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path173567%_)
        (let ((_%rel173569%_ '#f))
          (gx#core-resolve-path__% _%stx-path173567%_ _%rel173569%_))))
    (define gx#core-resolve-path
      (lambda _g177802_
        (let ((_g177803_ (##length _g177802_)))
          (cond ((##fx= _g177803_ 1) (apply gx#core-resolve-path__0 _g177802_))
                ((##fx= _g177803_ 2) (apply gx#core-resolve-path__% _g177802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g177802_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr173499%_ _%ctx173500%_)
        (let* ((_%repr173501173508%_ _%repr173499%_)
               (_%E173503173512%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr173501173508%_
                         '([phi . subs]))
                  '#!void))
               (_%K173504173520%_
                (lambda (_%subs173515%_ _%phi173516%_)
                  (let ((_%subst173518%_
                         (if (null? _%subs173515%_)
                             '#f
                             (list->hash-table-eq _%subs173515%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst173518%_
                     _%ctx173500%_
                     _%phi173516%_
                     '#f)))))
          (if (pair? _%repr173501173508%_)
              (let ((_%hd173505173523%_ (##car _%repr173501173508%_))
                    (_%tl173506173525%_ (##cdr _%repr173501173508%_)))
                (let* ((_%phi173528%_ _%hd173505173523%_)
                       (_%subs173530%_ _%tl173506173525%_))
                  (_%K173504173520%_ _%subs173530%_ _%phi173528%_)))
              (_%E173503173512%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr173535%_)
        (let ((_%ctx173537%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr173535%_ _%ctx173537%_))))
    (define gx#core-deserialize-mark
      (lambda _g177804_
        (let ((_g177805_ (##length _g177804_)))
          (cond ((##fx= _g177805_ 1)
                 (apply gx#core-deserialize-mark__0 _g177804_))
                ((##fx= _g177805_ 2)
                 (apply gx#core-deserialize-mark__% _g177804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g177804_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx173496%_)
        (gx#stx-rewrap _%stx173496%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx173494%_)
        (gx#stx-unwrap__% _%stx173494%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx173464%_)
        (let* ((_%g173465173473%_ (gx#current-expander-marks))
               (_%else173467173481%_ (lambda () _%stx173464%_))
               (_%K173469173486%_
                (lambda (_%hd173484%_)
                  (gx#stx-apply-mark _%stx173464%_ _%hd173484%_))))
          (if (pair? _%g173465173473%_)
              (let* ((_%hd173470173489%_ (##car _%g173465173473%_))
                     (_%hd173492%_ _%hd173470173489%_))
                (_%K173469173486%_ _%hd173492%_))
              (_%else173467173481%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym173462%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym173462%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx173447%_ _%E173448%_)
        (let ((_%bind173450%_ (gx#resolve-identifier__0 _%stx173447%_)))
          (if (##structure-direct-instance-of?
               _%bind173450%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind173450%_ '5 '#f '#f)
              (_%E173448%_ _%stx173447%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx173455%_)
        (let ((_%E173457%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx173455%_ _%E173457%_))))
    (define gx#syntax-local-e
      (lambda _g177806_
        (let ((_g177807_ (##length _g177806_)))
          (cond ((##fx= _g177807_ 1) (apply gx#syntax-local-e__0 _g177806_))
                ((##fx= _g177807_ 2) (apply gx#syntax-local-e__% _g177806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g177806_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx173431%_ _%E173432%_)
        (let ((_%e173434%_ (gx#syntax-local-e__% _%stx173431%_ _%E173432%_)))
          (if (##structure-instance-of? _%e173434%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e173434%_ '1 '#f '#f)
              _%e173434%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx173439%_)
        (let ((_%E173441%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx173439%_ _%E173441%_))))
    (define gx#syntax-local-value
      (lambda _g177808_
        (let ((_g177809_ (##length _g177808_)))
          (cond ((##fx= _g177809_ 1)
                 (apply gx#syntax-local-value__0 _g177808_))
                ((##fx= _g177809_ 2)
                 (apply gx#syntax-local-value__% _g177808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g177808_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx173428%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx173428%_)))))
