(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1771030480)
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
      (lambda _%$args177126%_
        (apply make-instance gx#expander-context::t _%$args177126%_)))
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
      (lambda _%$args177123%_
        (apply make-instance gx#root-context::t _%$args177123%_)))
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
      (lambda _%$args177120%_
        (apply make-instance gx#phi-context::t _%$args177120%_)))
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
      (lambda _%$args177117%_
        (apply make-instance gx#top-context::t _%$args177117%_)))
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
      (lambda _%$args177114%_
        (apply make-instance gx#module-context::t _%$args177114%_)))
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
      (lambda _%$args177111%_
        (apply make-instance gx#prelude-context::t _%$args177111%_)))
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
      (lambda _%$args177108%_
        (apply make-instance gx#local-context::t _%$args177108%_)))
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
      (lambda (_%self177081%_ _%id177082%_ _%super177083%_)
        (let ((_%self177086%_ _%self177081%_))
          (if (##fx< '3 (##structure-length _%self177086%_))
              (begin
                (##unchecked-structure-set!
                 _%self177086%_
                 _%id177082%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177086%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177086%_
                 _%super177083%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self177086%_
                     '3
                     (##structure-length _%self177086%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self177099%_ _%id177100%_)
        (let ((_%super177102%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self177099%_
           _%id177100%_
           _%super177102%_))))
    (define gx#phi-context:::init!
      (lambda _g177168_
        (let ((_g177169_ (##length _g177168_)))
          (cond ((##fx= _g177169_ 2)
                 (apply gx#phi-context:::init!__0 _g177168_))
                ((##fx= _g177169_ 3)
                 (apply gx#phi-context:::init!__% _g177168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g177168_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self176934%_ _%super176935%_)
        (let ((_%self176938%_ _%self176934%_))
          (if (##fx< '3 (##structure-length _%self176938%_))
              (begin
                (##unchecked-structure-set!
                 _%self176938%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self176938%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self176938%_
                 _%super176935%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self176938%_
                     '3
                     (##structure-length _%self176938%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self176951%_)
        (let ((_%super176953%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self176951%_ _%super176953%_))))
    (define gx#local-context:::init!
      (lambda _g177170_
        (let ((_g177171_ (##length _g177170_)))
          (cond ((##fx= _g177171_ 1)
                 (apply gx#local-context:::init!__0 _g177170_))
                ((##fx= _g177171_ 2)
                 (apply gx#local-context:::init!__% _g177170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g177170_))))))
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
      (lambda _%$args176808%_
        (apply make-instance gx#binding::t _%$args176808%_)))
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
      (lambda (_%self176791%_ _%id176792%_ _%key176793%_ _%phi176794%_)
        (let ((_%self176797%_ _%self176791%_))
          (##unchecked-structure-set! _%self176797%_ _%id176792%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self176797%_ _%key176793%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self176797%_
           _%phi176794%_
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
      (lambda _%$args176666%_
        (apply make-instance gx#runtime-binding::t _%$args176666%_)))
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
      (lambda _%$args176663%_
        (apply make-instance gx#local-binding::t _%$args176663%_)))
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
      (lambda _%$args176660%_
        (apply make-instance gx#top-binding::t _%$args176660%_)))
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
      (lambda _%$args176657%_
        (apply make-instance gx#module-binding::t _%$args176657%_)))
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
      (lambda _%$args176654%_
        (apply make-instance gx#extern-binding::t _%$args176654%_)))
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
      (lambda (_%self176270%_
               _%id176271%_
               _%key176272%_
               _%phi176273%_
               _%ctx176274%_)
        (let ((_%self176277%_ _%self176270%_))
          (gx#binding:::init!
           _%self176277%_
           _%id176271%_
           _%key176272%_
           _%phi176273%_)
          (##unchecked-structure-set!
           _%self176277%_
           _%ctx176274%_
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
      (lambda _%$args176023%_
        (apply make-instance gx#syntax-binding::t _%$args176023%_)))
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
      (lambda _%$args176020%_
        (apply make-instance gx#import-binding::t _%$args176020%_)))
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
      (lambda _%$args176017%_
        (apply make-instance gx#alias-binding::t _%$args176017%_)))
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
      (lambda (_%self175999%_
               _%id176000%_
               _%key176001%_
               _%phi176002%_
               _%e176003%_)
        (let ((_%self176006%_ _%self175999%_))
          (gx#binding:::init!
           _%self176006%_
           _%id176000%_
           _%key176001%_
           _%phi176002%_)
          (##unchecked-structure-set! _%self176006%_ _%e176003%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self175857%_
               _%id175858%_
               _%key175859%_
               _%phi175860%_
               _%e175861%_
               _%ctx175862%_
               _%weak?175863%_)
        (let ((_%self175866%_ _%self175857%_))
          (gx#binding:::init!
           _%self175866%_
           _%id175858%_
           _%key175859%_
           _%phi175860%_)
          (##unchecked-structure-set! _%self175866%_ _%e175861%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self175866%_ _%ctx175862%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self175866%_
           _%weak?175863%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self175717%_
               _%id175718%_
               _%key175719%_
               _%phi175720%_
               _%e175721%_)
        (let ((_%self175724%_ _%self175717%_))
          (gx#binding:::init!
           _%self175724%_
           _%id175718%_
           _%key175719%_
           _%phi175720%_)
          (##unchecked-structure-set! _%self175724%_ _%e175721%_ '5 '#f '#f))))
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
      (lambda _%$args175592%_
        (apply make-instance gx#expander::t _%$args175592%_)))
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
      (lambda _%$args175589%_
        (apply make-instance gx#core-expander::t _%$args175589%_)))
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
      (lambda _%$args175586%_
        (apply make-instance gx#expression-form::t _%$args175586%_)))
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
      (lambda _%$args175583%_
        (apply make-instance gx#special-form::t _%$args175583%_)))
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
      (lambda _%$args175580%_
        (apply make-instance gx#definition-form::t _%$args175580%_)))
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
      (lambda _%$args175577%_
        (apply make-instance gx#top-special-form::t _%$args175577%_)))
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
      (lambda _%$args175574%_
        (apply make-instance gx#module-special-form::t _%$args175574%_)))
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
      (lambda _%$args175571%_
        (apply make-instance gx#feature-expander::t _%$args175571%_)))
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
      (lambda _%$args175568%_
        (apply make-instance gx#private-feature-expander::t _%$args175568%_)))
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
      (lambda _%$args175565%_
        (apply make-instance gx#reserved-expander::t _%$args175565%_)))
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
      (lambda _%$args175562%_
        (apply make-instance gx#macro-expander::t _%$args175562%_)))
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
      (lambda _%$args175559%_
        (apply make-instance gx#rename-macro-expander::t _%$args175559%_)))
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
      (lambda _%$args175556%_
        (apply make-instance gx#user-expander::t _%$args175556%_)))
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
      (lambda _%$args175553%_
        (apply make-instance gx#expander-mark::t _%$args175553%_)))
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
      (lambda (_%ctx175537%_
               _%message175538%_
               _%stx175539%_
               .
               _%details175540%_)
        (let ((_%ctx175551%_
               (let ((_%$e175542%_ _%ctx175537%_))
                 (if _%$e175542%_
                     _%$e175542%_
                     (let ((_%$e175545%_ (gx#core-context-top__0)))
                       (if _%$e175545%_
                           ((lambda (_%ctx175548%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx175548%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e175545%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message175538%_
                  (cons _%stx175539%_ _%details175540%_)
                  _%ctx175551%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx175524%_ _%expression?175525%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx175524%_ _%expression?175525%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx175530%_)
        (let ((_%expression?175532%_ '#f))
          (gx#eval-syntax__% _%stx175530%_ _%expression?175532%_))))
    (define gx#eval-syntax
      (lambda _g177172_
        (let ((_g177173_ (##length _g177172_)))
          (cond ((##fx= _g177173_ 1) (apply gx#eval-syntax__0 _g177172_))
                ((##fx= _g177173_ 2) (apply gx#eval-syntax__% _g177172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g177172_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx175509%_ _%expression?175510%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx175509%_ _%expression?175510%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx175516%_)
        (let ((_%expression?175518%_ '#f))
          (gx#eval-syntax+1__% _%stx175516%_ _%expression?175518%_))))
    (define gx#eval-syntax+1
      (lambda _g177174_
        (let ((_g177175_ (##length _g177174_)))
          (cond ((##fx= _g177175_ 1) (apply gx#eval-syntax+1__0 _g177174_))
                ((##fx= _g177175_ 2) (apply gx#eval-syntax+1__% _g177174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g177174_))))))
    (define gx#eval-expression+1
      (lambda (_%stx175506%_) (gx#eval-syntax+1__% _%stx175506%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx175504%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx175504%_))))
    (define gx#core-expand__%
      (lambda (_%stx175491%_ _%expression?175492%_)
        (if _%expression?175492%_
            (gx#core-expand-expression _%stx175491%_)
            (gx#core-expand-top _%stx175491%_))))
    (define gx#core-expand__0
      (lambda (_%stx175497%_)
        (let ((_%expression?175499%_ '#f))
          (gx#core-expand__% _%stx175497%_ _%expression?175499%_))))
    (define gx#core-expand
      (lambda _g177176_
        (let ((_g177177_ (##length _g177176_)))
          (cond ((##fx= _g177177_ 1) (apply gx#core-expand__0 _g177176_))
                ((##fx= _g177177_ 2) (apply gx#core-expand__% _g177176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g177176_))))))
    (define gx#core-expand-top
      (lambda (_%stx175458%_)
        (let* ((_%stx175460%_ (gx#core-expand*__0 _%stx175458%_))
               (_%e175461175468%_ _%stx175460%_)
               (_%E175463175472%_
                (lambda () (gx#core-expand-expression _%stx175460%_)))
               (_%E175462175486%_
                (lambda ()
                  (if (gx#stx-pair? _%e175461175468%_)
                      (let ((_%e175464175476%_
                             (gx#syntax-e _%e175461175468%_)))
                        (let ((_%hd175465175479%_ (##car _%e175464175476%_))
                              (_%tl175466175481%_ (##cdr _%e175464175476%_)))
                          (let ((_%form175484%_ _%hd175465175479%_))
                            (if (gx#core-bound-identifier?__0 _%form175484%_)
                                _%stx175460%_
                                (_%E175463175472%_)))))
                      (_%E175463175472%_)))))
          (_%E175462175486%_))))
    (define gx#core-expand-expression
      (lambda (_%stx175390%_)
        (letrec ((_%sealed-expression?175392%_
                  (lambda (_%hd175428%_)
                    (if (gx#sealed-syntax? _%hd175428%_)
                        (let* ((_%e175429175436%_ _%hd175428%_)
                               (_%E175431175440%_ (lambda () '#f))
                               (_%E175430175454%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e175429175436%_)
                                      (let ((_%e175432175444%_
                                             (gx#syntax-e _%e175429175436%_)))
                                        (let ((_%hd175433175447%_
                                               (##car _%e175432175444%_))
                                              (_%tl175434175449%_
                                               (##cdr _%e175432175444%_)))
                                          (let ((_%form175452%_
                                                 _%hd175433175447%_))
                                            (gx#core-bound-identifier?__%
                                             _%form175452%_
                                             gx#expression-form-binding?))))
                                      (_%E175431175440%_)))))
                          (_%E175430175454%_))
                        '#f)))
                 (_%illegal-expression175393%_
                  (lambda (_%hd175425%_ . _%_175426%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx175390%_
                     _%hd175425%_)))
                 (_%expand-e175394%_
                  (lambda (_%form175417%_ _%hd175418%_)
                    (let ((_%bind175420%_
                           (if (##structure-instance-of?
                                _%form175417%_
                                'gx#binding::t)
                               _%form175417%_
                               (gx#resolve-identifier__0 _%form175417%_))))
                      (if (gx#core-expander-binding? _%bind175420%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind175420%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd175418%_
                            (gx#stx-source _%stx175390%_)))
                          (if (##structure-direct-instance-of?
                               _%bind175420%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind175420%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd175418%_
                                 (gx#stx-source _%stx175390%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx175390%_
                               _%form175417%_)))))))
          (let ((_%hd175396%_ (gx#core-expand-head _%stx175390%_)))
            (if (_%sealed-expression?175392%_ _%hd175396%_)
                _%hd175396%_
                (if (gx#stx-pair? _%hd175396%_)
                    (let* ((_%form175400%_ (gx#stx-car _%hd175396%_))
                           (_%bind175402%_
                            (if (gx#identifier? _%form175400%_)
                                (gx#resolve-identifier__0 _%form175400%_)
                                '#f)))
                      (if (or (not _%bind175402%_)
                              (not (gx#core-expander-binding? _%bind175402%_)))
                          (_%expand-e175394%_
                           '%%app
                           (cons '%%app _%hd175396%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind175402%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd175396%_
                               _%illegal-expression175393%_)
                              (if (gx#expression-form-binding? _%bind175402%_)
                                  (_%expand-e175394%_
                                   _%bind175402%_
                                   _%hd175396%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind175402%_)
                                      (gx#core-expand-expression
                                       (_%expand-e175394%_
                                        _%bind175402%_
                                        _%hd175396%_))
                                      (_%illegal-expression175393%_
                                       _%hd175396%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd175396%_)
                        (_%illegal-expression175393%_ _%hd175396%_)
                        (if (gx#identifier? _%hd175396%_)
                            (_%expand-e175394%_
                             '%%ref
                             (cons '%%ref (cons _%hd175396%_ '())))
                            (if (gx#stx-datum? _%hd175396%_)
                                (_%expand-e175394%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd175396%_ '())))
                                (_%illegal-expression175393%_
                                 _%hd175396%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx175385%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx175388%_ (gx#core-expand-expression _%stx175385%_)))
             (values _%stx175388%_ (gx#eval-syntax* _%stx175388%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx175366%_ _%stop?175367%_)
        (let _%lp175369%_ ((_%stx175371%_ _%stx175366%_))
          (if (_%stop?175367%_ _%stx175371%_)
              _%stx175371%_
              (let ((_%rstx175373%_ (gx#core-expand1 _%stx175371%_)))
                (if (eq? _%stx175371%_ _%rstx175373%_)
                    _%stx175371%_
                    (_%lp175369%_ _%rstx175373%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx175378%_)
        (let ((_%stop?175380%_ false))
          (gx#core-expand*__% _%stx175378%_ _%stop?175380%_))))
    (define gx#core-expand*
      (lambda _g177178_
        (let ((_g177179_ (##length _g177178_)))
          (cond ((##fx= _g177179_ 1) (apply gx#core-expand*__0 _g177178_))
                ((##fx= _g177179_ 2) (apply gx#core-expand*__% _g177178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g177178_))))))
    (define gx#core-expand1
      (lambda (_%stx175318%_)
        (letrec ((_%step175320%_
                  (lambda (_%hd175357%_)
                    (let ((_%bind175359%_
                           (gx#resolve-identifier__0 _%hd175357%_)))
                      (if (##structure-instance-of?
                           _%bind175359%_
                           'gx#runtime-binding::t)
                          _%stx175318%_
                          (if (##structure-direct-instance-of?
                               _%bind175359%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind175359%_
                                '5
                                '#f
                                '#f)
                               _%stx175318%_)
                              (if (not _%bind175359%_)
                                  _%stx175318%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx175318%_))))))))
          (let* ((_%e175321175329%_ _%stx175318%_)
                 (_%E175327175333%_ (lambda () _%stx175318%_))
                 (_%E175323175339%_
                  (lambda ()
                    (let ((_%hd175337%_ _%e175321175329%_))
                      (if (gx#identifier? _%hd175337%_)
                          (_%step175320%_ _%hd175337%_)
                          (_%E175327175333%_)))))
                 (_%E175322175353%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175321175329%_)
                        (let ((_%e175324175343%_
                               (gx#syntax-e _%e175321175329%_)))
                          (let ((_%hd175325175346%_ (##car _%e175324175343%_))
                                (_%tl175326175348%_ (##cdr _%e175324175343%_)))
                            (let ((_%hd175351%_ _%hd175325175346%_))
                              (if (gx#identifier? _%hd175351%_)
                                  (_%step175320%_ _%hd175351%_)
                                  (_%E175323175339%_)))))
                        (_%E175323175339%_)))))
            (_%E175322175353%_)))))
    (define gx#core-expand-head
      (lambda (_%stx175284%_)
        (letrec ((_%stop?175286%_
                  (lambda (_%stx175288%_)
                    (let* ((_%e175289175296%_ _%stx175288%_)
                           (_%E175291175300%_ (lambda () '#f))
                           (_%E175290175314%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175289175296%_)
                                  (let ((_%e175292175304%_
                                         (gx#syntax-e _%e175289175296%_)))
                                    (let ((_%hd175293175307%_
                                           (##car _%e175292175304%_))
                                          (_%tl175294175309%_
                                           (##cdr _%e175292175304%_)))
                                      (let ((_%hd175312%_ _%hd175293175307%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd175312%_))))
                                  (_%E175291175300%_)))))
                      (_%E175290175314%_)))))
          (gx#core-expand*__% _%stx175284%_ _%stop?175286%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx175090%_
               _%expand-special175091%_
               _%begin-form175092%_
               _%expand-e175093%_)
        (letrec ((_%expand-splice175095%_
                  (lambda (_%hd175258%_
                           _%body175259%_
                           _%rest175260%_
                           _%r175261%_)
                    (if (gx#stx-list? _%body175259%_)
                        (_%K175099%_
                         (gx#stx-foldr cons _%rest175260%_ _%body175259%_)
                         _%r175261%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx175090%_
                         _%hd175258%_))))
                 (_%expand-cond-expand175096%_
                  (lambda (_%hd175254%_ _%rest175255%_ _%r175256%_)
                    (_%K175099%_
                     (cons (gx#core-expand-cond-expand% _%hd175254%_)
                           _%rest175255%_)
                     _%r175256%_)))
                 (_%expand-include175097%_
                  (lambda (_%hd175203%_ _%rest175204%_ _%r175205%_)
                    (let* ((_%e175206175216%_ _%hd175203%_)
                           (_%E175208175220%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e175206175216%_)))
                           (_%E175207175250%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175206175216%_)
                                  (let ((_%e175209175224%_
                                         (gx#syntax-e _%e175206175216%_)))
                                    (let ((_%hd175210175227%_
                                           (##car _%e175209175224%_))
                                          (_%tl175211175229%_
                                           (##cdr _%e175209175224%_)))
                                      (if (gx#stx-pair? _%tl175211175229%_)
                                          (let ((_%e175212175232%_
                                                 (gx#syntax-e
                                                  _%tl175211175229%_)))
                                            (let ((_%hd175213175235%_
                                                   (##car _%e175212175232%_))
                                                  (_%tl175214175237%_
                                                   (##cdr _%e175212175232%_)))
                                              (let ((_%path175240%_
                                                     _%hd175213175235%_))
                                                (if (gx#stx-null?
                                                     _%tl175214175237%_)
                                                    (if (gx#stx-string?
                                                         _%path175240%_)
                                                        (let* ((_%rpath175242%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path175240%_
                         (gx#stx-source _%hd175203%_)))
                       (_%block175244%_
                        (gx#core-expand-include%__%
                         _%hd175203%_
                         _%rpath175242%_))
                       (_%rbody175247%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block175244%_
                            _%expand-special175091%_
                            '#f
                            _%expand-e175093%_))
                         gx#current-expander-path
                         (cons _%rpath175242%_ (gx#current-expander-path)))))
                  (_%K175099%_
                   _%rest175204%_
                   (foldr__0 cons _%r175205%_ _%rbody175247%_)))
                (_%E175208175220%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E175208175220%_)))))
                                          (_%E175208175220%_))))
                                  (_%E175208175220%_)))))
                      (_%E175207175250%_))))
                 (_%expand-expression175098%_
                  (lambda (_%hd175199%_ _%rest175200%_ _%r175201%_)
                    (_%K175099%_
                     _%rest175200%_
                     (cons (_%expand-e175093%_ _%hd175199%_) _%r175201%_))))
                 (_%K175099%_
                  (lambda (_%rest175129%_ _%r175130%_)
                    (let* ((_%e175131175138%_ _%rest175129%_)
                           (_%E175133175142%_
                            (lambda ()
                              (if _%begin-form175092%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form175092%_
                                    (reverse _%r175130%_))
                                   (gx#stx-source _%stx175090%_))
                                  _%r175130%_)))
                           (_%E175132175195%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175131175138%_)
                                  (let ((_%e175134175146%_
                                         (gx#syntax-e _%e175131175138%_)))
                                    (let ((_%hd175135175149%_
                                           (##car _%e175134175146%_))
                                          (_%tl175136175151%_
                                           (##cdr _%e175134175146%_)))
                                      (let* ((_%hd175154%_ _%hd175135175149%_)
                                             (_%rest175156%_
                                              _%tl175136175151%_)
                                             (_%hd175158%_
                                              (gx#core-expand-head
                                               _%hd175154%_))
                                             (_%e175159175166%_ _%hd175158%_)
                                             (_%E175161175170%_
                                              (lambda ()
                                                (_%expand-expression175098%_
                                                 _%hd175158%_
                                                 _%rest175156%_
                                                 _%r175130%_)))
                                             (_%E175160175191%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e175159175166%_)
                                                    (let ((_%e175162175174%_
                                                           (gx#syntax-e
                                                            _%e175159175166%_)))
                                                      (let ((_%hd175163175177%_
                                                             (##car _%e175162175174%_))
                                                            (_%tl175164175179%_
                                                             (##cdr _%e175162175174%_)))
                                                        (let* ((_%form175182%_
                                                                _%hd175163175177%_)
                                                               (_%body175184%_
                                                                _%tl175164175179%_)
                                                               (_%bind175186%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form175182%_)
                            (gx#resolve-identifier__0 _%form175182%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind175186%_)
                      (let ((_%$e175188%_
                             (##unchecked-structure-ref
                              _%bind175186%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e175188%_)
                            (_%expand-splice175095%_
                             _%hd175158%_
                             _%body175184%_
                             _%rest175156%_
                             _%r175130%_)
                            (if (eq? '%#cond-expand _%$e175188%_)
                                (_%expand-cond-expand175096%_
                                 _%hd175158%_
                                 _%rest175156%_
                                 _%r175130%_)
                                (if (eq? '%#include _%$e175188%_)
                                    (_%expand-include175097%_
                                     _%hd175158%_
                                     _%rest175156%_
                                     _%r175130%_)
                                    (_%expand-special175091%_
                                     _%hd175158%_
                                     _%K175099%_
                                     _%rest175156%_
                                     _%r175130%_)))))
                      (_%expand-expression175098%_
                       _%hd175158%_
                       _%rest175156%_
                       _%r175130%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E175161175170%_)))))
                                        (_%E175160175191%_))))
                                  (_%E175133175142%_)))))
                      (_%E175132175195%_)))))
          (let* ((_%e175100175107%_ _%stx175090%_)
                 (_%E175102175111%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e175100175107%_)))
                 (_%E175101175125%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175100175107%_)
                        (let ((_%e175103175115%_
                               (gx#syntax-e _%e175100175107%_)))
                          (let ((_%hd175104175118%_ (##car _%e175103175115%_))
                                (_%tl175105175120%_ (##cdr _%e175103175115%_)))
                            (let ((_%body175123%_ _%tl175105175120%_))
                              (if (gx#stx-list? _%body175123%_)
                                  (_%K175099%_ _%body175123%_ '())
                                  (_%E175102175111%_)))))
                        (_%E175102175111%_)))))
            (_%E175101175125%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx175266%_ _%expand-special175267%_)
        (let* ((_%begin-form175269%_ '%#begin)
               (_%expand-e175271%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx175266%_
           _%expand-special175267%_
           _%begin-form175269%_
           _%expand-e175271%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx175273%_ _%expand-special175274%_ _%begin-form175275%_)
        (let ((_%expand-e175277%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx175273%_
           _%expand-special175274%_
           _%begin-form175275%_
           _%expand-e175277%_))))
    (define gx#core-expand-block
      (lambda _g177180_
        (let ((_g177181_ (##length _g177180_)))
          (cond ((##fx= _g177181_ 2) (apply gx#core-expand-block__0 _g177180_))
                ((##fx= _g177181_ 3) (apply gx#core-expand-block__1 _g177180_))
                ((##fx= _g177181_ 4) (apply gx#core-expand-block__% _g177180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g177180_))))))
    (define gx#core-expand-block*
      (lambda (_%stx175038%_ _%expand-special175039%_)
        (let* ((_%g175040175051%_
                (gx#core-expand-block__1
                 _%stx175038%_
                 _%expand-special175039%_
                 '#f))
               (_%E175044175055%_
                (lambda ()
                  (error '"No clause matching"
                         _%g175040175051%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K175049175086%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx175038%_)))
                (_%K175046175072%_ (lambda (_%expr175070%_) _%expr175070%_))
                (_%K175045175061%_
                 (lambda (_%body175059%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body175059%_))
                    (gx#stx-source _%stx175038%_)))))
            (let ((_%try-match175042175082%_
                   (lambda ()
                     (if (pair? _%g175040175051%_)
                         (let ((_%tl175048175077%_ (##cdr _%g175040175051%_))
                               (_%hd175047175075%_ (##car _%g175040175051%_)))
                           (if (null? _%tl175048175077%_)
                               (let ((_%expr175080%_ _%hd175047175075%_))
                                 (_%K175046175072%_ _%expr175080%_))
                               (let ((_%body175064%_ _%g175040175051%_))
                                 (_%K175045175061%_ _%body175064%_))))
                         (let ((_%body175064%_ _%g175040175051%_))
                           (_%K175045175061%_ _%body175064%_))))))
              (if (null? _%g175040175051%_)
                  (_%K175049175086%_)
                  (_%try-match175042175082%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx174864%_)
        (letrec ((_%satisfied?174866%_
                  (lambda (_%condition174967%_)
                    (let* ((_%e174968174983%_ _%condition174967%_)
                           (_%E174978174987%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e174968174983%_)))
                           (_%E174971175006%_
                            (lambda ()
                              (if (gx#stx-pair? _%e174968174983%_)
                                  (let ((_%e174979174991%_
                                         (gx#syntax-e _%e174968174983%_)))
                                    (let ((_%hd174980174994%_
                                           (##car _%e174979174991%_))
                                          (_%tl174981174996%_
                                           (##cdr _%e174979174991%_)))
                                      (let* ((_%combinator174999%_
                                              _%hd174980174994%_)
                                             (_%body175001%_
                                              _%tl174981174996%_))
                                        (if (gx#stx-list? _%body175001%_)
                                            (let ((_%$e175003%_
                                                   (gx#stx-e
                                                    _%combinator174999%_)))
                                              (if (eq? 'not _%$e175003%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?174866%_
                                                        _%body175001%_))
                                                  (if (eq? 'and _%$e175003%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?174866%_
                                                       _%body175001%_)
                                                      (if (eq? 'or
                                                               _%$e175003%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?174866%_
                                                           _%body175001%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e175003%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body175001%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx174864%_
                       _%combinator174999%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E174978174987%_)))))
                                  (_%E174978174987%_))))
                           (_%E174970175028%_
                            (lambda ()
                              (if (gx#stx-pair? _%e174968174983%_)
                                  (let ((_%e174972175010%_
                                         (gx#syntax-e _%e174968174983%_)))
                                    (let ((_%hd174973175013%_
                                           (##car _%e174972175010%_))
                                          (_%tl174974175015%_
                                           (##cdr _%e174972175010%_)))
                                      (if (and (gx#identifier?
                                                _%hd174973175013%_)
                                               (gx#core-identifier=?
                                                _%hd174973175013%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl174974175015%_)
                                              (let ((_%e174975175018%_
                                                     (gx#syntax-e
                                                      _%tl174974175015%_)))
                                                (let ((_%hd174976175021%_
                                                       (##car _%e174975175018%_))
                                                      (_%tl174977175023%_
                                                       (##cdr _%e174975175018%_)))
                                                  (let ((_%expr175026%_
                                                         _%hd174976175021%_))
                                                    (if (gx#stx-null?
                                                         _%tl174977175023%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr175026%_)
                                                        (_%E174971175006%_)))))
                                              (_%E174971175006%_))
                                          (_%E174971175006%_))))
                                  (_%E174971175006%_))))
                           (_%E174969175034%_
                            (lambda ()
                              (let ((_%id175032%_ _%e174968174983%_))
                                (if (gx#identifier? _%id175032%_)
                                    (gx#core-bound-identifier?__%
                                     _%id175032%_
                                     gx#feature-binding?)
                                    (_%E174970175028%_))))))
                      (_%E174969175034%_))))
                 (_%loop174867%_
                  (lambda (_%rest174897%_)
                    (let* ((_%e174898174906%_ _%rest174897%_)
                           (_%E174904174910%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e174898174906%_)))
                           (_%E174900174914%_
                            (lambda ()
                              (if (gx#stx-null? _%e174898174906%_)
                                  '()
                                  (_%E174904174910%_))))
                           (_%E174899174963%_
                            (lambda ()
                              (if (gx#stx-pair? _%e174898174906%_)
                                  (let ((_%e174901174918%_
                                         (gx#syntax-e _%e174898174906%_)))
                                    (let ((_%hd174902174921%_
                                           (##car _%e174901174918%_))
                                          (_%tl174903174923%_
                                           (##cdr _%e174901174918%_)))
                                      (let* ((_%hd174926%_ _%hd174902174921%_)
                                             (_%rest174928%_
                                              _%tl174903174923%_)
                                             (_%e174929174936%_ _%hd174926%_)
                                             (_%E174931174940%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e174929174936%_)))
                                             (_%E174930174959%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e174929174936%_)
                                                    (let ((_%e174932174944%_
                                                           (gx#syntax-e
                                                            _%e174929174936%_)))
                                                      (let ((_%hd174933174947%_
                                                             (##car _%e174932174944%_))
                                                            (_%tl174934174949%_
                                                             (##cdr _%e174932174944%_)))
                                                        (let* ((_%condition174952%_
                                                                _%hd174933174947%_)
                                                               (_%body174954%_
                                                                _%tl174934174949%_))
                                                          (if (gx#stx-eq?
                                                               _%condition174952%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest174928%_)
                          _%body174954%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx174864%_
                           _%hd174926%_))
                      (if (_%satisfied?174866%_ _%condition174952%_)
                          _%body174954%_
                          (_%loop174867%_ _%rest174928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E174931174940%_)))))
                                        (_%E174930174959%_))))
                                  (_%E174900174914%_)))))
                      (_%E174899174963%_)))))
          (let* ((_%e174868174875%_ _%stx174864%_)
                 (_%E174870174879%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e174868174875%_)))
                 (_%E174869174893%_
                  (lambda ()
                    (if (gx#stx-pair? _%e174868174875%_)
                        (let ((_%e174871174883%_
                               (gx#syntax-e _%e174868174875%_)))
                          (let ((_%hd174872174886%_ (##car _%e174871174883%_))
                                (_%tl174873174888%_ (##cdr _%e174871174883%_)))
                            (let ((_%clauses174891%_ _%tl174873174888%_))
                              (if (gx#stx-list? _%clauses174891%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop174867%_ _%clauses174891%_))
                                  (_%E174870174879%_)))))
                        (_%E174870174879%_)))))
            (_%E174869174893%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx174807%_ _%rpath174808%_)
        (let* ((_%e174809174819%_ _%stx174807%_)
               (_%E174811174823%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e174809174819%_)))
               (_%E174810174850%_
                (lambda ()
                  (if (gx#stx-pair? _%e174809174819%_)
                      (let ((_%e174812174827%_
                             (gx#syntax-e _%e174809174819%_)))
                        (let ((_%hd174813174830%_ (##car _%e174812174827%_))
                              (_%tl174814174832%_ (##cdr _%e174812174827%_)))
                          (if (gx#stx-pair? _%tl174814174832%_)
                              (let ((_%e174815174835%_
                                     (gx#syntax-e _%tl174814174832%_)))
                                (let ((_%hd174816174838%_
                                       (##car _%e174815174835%_))
                                      (_%tl174817174840%_
                                       (##cdr _%e174815174835%_)))
                                  (let ((_%path174843%_ _%hd174816174838%_))
                                    (if (gx#stx-null? _%tl174817174840%_)
                                        (if (gx#stx-string? _%path174843%_)
                                            (let ((_%rpath174848%_
                                                   (let ((_%$e174845%_
                                                          _%rpath174808%_))
                                                     (if _%$e174845%_
                                                         _%$e174845%_
                                                         (gx#core-resolve-path__%
                                                          _%path174843%_
                                                          (gx#stx-source
                                                           _%stx174807%_))))))
                                              (if (member _%rpath174848%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx174807%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath174848%_))
                                                    (gx#stx-source
                                                     _%stx174807%_)))))
                                            (_%E174811174823%_))
                                        (_%E174811174823%_)))))
                              (_%E174811174823%_))))
                      (_%E174811174823%_)))))
          (_%E174810174850%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx174857%_)
        (let ((_%rpath174859%_ '#f))
          (gx#core-expand-include%__% _%stx174857%_ _%rpath174859%_))))
    (define gx#core-expand-include%
      (lambda _g177182_
        (let ((_g177183_ (##length _g177182_)))
          (cond ((##fx= _g177183_ 1)
                 (apply gx#core-expand-include%__0 _g177182_))
                ((##fx= _g177183_ 2)
                 (apply gx#core-expand-include%__% _g177182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g177182_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K174773%_ _%stx174774%_ _%method174775%_)
        (if (procedure? _%K174773%_)
            (let ((_%$e174778%_ (gx#stx-source _%stx174774%_)))
              (if _%$e174778%_
                  ((lambda (_%g174780174782%_)
                     (gx#stx-wrap-source
                      (_%K174773%_ _%stx174774%_)
                      _%g174780174782%_))
                   _%$e174778%_)
                  (_%K174773%_ _%stx174774%_)))
            (let ((_%$e174786%_
                   (bound-method-ref _%K174773%_ _%method174775%_)))
              (if _%$e174786%_
                  ((lambda (_%g174788174790%_)
                     (gx#core-apply-expander__%
                      _%g174788174790%_
                      _%stx174774%_
                      _%method174775%_))
                   _%$e174786%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx174774%_
                   _%method174775%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K174797%_ _%stx174798%_)
        (let ((_%method174800%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K174797%_
           _%stx174798%_
           _%method174800%_))))
    (define gx#core-apply-expander
      (lambda _g177184_
        (let ((_g177185_ (##length _g177184_)))
          (cond ((##fx= _g177185_ 2)
                 (apply gx#core-apply-expander__0 _g177184_))
                ((##fx= _g177185_ 3)
                 (apply gx#core-apply-expander__% _g177184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g177184_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self174758%_ _%stx174759%_)
        (let ((_%self174762%_ _%self174758%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx174759%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self174601%_ _%stx174602%_)
        (let* ((_%self174605%_ _%self174601%_)
               (_%self174614174620%_ _%self174605%_)
               (_%E174616174623%_
                (lambda ()
                  (error '"No clause matching"
                         _%self174614174620%_
                         '((macro-expander K)))
                  '#!void))
               (_%K174617174628%_
                (lambda (_%K174626%_)
                  (gx#core-apply-expander__0 _%K174626%_ _%stx174602%_)))
               (_%e174618174631%_
                (##unchecked-structure-ref _%self174614174620%_ '1 '#f '#f))
               (_%K174634%_ _%e174618174631%_))
          (_%K174617174628%_ _%K174634%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self174444%_ _%stx174445%_)
        (let ((_%self174448%_ _%self174444%_))
          (if (gx#sealed-syntax? _%stx174445%_)
              _%stx174445%_
              (let* ((_%self174457174463%_ _%self174448%_)
                     (_%E174459174466%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self174457174463%_
                               '((core-expander K)))
                        '#!void))
                     (_%K174460174471%_
                      (lambda (_%K174469%_)
                        (gx#core-apply-expander__0 _%K174469%_ _%stx174445%_)))
                     (_%e174461174474%_
                      (##unchecked-structure-ref
                       _%self174457174463%_
                       '1
                       '#f
                       '#f))
                     (_%K174477%_ _%e174461174474%_))
                (_%K174460174471%_ _%K174477%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self174295%_ _%stx174296%_ _%top?174297%_)
        (let ((_%self174300%_ _%self174295%_))
          (if (_%top?174297%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self174300%_
               _%stx174296%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx174296%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self174313%_ _%stx174314%_)
        (let ((_%top?174316%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self174313%_
           _%stx174314%_
           _%top?174316%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g177186_
        (let ((_g177187_ (##length _g177186_)))
          (cond ((##fx= _g177187_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g177186_))
                ((##fx= _g177187_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g177186_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g177186_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self174158%_ _%stx174159%_)
        (let ((_%self174162%_ _%self174158%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self174162%_
           _%stx174159%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self173973%_ _%stx173974%_)
        (let* ((_%self173977%_ _%self173973%_)
               (_%self173986173992%_ _%self173977%_)
               (_%E173988173995%_
                (lambda ()
                  (error '"No clause matching"
                         _%self173986173992%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K173989174028%_
                (lambda (_%id173998%_)
                  (let* ((_%e173999174006%_ _%stx173974%_)
                         (_%E174001174010%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e173999174006%_)))
                         (_%E174000174024%_
                          (lambda ()
                            (if (gx#stx-pair? _%e173999174006%_)
                                (let ((_%e174002174014%_
                                       (gx#syntax-e _%e173999174006%_)))
                                  (let ((_%hd174003174017%_
                                         (##car _%e174002174014%_))
                                        (_%tl174004174019%_
                                         (##cdr _%e174002174014%_)))
                                    (let ((_%body174022%_ _%tl174004174019%_))
                                      (gx#core-cons
                                       _%id173998%_
                                       _%body174022%_))))
                                (_%E174001174010%_)))))
                    (_%E174000174024%_))))
               (_%e173990174031%_
                (##unchecked-structure-ref _%self173986173992%_ '1 '#f '#f))
               (_%id174034%_ _%e173990174031%_))
          (_%K173989174028%_ _%id174034%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self173800%_ _%stx173801%_ _%method173802%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx173801%_))
              (force-output))
            '#!void)
        (let* ((_%self173803173811%_ _%self173800%_)
               (_%E173805173814%_
                (lambda ()
                  (error '"No clause matching"
                         _%self173803173811%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K173806173821%_
                (lambda (_%phi173817%_ _%ctx173818%_ _%K173819%_)
                  (gx#core-apply-user-macro
                   _%K173819%_
                   _%stx173801%_
                   _%ctx173818%_
                   _%phi173817%_
                   _%method173802%_))))
          (if (##structure-instance-of?
               _%self173803173811%_
               'gx#user-expander::t)
              (let* ((_%e173807173824%_
                      (##unchecked-structure-ref
                       _%self173803173811%_
                       '1
                       '#f
                       '#f))
                     (_%K173827%_ _%e173807173824%_)
                     (_%e173808173829%_
                      (##unchecked-structure-ref
                       _%self173803173811%_
                       '2
                       '#f
                       '#f))
                     (_%ctx173832%_ _%e173808173829%_)
                     (_%e173809173834%_
                      (##unchecked-structure-ref
                       _%self173803173811%_
                       '3
                       '#f
                       '#f))
                     (_%phi173837%_ _%e173809173834%_))
                (_%K173806173821%_ _%phi173837%_ _%ctx173832%_ _%K173827%_))
              (_%E173805173814%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self173842%_ _%stx173843%_)
        (let ((_%method173845%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self173842%_
           _%stx173843%_
           _%method173845%_))))
    (define gx#core-apply-user-expander
      (lambda _g177188_
        (let ((_g177189_ (##length _g177188_)))
          (cond ((##fx= _g177189_ 2)
                 (apply gx#core-apply-user-expander__0 _g177188_))
                ((##fx= _g177189_ 3)
                 (apply gx#core-apply-user-expander__% _g177188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g177188_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K173790%_
               _%stx173791%_
               _%ctx173792%_
               _%phi173793%_
               _%method173794%_)
        (let ((_%mark173796%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx173792%_
                _%phi173793%_
                _%stx173791%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K173790%_
               (gx#stx-apply-mark _%stx173791%_ _%mark173796%_)
               _%method173794%_)
              _%mark173796%_))
           gx#current-expander-marks
           (cons _%mark173796%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx173638%_ _%phi173639%_ _%ctx173640%_)
        (let _%lp173642%_ ((_%bind173644%_
                            (gx#core-resolve-identifier__%
                             _%stx173638%_
                             _%phi173639%_
                             _%ctx173640%_)))
          (if (##structure-direct-instance-of?
               _%bind173644%_
               'gx#import-binding::t)
              (_%lp173642%_
               (##unchecked-structure-ref _%bind173644%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind173644%_
                   'gx#alias-binding::t)
                  (_%lp173642%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind173644%_ '5 '#f '#f)
                    _%phi173639%_
                    _%ctx173640%_))
                  _%bind173644%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx173652%_)
        (let* ((_%phi173654%_ (gx#current-expander-phi))
               (_%ctx173656%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx173652%_
           _%phi173654%_
           _%ctx173656%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx173658%_ _%phi173659%_)
        (let ((_%ctx173661%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx173658%_
           _%phi173659%_
           _%ctx173661%_))))
    (define gx#resolve-identifier
      (lambda _g177190_
        (let ((_g177191_ (##length _g177190_)))
          (cond ((##fx= _g177191_ 1)
                 (apply gx#resolve-identifier__0 _g177190_))
                ((##fx= _g177191_ 2)
                 (apply gx#resolve-identifier__1 _g177190_))
                ((##fx= _g177191_ 3)
                 (apply gx#resolve-identifier__% _g177190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g177190_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx173593%_
               _%val173594%_
               _%rebind?173595%_
               _%phi173596%_
               _%ctx173597%_)
        (let ((_%rebind?173602%_
               (if (not _%rebind?173595%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?173595%_)
                       _%rebind?173595%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx173593%_)
           _%val173594%_
           _%rebind?173602%_
           _%phi173596%_
           _%ctx173597%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx173607%_ _%val173608%_)
        (let* ((_%rebind?173610%_ '#f)
               (_%phi173612%_ (gx#current-expander-phi))
               (_%ctx173614%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx173607%_
           _%val173608%_
           _%rebind?173610%_
           _%phi173612%_
           _%ctx173614%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx173616%_ _%val173617%_ _%rebind?173618%_)
        (let* ((_%phi173620%_ (gx#current-expander-phi))
               (_%ctx173622%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx173616%_
           _%val173617%_
           _%rebind?173618%_
           _%phi173620%_
           _%ctx173622%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx173624%_ _%val173625%_ _%rebind?173626%_ _%phi173627%_)
        (let ((_%ctx173629%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx173624%_
           _%val173625%_
           _%rebind?173626%_
           _%phi173627%_
           _%ctx173629%_))))
    (define gx#bind-identifier!
      (lambda _g177192_
        (let ((_g177193_ (##length _g177192_)))
          (cond ((##fx= _g177193_ 2) (apply gx#bind-identifier!__0 _g177192_))
                ((##fx= _g177193_ 3) (apply gx#bind-identifier!__1 _g177192_))
                ((##fx= _g177193_ 4) (apply gx#bind-identifier!__2 _g177192_))
                ((##fx= _g177193_ 5) (apply gx#bind-identifier!__% _g177192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g177192_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx173559%_ _%phi173560%_ _%ctx173561%_)
        (let _%lp173563%_ ((_%e173565%_ _%stx173559%_)
                           (_%marks173566%_ (gx#current-expander-marks)))
          (if (symbol? _%e173565%_)
              (gx#core-resolve-binding
               _%e173565%_
               _%phi173560%_
               _%phi173560%_
               _%ctx173561%_
               (reverse _%marks173566%_))
              (if (gx#identifier-quote? _%e173565%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e173565%_ '1 '#f '#f)
                   _%phi173560%_
                   '0
                   (##unchecked-structure-ref _%e173565%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e173565%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e173565%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e173565%_ '1 '#f '#f)
                       _%phi173560%_
                       _%phi173560%_
                       _%ctx173561%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e173565%_ '3 '#f '#f)
                        _%marks173566%_))
                      (if (##structure-direct-instance-of?
                           _%e173565%_
                           'gx#syntax-wrap::t)
                          (_%lp173563%_
                           (##unchecked-structure-ref _%e173565%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e173565%_ '3 '#f '#f)
                            _%marks173566%_))
                          (if (##structure-instance-of?
                               _%e173565%_
                               'gerbil#AST::t)
                              (_%lp173563%_
                               (##unchecked-structure-ref
                                _%e173565%_
                                '1
                                '#f
                                '#f)
                               _%marks173566%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx173559%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx173577%_)
        (let* ((_%phi173579%_ (gx#current-expander-phi))
               (_%ctx173581%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx173577%_
           _%phi173579%_
           _%ctx173581%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx173583%_ _%phi173584%_)
        (let ((_%ctx173586%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx173583%_
           _%phi173584%_
           _%ctx173586%_))))
    (define gx#core-resolve-identifier
      (lambda _g177194_
        (let ((_g177195_ (##length _g177194_)))
          (cond ((##fx= _g177195_ 1)
                 (apply gx#core-resolve-identifier__0 _g177194_))
                ((##fx= _g177195_ 2)
                 (apply gx#core-resolve-identifier__1 _g177194_))
                ((##fx= _g177195_ 3)
                 (apply gx#core-resolve-identifier__% _g177194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g177194_))))))
    (define gx#core-resolve-binding
      (lambda (_%id173470%_
               _%phi173471%_
               _%src-phi173472%_
               _%ctx173473%_
               _%marks173474%_)
        (letrec ((_%resolve173476%_
                  (lambda (_%ctx173543%_ _%src-phi173544%_ _%key173545%_)
                    (let _%lp173547%_ ((_%ctx173549%_
                                        (gx#core-context-shift
                                         _%ctx173543%_
                                         _%phi173471%_))
                                       (_%dphi173550%_
                                        (fx- _%phi173471%_ _%src-phi173544%_)))
                      (let ((_%$e173552%_
                             (gx#core-context-resolve
                              _%ctx173549%_
                              _%key173545%_)))
                        (if _%$e173552%_
                            _%$e173552%_
                            (if (fxzero? _%dphi173550%_)
                                '#f
                                (if (fxpositive? _%dphi173550%_)
                                    (_%lp173547%_
                                     (gx#core-context-shift _%ctx173549%_ '-1)
                                     (##fx- _%dphi173550%_ '1))
                                    (_%lp173547%_
                                     (gx#core-context-shift _%ctx173549%_ '1)
                                     (##fx+ _%dphi173550%_ '1))))))))))
          (let _%lp173478%_ ((_%ctx173480%_ _%ctx173473%_)
                             (_%src-phi173481%_ _%src-phi173472%_)
                             (_%rest173482%_ _%marks173474%_))
            (let* ((_%rest173483173491%_ _%rest173482%_)
                   (_%else173485173499%_
                    (lambda ()
                      (_%resolve173476%_
                       _%ctx173480%_
                       _%src-phi173481%_
                       _%id173470%_)))
                   (_%K173487173531%_
                    (lambda (_%rest173502%_ _%hd173503%_)
                      (let* ((_%hd173504173510%_ _%hd173503%_)
                             (_%E173506173513%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd173504173510%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K173507173523%_
                              (lambda (_%subst173516%_)
                                (let ((_%$e173520%_
                                       (let ((_%key173518%_
                                              (if _%subst173516%_
                                                  (hash-get
                                                   _%subst173516%_
                                                   _%id173470%_)
                                                  '#f)))
                                         (if _%key173518%_
                                             (_%resolve173476%_
                                              _%ctx173480%_
                                              _%src-phi173481%_
                                              _%key173518%_)
                                             '#f))))
                                  (if _%$e173520%_
                                      _%$e173520%_
                                      (_%lp173478%_
                                       (##unchecked-structure-ref
                                        _%hd173503%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd173503%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest173502%_))))))
                        (if (##structure-instance-of?
                             _%hd173504173510%_
                             'gx#expander-mark::t)
                            (let* ((_%e173508173526%_
                                    (##unchecked-structure-ref
                                     _%hd173504173510%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst173529%_ _%e173508173526%_))
                              (_%K173507173523%_ _%subst173529%_))
                            (_%E173506173513%_))))))
              (if (pair? _%rest173483173491%_)
                  (let ((_%hd173488173534%_ (##car _%rest173483173491%_))
                        (_%tl173489173536%_ (##cdr _%rest173483173491%_)))
                    (let* ((_%hd173539%_ _%hd173488173534%_)
                           (_%rest173541%_ _%tl173489173536%_))
                      (_%K173487173531%_ _%rest173541%_ _%hd173539%_)))
                  (_%else173485173499%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key173341%_
               _%val173342%_
               _%rebind?173343%_
               _%phi173344%_
               _%ctx173345%_)
        (letrec ((_%update-binding173347%_
                  (lambda (_%xval173419%_)
                    (if (or (_%rebind?173343%_
                             _%ctx173345%_
                             _%xval173419%_
                             _%val173342%_)
                            (and (##structure-direct-instance-of?
                                  _%xval173419%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval173419%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val173342%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val173342%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval173419%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val173342%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val173342%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval173419%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val173342%_
                        (if (and (##structure-direct-instance-of?
                                  _%val173342%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val173342%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval173419%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val173342%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval173419%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval173419%_
                            (if (and (##structure-direct-instance-of?
                                      _%val173342%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval173419%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key173341%_
                                 (cons (##unchecked-structure-ref
                                        _%val173342%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val173342%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval173419%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval173419%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval173419%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval173419%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key173341%_
                                 _%val173342%_
                                 _%xval173419%_))))))
                 (_%gensubst173348%_
                  (lambda (_%subst173414%_ _%id173415%_)
                    (let ((_%eid173417%_
                           (gensym (if (uninterned-symbol? _%id173415%_)
                                       '%
                                       _%id173415%_))))
                      (hash-put! _%subst173414%_ _%id173415%_ _%eid173417%_)
                      _%eid173417%_)))
                 (_%subst!173349%_
                  (lambda (_%key173351%_)
                    (let* ((_%key173352173360%_ _%key173351%_)
                           (_%else173354173368%_ (lambda () _%key173351%_))
                           (_%K173356173402%_
                            (lambda (_%mark173371%_ _%id173372%_)
                              (let* ((_%mark173373173379%_ _%mark173371%_)
                                     (_%E173375173382%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark173373173379%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K173376173394%_
                                      (lambda (_%subst173385%_)
                                        (if (not _%subst173385%_)
                                            (let ((_%subst173388%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark173371%_
                                               _%subst173388%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst173348%_
                                               _%subst173388%_
                                               _%id173372%_))
                                            (let ((_%$e173390%_
                                                   (hash-get
                                                    _%subst173385%_
                                                    _%id173372%_)))
                                              (if _%$e173390%_
                                                  _%$e173390%_
                                                  (_%gensubst173348%_
                                                   _%subst173385%_
                                                   _%id173372%_)))))))
                                (if (##structure-instance-of?
                                     _%mark173373173379%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e173377173397%_
                                            (##unchecked-structure-ref
                                             _%mark173373173379%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst173400%_ _%e173377173397%_))
                                      (_%K173376173394%_ _%subst173400%_))
                                    (_%E173375173382%_))))))
                      (if (pair? _%key173352173360%_)
                          (let ((_%hd173357173405%_
                                 (##car _%key173352173360%_))
                                (_%tl173358173407%_
                                 (##cdr _%key173352173360%_)))
                            (let* ((_%id173410%_ _%hd173357173405%_)
                                   (_%mark173412%_ _%tl173358173407%_))
                              (_%K173356173402%_ _%mark173412%_ _%id173410%_)))
                          (_%else173354173368%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx173345%_ _%phi173344%_)
           (_%subst!173349%_ _%key173341%_)
           _%val173342%_
           _%update-binding173347%_))))
    (define gx#core-bind!__0
      (lambda (_%key173440%_ _%val173441%_)
        (let* ((_%rebind?173443%_ false)
               (_%phi173445%_ (gx#current-expander-phi))
               (_%ctx173447%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key173440%_
           _%val173441%_
           _%rebind?173443%_
           _%phi173445%_
           _%ctx173447%_))))
    (define gx#core-bind!__1
      (lambda (_%key173449%_ _%val173450%_ _%rebind?173451%_)
        (let* ((_%phi173453%_ (gx#current-expander-phi))
               (_%ctx173455%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key173449%_
           _%val173450%_
           _%rebind?173451%_
           _%phi173453%_
           _%ctx173455%_))))
    (define gx#core-bind!__2
      (lambda (_%key173457%_ _%val173458%_ _%rebind?173459%_ _%phi173460%_)
        (let ((_%ctx173462%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key173457%_
           _%val173458%_
           _%rebind?173459%_
           _%phi173460%_
           _%ctx173462%_))))
    (define gx#core-bind!
      (lambda _g177196_
        (let ((_g177197_ (##length _g177196_)))
          (cond ((##fx= _g177197_ 2) (apply gx#core-bind!__0 _g177196_))
                ((##fx= _g177197_ 3) (apply gx#core-bind!__1 _g177196_))
                ((##fx= _g177197_ 4) (apply gx#core-bind!__2 _g177196_))
                ((##fx= _g177197_ 5) (apply gx#core-bind!__% _g177196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g177196_))))))
    (define gx#core-identifier-key
      (lambda (_%stx173272%_)
        (if (symbol? _%stx173272%_)
            (let* ((_%g173274173282%_ (gx#current-expander-marks))
                   (_%else173276173290%_ (lambda () _%stx173272%_))
                   (_%K173278173295%_
                    (lambda (_%hd173293%_) (cons _%stx173272%_ _%hd173293%_))))
              (if (pair? _%g173274173282%_)
                  (let* ((_%hd173279173298%_ (##car _%g173274173282%_))
                         (_%hd173301%_ _%hd173279173298%_))
                    (_%K173278173295%_ _%hd173301%_))
                  (_%else173276173290%_)))
            (if (gx#identifier? _%stx173272%_)
                (let* ((_%id173304%_ (gx#syntax-local-unwrap _%stx173272%_))
                       (_%eid173306%_ (gx#stx-e _%id173304%_))
                       (_%marks173308%_
                        (gx#stx-identifier-marks* _%id173304%_))
                       (_%marks173310173318%_ _%marks173308%_)
                       (_%else173312173326%_ (lambda () _%eid173306%_))
                       (_%K173314173331%_
                        (lambda (_%hd173329%_)
                          (cons _%eid173306%_ _%hd173329%_))))
                  (if (pair? _%marks173310173318%_)
                      (let* ((_%hd173315173334%_ (##car _%marks173310173318%_))
                             (_%hd173337%_ _%hd173315173334%_))
                        (_%K173314173331%_ _%hd173337%_))
                      (_%else173312173326%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx173272%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx173211%_ _%phi173212%_)
        (letrec ((_%make-phi173214%_
                  (lambda (_%super173270%_)
                    (let ((__obj177167
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj177167
                       (##gensym 'phi)
                       _%super173270%_)
                      __obj177167)))
                 (_%make-phi/up173215%_
                  (lambda (_%ctx173265%_ _%super173266%_)
                    (let ((_%ctx+1173268%_
                           (_%make-phi173214%_ _%super173266%_)))
                      (##unchecked-structure-set!
                       _%ctx173265%_
                       _%ctx+1173268%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1173268%_
                       _%ctx173265%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1173268%_)))
                 (_%make-phi/down173216%_
                  (lambda (_%ctx173260%_ _%super173261%_)
                    (let ((_%ctx-1173263%_
                           (_%make-phi173214%_ _%super173261%_)))
                      (##unchecked-structure-set!
                       _%ctx-1173263%_
                       _%ctx173260%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx173260%_
                       _%ctx-1173263%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1173263%_)))
                 (_%shift173217%_
                  (lambda (_%ctx173243%_
                           _%delta173244%_
                           _%make-delta-context173245%_
                           _%phi173246%_
                           _%K173247%_)
                    (let ((_%$e173249%_
                           (##unchecked-structure-ref
                            _%ctx173243%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e173249%_
                          ((lambda (_%super173252%_)
                             (let* ((_%super173254%_
                                     (_%K173247%_
                                      _%super173252%_
                                      _%delta173244%_))
                                    (_%ctx+d173256%_
                                     (_%make-delta-context173245%_
                                      _%ctx173243%_
                                      _%super173254%_)))
                               (_%K173247%_
                                _%ctx+d173256%_
                                (fx- _%phi173246%_ _%delta173244%_))))
                           _%$e173249%_)
                          (error '"Bad context" _%ctx173243%_))))))
          (let _%K173219%_ ((_%ctx173221%_ _%ctx173211%_)
                            (_%phi173222%_ _%phi173212%_))
            (if (fxzero? _%phi173222%_)
                _%ctx173221%_
                (if (##structure-instance-of? _%ctx173221%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi173222%_)
                        (let ((_%$e173226%_
                               (##unchecked-structure-ref
                                _%ctx173221%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e173226%_
                              ((lambda (_%g173228173230%_)
                                 (_%K173219%_
                                  _%g173228173230%_
                                  (##fx- _%phi173222%_ '1)))
                               _%$e173226%_)
                              (_%shift173217%_
                               _%ctx173221%_
                               '1
                               _%make-phi/up173215%_
                               _%phi173222%_
                               _%K173219%_)))
                        (let ((_%$e173234%_
                               (##unchecked-structure-ref
                                _%ctx173221%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e173234%_
                              ((lambda (_%g173236173238%_)
                                 (_%K173219%_
                                  _%g173236173238%_
                                  (##fx+ _%phi173222%_ '1)))
                               _%$e173234%_)
                              (_%shift173217%_
                               _%ctx173221%_
                               '-1
                               _%make-phi/down173216%_
                               _%phi173222%_
                               _%K173219%_))))
                    _%ctx173221%_))))))
    (define gx#core-context-get
      (lambda (_%ctx173208%_ _%key173209%_)
        (hash-get
         (##unchecked-structure-ref _%ctx173208%_ '2 '#f '#f)
         _%key173209%_)))
    (define gx#core-context-put!
      (lambda (_%ctx173204%_ _%key173205%_ _%val173206%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx173204%_ '2 '#f '#f)
         _%key173205%_
         _%val173206%_)
        _%val173206%_))
    (define gx#core-context-resolve
      (lambda (_%ctx173190%_ _%key173191%_)
        (let _%lp173193%_ ((_%ctx173195%_ _%ctx173190%_))
          (let ((_%$e173197%_
                 (gx#core-context-get _%ctx173195%_ _%key173191%_)))
            (if _%$e173197%_
                _%$e173197%_
                (let ((_%$e173200%_
                       (if (##structure-instance-of?
                            _%ctx173195%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx173195%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e173200%_ (_%lp173193%_ _%$e173200%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx173179%_ _%key173180%_ _%val173181%_ _%rebind173182%_)
        (let ((_%$e173184%_ (gx#core-context-get _%ctx173179%_ _%key173180%_)))
          (if _%$e173184%_
              ((lambda (_%xval173187%_)
                 (gx#core-context-put!
                  _%ctx173179%_
                  _%key173180%_
                  (_%rebind173182%_ _%xval173187%_)))
               _%$e173184%_)
              (gx#core-context-put!
               _%ctx173179%_
               _%key173180%_
               _%val173181%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx173154%_ _%stop?173155%_)
        (let _%lp173157%_ ((_%ctx173159%_ _%ctx173154%_))
          (if (_%stop?173155%_ _%ctx173159%_)
              _%ctx173159%_
              (if (##structure-instance-of? _%ctx173159%_ 'gx#phi-context::t)
                  (_%lp173157%_
                   (##unchecked-structure-ref _%ctx173159%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx173168%_ (gx#current-expander-context))
               (_%stop?173170%_ gx#top-context?))
          (gx#core-context-top__% _%ctx173168%_ _%stop?173170%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx173172%_)
        (let ((_%stop?173174%_ gx#top-context?))
          (gx#core-context-top__% _%ctx173172%_ _%stop?173174%_))))
    (define gx#core-context-top
      (lambda _g177198_
        (let ((_g177199_ (##length _g177198_)))
          (cond ((##fx= _g177199_ 0) (apply gx#core-context-top__0 _g177198_))
                ((##fx= _g177199_ 1) (apply gx#core-context-top__1 _g177198_))
                ((##fx= _g177199_ 2) (apply gx#core-context-top__% _g177198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g177198_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx173139%_)
        (let _%lp173141%_ ((_%ctx173143%_ _%ctx173139%_))
          (if (##structure-instance-of? _%ctx173143%_ 'gx#phi-context::t)
              (_%lp173141%_
               (##unchecked-structure-ref _%ctx173143%_ '3 '#f '#f))
              _%ctx173143%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx173149%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx173149%_))))
    (define gx#core-context-root
      (lambda _g177200_
        (let ((_g177201_ (##length _g177200_)))
          (cond ((##fx= _g177201_ 0) (apply gx#core-context-root__0 _g177200_))
                ((##fx= _g177201_ 1) (apply gx#core-context-root__% _g177200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g177200_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx173121%_ . _%ignore173122%_)
        (let ((_%$e173124%_ (gx#current-expander-allow-rebind?)))
          (if _%$e173124%_
              _%$e173124%_
              (if (##structure-instance-of? _%ctx173121%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx173121%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx173121%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx173131%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx173131%_))))
    (define gx#core-context-rebind?
      (lambda _g177202_
        (let ((_g177203_ (##length _g177202_)))
          (cond ((##fx= _g177203_ 0)
                 (apply gx#core-context-rebind?__0 _g177202_))
                ((##fx= _g177203_ 1)
                 (apply gx#core-context-rebind?__% _g177202_))
                ((##fx>= _g177203_ 1)
                 (apply gx#core-context-rebind?__% _g177202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g177202_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx173104%_)
        (let ((_%$e173106%_ (gx#core-context-top__1 _%ctx173104%_)))
          (if _%$e173106%_
              ((lambda (_%ctx173109%_)
                 (if (##structure-instance-of?
                      _%ctx173109%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx173109%_ '6 '#f '#f)
                     '#f))
               _%$e173106%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx173116%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx173116%_))))
    (define gx#core-context-namespace
      (lambda _g177204_
        (let ((_g177205_ (##length _g177204_)))
          (cond ((##fx= _g177205_ 0)
                 (apply gx#core-context-namespace__0 _g177204_))
                ((##fx= _g177205_ 1)
                 (apply gx#core-context-namespace__% _g177204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g177204_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind173090%_ _%is?173091%_)
        (if (##structure-direct-instance-of?
             _%bind173090%_
             'gx#syntax-binding::t)
            (_%is?173091%_
             (##unchecked-structure-ref _%bind173090%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind173096%_)
        (let ((_%is?173098%_ gx#expander?))
          (gx#expander-binding?__% _%bind173096%_ _%is?173098%_))))
    (define gx#expander-binding?
      (lambda _g177206_
        (let ((_g177207_ (##length _g177206_)))
          (cond ((##fx= _g177207_ 1) (apply gx#expander-binding?__0 _g177206_))
                ((##fx= _g177207_ 2) (apply gx#expander-binding?__% _g177206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g177206_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind173087%_)
        (gx#expander-binding?__% _%bind173087%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind173085%_)
        (gx#expander-binding?__% _%bind173085%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind173079%_)
        (letrec ((_%direct-special-form?173081%_
                  (lambda (_%obj173083%_)
                    (##structure-direct-instance-of?
                     _%obj173083%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind173079%_
           _%direct-special-form?173081%_))))
    (define gx#special-form-binding?
      (lambda (_%bind173077%_)
        (gx#expander-binding?__% _%bind173077%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind173068%_)
        (letrec ((_%feature?173070%_
                  (lambda (_%e173072%_)
                    (let ((_%$e173074%_
                           (##structure-instance-of?
                            _%e173072%_
                            'gx#feature-expander::t)))
                      (if _%$e173074%_
                          _%$e173074%_
                          (##structure-instance-of?
                           _%e173072%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind173068%_ _%feature?173070%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind173066%_)
        (gx#expander-binding?__% _%bind173066%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id173053%_ _%bound?173054%_)
        (if (gx#identifier? _%id173053%_)
            (_%bound?173054%_ (gx#resolve-identifier__0 _%id173053%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id173059%_)
        (let ((_%bound?173061%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id173059%_ _%bound?173061%_))))
    (define gx#core-bound-identifier?
      (lambda _g177208_
        (let ((_g177209_ (##length _g177208_)))
          (cond ((##fx= _g177209_ 1)
                 (apply gx#core-bound-identifier?__0 _g177208_))
                ((##fx= _g177209_ 2)
                 (apply gx#core-bound-identifier?__% _g177208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g177208_))))))
    (define gx#core-identifier=?
      (lambda (_%x173043%_ _%y173044%_)
        (letrec ((_%y=?173046%_
                  (lambda (_%xid173050%_)
                    ((if (list? _%y173044%_) memq eq?)
                     _%xid173050%_
                     _%y173044%_))))
          (let ((_%bind173048%_ (gx#resolve-identifier__0 _%x173043%_)))
            (if (##structure-instance-of? _%bind173048%_ 'gx#binding::t)
                (_%y=?173046%_
                 (##unchecked-structure-ref _%bind173048%_ '1 '#f '#f))
                (_%y=?173046%_ (gx#stx-e _%x173043%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e173041%_)
        (if (interned-symbol? _%e173041%_)
            (string-index__0 (symbol->string _%e173041%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx172994%_ _%src172995%_ _%ctx172996%_ _%marks172997%_)
        (if (##structure? _%stx172994%_)
            (let ((_%$e172999%_ (gx#sealed-syntax-unwrap _%stx172994%_)))
              (if _%$e172999%_
                  _%$e172999%_
                  (if (gx#identifier? _%stx172994%_)
                      (let ((_%id173003%_
                             (gx#stx-unwrap__% _%stx172994%_ _%marks172997%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id173003%_ '1 '#f '#f)
                         (let ((_%$e173005%_
                                (##unchecked-structure-ref
                                 _%id173003%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e173005%_ _%$e173005%_ _%src172995%_))
                         _%ctx172996%_
                         (##unchecked-structure-ref _%id173003%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx172994%_)
                       (let ((_%$e173009%_ (gx#stx-source _%stx172994%_)))
                         (if _%$e173009%_ _%$e173009%_ _%src172995%_))
                       _%ctx172996%_
                       (reverse _%marks172997%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx172994%_
             _%src172995%_
             _%ctx172996%_
             (reverse _%marks172997%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx173015%_)
        (let* ((_%src173017%_ '#f)
               (_%ctx173019%_ (gx#current-expander-context))
               (_%marks173021%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx173015%_
           _%src173017%_
           _%ctx173019%_
           _%marks173021%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx173023%_ _%src173024%_)
        (let* ((_%ctx173026%_ (gx#current-expander-context))
               (_%marks173028%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx173023%_
           _%src173024%_
           _%ctx173026%_
           _%marks173028%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx173030%_ _%src173031%_ _%ctx173032%_)
        (let ((_%marks173034%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx173030%_
           _%src173031%_
           _%ctx173032%_
           _%marks173034%_))))
    (define gx#core-quote-syntax
      (lambda _g177210_
        (let ((_g177211_ (##length _g177210_)))
          (cond ((##fx= _g177211_ 1) (apply gx#core-quote-syntax__0 _g177210_))
                ((##fx= _g177211_ 2) (apply gx#core-quote-syntax__1 _g177210_))
                ((##fx= _g177211_ 3) (apply gx#core-quote-syntax__2 _g177210_))
                ((##fx= _g177211_ 4) (apply gx#core-quote-syntax__% _g177210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g177210_))))))
    (define gx#core-cons
      (lambda (_%hd172990%_ _%tl172991%_)
        (cons (gx#core-quote-syntax__0 _%hd172990%_) _%tl172991%_)))
    (define gx#core-list
      (lambda (_%hd172987%_ . _%rest172988%_)
        (cons (gx#core-quote-syntax__0 _%hd172987%_) _%rest172988%_)))
    (define gx#core-cons*
      (lambda (_%hd172984%_ . _%rest172985%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd172984%_) _%rest172985%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path172953%_ _%rel172954%_)
        (let ((_%path172971%_ (gx#stx-e _%stx-path172953%_))
              (_%reldir172972%_
               (let _%lp172956%_ ((_%relsrc172958%_
                                   (let ((_%$e172968%_
                                          (gx#stx-source _%stx-path172953%_)))
                                     (if _%$e172968%_
                                         _%$e172968%_
                                         _%rel172954%_))))
                 (if (##structure-instance-of? _%relsrc172958%_ 'gerbil#AST::t)
                     (_%lp172956%_
                      (let ((_%$e172961%_ (gx#stx-source _%relsrc172958%_)))
                        (if _%$e172961%_
                            _%$e172961%_
                            (gx#stx-e _%relsrc172958%_))))
                     (if (source-location-path? _%relsrc172958%_)
                         (path-directory
                          (source-location-path _%relsrc172958%_))
                         (if (string? _%relsrc172958%_)
                             (path-directory _%relsrc172958%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path172971%_ (path-normalize _%reldir172972%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path172977%_)
        (let ((_%rel172979%_ '#f))
          (gx#core-resolve-path__% _%stx-path172977%_ _%rel172979%_))))
    (define gx#core-resolve-path
      (lambda _g177212_
        (let ((_g177213_ (##length _g177212_)))
          (cond ((##fx= _g177213_ 1) (apply gx#core-resolve-path__0 _g177212_))
                ((##fx= _g177213_ 2) (apply gx#core-resolve-path__% _g177212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g177212_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr172909%_ _%ctx172910%_)
        (let* ((_%repr172911172918%_ _%repr172909%_)
               (_%E172913172922%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr172911172918%_
                         '([phi . subs]))
                  '#!void))
               (_%K172914172930%_
                (lambda (_%subs172925%_ _%phi172926%_)
                  (let ((_%subst172928%_
                         (if (null? _%subs172925%_)
                             '#f
                             (list->hash-table-eq _%subs172925%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst172928%_
                     _%ctx172910%_
                     _%phi172926%_
                     '#f)))))
          (if (pair? _%repr172911172918%_)
              (let ((_%hd172915172933%_ (##car _%repr172911172918%_))
                    (_%tl172916172935%_ (##cdr _%repr172911172918%_)))
                (let* ((_%phi172938%_ _%hd172915172933%_)
                       (_%subs172940%_ _%tl172916172935%_))
                  (_%K172914172930%_ _%subs172940%_ _%phi172938%_)))
              (_%E172913172922%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr172945%_)
        (let ((_%ctx172947%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr172945%_ _%ctx172947%_))))
    (define gx#core-deserialize-mark
      (lambda _g177214_
        (let ((_g177215_ (##length _g177214_)))
          (cond ((##fx= _g177215_ 1)
                 (apply gx#core-deserialize-mark__0 _g177214_))
                ((##fx= _g177215_ 2)
                 (apply gx#core-deserialize-mark__% _g177214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g177214_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx172906%_)
        (gx#stx-rewrap _%stx172906%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx172904%_)
        (gx#stx-unwrap__% _%stx172904%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx172874%_)
        (let* ((_%g172875172883%_ (gx#current-expander-marks))
               (_%else172877172891%_ (lambda () _%stx172874%_))
               (_%K172879172896%_
                (lambda (_%hd172894%_)
                  (gx#stx-apply-mark _%stx172874%_ _%hd172894%_))))
          (if (pair? _%g172875172883%_)
              (let* ((_%hd172880172899%_ (##car _%g172875172883%_))
                     (_%hd172902%_ _%hd172880172899%_))
                (_%K172879172896%_ _%hd172902%_))
              (_%else172877172891%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym172872%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym172872%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx172857%_ _%E172858%_)
        (let ((_%bind172860%_ (gx#resolve-identifier__0 _%stx172857%_)))
          (if (##structure-direct-instance-of?
               _%bind172860%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind172860%_ '5 '#f '#f)
              (_%E172858%_ _%stx172857%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx172865%_)
        (let ((_%E172867%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx172865%_ _%E172867%_))))
    (define gx#syntax-local-e
      (lambda _g177216_
        (let ((_g177217_ (##length _g177216_)))
          (cond ((##fx= _g177217_ 1) (apply gx#syntax-local-e__0 _g177216_))
                ((##fx= _g177217_ 2) (apply gx#syntax-local-e__% _g177216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g177216_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx172841%_ _%E172842%_)
        (let ((_%e172844%_ (gx#syntax-local-e__% _%stx172841%_ _%E172842%_)))
          (if (##structure-instance-of? _%e172844%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e172844%_ '1 '#f '#f)
              _%e172844%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx172849%_)
        (let ((_%E172851%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx172849%_ _%E172851%_))))
    (define gx#syntax-local-value
      (lambda _g177218_
        (let ((_g177219_ (##length _g177218_)))
          (cond ((##fx= _g177219_ 1)
                 (apply gx#syntax-local-value__0 _g177218_))
                ((##fx= _g177219_ 2)
                 (apply gx#syntax-local-value__% _g177218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g177218_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx172838%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx172838%_)))))
