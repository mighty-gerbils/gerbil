(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1771093448)
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
      (lambda _%$args177720%_
        (apply make-instance gx#expander-context::t _%$args177720%_)))
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
      (lambda _%$args177717%_
        (apply make-instance gx#root-context::t _%$args177717%_)))
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
      (lambda _%$args177714%_
        (apply make-instance gx#phi-context::t _%$args177714%_)))
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
      (lambda _%$args177711%_
        (apply make-instance gx#top-context::t _%$args177711%_)))
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
      (lambda _%$args177708%_
        (apply make-instance gx#module-context::t _%$args177708%_)))
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
      (lambda _%$args177705%_
        (apply make-instance gx#prelude-context::t _%$args177705%_)))
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
      (lambda _%$args177702%_
        (apply make-instance gx#local-context::t _%$args177702%_)))
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
      (lambda (_%self177675%_ _%id177676%_ _%super177677%_)
        (let ((_%self177680%_ _%self177675%_))
          (if (##fx< '3 (##structure-length _%self177680%_))
              (begin
                (##unchecked-structure-set!
                 _%self177680%_
                 _%id177676%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177680%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177680%_
                 _%super177677%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self177680%_
                     '3
                     (##structure-length _%self177680%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self177693%_ _%id177694%_)
        (let ((_%super177696%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self177693%_
           _%id177694%_
           _%super177696%_))))
    (define gx#phi-context:::init!
      (lambda _g177762_
        (let ((_g177763_ (##length _g177762_)))
          (cond ((##fx= _g177763_ 2)
                 (apply gx#phi-context:::init!__0 _g177762_))
                ((##fx= _g177763_ 3)
                 (apply gx#phi-context:::init!__% _g177762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g177762_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self177528%_ _%super177529%_)
        (let ((_%self177532%_ _%self177528%_))
          (if (##fx< '3 (##structure-length _%self177532%_))
              (begin
                (##unchecked-structure-set!
                 _%self177532%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177532%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177532%_
                 _%super177529%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self177532%_
                     '3
                     (##structure-length _%self177532%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self177545%_)
        (let ((_%super177547%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self177545%_ _%super177547%_))))
    (define gx#local-context:::init!
      (lambda _g177764_
        (let ((_g177765_ (##length _g177764_)))
          (cond ((##fx= _g177765_ 1)
                 (apply gx#local-context:::init!__0 _g177764_))
                ((##fx= _g177765_ 2)
                 (apply gx#local-context:::init!__% _g177764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g177764_))))))
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
      (lambda _%$args177402%_
        (apply make-instance gx#binding::t _%$args177402%_)))
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
      (lambda (_%self177385%_ _%id177386%_ _%key177387%_ _%phi177388%_)
        (let ((_%self177391%_ _%self177385%_))
          (##unchecked-structure-set! _%self177391%_ _%id177386%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self177391%_ _%key177387%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self177391%_
           _%phi177388%_
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
      (lambda _%$args177260%_
        (apply make-instance gx#runtime-binding::t _%$args177260%_)))
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
      (lambda _%$args177257%_
        (apply make-instance gx#local-binding::t _%$args177257%_)))
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
      (lambda _%$args177254%_
        (apply make-instance gx#top-binding::t _%$args177254%_)))
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
      (lambda _%$args177251%_
        (apply make-instance gx#module-binding::t _%$args177251%_)))
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
      (lambda _%$args177248%_
        (apply make-instance gx#extern-binding::t _%$args177248%_)))
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
      (lambda (_%self176864%_
               _%id176865%_
               _%key176866%_
               _%phi176867%_
               _%ctx176868%_)
        (let ((_%self176871%_ _%self176864%_))
          (gx#binding:::init!
           _%self176871%_
           _%id176865%_
           _%key176866%_
           _%phi176867%_)
          (##unchecked-structure-set!
           _%self176871%_
           _%ctx176868%_
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
      (lambda _%$args176617%_
        (apply make-instance gx#syntax-binding::t _%$args176617%_)))
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
      (lambda _%$args176614%_
        (apply make-instance gx#import-binding::t _%$args176614%_)))
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
      (lambda _%$args176611%_
        (apply make-instance gx#alias-binding::t _%$args176611%_)))
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
      (lambda (_%self176593%_
               _%id176594%_
               _%key176595%_
               _%phi176596%_
               _%e176597%_)
        (let ((_%self176600%_ _%self176593%_))
          (gx#binding:::init!
           _%self176600%_
           _%id176594%_
           _%key176595%_
           _%phi176596%_)
          (##unchecked-structure-set! _%self176600%_ _%e176597%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self176451%_
               _%id176452%_
               _%key176453%_
               _%phi176454%_
               _%e176455%_
               _%ctx176456%_
               _%weak?176457%_)
        (let ((_%self176460%_ _%self176451%_))
          (gx#binding:::init!
           _%self176460%_
           _%id176452%_
           _%key176453%_
           _%phi176454%_)
          (##unchecked-structure-set! _%self176460%_ _%e176455%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self176460%_ _%ctx176456%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self176460%_
           _%weak?176457%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self176311%_
               _%id176312%_
               _%key176313%_
               _%phi176314%_
               _%e176315%_)
        (let ((_%self176318%_ _%self176311%_))
          (gx#binding:::init!
           _%self176318%_
           _%id176312%_
           _%key176313%_
           _%phi176314%_)
          (##unchecked-structure-set! _%self176318%_ _%e176315%_ '5 '#f '#f))))
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
      (lambda _%$args176186%_
        (apply make-instance gx#expander::t _%$args176186%_)))
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
      (lambda _%$args176183%_
        (apply make-instance gx#core-expander::t _%$args176183%_)))
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
      (lambda _%$args176180%_
        (apply make-instance gx#expression-form::t _%$args176180%_)))
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
      (lambda _%$args176177%_
        (apply make-instance gx#special-form::t _%$args176177%_)))
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
      (lambda _%$args176174%_
        (apply make-instance gx#definition-form::t _%$args176174%_)))
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
      (lambda _%$args176171%_
        (apply make-instance gx#top-special-form::t _%$args176171%_)))
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
      (lambda _%$args176168%_
        (apply make-instance gx#module-special-form::t _%$args176168%_)))
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
      (lambda _%$args176165%_
        (apply make-instance gx#feature-expander::t _%$args176165%_)))
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
      (lambda _%$args176162%_
        (apply make-instance gx#private-feature-expander::t _%$args176162%_)))
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
      (lambda _%$args176159%_
        (apply make-instance gx#reserved-expander::t _%$args176159%_)))
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
      (lambda _%$args176156%_
        (apply make-instance gx#macro-expander::t _%$args176156%_)))
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
      (lambda _%$args176153%_
        (apply make-instance gx#rename-macro-expander::t _%$args176153%_)))
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
      (lambda _%$args176150%_
        (apply make-instance gx#user-expander::t _%$args176150%_)))
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
      (lambda _%$args176147%_
        (apply make-instance gx#expander-mark::t _%$args176147%_)))
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
      (lambda (_%ctx176131%_
               _%message176132%_
               _%stx176133%_
               .
               _%details176134%_)
        (let ((_%ctx176145%_
               (let ((_%$e176136%_ _%ctx176131%_))
                 (if _%$e176136%_
                     _%$e176136%_
                     (let ((_%$e176139%_ (gx#core-context-top__0)))
                       (if _%$e176139%_
                           ((lambda (_%ctx176142%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx176142%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e176139%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message176132%_
                  (cons _%stx176133%_ _%details176134%_)
                  _%ctx176145%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx176118%_ _%expression?176119%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx176118%_ _%expression?176119%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx176124%_)
        (let ((_%expression?176126%_ '#f))
          (gx#eval-syntax__% _%stx176124%_ _%expression?176126%_))))
    (define gx#eval-syntax
      (lambda _g177766_
        (let ((_g177767_ (##length _g177766_)))
          (cond ((##fx= _g177767_ 1) (apply gx#eval-syntax__0 _g177766_))
                ((##fx= _g177767_ 2) (apply gx#eval-syntax__% _g177766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g177766_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx176103%_ _%expression?176104%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx176103%_ _%expression?176104%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx176110%_)
        (let ((_%expression?176112%_ '#f))
          (gx#eval-syntax+1__% _%stx176110%_ _%expression?176112%_))))
    (define gx#eval-syntax+1
      (lambda _g177768_
        (let ((_g177769_ (##length _g177768_)))
          (cond ((##fx= _g177769_ 1) (apply gx#eval-syntax+1__0 _g177768_))
                ((##fx= _g177769_ 2) (apply gx#eval-syntax+1__% _g177768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g177768_))))))
    (define gx#eval-expression+1
      (lambda (_%stx176100%_) (gx#eval-syntax+1__% _%stx176100%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx176098%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx176098%_))))
    (define gx#core-expand__%
      (lambda (_%stx176085%_ _%expression?176086%_)
        (if _%expression?176086%_
            (gx#core-expand-expression _%stx176085%_)
            (gx#core-expand-top _%stx176085%_))))
    (define gx#core-expand__0
      (lambda (_%stx176091%_)
        (let ((_%expression?176093%_ '#f))
          (gx#core-expand__% _%stx176091%_ _%expression?176093%_))))
    (define gx#core-expand
      (lambda _g177770_
        (let ((_g177771_ (##length _g177770_)))
          (cond ((##fx= _g177771_ 1) (apply gx#core-expand__0 _g177770_))
                ((##fx= _g177771_ 2) (apply gx#core-expand__% _g177770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g177770_))))))
    (define gx#core-expand-top
      (lambda (_%stx176052%_)
        (let* ((_%stx176054%_ (gx#core-expand*__0 _%stx176052%_))
               (_%e176055176062%_ _%stx176054%_)
               (_%E176057176066%_
                (lambda () (gx#core-expand-expression _%stx176054%_)))
               (_%E176056176080%_
                (lambda ()
                  (if (gx#stx-pair? _%e176055176062%_)
                      (let ((_%e176058176070%_
                             (gx#syntax-e _%e176055176062%_)))
                        (let ((_%hd176059176073%_ (##car _%e176058176070%_))
                              (_%tl176060176075%_ (##cdr _%e176058176070%_)))
                          (let ((_%form176078%_ _%hd176059176073%_))
                            (if (gx#core-bound-identifier?__0 _%form176078%_)
                                _%stx176054%_
                                (_%E176057176066%_)))))
                      (_%E176057176066%_)))))
          (_%E176056176080%_))))
    (define gx#core-expand-expression
      (lambda (_%stx175984%_)
        (letrec ((_%sealed-expression?175986%_
                  (lambda (_%hd176022%_)
                    (if (gx#sealed-syntax? _%hd176022%_)
                        (let* ((_%e176023176030%_ _%hd176022%_)
                               (_%E176025176034%_ (lambda () '#f))
                               (_%E176024176048%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e176023176030%_)
                                      (let ((_%e176026176038%_
                                             (gx#syntax-e _%e176023176030%_)))
                                        (let ((_%hd176027176041%_
                                               (##car _%e176026176038%_))
                                              (_%tl176028176043%_
                                               (##cdr _%e176026176038%_)))
                                          (let ((_%form176046%_
                                                 _%hd176027176041%_))
                                            (gx#core-bound-identifier?__%
                                             _%form176046%_
                                             gx#expression-form-binding?))))
                                      (_%E176025176034%_)))))
                          (_%E176024176048%_))
                        '#f)))
                 (_%illegal-expression175987%_
                  (lambda (_%hd176019%_ . _%_176020%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx175984%_
                     _%hd176019%_)))
                 (_%expand-e175988%_
                  (lambda (_%form176011%_ _%hd176012%_)
                    (let ((_%bind176014%_
                           (if (##structure-instance-of?
                                _%form176011%_
                                'gx#binding::t)
                               _%form176011%_
                               (gx#resolve-identifier__0 _%form176011%_))))
                      (if (gx#core-expander-binding? _%bind176014%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind176014%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd176012%_
                            (gx#stx-source _%stx175984%_)))
                          (if (##structure-direct-instance-of?
                               _%bind176014%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind176014%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd176012%_
                                 (gx#stx-source _%stx175984%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx175984%_
                               _%form176011%_)))))))
          (let ((_%hd175990%_ (gx#core-expand-head _%stx175984%_)))
            (if (_%sealed-expression?175986%_ _%hd175990%_)
                _%hd175990%_
                (if (gx#stx-pair? _%hd175990%_)
                    (let* ((_%form175994%_ (gx#stx-car _%hd175990%_))
                           (_%bind175996%_
                            (if (gx#identifier? _%form175994%_)
                                (gx#resolve-identifier__0 _%form175994%_)
                                '#f)))
                      (if (or (not _%bind175996%_)
                              (not (gx#core-expander-binding? _%bind175996%_)))
                          (_%expand-e175988%_
                           '%%app
                           (cons '%%app _%hd175990%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind175996%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd175990%_
                               _%illegal-expression175987%_)
                              (if (gx#expression-form-binding? _%bind175996%_)
                                  (_%expand-e175988%_
                                   _%bind175996%_
                                   _%hd175990%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind175996%_)
                                      (gx#core-expand-expression
                                       (_%expand-e175988%_
                                        _%bind175996%_
                                        _%hd175990%_))
                                      (_%illegal-expression175987%_
                                       _%hd175990%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd175990%_)
                        (_%illegal-expression175987%_ _%hd175990%_)
                        (if (gx#identifier? _%hd175990%_)
                            (_%expand-e175988%_
                             '%%ref
                             (cons '%%ref (cons _%hd175990%_ '())))
                            (if (gx#stx-datum? _%hd175990%_)
                                (_%expand-e175988%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd175990%_ '())))
                                (_%illegal-expression175987%_
                                 _%hd175990%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx175979%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx175982%_ (gx#core-expand-expression _%stx175979%_)))
             (values _%stx175982%_ (gx#eval-syntax* _%stx175982%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx175960%_ _%stop?175961%_)
        (let _%lp175963%_ ((_%stx175965%_ _%stx175960%_))
          (if (_%stop?175961%_ _%stx175965%_)
              _%stx175965%_
              (let ((_%rstx175967%_ (gx#core-expand1 _%stx175965%_)))
                (if (eq? _%stx175965%_ _%rstx175967%_)
                    _%stx175965%_
                    (_%lp175963%_ _%rstx175967%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx175972%_)
        (let ((_%stop?175974%_ false))
          (gx#core-expand*__% _%stx175972%_ _%stop?175974%_))))
    (define gx#core-expand*
      (lambda _g177772_
        (let ((_g177773_ (##length _g177772_)))
          (cond ((##fx= _g177773_ 1) (apply gx#core-expand*__0 _g177772_))
                ((##fx= _g177773_ 2) (apply gx#core-expand*__% _g177772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g177772_))))))
    (define gx#core-expand1
      (lambda (_%stx175912%_)
        (letrec ((_%step175914%_
                  (lambda (_%hd175951%_)
                    (let ((_%bind175953%_
                           (gx#resolve-identifier__0 _%hd175951%_)))
                      (if (##structure-instance-of?
                           _%bind175953%_
                           'gx#runtime-binding::t)
                          _%stx175912%_
                          (if (##structure-direct-instance-of?
                               _%bind175953%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind175953%_
                                '5
                                '#f
                                '#f)
                               _%stx175912%_)
                              (if (not _%bind175953%_)
                                  _%stx175912%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx175912%_))))))))
          (let* ((_%e175915175923%_ _%stx175912%_)
                 (_%E175921175927%_ (lambda () _%stx175912%_))
                 (_%E175917175933%_
                  (lambda ()
                    (let ((_%hd175931%_ _%e175915175923%_))
                      (if (gx#identifier? _%hd175931%_)
                          (_%step175914%_ _%hd175931%_)
                          (_%E175921175927%_)))))
                 (_%E175916175947%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175915175923%_)
                        (let ((_%e175918175937%_
                               (gx#syntax-e _%e175915175923%_)))
                          (let ((_%hd175919175940%_ (##car _%e175918175937%_))
                                (_%tl175920175942%_ (##cdr _%e175918175937%_)))
                            (let ((_%hd175945%_ _%hd175919175940%_))
                              (if (gx#identifier? _%hd175945%_)
                                  (_%step175914%_ _%hd175945%_)
                                  (_%E175917175933%_)))))
                        (_%E175917175933%_)))))
            (_%E175916175947%_)))))
    (define gx#core-expand-head
      (lambda (_%stx175878%_)
        (letrec ((_%stop?175880%_
                  (lambda (_%stx175882%_)
                    (let* ((_%e175883175890%_ _%stx175882%_)
                           (_%E175885175894%_ (lambda () '#f))
                           (_%E175884175908%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175883175890%_)
                                  (let ((_%e175886175898%_
                                         (gx#syntax-e _%e175883175890%_)))
                                    (let ((_%hd175887175901%_
                                           (##car _%e175886175898%_))
                                          (_%tl175888175903%_
                                           (##cdr _%e175886175898%_)))
                                      (let ((_%hd175906%_ _%hd175887175901%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd175906%_))))
                                  (_%E175885175894%_)))))
                      (_%E175884175908%_)))))
          (gx#core-expand*__% _%stx175878%_ _%stop?175880%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx175684%_
               _%expand-special175685%_
               _%begin-form175686%_
               _%expand-e175687%_)
        (letrec ((_%expand-splice175689%_
                  (lambda (_%hd175852%_
                           _%body175853%_
                           _%rest175854%_
                           _%r175855%_)
                    (if (gx#stx-list? _%body175853%_)
                        (_%K175693%_
                         (gx#stx-foldr cons _%rest175854%_ _%body175853%_)
                         _%r175855%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx175684%_
                         _%hd175852%_))))
                 (_%expand-cond-expand175690%_
                  (lambda (_%hd175848%_ _%rest175849%_ _%r175850%_)
                    (_%K175693%_
                     (cons (gx#core-expand-cond-expand% _%hd175848%_)
                           _%rest175849%_)
                     _%r175850%_)))
                 (_%expand-include175691%_
                  (lambda (_%hd175797%_ _%rest175798%_ _%r175799%_)
                    (let* ((_%e175800175810%_ _%hd175797%_)
                           (_%E175802175814%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e175800175810%_)))
                           (_%E175801175844%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175800175810%_)
                                  (let ((_%e175803175818%_
                                         (gx#syntax-e _%e175800175810%_)))
                                    (let ((_%hd175804175821%_
                                           (##car _%e175803175818%_))
                                          (_%tl175805175823%_
                                           (##cdr _%e175803175818%_)))
                                      (if (gx#stx-pair? _%tl175805175823%_)
                                          (let ((_%e175806175826%_
                                                 (gx#syntax-e
                                                  _%tl175805175823%_)))
                                            (let ((_%hd175807175829%_
                                                   (##car _%e175806175826%_))
                                                  (_%tl175808175831%_
                                                   (##cdr _%e175806175826%_)))
                                              (let ((_%path175834%_
                                                     _%hd175807175829%_))
                                                (if (gx#stx-null?
                                                     _%tl175808175831%_)
                                                    (if (gx#stx-string?
                                                         _%path175834%_)
                                                        (let* ((_%rpath175836%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path175834%_
                         (gx#stx-source _%hd175797%_)))
                       (_%block175838%_
                        (gx#core-expand-include%__%
                         _%hd175797%_
                         _%rpath175836%_))
                       (_%rbody175841%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block175838%_
                            _%expand-special175685%_
                            '#f
                            _%expand-e175687%_))
                         gx#current-expander-path
                         (cons _%rpath175836%_ (gx#current-expander-path)))))
                  (_%K175693%_
                   _%rest175798%_
                   (foldr__0 cons _%r175799%_ _%rbody175841%_)))
                (_%E175802175814%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E175802175814%_)))))
                                          (_%E175802175814%_))))
                                  (_%E175802175814%_)))))
                      (_%E175801175844%_))))
                 (_%expand-expression175692%_
                  (lambda (_%hd175793%_ _%rest175794%_ _%r175795%_)
                    (_%K175693%_
                     _%rest175794%_
                     (cons (_%expand-e175687%_ _%hd175793%_) _%r175795%_))))
                 (_%K175693%_
                  (lambda (_%rest175723%_ _%r175724%_)
                    (let* ((_%e175725175732%_ _%rest175723%_)
                           (_%E175727175736%_
                            (lambda ()
                              (if _%begin-form175686%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form175686%_
                                    (reverse _%r175724%_))
                                   (gx#stx-source _%stx175684%_))
                                  _%r175724%_)))
                           (_%E175726175789%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175725175732%_)
                                  (let ((_%e175728175740%_
                                         (gx#syntax-e _%e175725175732%_)))
                                    (let ((_%hd175729175743%_
                                           (##car _%e175728175740%_))
                                          (_%tl175730175745%_
                                           (##cdr _%e175728175740%_)))
                                      (let* ((_%hd175748%_ _%hd175729175743%_)
                                             (_%rest175750%_
                                              _%tl175730175745%_)
                                             (_%hd175752%_
                                              (gx#core-expand-head
                                               _%hd175748%_))
                                             (_%e175753175760%_ _%hd175752%_)
                                             (_%E175755175764%_
                                              (lambda ()
                                                (_%expand-expression175692%_
                                                 _%hd175752%_
                                                 _%rest175750%_
                                                 _%r175724%_)))
                                             (_%E175754175785%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e175753175760%_)
                                                    (let ((_%e175756175768%_
                                                           (gx#syntax-e
                                                            _%e175753175760%_)))
                                                      (let ((_%hd175757175771%_
                                                             (##car _%e175756175768%_))
                                                            (_%tl175758175773%_
                                                             (##cdr _%e175756175768%_)))
                                                        (let* ((_%form175776%_
                                                                _%hd175757175771%_)
                                                               (_%body175778%_
                                                                _%tl175758175773%_)
                                                               (_%bind175780%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form175776%_)
                            (gx#resolve-identifier__0 _%form175776%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind175780%_)
                      (let ((_%$e175782%_
                             (##unchecked-structure-ref
                              _%bind175780%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e175782%_)
                            (_%expand-splice175689%_
                             _%hd175752%_
                             _%body175778%_
                             _%rest175750%_
                             _%r175724%_)
                            (if (eq? '%#cond-expand _%$e175782%_)
                                (_%expand-cond-expand175690%_
                                 _%hd175752%_
                                 _%rest175750%_
                                 _%r175724%_)
                                (if (eq? '%#include _%$e175782%_)
                                    (_%expand-include175691%_
                                     _%hd175752%_
                                     _%rest175750%_
                                     _%r175724%_)
                                    (_%expand-special175685%_
                                     _%hd175752%_
                                     _%K175693%_
                                     _%rest175750%_
                                     _%r175724%_)))))
                      (_%expand-expression175692%_
                       _%hd175752%_
                       _%rest175750%_
                       _%r175724%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E175755175764%_)))))
                                        (_%E175754175785%_))))
                                  (_%E175727175736%_)))))
                      (_%E175726175789%_)))))
          (let* ((_%e175694175701%_ _%stx175684%_)
                 (_%E175696175705%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e175694175701%_)))
                 (_%E175695175719%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175694175701%_)
                        (let ((_%e175697175709%_
                               (gx#syntax-e _%e175694175701%_)))
                          (let ((_%hd175698175712%_ (##car _%e175697175709%_))
                                (_%tl175699175714%_ (##cdr _%e175697175709%_)))
                            (let ((_%body175717%_ _%tl175699175714%_))
                              (if (gx#stx-list? _%body175717%_)
                                  (_%K175693%_ _%body175717%_ '())
                                  (_%E175696175705%_)))))
                        (_%E175696175705%_)))))
            (_%E175695175719%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx175860%_ _%expand-special175861%_)
        (let* ((_%begin-form175863%_ '%#begin)
               (_%expand-e175865%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx175860%_
           _%expand-special175861%_
           _%begin-form175863%_
           _%expand-e175865%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx175867%_ _%expand-special175868%_ _%begin-form175869%_)
        (let ((_%expand-e175871%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx175867%_
           _%expand-special175868%_
           _%begin-form175869%_
           _%expand-e175871%_))))
    (define gx#core-expand-block
      (lambda _g177774_
        (let ((_g177775_ (##length _g177774_)))
          (cond ((##fx= _g177775_ 2) (apply gx#core-expand-block__0 _g177774_))
                ((##fx= _g177775_ 3) (apply gx#core-expand-block__1 _g177774_))
                ((##fx= _g177775_ 4) (apply gx#core-expand-block__% _g177774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g177774_))))))
    (define gx#core-expand-block*
      (lambda (_%stx175632%_ _%expand-special175633%_)
        (let* ((_%g175634175645%_
                (gx#core-expand-block__1
                 _%stx175632%_
                 _%expand-special175633%_
                 '#f))
               (_%E175638175649%_
                (lambda ()
                  (error '"No clause matching"
                         _%g175634175645%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K175643175680%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx175632%_)))
                (_%K175640175666%_ (lambda (_%expr175664%_) _%expr175664%_))
                (_%K175639175655%_
                 (lambda (_%body175653%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body175653%_))
                    (gx#stx-source _%stx175632%_)))))
            (let ((_%try-match175636175676%_
                   (lambda ()
                     (if (pair? _%g175634175645%_)
                         (let ((_%tl175642175671%_ (##cdr _%g175634175645%_))
                               (_%hd175641175669%_ (##car _%g175634175645%_)))
                           (if (null? _%tl175642175671%_)
                               (let ((_%expr175674%_ _%hd175641175669%_))
                                 (_%K175640175666%_ _%expr175674%_))
                               (let ((_%body175658%_ _%g175634175645%_))
                                 (_%K175639175655%_ _%body175658%_))))
                         (let ((_%body175658%_ _%g175634175645%_))
                           (_%K175639175655%_ _%body175658%_))))))
              (if (null? _%g175634175645%_)
                  (_%K175643175680%_)
                  (_%try-match175636175676%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx175458%_)
        (letrec ((_%satisfied?175460%_
                  (lambda (_%condition175561%_)
                    (let* ((_%e175562175577%_ _%condition175561%_)
                           (_%E175572175581%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e175562175577%_)))
                           (_%E175565175600%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175562175577%_)
                                  (let ((_%e175573175585%_
                                         (gx#syntax-e _%e175562175577%_)))
                                    (let ((_%hd175574175588%_
                                           (##car _%e175573175585%_))
                                          (_%tl175575175590%_
                                           (##cdr _%e175573175585%_)))
                                      (let* ((_%combinator175593%_
                                              _%hd175574175588%_)
                                             (_%body175595%_
                                              _%tl175575175590%_))
                                        (if (gx#stx-list? _%body175595%_)
                                            (let ((_%$e175597%_
                                                   (gx#stx-e
                                                    _%combinator175593%_)))
                                              (if (eq? 'not _%$e175597%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?175460%_
                                                        _%body175595%_))
                                                  (if (eq? 'and _%$e175597%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?175460%_
                                                       _%body175595%_)
                                                      (if (eq? 'or
                                                               _%$e175597%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?175460%_
                                                           _%body175595%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e175597%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body175595%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx175458%_
                       _%combinator175593%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E175572175581%_)))))
                                  (_%E175572175581%_))))
                           (_%E175564175622%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175562175577%_)
                                  (let ((_%e175566175604%_
                                         (gx#syntax-e _%e175562175577%_)))
                                    (let ((_%hd175567175607%_
                                           (##car _%e175566175604%_))
                                          (_%tl175568175609%_
                                           (##cdr _%e175566175604%_)))
                                      (if (and (gx#identifier?
                                                _%hd175567175607%_)
                                               (gx#core-identifier=?
                                                _%hd175567175607%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl175568175609%_)
                                              (let ((_%e175569175612%_
                                                     (gx#syntax-e
                                                      _%tl175568175609%_)))
                                                (let ((_%hd175570175615%_
                                                       (##car _%e175569175612%_))
                                                      (_%tl175571175617%_
                                                       (##cdr _%e175569175612%_)))
                                                  (let ((_%expr175620%_
                                                         _%hd175570175615%_))
                                                    (if (gx#stx-null?
                                                         _%tl175571175617%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr175620%_)
                                                        (_%E175565175600%_)))))
                                              (_%E175565175600%_))
                                          (_%E175565175600%_))))
                                  (_%E175565175600%_))))
                           (_%E175563175628%_
                            (lambda ()
                              (let ((_%id175626%_ _%e175562175577%_))
                                (if (gx#identifier? _%id175626%_)
                                    (gx#core-bound-identifier?__%
                                     _%id175626%_
                                     gx#feature-binding?)
                                    (_%E175564175622%_))))))
                      (_%E175563175628%_))))
                 (_%loop175461%_
                  (lambda (_%rest175491%_)
                    (let* ((_%e175492175500%_ _%rest175491%_)
                           (_%E175498175504%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e175492175500%_)))
                           (_%E175494175508%_
                            (lambda ()
                              (if (gx#stx-null? _%e175492175500%_)
                                  '()
                                  (_%E175498175504%_))))
                           (_%E175493175557%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175492175500%_)
                                  (let ((_%e175495175512%_
                                         (gx#syntax-e _%e175492175500%_)))
                                    (let ((_%hd175496175515%_
                                           (##car _%e175495175512%_))
                                          (_%tl175497175517%_
                                           (##cdr _%e175495175512%_)))
                                      (let* ((_%hd175520%_ _%hd175496175515%_)
                                             (_%rest175522%_
                                              _%tl175497175517%_)
                                             (_%e175523175530%_ _%hd175520%_)
                                             (_%E175525175534%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e175523175530%_)))
                                             (_%E175524175553%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e175523175530%_)
                                                    (let ((_%e175526175538%_
                                                           (gx#syntax-e
                                                            _%e175523175530%_)))
                                                      (let ((_%hd175527175541%_
                                                             (##car _%e175526175538%_))
                                                            (_%tl175528175543%_
                                                             (##cdr _%e175526175538%_)))
                                                        (let* ((_%condition175546%_
                                                                _%hd175527175541%_)
                                                               (_%body175548%_
                                                                _%tl175528175543%_))
                                                          (if (gx#stx-eq?
                                                               _%condition175546%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest175522%_)
                          _%body175548%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx175458%_
                           _%hd175520%_))
                      (if (_%satisfied?175460%_ _%condition175546%_)
                          _%body175548%_
                          (_%loop175461%_ _%rest175522%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E175525175534%_)))))
                                        (_%E175524175553%_))))
                                  (_%E175494175508%_)))))
                      (_%E175493175557%_)))))
          (let* ((_%e175462175469%_ _%stx175458%_)
                 (_%E175464175473%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e175462175469%_)))
                 (_%E175463175487%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175462175469%_)
                        (let ((_%e175465175477%_
                               (gx#syntax-e _%e175462175469%_)))
                          (let ((_%hd175466175480%_ (##car _%e175465175477%_))
                                (_%tl175467175482%_ (##cdr _%e175465175477%_)))
                            (let ((_%clauses175485%_ _%tl175467175482%_))
                              (if (gx#stx-list? _%clauses175485%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop175461%_ _%clauses175485%_))
                                  (_%E175464175473%_)))))
                        (_%E175464175473%_)))))
            (_%E175463175487%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx175401%_ _%rpath175402%_)
        (let* ((_%e175403175413%_ _%stx175401%_)
               (_%E175405175417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175403175413%_)))
               (_%E175404175444%_
                (lambda ()
                  (if (gx#stx-pair? _%e175403175413%_)
                      (let ((_%e175406175421%_
                             (gx#syntax-e _%e175403175413%_)))
                        (let ((_%hd175407175424%_ (##car _%e175406175421%_))
                              (_%tl175408175426%_ (##cdr _%e175406175421%_)))
                          (if (gx#stx-pair? _%tl175408175426%_)
                              (let ((_%e175409175429%_
                                     (gx#syntax-e _%tl175408175426%_)))
                                (let ((_%hd175410175432%_
                                       (##car _%e175409175429%_))
                                      (_%tl175411175434%_
                                       (##cdr _%e175409175429%_)))
                                  (let ((_%path175437%_ _%hd175410175432%_))
                                    (if (gx#stx-null? _%tl175411175434%_)
                                        (if (gx#stx-string? _%path175437%_)
                                            (let ((_%rpath175442%_
                                                   (let ((_%$e175439%_
                                                          _%rpath175402%_))
                                                     (if _%$e175439%_
                                                         _%$e175439%_
                                                         (gx#core-resolve-path__%
                                                          _%path175437%_
                                                          (gx#stx-source
                                                           _%stx175401%_))))))
                                              (if (member _%rpath175442%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx175401%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath175442%_))
                                                    (gx#stx-source
                                                     _%stx175401%_)))))
                                            (_%E175405175417%_))
                                        (_%E175405175417%_)))))
                              (_%E175405175417%_))))
                      (_%E175405175417%_)))))
          (_%E175404175444%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx175451%_)
        (let ((_%rpath175453%_ '#f))
          (gx#core-expand-include%__% _%stx175451%_ _%rpath175453%_))))
    (define gx#core-expand-include%
      (lambda _g177776_
        (let ((_g177777_ (##length _g177776_)))
          (cond ((##fx= _g177777_ 1)
                 (apply gx#core-expand-include%__0 _g177776_))
                ((##fx= _g177777_ 2)
                 (apply gx#core-expand-include%__% _g177776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g177776_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K175367%_ _%stx175368%_ _%method175369%_)
        (if (procedure? _%K175367%_)
            (let ((_%$e175372%_ (gx#stx-source _%stx175368%_)))
              (if _%$e175372%_
                  ((lambda (_%g175374175376%_)
                     (gx#stx-wrap-source
                      (_%K175367%_ _%stx175368%_)
                      _%g175374175376%_))
                   _%$e175372%_)
                  (_%K175367%_ _%stx175368%_)))
            (let ((_%$e175380%_
                   (bound-method-ref _%K175367%_ _%method175369%_)))
              (if _%$e175380%_
                  ((lambda (_%g175382175384%_)
                     (gx#core-apply-expander__%
                      _%g175382175384%_
                      _%stx175368%_
                      _%method175369%_))
                   _%$e175380%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx175368%_
                   _%method175369%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K175391%_ _%stx175392%_)
        (let ((_%method175394%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K175391%_
           _%stx175392%_
           _%method175394%_))))
    (define gx#core-apply-expander
      (lambda _g177778_
        (let ((_g177779_ (##length _g177778_)))
          (cond ((##fx= _g177779_ 2)
                 (apply gx#core-apply-expander__0 _g177778_))
                ((##fx= _g177779_ 3)
                 (apply gx#core-apply-expander__% _g177778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g177778_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self175352%_ _%stx175353%_)
        (let ((_%self175356%_ _%self175352%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx175353%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self175195%_ _%stx175196%_)
        (let* ((_%self175199%_ _%self175195%_)
               (_%self175208175214%_ _%self175199%_)
               (_%E175210175217%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175208175214%_
                         '((macro-expander K)))
                  '#!void))
               (_%K175211175222%_
                (lambda (_%K175220%_)
                  (gx#core-apply-expander__0 _%K175220%_ _%stx175196%_)))
               (_%e175212175225%_
                (##unchecked-structure-ref _%self175208175214%_ '1 '#f '#f))
               (_%K175228%_ _%e175212175225%_))
          (_%K175211175222%_ _%K175228%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self175038%_ _%stx175039%_)
        (let ((_%self175042%_ _%self175038%_))
          (if (gx#sealed-syntax? _%stx175039%_)
              _%stx175039%_
              (let* ((_%self175051175057%_ _%self175042%_)
                     (_%E175053175060%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self175051175057%_
                               '((core-expander K)))
                        '#!void))
                     (_%K175054175065%_
                      (lambda (_%K175063%_)
                        (gx#core-apply-expander__0 _%K175063%_ _%stx175039%_)))
                     (_%e175055175068%_
                      (##unchecked-structure-ref
                       _%self175051175057%_
                       '1
                       '#f
                       '#f))
                     (_%K175071%_ _%e175055175068%_))
                (_%K175054175065%_ _%K175071%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self174889%_ _%stx174890%_ _%top?174891%_)
        (let ((_%self174894%_ _%self174889%_))
          (if (_%top?174891%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self174894%_
               _%stx174890%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx174890%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self174907%_ _%stx174908%_)
        (let ((_%top?174910%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self174907%_
           _%stx174908%_
           _%top?174910%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g177780_
        (let ((_g177781_ (##length _g177780_)))
          (cond ((##fx= _g177781_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g177780_))
                ((##fx= _g177781_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g177780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g177780_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self174752%_ _%stx174753%_)
        (let ((_%self174756%_ _%self174752%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self174756%_
           _%stx174753%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self174567%_ _%stx174568%_)
        (let* ((_%self174571%_ _%self174567%_)
               (_%self174580174586%_ _%self174571%_)
               (_%E174582174589%_
                (lambda ()
                  (error '"No clause matching"
                         _%self174580174586%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K174583174622%_
                (lambda (_%id174592%_)
                  (let* ((_%e174593174600%_ _%stx174568%_)
                         (_%E174595174604%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e174593174600%_)))
                         (_%E174594174618%_
                          (lambda ()
                            (if (gx#stx-pair? _%e174593174600%_)
                                (let ((_%e174596174608%_
                                       (gx#syntax-e _%e174593174600%_)))
                                  (let ((_%hd174597174611%_
                                         (##car _%e174596174608%_))
                                        (_%tl174598174613%_
                                         (##cdr _%e174596174608%_)))
                                    (let ((_%body174616%_ _%tl174598174613%_))
                                      (gx#core-cons
                                       _%id174592%_
                                       _%body174616%_))))
                                (_%E174595174604%_)))))
                    (_%E174594174618%_))))
               (_%e174584174625%_
                (##unchecked-structure-ref _%self174580174586%_ '1 '#f '#f))
               (_%id174628%_ _%e174584174625%_))
          (_%K174583174622%_ _%id174628%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self174394%_ _%stx174395%_ _%method174396%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx174395%_))
              (force-output))
            '#!void)
        (let* ((_%self174397174405%_ _%self174394%_)
               (_%E174399174408%_
                (lambda ()
                  (error '"No clause matching"
                         _%self174397174405%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K174400174415%_
                (lambda (_%phi174411%_ _%ctx174412%_ _%K174413%_)
                  (gx#core-apply-user-macro
                   _%K174413%_
                   _%stx174395%_
                   _%ctx174412%_
                   _%phi174411%_
                   _%method174396%_))))
          (if (##structure-instance-of?
               _%self174397174405%_
               'gx#user-expander::t)
              (let* ((_%e174401174418%_
                      (##unchecked-structure-ref
                       _%self174397174405%_
                       '1
                       '#f
                       '#f))
                     (_%K174421%_ _%e174401174418%_)
                     (_%e174402174423%_
                      (##unchecked-structure-ref
                       _%self174397174405%_
                       '2
                       '#f
                       '#f))
                     (_%ctx174426%_ _%e174402174423%_)
                     (_%e174403174428%_
                      (##unchecked-structure-ref
                       _%self174397174405%_
                       '3
                       '#f
                       '#f))
                     (_%phi174431%_ _%e174403174428%_))
                (_%K174400174415%_ _%phi174431%_ _%ctx174426%_ _%K174421%_))
              (_%E174399174408%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self174436%_ _%stx174437%_)
        (let ((_%method174439%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self174436%_
           _%stx174437%_
           _%method174439%_))))
    (define gx#core-apply-user-expander
      (lambda _g177782_
        (let ((_g177783_ (##length _g177782_)))
          (cond ((##fx= _g177783_ 2)
                 (apply gx#core-apply-user-expander__0 _g177782_))
                ((##fx= _g177783_ 3)
                 (apply gx#core-apply-user-expander__% _g177782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g177782_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K174384%_
               _%stx174385%_
               _%ctx174386%_
               _%phi174387%_
               _%method174388%_)
        (let ((_%mark174390%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx174386%_
                _%phi174387%_
                _%stx174385%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K174384%_
               (gx#stx-apply-mark _%stx174385%_ _%mark174390%_)
               _%method174388%_)
              _%mark174390%_))
           gx#current-expander-marks
           (cons _%mark174390%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx174232%_ _%phi174233%_ _%ctx174234%_)
        (let _%lp174236%_ ((_%bind174238%_
                            (gx#core-resolve-identifier__%
                             _%stx174232%_
                             _%phi174233%_
                             _%ctx174234%_)))
          (if (##structure-direct-instance-of?
               _%bind174238%_
               'gx#import-binding::t)
              (_%lp174236%_
               (##unchecked-structure-ref _%bind174238%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind174238%_
                   'gx#alias-binding::t)
                  (_%lp174236%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind174238%_ '5 '#f '#f)
                    _%phi174233%_
                    _%ctx174234%_))
                  _%bind174238%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx174246%_)
        (let* ((_%phi174248%_ (gx#current-expander-phi))
               (_%ctx174250%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx174246%_
           _%phi174248%_
           _%ctx174250%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx174252%_ _%phi174253%_)
        (let ((_%ctx174255%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx174252%_
           _%phi174253%_
           _%ctx174255%_))))
    (define gx#resolve-identifier
      (lambda _g177784_
        (let ((_g177785_ (##length _g177784_)))
          (cond ((##fx= _g177785_ 1)
                 (apply gx#resolve-identifier__0 _g177784_))
                ((##fx= _g177785_ 2)
                 (apply gx#resolve-identifier__1 _g177784_))
                ((##fx= _g177785_ 3)
                 (apply gx#resolve-identifier__% _g177784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g177784_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx174187%_
               _%val174188%_
               _%rebind?174189%_
               _%phi174190%_
               _%ctx174191%_)
        (let ((_%rebind?174196%_
               (if (not _%rebind?174189%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?174189%_)
                       _%rebind?174189%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx174187%_)
           _%val174188%_
           _%rebind?174196%_
           _%phi174190%_
           _%ctx174191%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx174201%_ _%val174202%_)
        (let* ((_%rebind?174204%_ '#f)
               (_%phi174206%_ (gx#current-expander-phi))
               (_%ctx174208%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174201%_
           _%val174202%_
           _%rebind?174204%_
           _%phi174206%_
           _%ctx174208%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx174210%_ _%val174211%_ _%rebind?174212%_)
        (let* ((_%phi174214%_ (gx#current-expander-phi))
               (_%ctx174216%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174210%_
           _%val174211%_
           _%rebind?174212%_
           _%phi174214%_
           _%ctx174216%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx174218%_ _%val174219%_ _%rebind?174220%_ _%phi174221%_)
        (let ((_%ctx174223%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174218%_
           _%val174219%_
           _%rebind?174220%_
           _%phi174221%_
           _%ctx174223%_))))
    (define gx#bind-identifier!
      (lambda _g177786_
        (let ((_g177787_ (##length _g177786_)))
          (cond ((##fx= _g177787_ 2) (apply gx#bind-identifier!__0 _g177786_))
                ((##fx= _g177787_ 3) (apply gx#bind-identifier!__1 _g177786_))
                ((##fx= _g177787_ 4) (apply gx#bind-identifier!__2 _g177786_))
                ((##fx= _g177787_ 5) (apply gx#bind-identifier!__% _g177786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g177786_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx174153%_ _%phi174154%_ _%ctx174155%_)
        (let _%lp174157%_ ((_%e174159%_ _%stx174153%_)
                           (_%marks174160%_ (gx#current-expander-marks)))
          (if (symbol? _%e174159%_)
              (gx#core-resolve-binding
               _%e174159%_
               _%phi174154%_
               _%phi174154%_
               _%ctx174155%_
               (reverse _%marks174160%_))
              (if (gx#identifier-quote? _%e174159%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e174159%_ '1 '#f '#f)
                   _%phi174154%_
                   '0
                   (##unchecked-structure-ref _%e174159%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e174159%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e174159%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e174159%_ '1 '#f '#f)
                       _%phi174154%_
                       _%phi174154%_
                       _%ctx174155%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e174159%_ '3 '#f '#f)
                        _%marks174160%_))
                      (if (##structure-direct-instance-of?
                           _%e174159%_
                           'gx#syntax-wrap::t)
                          (_%lp174157%_
                           (##unchecked-structure-ref _%e174159%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e174159%_ '3 '#f '#f)
                            _%marks174160%_))
                          (if (##structure-instance-of?
                               _%e174159%_
                               'gerbil#AST::t)
                              (_%lp174157%_
                               (##unchecked-structure-ref
                                _%e174159%_
                                '1
                                '#f
                                '#f)
                               _%marks174160%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx174153%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx174171%_)
        (let* ((_%phi174173%_ (gx#current-expander-phi))
               (_%ctx174175%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx174171%_
           _%phi174173%_
           _%ctx174175%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx174177%_ _%phi174178%_)
        (let ((_%ctx174180%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx174177%_
           _%phi174178%_
           _%ctx174180%_))))
    (define gx#core-resolve-identifier
      (lambda _g177788_
        (let ((_g177789_ (##length _g177788_)))
          (cond ((##fx= _g177789_ 1)
                 (apply gx#core-resolve-identifier__0 _g177788_))
                ((##fx= _g177789_ 2)
                 (apply gx#core-resolve-identifier__1 _g177788_))
                ((##fx= _g177789_ 3)
                 (apply gx#core-resolve-identifier__% _g177788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g177788_))))))
    (define gx#core-resolve-binding
      (lambda (_%id174064%_
               _%phi174065%_
               _%src-phi174066%_
               _%ctx174067%_
               _%marks174068%_)
        (letrec ((_%resolve174070%_
                  (lambda (_%ctx174137%_ _%src-phi174138%_ _%key174139%_)
                    (let _%lp174141%_ ((_%ctx174143%_
                                        (gx#core-context-shift
                                         _%ctx174137%_
                                         _%phi174065%_))
                                       (_%dphi174144%_
                                        (fx- _%phi174065%_ _%src-phi174138%_)))
                      (let ((_%$e174146%_
                             (gx#core-context-resolve
                              _%ctx174143%_
                              _%key174139%_)))
                        (if _%$e174146%_
                            _%$e174146%_
                            (if (fxzero? _%dphi174144%_)
                                '#f
                                (if (fxpositive? _%dphi174144%_)
                                    (_%lp174141%_
                                     (gx#core-context-shift _%ctx174143%_ '-1)
                                     (##fx- _%dphi174144%_ '1))
                                    (_%lp174141%_
                                     (gx#core-context-shift _%ctx174143%_ '1)
                                     (##fx+ _%dphi174144%_ '1))))))))))
          (let _%lp174072%_ ((_%ctx174074%_ _%ctx174067%_)
                             (_%src-phi174075%_ _%src-phi174066%_)
                             (_%rest174076%_ _%marks174068%_))
            (let* ((_%rest174077174085%_ _%rest174076%_)
                   (_%else174079174093%_
                    (lambda ()
                      (_%resolve174070%_
                       _%ctx174074%_
                       _%src-phi174075%_
                       _%id174064%_)))
                   (_%K174081174125%_
                    (lambda (_%rest174096%_ _%hd174097%_)
                      (let* ((_%hd174098174104%_ _%hd174097%_)
                             (_%E174100174107%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd174098174104%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K174101174117%_
                              (lambda (_%subst174110%_)
                                (let ((_%$e174114%_
                                       (let ((_%key174112%_
                                              (if _%subst174110%_
                                                  (hash-get
                                                   _%subst174110%_
                                                   _%id174064%_)
                                                  '#f)))
                                         (if _%key174112%_
                                             (_%resolve174070%_
                                              _%ctx174074%_
                                              _%src-phi174075%_
                                              _%key174112%_)
                                             '#f))))
                                  (if _%$e174114%_
                                      _%$e174114%_
                                      (_%lp174072%_
                                       (##unchecked-structure-ref
                                        _%hd174097%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd174097%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest174096%_))))))
                        (if (##structure-instance-of?
                             _%hd174098174104%_
                             'gx#expander-mark::t)
                            (let* ((_%e174102174120%_
                                    (##unchecked-structure-ref
                                     _%hd174098174104%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst174123%_ _%e174102174120%_))
                              (_%K174101174117%_ _%subst174123%_))
                            (_%E174100174107%_))))))
              (if (pair? _%rest174077174085%_)
                  (let ((_%hd174082174128%_ (##car _%rest174077174085%_))
                        (_%tl174083174130%_ (##cdr _%rest174077174085%_)))
                    (let* ((_%hd174133%_ _%hd174082174128%_)
                           (_%rest174135%_ _%tl174083174130%_))
                      (_%K174081174125%_ _%rest174135%_ _%hd174133%_)))
                  (_%else174079174093%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key173935%_
               _%val173936%_
               _%rebind?173937%_
               _%phi173938%_
               _%ctx173939%_)
        (letrec ((_%update-binding173941%_
                  (lambda (_%xval174013%_)
                    (if (or (_%rebind?173937%_
                             _%ctx173939%_
                             _%xval174013%_
                             _%val173936%_)
                            (and (##structure-direct-instance-of?
                                  _%xval174013%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval174013%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val173936%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val173936%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval174013%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val173936%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val173936%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval174013%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val173936%_
                        (if (and (##structure-direct-instance-of?
                                  _%val173936%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val173936%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval174013%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val173936%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval174013%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval174013%_
                            (if (and (##structure-direct-instance-of?
                                      _%val173936%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval174013%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key173935%_
                                 (cons (##unchecked-structure-ref
                                        _%val173936%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val173936%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval174013%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval174013%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval174013%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval174013%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key173935%_
                                 _%val173936%_
                                 _%xval174013%_))))))
                 (_%gensubst173942%_
                  (lambda (_%subst174008%_ _%id174009%_)
                    (let ((_%eid174011%_
                           (gensym (if (uninterned-symbol? _%id174009%_)
                                       '%
                                       _%id174009%_))))
                      (hash-put! _%subst174008%_ _%id174009%_ _%eid174011%_)
                      _%eid174011%_)))
                 (_%subst!173943%_
                  (lambda (_%key173945%_)
                    (let* ((_%key173946173954%_ _%key173945%_)
                           (_%else173948173962%_ (lambda () _%key173945%_))
                           (_%K173950173996%_
                            (lambda (_%mark173965%_ _%id173966%_)
                              (let* ((_%mark173967173973%_ _%mark173965%_)
                                     (_%E173969173976%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark173967173973%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K173970173988%_
                                      (lambda (_%subst173979%_)
                                        (if (not _%subst173979%_)
                                            (let ((_%subst173982%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark173965%_
                                               _%subst173982%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst173942%_
                                               _%subst173982%_
                                               _%id173966%_))
                                            (let ((_%$e173984%_
                                                   (hash-get
                                                    _%subst173979%_
                                                    _%id173966%_)))
                                              (if _%$e173984%_
                                                  _%$e173984%_
                                                  (_%gensubst173942%_
                                                   _%subst173979%_
                                                   _%id173966%_)))))))
                                (if (##structure-instance-of?
                                     _%mark173967173973%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e173971173991%_
                                            (##unchecked-structure-ref
                                             _%mark173967173973%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst173994%_ _%e173971173991%_))
                                      (_%K173970173988%_ _%subst173994%_))
                                    (_%E173969173976%_))))))
                      (if (pair? _%key173946173954%_)
                          (let ((_%hd173951173999%_
                                 (##car _%key173946173954%_))
                                (_%tl173952174001%_
                                 (##cdr _%key173946173954%_)))
                            (let* ((_%id174004%_ _%hd173951173999%_)
                                   (_%mark174006%_ _%tl173952174001%_))
                              (_%K173950173996%_ _%mark174006%_ _%id174004%_)))
                          (_%else173948173962%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx173939%_ _%phi173938%_)
           (_%subst!173943%_ _%key173935%_)
           _%val173936%_
           _%update-binding173941%_))))
    (define gx#core-bind!__0
      (lambda (_%key174034%_ _%val174035%_)
        (let* ((_%rebind?174037%_ false)
               (_%phi174039%_ (gx#current-expander-phi))
               (_%ctx174041%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174034%_
           _%val174035%_
           _%rebind?174037%_
           _%phi174039%_
           _%ctx174041%_))))
    (define gx#core-bind!__1
      (lambda (_%key174043%_ _%val174044%_ _%rebind?174045%_)
        (let* ((_%phi174047%_ (gx#current-expander-phi))
               (_%ctx174049%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174043%_
           _%val174044%_
           _%rebind?174045%_
           _%phi174047%_
           _%ctx174049%_))))
    (define gx#core-bind!__2
      (lambda (_%key174051%_ _%val174052%_ _%rebind?174053%_ _%phi174054%_)
        (let ((_%ctx174056%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174051%_
           _%val174052%_
           _%rebind?174053%_
           _%phi174054%_
           _%ctx174056%_))))
    (define gx#core-bind!
      (lambda _g177790_
        (let ((_g177791_ (##length _g177790_)))
          (cond ((##fx= _g177791_ 2) (apply gx#core-bind!__0 _g177790_))
                ((##fx= _g177791_ 3) (apply gx#core-bind!__1 _g177790_))
                ((##fx= _g177791_ 4) (apply gx#core-bind!__2 _g177790_))
                ((##fx= _g177791_ 5) (apply gx#core-bind!__% _g177790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g177790_))))))
    (define gx#core-identifier-key
      (lambda (_%stx173866%_)
        (if (symbol? _%stx173866%_)
            (let* ((_%g173868173876%_ (gx#current-expander-marks))
                   (_%else173870173884%_ (lambda () _%stx173866%_))
                   (_%K173872173889%_
                    (lambda (_%hd173887%_) (cons _%stx173866%_ _%hd173887%_))))
              (if (pair? _%g173868173876%_)
                  (let* ((_%hd173873173892%_ (##car _%g173868173876%_))
                         (_%hd173895%_ _%hd173873173892%_))
                    (_%K173872173889%_ _%hd173895%_))
                  (_%else173870173884%_)))
            (if (gx#identifier? _%stx173866%_)
                (let* ((_%id173898%_ (gx#syntax-local-unwrap _%stx173866%_))
                       (_%eid173900%_ (gx#stx-e _%id173898%_))
                       (_%marks173902%_
                        (gx#stx-identifier-marks* _%id173898%_))
                       (_%marks173904173912%_ _%marks173902%_)
                       (_%else173906173920%_ (lambda () _%eid173900%_))
                       (_%K173908173925%_
                        (lambda (_%hd173923%_)
                          (cons _%eid173900%_ _%hd173923%_))))
                  (if (pair? _%marks173904173912%_)
                      (let* ((_%hd173909173928%_ (##car _%marks173904173912%_))
                             (_%hd173931%_ _%hd173909173928%_))
                        (_%K173908173925%_ _%hd173931%_))
                      (_%else173906173920%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx173866%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx173805%_ _%phi173806%_)
        (letrec ((_%make-phi173808%_
                  (lambda (_%super173864%_)
                    (let ((__obj177761
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj177761
                       (##gensym 'phi)
                       _%super173864%_)
                      __obj177761)))
                 (_%make-phi/up173809%_
                  (lambda (_%ctx173859%_ _%super173860%_)
                    (let ((_%ctx+1173862%_
                           (_%make-phi173808%_ _%super173860%_)))
                      (##unchecked-structure-set!
                       _%ctx173859%_
                       _%ctx+1173862%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1173862%_
                       _%ctx173859%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1173862%_)))
                 (_%make-phi/down173810%_
                  (lambda (_%ctx173854%_ _%super173855%_)
                    (let ((_%ctx-1173857%_
                           (_%make-phi173808%_ _%super173855%_)))
                      (##unchecked-structure-set!
                       _%ctx-1173857%_
                       _%ctx173854%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx173854%_
                       _%ctx-1173857%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1173857%_)))
                 (_%shift173811%_
                  (lambda (_%ctx173837%_
                           _%delta173838%_
                           _%make-delta-context173839%_
                           _%phi173840%_
                           _%K173841%_)
                    (let ((_%$e173843%_
                           (##unchecked-structure-ref
                            _%ctx173837%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e173843%_
                          ((lambda (_%super173846%_)
                             (let* ((_%super173848%_
                                     (_%K173841%_
                                      _%super173846%_
                                      _%delta173838%_))
                                    (_%ctx+d173850%_
                                     (_%make-delta-context173839%_
                                      _%ctx173837%_
                                      _%super173848%_)))
                               (_%K173841%_
                                _%ctx+d173850%_
                                (fx- _%phi173840%_ _%delta173838%_))))
                           _%$e173843%_)
                          (error '"Bad context" _%ctx173837%_))))))
          (let _%K173813%_ ((_%ctx173815%_ _%ctx173805%_)
                            (_%phi173816%_ _%phi173806%_))
            (if (fxzero? _%phi173816%_)
                _%ctx173815%_
                (if (##structure-instance-of? _%ctx173815%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi173816%_)
                        (let ((_%$e173820%_
                               (##unchecked-structure-ref
                                _%ctx173815%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e173820%_
                              ((lambda (_%g173822173824%_)
                                 (_%K173813%_
                                  _%g173822173824%_
                                  (##fx- _%phi173816%_ '1)))
                               _%$e173820%_)
                              (_%shift173811%_
                               _%ctx173815%_
                               '1
                               _%make-phi/up173809%_
                               _%phi173816%_
                               _%K173813%_)))
                        (let ((_%$e173828%_
                               (##unchecked-structure-ref
                                _%ctx173815%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e173828%_
                              ((lambda (_%g173830173832%_)
                                 (_%K173813%_
                                  _%g173830173832%_
                                  (##fx+ _%phi173816%_ '1)))
                               _%$e173828%_)
                              (_%shift173811%_
                               _%ctx173815%_
                               '-1
                               _%make-phi/down173810%_
                               _%phi173816%_
                               _%K173813%_))))
                    _%ctx173815%_))))))
    (define gx#core-context-get
      (lambda (_%ctx173802%_ _%key173803%_)
        (hash-get
         (##unchecked-structure-ref _%ctx173802%_ '2 '#f '#f)
         _%key173803%_)))
    (define gx#core-context-put!
      (lambda (_%ctx173798%_ _%key173799%_ _%val173800%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx173798%_ '2 '#f '#f)
         _%key173799%_
         _%val173800%_)
        _%val173800%_))
    (define gx#core-context-resolve
      (lambda (_%ctx173784%_ _%key173785%_)
        (let _%lp173787%_ ((_%ctx173789%_ _%ctx173784%_))
          (let ((_%$e173791%_
                 (gx#core-context-get _%ctx173789%_ _%key173785%_)))
            (if _%$e173791%_
                _%$e173791%_
                (let ((_%$e173794%_
                       (if (##structure-instance-of?
                            _%ctx173789%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx173789%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e173794%_ (_%lp173787%_ _%$e173794%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx173773%_ _%key173774%_ _%val173775%_ _%rebind173776%_)
        (let ((_%$e173778%_ (gx#core-context-get _%ctx173773%_ _%key173774%_)))
          (if _%$e173778%_
              ((lambda (_%xval173781%_)
                 (gx#core-context-put!
                  _%ctx173773%_
                  _%key173774%_
                  (_%rebind173776%_ _%xval173781%_)))
               _%$e173778%_)
              (gx#core-context-put!
               _%ctx173773%_
               _%key173774%_
               _%val173775%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx173748%_ _%stop?173749%_)
        (let _%lp173751%_ ((_%ctx173753%_ _%ctx173748%_))
          (if (_%stop?173749%_ _%ctx173753%_)
              _%ctx173753%_
              (if (##structure-instance-of? _%ctx173753%_ 'gx#phi-context::t)
                  (_%lp173751%_
                   (##unchecked-structure-ref _%ctx173753%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx173762%_ (gx#current-expander-context))
               (_%stop?173764%_ gx#top-context?))
          (gx#core-context-top__% _%ctx173762%_ _%stop?173764%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx173766%_)
        (let ((_%stop?173768%_ gx#top-context?))
          (gx#core-context-top__% _%ctx173766%_ _%stop?173768%_))))
    (define gx#core-context-top
      (lambda _g177792_
        (let ((_g177793_ (##length _g177792_)))
          (cond ((##fx= _g177793_ 0) (apply gx#core-context-top__0 _g177792_))
                ((##fx= _g177793_ 1) (apply gx#core-context-top__1 _g177792_))
                ((##fx= _g177793_ 2) (apply gx#core-context-top__% _g177792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g177792_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx173733%_)
        (let _%lp173735%_ ((_%ctx173737%_ _%ctx173733%_))
          (if (##structure-instance-of? _%ctx173737%_ 'gx#phi-context::t)
              (_%lp173735%_
               (##unchecked-structure-ref _%ctx173737%_ '3 '#f '#f))
              _%ctx173737%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx173743%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx173743%_))))
    (define gx#core-context-root
      (lambda _g177794_
        (let ((_g177795_ (##length _g177794_)))
          (cond ((##fx= _g177795_ 0) (apply gx#core-context-root__0 _g177794_))
                ((##fx= _g177795_ 1) (apply gx#core-context-root__% _g177794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g177794_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx173715%_ . _%ignore173716%_)
        (let ((_%$e173718%_ (gx#current-expander-allow-rebind?)))
          (if _%$e173718%_
              _%$e173718%_
              (if (##structure-instance-of? _%ctx173715%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx173715%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx173715%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx173725%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx173725%_))))
    (define gx#core-context-rebind?
      (lambda _g177796_
        (let ((_g177797_ (##length _g177796_)))
          (cond ((##fx= _g177797_ 0)
                 (apply gx#core-context-rebind?__0 _g177796_))
                ((##fx= _g177797_ 1)
                 (apply gx#core-context-rebind?__% _g177796_))
                ((##fx>= _g177797_ 1)
                 (apply gx#core-context-rebind?__% _g177796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g177796_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx173698%_)
        (let ((_%$e173700%_ (gx#core-context-top__1 _%ctx173698%_)))
          (if _%$e173700%_
              ((lambda (_%ctx173703%_)
                 (if (##structure-instance-of?
                      _%ctx173703%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx173703%_ '6 '#f '#f)
                     '#f))
               _%$e173700%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx173710%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx173710%_))))
    (define gx#core-context-namespace
      (lambda _g177798_
        (let ((_g177799_ (##length _g177798_)))
          (cond ((##fx= _g177799_ 0)
                 (apply gx#core-context-namespace__0 _g177798_))
                ((##fx= _g177799_ 1)
                 (apply gx#core-context-namespace__% _g177798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g177798_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind173684%_ _%is?173685%_)
        (if (##structure-direct-instance-of?
             _%bind173684%_
             'gx#syntax-binding::t)
            (_%is?173685%_
             (##unchecked-structure-ref _%bind173684%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind173690%_)
        (let ((_%is?173692%_ gx#expander?))
          (gx#expander-binding?__% _%bind173690%_ _%is?173692%_))))
    (define gx#expander-binding?
      (lambda _g177800_
        (let ((_g177801_ (##length _g177800_)))
          (cond ((##fx= _g177801_ 1) (apply gx#expander-binding?__0 _g177800_))
                ((##fx= _g177801_ 2) (apply gx#expander-binding?__% _g177800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g177800_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind173681%_)
        (gx#expander-binding?__% _%bind173681%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind173679%_)
        (gx#expander-binding?__% _%bind173679%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind173673%_)
        (letrec ((_%direct-special-form?173675%_
                  (lambda (_%obj173677%_)
                    (##structure-direct-instance-of?
                     _%obj173677%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind173673%_
           _%direct-special-form?173675%_))))
    (define gx#special-form-binding?
      (lambda (_%bind173671%_)
        (gx#expander-binding?__% _%bind173671%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind173662%_)
        (letrec ((_%feature?173664%_
                  (lambda (_%e173666%_)
                    (let ((_%$e173668%_
                           (##structure-instance-of?
                            _%e173666%_
                            'gx#feature-expander::t)))
                      (if _%$e173668%_
                          _%$e173668%_
                          (##structure-instance-of?
                           _%e173666%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind173662%_ _%feature?173664%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind173660%_)
        (gx#expander-binding?__% _%bind173660%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id173647%_ _%bound?173648%_)
        (if (gx#identifier? _%id173647%_)
            (_%bound?173648%_ (gx#resolve-identifier__0 _%id173647%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id173653%_)
        (let ((_%bound?173655%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id173653%_ _%bound?173655%_))))
    (define gx#core-bound-identifier?
      (lambda _g177802_
        (let ((_g177803_ (##length _g177802_)))
          (cond ((##fx= _g177803_ 1)
                 (apply gx#core-bound-identifier?__0 _g177802_))
                ((##fx= _g177803_ 2)
                 (apply gx#core-bound-identifier?__% _g177802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g177802_))))))
    (define gx#core-identifier=?
      (lambda (_%x173637%_ _%y173638%_)
        (letrec ((_%y=?173640%_
                  (lambda (_%xid173644%_)
                    ((if (list? _%y173638%_) memq eq?)
                     _%xid173644%_
                     _%y173638%_))))
          (let ((_%bind173642%_ (gx#resolve-identifier__0 _%x173637%_)))
            (if (##structure-instance-of? _%bind173642%_ 'gx#binding::t)
                (_%y=?173640%_
                 (##unchecked-structure-ref _%bind173642%_ '1 '#f '#f))
                (_%y=?173640%_ (gx#stx-e _%x173637%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e173635%_)
        (if (interned-symbol? _%e173635%_)
            (string-index__0 (symbol->string _%e173635%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx173588%_ _%src173589%_ _%ctx173590%_ _%marks173591%_)
        (if (##structure? _%stx173588%_)
            (let ((_%$e173593%_ (gx#sealed-syntax-unwrap _%stx173588%_)))
              (if _%$e173593%_
                  _%$e173593%_
                  (if (gx#identifier? _%stx173588%_)
                      (let ((_%id173597%_
                             (gx#stx-unwrap__% _%stx173588%_ _%marks173591%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id173597%_ '1 '#f '#f)
                         (let ((_%$e173599%_
                                (##unchecked-structure-ref
                                 _%id173597%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e173599%_ _%$e173599%_ _%src173589%_))
                         _%ctx173590%_
                         (##unchecked-structure-ref _%id173597%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx173588%_)
                       (let ((_%$e173603%_ (gx#stx-source _%stx173588%_)))
                         (if _%$e173603%_ _%$e173603%_ _%src173589%_))
                       _%ctx173590%_
                       (reverse _%marks173591%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx173588%_
             _%src173589%_
             _%ctx173590%_
             (reverse _%marks173591%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx173609%_)
        (let* ((_%src173611%_ '#f)
               (_%ctx173613%_ (gx#current-expander-context))
               (_%marks173615%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx173609%_
           _%src173611%_
           _%ctx173613%_
           _%marks173615%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx173617%_ _%src173618%_)
        (let* ((_%ctx173620%_ (gx#current-expander-context))
               (_%marks173622%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx173617%_
           _%src173618%_
           _%ctx173620%_
           _%marks173622%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx173624%_ _%src173625%_ _%ctx173626%_)
        (let ((_%marks173628%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx173624%_
           _%src173625%_
           _%ctx173626%_
           _%marks173628%_))))
    (define gx#core-quote-syntax
      (lambda _g177804_
        (let ((_g177805_ (##length _g177804_)))
          (cond ((##fx= _g177805_ 1) (apply gx#core-quote-syntax__0 _g177804_))
                ((##fx= _g177805_ 2) (apply gx#core-quote-syntax__1 _g177804_))
                ((##fx= _g177805_ 3) (apply gx#core-quote-syntax__2 _g177804_))
                ((##fx= _g177805_ 4) (apply gx#core-quote-syntax__% _g177804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g177804_))))))
    (define gx#core-cons
      (lambda (_%hd173584%_ _%tl173585%_)
        (cons (gx#core-quote-syntax__0 _%hd173584%_) _%tl173585%_)))
    (define gx#core-list
      (lambda (_%hd173581%_ . _%rest173582%_)
        (cons (gx#core-quote-syntax__0 _%hd173581%_) _%rest173582%_)))
    (define gx#core-cons*
      (lambda (_%hd173578%_ . _%rest173579%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd173578%_) _%rest173579%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path173547%_ _%rel173548%_)
        (let ((_%path173565%_ (gx#stx-e _%stx-path173547%_))
              (_%reldir173566%_
               (let _%lp173550%_ ((_%relsrc173552%_
                                   (let ((_%$e173562%_
                                          (gx#stx-source _%stx-path173547%_)))
                                     (if _%$e173562%_
                                         _%$e173562%_
                                         _%rel173548%_))))
                 (if (##structure-instance-of? _%relsrc173552%_ 'gerbil#AST::t)
                     (_%lp173550%_
                      (let ((_%$e173555%_ (gx#stx-source _%relsrc173552%_)))
                        (if _%$e173555%_
                            _%$e173555%_
                            (gx#stx-e _%relsrc173552%_))))
                     (if (source-location-path? _%relsrc173552%_)
                         (path-directory
                          (source-location-path _%relsrc173552%_))
                         (if (string? _%relsrc173552%_)
                             (path-directory _%relsrc173552%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path173565%_ (path-normalize _%reldir173566%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path173571%_)
        (let ((_%rel173573%_ '#f))
          (gx#core-resolve-path__% _%stx-path173571%_ _%rel173573%_))))
    (define gx#core-resolve-path
      (lambda _g177806_
        (let ((_g177807_ (##length _g177806_)))
          (cond ((##fx= _g177807_ 1) (apply gx#core-resolve-path__0 _g177806_))
                ((##fx= _g177807_ 2) (apply gx#core-resolve-path__% _g177806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g177806_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr173503%_ _%ctx173504%_)
        (let* ((_%repr173505173512%_ _%repr173503%_)
               (_%E173507173516%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr173505173512%_
                         '([phi . subs]))
                  '#!void))
               (_%K173508173524%_
                (lambda (_%subs173519%_ _%phi173520%_)
                  (let ((_%subst173522%_
                         (if (null? _%subs173519%_)
                             '#f
                             (list->hash-table-eq _%subs173519%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst173522%_
                     _%ctx173504%_
                     _%phi173520%_
                     '#f)))))
          (if (pair? _%repr173505173512%_)
              (let ((_%hd173509173527%_ (##car _%repr173505173512%_))
                    (_%tl173510173529%_ (##cdr _%repr173505173512%_)))
                (let* ((_%phi173532%_ _%hd173509173527%_)
                       (_%subs173534%_ _%tl173510173529%_))
                  (_%K173508173524%_ _%subs173534%_ _%phi173532%_)))
              (_%E173507173516%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr173539%_)
        (let ((_%ctx173541%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr173539%_ _%ctx173541%_))))
    (define gx#core-deserialize-mark
      (lambda _g177808_
        (let ((_g177809_ (##length _g177808_)))
          (cond ((##fx= _g177809_ 1)
                 (apply gx#core-deserialize-mark__0 _g177808_))
                ((##fx= _g177809_ 2)
                 (apply gx#core-deserialize-mark__% _g177808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g177808_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx173500%_)
        (gx#stx-rewrap _%stx173500%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx173498%_)
        (gx#stx-unwrap__% _%stx173498%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx173468%_)
        (let* ((_%g173469173477%_ (gx#current-expander-marks))
               (_%else173471173485%_ (lambda () _%stx173468%_))
               (_%K173473173490%_
                (lambda (_%hd173488%_)
                  (gx#stx-apply-mark _%stx173468%_ _%hd173488%_))))
          (if (pair? _%g173469173477%_)
              (let* ((_%hd173474173493%_ (##car _%g173469173477%_))
                     (_%hd173496%_ _%hd173474173493%_))
                (_%K173473173490%_ _%hd173496%_))
              (_%else173471173485%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym173466%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym173466%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx173451%_ _%E173452%_)
        (let ((_%bind173454%_ (gx#resolve-identifier__0 _%stx173451%_)))
          (if (##structure-direct-instance-of?
               _%bind173454%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind173454%_ '5 '#f '#f)
              (_%E173452%_ _%stx173451%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx173459%_)
        (let ((_%E173461%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx173459%_ _%E173461%_))))
    (define gx#syntax-local-e
      (lambda _g177810_
        (let ((_g177811_ (##length _g177810_)))
          (cond ((##fx= _g177811_ 1) (apply gx#syntax-local-e__0 _g177810_))
                ((##fx= _g177811_ 2) (apply gx#syntax-local-e__% _g177810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g177810_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx173435%_ _%E173436%_)
        (let ((_%e173438%_ (gx#syntax-local-e__% _%stx173435%_ _%E173436%_)))
          (if (##structure-instance-of? _%e173438%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e173438%_ '1 '#f '#f)
              _%e173438%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx173443%_)
        (let ((_%E173445%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx173443%_ _%E173445%_))))
    (define gx#syntax-local-value
      (lambda _g177812_
        (let ((_g177813_ (##length _g177812_)))
          (cond ((##fx= _g177813_ 1)
                 (apply gx#syntax-local-value__0 _g177812_))
                ((##fx= _g177813_ 2)
                 (apply gx#syntax-local-value__% _g177812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g177812_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx173432%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx173432%_)))))
