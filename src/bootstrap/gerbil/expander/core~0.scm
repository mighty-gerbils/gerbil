(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1771101400)
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
      (lambda _%$args178143%_
        (apply make-instance gx#expander-context::t _%$args178143%_)))
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
      (lambda _%$args178140%_
        (apply make-instance gx#root-context::t _%$args178140%_)))
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
      (lambda _%$args178137%_
        (apply make-instance gx#phi-context::t _%$args178137%_)))
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
      (lambda _%$args178134%_
        (apply make-instance gx#top-context::t _%$args178134%_)))
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
      (lambda _%$args178131%_
        (apply make-instance gx#module-context::t _%$args178131%_)))
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
      (lambda _%$args178128%_
        (apply make-instance gx#prelude-context::t _%$args178128%_)))
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
      (lambda _%$args178125%_
        (apply make-instance gx#local-context::t _%$args178125%_)))
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
      (lambda (_%self178098%_ _%id178099%_ _%super178100%_)
        (let ((_%self178103%_ _%self178098%_))
          (if (##fx< '3 (##structure-length _%self178103%_))
              (begin
                (##unchecked-structure-set!
                 _%self178103%_
                 _%id178099%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178103%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178103%_
                 _%super178100%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self178103%_
                     '3
                     (##structure-length _%self178103%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self178116%_ _%id178117%_)
        (let ((_%super178119%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self178116%_
           _%id178117%_
           _%super178119%_))))
    (define gx#phi-context:::init!
      (lambda _g178185_
        (let ((_g178186_ (##length _g178185_)))
          (cond ((##fx= _g178186_ 2)
                 (apply gx#phi-context:::init!__0 _g178185_))
                ((##fx= _g178186_ 3)
                 (apply gx#phi-context:::init!__% _g178185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g178185_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self177951%_ _%super177952%_)
        (let ((_%self177955%_ _%self177951%_))
          (if (##fx< '3 (##structure-length _%self177955%_))
              (begin
                (##unchecked-structure-set!
                 _%self177955%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177955%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177955%_
                 _%super177952%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self177955%_
                     '3
                     (##structure-length _%self177955%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self177968%_)
        (let ((_%super177970%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self177968%_ _%super177970%_))))
    (define gx#local-context:::init!
      (lambda _g178187_
        (let ((_g178188_ (##length _g178187_)))
          (cond ((##fx= _g178188_ 1)
                 (apply gx#local-context:::init!__0 _g178187_))
                ((##fx= _g178188_ 2)
                 (apply gx#local-context:::init!__% _g178187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g178187_))))))
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
      (lambda _%$args177825%_
        (apply make-instance gx#binding::t _%$args177825%_)))
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
      (lambda (_%self177808%_ _%id177809%_ _%key177810%_ _%phi177811%_)
        (let ((_%self177814%_ _%self177808%_))
          (##unchecked-structure-set! _%self177814%_ _%id177809%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self177814%_ _%key177810%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self177814%_
           _%phi177811%_
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
      (lambda _%$args177683%_
        (apply make-instance gx#runtime-binding::t _%$args177683%_)))
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
      (lambda _%$args177680%_
        (apply make-instance gx#local-binding::t _%$args177680%_)))
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
      (lambda _%$args177677%_
        (apply make-instance gx#top-binding::t _%$args177677%_)))
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
      (lambda _%$args177674%_
        (apply make-instance gx#module-binding::t _%$args177674%_)))
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
      (lambda _%$args177671%_
        (apply make-instance gx#extern-binding::t _%$args177671%_)))
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
      (lambda (_%self177287%_
               _%id177288%_
               _%key177289%_
               _%phi177290%_
               _%ctx177291%_)
        (let ((_%self177294%_ _%self177287%_))
          (gx#binding:::init!
           _%self177294%_
           _%id177288%_
           _%key177289%_
           _%phi177290%_)
          (##unchecked-structure-set!
           _%self177294%_
           _%ctx177291%_
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
      (lambda _%$args177040%_
        (apply make-instance gx#syntax-binding::t _%$args177040%_)))
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
      (lambda _%$args177037%_
        (apply make-instance gx#import-binding::t _%$args177037%_)))
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
      (lambda _%$args177034%_
        (apply make-instance gx#alias-binding::t _%$args177034%_)))
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
      (lambda (_%self177016%_
               _%id177017%_
               _%key177018%_
               _%phi177019%_
               _%e177020%_)
        (let ((_%self177023%_ _%self177016%_))
          (gx#binding:::init!
           _%self177023%_
           _%id177017%_
           _%key177018%_
           _%phi177019%_)
          (##unchecked-structure-set! _%self177023%_ _%e177020%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self176874%_
               _%id176875%_
               _%key176876%_
               _%phi176877%_
               _%e176878%_
               _%ctx176879%_
               _%weak?176880%_)
        (let ((_%self176883%_ _%self176874%_))
          (gx#binding:::init!
           _%self176883%_
           _%id176875%_
           _%key176876%_
           _%phi176877%_)
          (##unchecked-structure-set! _%self176883%_ _%e176878%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self176883%_ _%ctx176879%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self176883%_
           _%weak?176880%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self176734%_
               _%id176735%_
               _%key176736%_
               _%phi176737%_
               _%e176738%_)
        (let ((_%self176741%_ _%self176734%_))
          (gx#binding:::init!
           _%self176741%_
           _%id176735%_
           _%key176736%_
           _%phi176737%_)
          (##unchecked-structure-set! _%self176741%_ _%e176738%_ '5 '#f '#f))))
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
      (lambda _%$args176609%_
        (apply make-instance gx#expander::t _%$args176609%_)))
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
      (lambda _%$args176606%_
        (apply make-instance gx#core-expander::t _%$args176606%_)))
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
      (lambda _%$args176603%_
        (apply make-instance gx#expression-form::t _%$args176603%_)))
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
      (lambda _%$args176600%_
        (apply make-instance gx#special-form::t _%$args176600%_)))
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
      (lambda _%$args176597%_
        (apply make-instance gx#definition-form::t _%$args176597%_)))
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
      (lambda _%$args176594%_
        (apply make-instance gx#top-special-form::t _%$args176594%_)))
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
      (lambda _%$args176591%_
        (apply make-instance gx#module-special-form::t _%$args176591%_)))
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
      (lambda _%$args176588%_
        (apply make-instance gx#feature-expander::t _%$args176588%_)))
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
      (lambda _%$args176585%_
        (apply make-instance gx#private-feature-expander::t _%$args176585%_)))
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
      (lambda _%$args176582%_
        (apply make-instance gx#reserved-expander::t _%$args176582%_)))
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
      (lambda _%$args176579%_
        (apply make-instance gx#macro-expander::t _%$args176579%_)))
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
      (lambda _%$args176576%_
        (apply make-instance gx#rename-macro-expander::t _%$args176576%_)))
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
      (lambda _%$args176573%_
        (apply make-instance gx#user-expander::t _%$args176573%_)))
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
      (lambda _%$args176570%_
        (apply make-instance gx#expander-mark::t _%$args176570%_)))
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
      (lambda (_%ctx176554%_
               _%message176555%_
               _%stx176556%_
               .
               _%details176557%_)
        (let ((_%ctx176568%_
               (let ((_%$e176559%_ _%ctx176554%_))
                 (if _%$e176559%_
                     _%$e176559%_
                     (let ((_%$e176562%_ (gx#core-context-top__0)))
                       (if _%$e176562%_
                           ((lambda (_%ctx176565%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx176565%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e176562%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message176555%_
                  (cons _%stx176556%_ _%details176557%_)
                  _%ctx176568%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx176541%_ _%expression?176542%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx176541%_ _%expression?176542%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx176547%_)
        (let ((_%expression?176549%_ '#f))
          (gx#eval-syntax__% _%stx176547%_ _%expression?176549%_))))
    (define gx#eval-syntax
      (lambda _g178189_
        (let ((_g178190_ (##length _g178189_)))
          (cond ((##fx= _g178190_ 1) (apply gx#eval-syntax__0 _g178189_))
                ((##fx= _g178190_ 2) (apply gx#eval-syntax__% _g178189_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g178189_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx176526%_ _%expression?176527%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx176526%_ _%expression?176527%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx176533%_)
        (let ((_%expression?176535%_ '#f))
          (gx#eval-syntax+1__% _%stx176533%_ _%expression?176535%_))))
    (define gx#eval-syntax+1
      (lambda _g178191_
        (let ((_g178192_ (##length _g178191_)))
          (cond ((##fx= _g178192_ 1) (apply gx#eval-syntax+1__0 _g178191_))
                ((##fx= _g178192_ 2) (apply gx#eval-syntax+1__% _g178191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g178191_))))))
    (define gx#eval-expression+1
      (lambda (_%stx176523%_) (gx#eval-syntax+1__% _%stx176523%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx176521%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx176521%_))))
    (define gx#core-expand__%
      (lambda (_%stx176508%_ _%expression?176509%_)
        (if _%expression?176509%_
            (gx#core-expand-expression _%stx176508%_)
            (gx#core-expand-top _%stx176508%_))))
    (define gx#core-expand__0
      (lambda (_%stx176514%_)
        (let ((_%expression?176516%_ '#f))
          (gx#core-expand__% _%stx176514%_ _%expression?176516%_))))
    (define gx#core-expand
      (lambda _g178193_
        (let ((_g178194_ (##length _g178193_)))
          (cond ((##fx= _g178194_ 1) (apply gx#core-expand__0 _g178193_))
                ((##fx= _g178194_ 2) (apply gx#core-expand__% _g178193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g178193_))))))
    (define gx#core-expand-top
      (lambda (_%stx176475%_)
        (let* ((_%stx176477%_ (gx#core-expand*__0 _%stx176475%_))
               (_%e176478176485%_ _%stx176477%_)
               (_%E176480176489%_
                (lambda () (gx#core-expand-expression _%stx176477%_)))
               (_%E176479176503%_
                (lambda ()
                  (if (gx#stx-pair? _%e176478176485%_)
                      (let ((_%e176481176493%_
                             (gx#syntax-e _%e176478176485%_)))
                        (let ((_%hd176482176496%_ (##car _%e176481176493%_))
                              (_%tl176483176498%_ (##cdr _%e176481176493%_)))
                          (let ((_%form176501%_ _%hd176482176496%_))
                            (if (gx#core-bound-identifier?__0 _%form176501%_)
                                _%stx176477%_
                                (_%E176480176489%_)))))
                      (_%E176480176489%_)))))
          (_%E176479176503%_))))
    (define gx#core-expand-expression
      (lambda (_%stx176407%_)
        (letrec ((_%sealed-expression?176409%_
                  (lambda (_%hd176445%_)
                    (if (gx#sealed-syntax? _%hd176445%_)
                        (let* ((_%e176446176453%_ _%hd176445%_)
                               (_%E176448176457%_ (lambda () '#f))
                               (_%E176447176471%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e176446176453%_)
                                      (let ((_%e176449176461%_
                                             (gx#syntax-e _%e176446176453%_)))
                                        (let ((_%hd176450176464%_
                                               (##car _%e176449176461%_))
                                              (_%tl176451176466%_
                                               (##cdr _%e176449176461%_)))
                                          (let ((_%form176469%_
                                                 _%hd176450176464%_))
                                            (gx#core-bound-identifier?__%
                                             _%form176469%_
                                             gx#expression-form-binding?))))
                                      (_%E176448176457%_)))))
                          (_%E176447176471%_))
                        '#f)))
                 (_%illegal-expression176410%_
                  (lambda (_%hd176442%_ . _%_176443%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx176407%_
                     _%hd176442%_)))
                 (_%expand-e176411%_
                  (lambda (_%form176434%_ _%hd176435%_)
                    (let ((_%bind176437%_
                           (if (##structure-instance-of?
                                _%form176434%_
                                'gx#binding::t)
                               _%form176434%_
                               (gx#resolve-identifier__0 _%form176434%_))))
                      (if (gx#core-expander-binding? _%bind176437%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind176437%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd176435%_
                            (gx#stx-source _%stx176407%_)))
                          (if (##structure-direct-instance-of?
                               _%bind176437%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind176437%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd176435%_
                                 (gx#stx-source _%stx176407%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx176407%_
                               _%form176434%_)))))))
          (let ((_%hd176413%_ (gx#core-expand-head _%stx176407%_)))
            (if (_%sealed-expression?176409%_ _%hd176413%_)
                _%hd176413%_
                (if (gx#stx-pair? _%hd176413%_)
                    (let* ((_%form176417%_ (gx#stx-car _%hd176413%_))
                           (_%bind176419%_
                            (if (gx#identifier? _%form176417%_)
                                (gx#resolve-identifier__0 _%form176417%_)
                                '#f)))
                      (if (or (not _%bind176419%_)
                              (not (gx#core-expander-binding? _%bind176419%_)))
                          (_%expand-e176411%_
                           '%%app
                           (cons '%%app _%hd176413%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind176419%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd176413%_
                               _%illegal-expression176410%_)
                              (if (gx#expression-form-binding? _%bind176419%_)
                                  (_%expand-e176411%_
                                   _%bind176419%_
                                   _%hd176413%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind176419%_)
                                      (gx#core-expand-expression
                                       (_%expand-e176411%_
                                        _%bind176419%_
                                        _%hd176413%_))
                                      (_%illegal-expression176410%_
                                       _%hd176413%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd176413%_)
                        (_%illegal-expression176410%_ _%hd176413%_)
                        (if (gx#identifier? _%hd176413%_)
                            (_%expand-e176411%_
                             '%%ref
                             (cons '%%ref (cons _%hd176413%_ '())))
                            (if (gx#stx-datum? _%hd176413%_)
                                (_%expand-e176411%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd176413%_ '())))
                                (_%illegal-expression176410%_
                                 _%hd176413%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx176402%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx176405%_ (gx#core-expand-expression _%stx176402%_)))
             (values _%stx176405%_ (gx#eval-syntax* _%stx176405%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx176383%_ _%stop?176384%_)
        (let _%lp176386%_ ((_%stx176388%_ _%stx176383%_))
          (if (_%stop?176384%_ _%stx176388%_)
              _%stx176388%_
              (let ((_%rstx176390%_ (gx#core-expand1 _%stx176388%_)))
                (if (eq? _%stx176388%_ _%rstx176390%_)
                    _%stx176388%_
                    (_%lp176386%_ _%rstx176390%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx176395%_)
        (let ((_%stop?176397%_ false))
          (gx#core-expand*__% _%stx176395%_ _%stop?176397%_))))
    (define gx#core-expand*
      (lambda _g178195_
        (let ((_g178196_ (##length _g178195_)))
          (cond ((##fx= _g178196_ 1) (apply gx#core-expand*__0 _g178195_))
                ((##fx= _g178196_ 2) (apply gx#core-expand*__% _g178195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g178195_))))))
    (define gx#core-expand1
      (lambda (_%stx176335%_)
        (letrec ((_%step176337%_
                  (lambda (_%hd176374%_)
                    (let ((_%bind176376%_
                           (gx#resolve-identifier__0 _%hd176374%_)))
                      (if (##structure-instance-of?
                           _%bind176376%_
                           'gx#runtime-binding::t)
                          _%stx176335%_
                          (if (##structure-direct-instance-of?
                               _%bind176376%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind176376%_
                                '5
                                '#f
                                '#f)
                               _%stx176335%_)
                              (if (not _%bind176376%_)
                                  _%stx176335%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx176335%_))))))))
          (let* ((_%e176338176346%_ _%stx176335%_)
                 (_%E176344176350%_ (lambda () _%stx176335%_))
                 (_%E176340176356%_
                  (lambda ()
                    (let ((_%hd176354%_ _%e176338176346%_))
                      (if (gx#identifier? _%hd176354%_)
                          (_%step176337%_ _%hd176354%_)
                          (_%E176344176350%_)))))
                 (_%E176339176370%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176338176346%_)
                        (let ((_%e176341176360%_
                               (gx#syntax-e _%e176338176346%_)))
                          (let ((_%hd176342176363%_ (##car _%e176341176360%_))
                                (_%tl176343176365%_ (##cdr _%e176341176360%_)))
                            (let ((_%hd176368%_ _%hd176342176363%_))
                              (if (gx#identifier? _%hd176368%_)
                                  (_%step176337%_ _%hd176368%_)
                                  (_%E176340176356%_)))))
                        (_%E176340176356%_)))))
            (_%E176339176370%_)))))
    (define gx#core-expand-head
      (lambda (_%stx176301%_)
        (letrec ((_%stop?176303%_
                  (lambda (_%stx176305%_)
                    (let* ((_%e176306176313%_ _%stx176305%_)
                           (_%E176308176317%_ (lambda () '#f))
                           (_%E176307176331%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176306176313%_)
                                  (let ((_%e176309176321%_
                                         (gx#syntax-e _%e176306176313%_)))
                                    (let ((_%hd176310176324%_
                                           (##car _%e176309176321%_))
                                          (_%tl176311176326%_
                                           (##cdr _%e176309176321%_)))
                                      (let ((_%hd176329%_ _%hd176310176324%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd176329%_))))
                                  (_%E176308176317%_)))))
                      (_%E176307176331%_)))))
          (gx#core-expand*__% _%stx176301%_ _%stop?176303%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx176107%_
               _%expand-special176108%_
               _%begin-form176109%_
               _%expand-e176110%_)
        (letrec ((_%expand-splice176112%_
                  (lambda (_%hd176275%_
                           _%body176276%_
                           _%rest176277%_
                           _%r176278%_)
                    (if (gx#stx-list? _%body176276%_)
                        (_%K176116%_
                         (gx#stx-foldr cons _%rest176277%_ _%body176276%_)
                         _%r176278%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx176107%_
                         _%hd176275%_))))
                 (_%expand-cond-expand176113%_
                  (lambda (_%hd176271%_ _%rest176272%_ _%r176273%_)
                    (_%K176116%_
                     (cons (gx#core-expand-cond-expand% _%hd176271%_)
                           _%rest176272%_)
                     _%r176273%_)))
                 (_%expand-include176114%_
                  (lambda (_%hd176220%_ _%rest176221%_ _%r176222%_)
                    (let* ((_%e176223176233%_ _%hd176220%_)
                           (_%E176225176237%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176223176233%_)))
                           (_%E176224176267%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176223176233%_)
                                  (let ((_%e176226176241%_
                                         (gx#syntax-e _%e176223176233%_)))
                                    (let ((_%hd176227176244%_
                                           (##car _%e176226176241%_))
                                          (_%tl176228176246%_
                                           (##cdr _%e176226176241%_)))
                                      (if (gx#stx-pair? _%tl176228176246%_)
                                          (let ((_%e176229176249%_
                                                 (gx#syntax-e
                                                  _%tl176228176246%_)))
                                            (let ((_%hd176230176252%_
                                                   (##car _%e176229176249%_))
                                                  (_%tl176231176254%_
                                                   (##cdr _%e176229176249%_)))
                                              (let ((_%path176257%_
                                                     _%hd176230176252%_))
                                                (if (gx#stx-null?
                                                     _%tl176231176254%_)
                                                    (if (gx#stx-string?
                                                         _%path176257%_)
                                                        (let* ((_%rpath176259%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path176257%_
                         (gx#stx-source _%hd176220%_)))
                       (_%block176261%_
                        (gx#core-expand-include%__%
                         _%hd176220%_
                         _%rpath176259%_))
                       (_%rbody176264%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block176261%_
                            _%expand-special176108%_
                            '#f
                            _%expand-e176110%_))
                         gx#current-expander-path
                         (cons _%rpath176259%_ (gx#current-expander-path)))))
                  (_%K176116%_
                   _%rest176221%_
                   (foldr__0 cons _%r176222%_ _%rbody176264%_)))
                (_%E176225176237%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176225176237%_)))))
                                          (_%E176225176237%_))))
                                  (_%E176225176237%_)))))
                      (_%E176224176267%_))))
                 (_%expand-expression176115%_
                  (lambda (_%hd176216%_ _%rest176217%_ _%r176218%_)
                    (_%K176116%_
                     _%rest176217%_
                     (cons (_%expand-e176110%_ _%hd176216%_) _%r176218%_))))
                 (_%K176116%_
                  (lambda (_%rest176146%_ _%r176147%_)
                    (let* ((_%e176148176155%_ _%rest176146%_)
                           (_%E176150176159%_
                            (lambda ()
                              (if _%begin-form176109%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form176109%_
                                    (reverse _%r176147%_))
                                   (gx#stx-source _%stx176107%_))
                                  _%r176147%_)))
                           (_%E176149176212%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176148176155%_)
                                  (let ((_%e176151176163%_
                                         (gx#syntax-e _%e176148176155%_)))
                                    (let ((_%hd176152176166%_
                                           (##car _%e176151176163%_))
                                          (_%tl176153176168%_
                                           (##cdr _%e176151176163%_)))
                                      (let* ((_%hd176171%_ _%hd176152176166%_)
                                             (_%rest176173%_
                                              _%tl176153176168%_)
                                             (_%hd176175%_
                                              (gx#core-expand-head
                                               _%hd176171%_))
                                             (_%e176176176183%_ _%hd176175%_)
                                             (_%E176178176187%_
                                              (lambda ()
                                                (_%expand-expression176115%_
                                                 _%hd176175%_
                                                 _%rest176173%_
                                                 _%r176147%_)))
                                             (_%E176177176208%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e176176176183%_)
                                                    (let ((_%e176179176191%_
                                                           (gx#syntax-e
                                                            _%e176176176183%_)))
                                                      (let ((_%hd176180176194%_
                                                             (##car _%e176179176191%_))
                                                            (_%tl176181176196%_
                                                             (##cdr _%e176179176191%_)))
                                                        (let* ((_%form176199%_
                                                                _%hd176180176194%_)
                                                               (_%body176201%_
                                                                _%tl176181176196%_)
                                                               (_%bind176203%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form176199%_)
                            (gx#resolve-identifier__0 _%form176199%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind176203%_)
                      (let ((_%$e176205%_
                             (##unchecked-structure-ref
                              _%bind176203%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e176205%_)
                            (_%expand-splice176112%_
                             _%hd176175%_
                             _%body176201%_
                             _%rest176173%_
                             _%r176147%_)
                            (if (eq? '%#cond-expand _%$e176205%_)
                                (_%expand-cond-expand176113%_
                                 _%hd176175%_
                                 _%rest176173%_
                                 _%r176147%_)
                                (if (eq? '%#include _%$e176205%_)
                                    (_%expand-include176114%_
                                     _%hd176175%_
                                     _%rest176173%_
                                     _%r176147%_)
                                    (_%expand-special176108%_
                                     _%hd176175%_
                                     _%K176116%_
                                     _%rest176173%_
                                     _%r176147%_)))))
                      (_%expand-expression176115%_
                       _%hd176175%_
                       _%rest176173%_
                       _%r176147%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176178176187%_)))))
                                        (_%E176177176208%_))))
                                  (_%E176150176159%_)))))
                      (_%E176149176212%_)))))
          (let* ((_%e176117176124%_ _%stx176107%_)
                 (_%E176119176128%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176117176124%_)))
                 (_%E176118176142%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176117176124%_)
                        (let ((_%e176120176132%_
                               (gx#syntax-e _%e176117176124%_)))
                          (let ((_%hd176121176135%_ (##car _%e176120176132%_))
                                (_%tl176122176137%_ (##cdr _%e176120176132%_)))
                            (let ((_%body176140%_ _%tl176122176137%_))
                              (if (gx#stx-list? _%body176140%_)
                                  (_%K176116%_ _%body176140%_ '())
                                  (_%E176119176128%_)))))
                        (_%E176119176128%_)))))
            (_%E176118176142%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx176283%_ _%expand-special176284%_)
        (let* ((_%begin-form176286%_ '%#begin)
               (_%expand-e176288%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx176283%_
           _%expand-special176284%_
           _%begin-form176286%_
           _%expand-e176288%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx176290%_ _%expand-special176291%_ _%begin-form176292%_)
        (let ((_%expand-e176294%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx176290%_
           _%expand-special176291%_
           _%begin-form176292%_
           _%expand-e176294%_))))
    (define gx#core-expand-block
      (lambda _g178197_
        (let ((_g178198_ (##length _g178197_)))
          (cond ((##fx= _g178198_ 2) (apply gx#core-expand-block__0 _g178197_))
                ((##fx= _g178198_ 3) (apply gx#core-expand-block__1 _g178197_))
                ((##fx= _g178198_ 4) (apply gx#core-expand-block__% _g178197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g178197_))))))
    (define gx#core-expand-block*
      (lambda (_%stx176055%_ _%expand-special176056%_)
        (let* ((_%g176057176068%_
                (gx#core-expand-block__1
                 _%stx176055%_
                 _%expand-special176056%_
                 '#f))
               (_%E176061176072%_
                (lambda ()
                  (error '"No clause matching"
                         _%g176057176068%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K176066176103%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx176055%_)))
                (_%K176063176089%_ (lambda (_%expr176087%_) _%expr176087%_))
                (_%K176062176078%_
                 (lambda (_%body176076%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body176076%_))
                    (gx#stx-source _%stx176055%_)))))
            (let ((_%try-match176059176099%_
                   (lambda ()
                     (if (pair? _%g176057176068%_)
                         (let ((_%tl176065176094%_ (##cdr _%g176057176068%_))
                               (_%hd176064176092%_ (##car _%g176057176068%_)))
                           (if (null? _%tl176065176094%_)
                               (let ((_%expr176097%_ _%hd176064176092%_))
                                 (_%K176063176089%_ _%expr176097%_))
                               (let ((_%body176081%_ _%g176057176068%_))
                                 (_%K176062176078%_ _%body176081%_))))
                         (let ((_%body176081%_ _%g176057176068%_))
                           (_%K176062176078%_ _%body176081%_))))))
              (if (null? _%g176057176068%_)
                  (_%K176066176103%_)
                  (_%try-match176059176099%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx175881%_)
        (letrec ((_%satisfied?175883%_
                  (lambda (_%condition175984%_)
                    (let* ((_%e175985176000%_ _%condition175984%_)
                           (_%E175995176004%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e175985176000%_)))
                           (_%E175988176023%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175985176000%_)
                                  (let ((_%e175996176008%_
                                         (gx#syntax-e _%e175985176000%_)))
                                    (let ((_%hd175997176011%_
                                           (##car _%e175996176008%_))
                                          (_%tl175998176013%_
                                           (##cdr _%e175996176008%_)))
                                      (let* ((_%combinator176016%_
                                              _%hd175997176011%_)
                                             (_%body176018%_
                                              _%tl175998176013%_))
                                        (if (gx#stx-list? _%body176018%_)
                                            (let ((_%$e176020%_
                                                   (gx#stx-e
                                                    _%combinator176016%_)))
                                              (if (eq? 'not _%$e176020%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?175883%_
                                                        _%body176018%_))
                                                  (if (eq? 'and _%$e176020%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?175883%_
                                                       _%body176018%_)
                                                      (if (eq? 'or
                                                               _%$e176020%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?175883%_
                                                           _%body176018%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e176020%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body176018%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx175881%_
                       _%combinator176016%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E175995176004%_)))))
                                  (_%E175995176004%_))))
                           (_%E175987176045%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175985176000%_)
                                  (let ((_%e175989176027%_
                                         (gx#syntax-e _%e175985176000%_)))
                                    (let ((_%hd175990176030%_
                                           (##car _%e175989176027%_))
                                          (_%tl175991176032%_
                                           (##cdr _%e175989176027%_)))
                                      (if (and (gx#identifier?
                                                _%hd175990176030%_)
                                               (gx#core-identifier=?
                                                _%hd175990176030%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl175991176032%_)
                                              (let ((_%e175992176035%_
                                                     (gx#syntax-e
                                                      _%tl175991176032%_)))
                                                (let ((_%hd175993176038%_
                                                       (##car _%e175992176035%_))
                                                      (_%tl175994176040%_
                                                       (##cdr _%e175992176035%_)))
                                                  (let ((_%expr176043%_
                                                         _%hd175993176038%_))
                                                    (if (gx#stx-null?
                                                         _%tl175994176040%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr176043%_)
                                                        (_%E175988176023%_)))))
                                              (_%E175988176023%_))
                                          (_%E175988176023%_))))
                                  (_%E175988176023%_))))
                           (_%E175986176051%_
                            (lambda ()
                              (let ((_%id176049%_ _%e175985176000%_))
                                (if (gx#identifier? _%id176049%_)
                                    (gx#core-bound-identifier?__%
                                     _%id176049%_
                                     gx#feature-binding?)
                                    (_%E175987176045%_))))))
                      (_%E175986176051%_))))
                 (_%loop175884%_
                  (lambda (_%rest175914%_)
                    (let* ((_%e175915175923%_ _%rest175914%_)
                           (_%E175921175927%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e175915175923%_)))
                           (_%E175917175931%_
                            (lambda ()
                              (if (gx#stx-null? _%e175915175923%_)
                                  '()
                                  (_%E175921175927%_))))
                           (_%E175916175980%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175915175923%_)
                                  (let ((_%e175918175935%_
                                         (gx#syntax-e _%e175915175923%_)))
                                    (let ((_%hd175919175938%_
                                           (##car _%e175918175935%_))
                                          (_%tl175920175940%_
                                           (##cdr _%e175918175935%_)))
                                      (let* ((_%hd175943%_ _%hd175919175938%_)
                                             (_%rest175945%_
                                              _%tl175920175940%_)
                                             (_%e175946175953%_ _%hd175943%_)
                                             (_%E175948175957%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e175946175953%_)))
                                             (_%E175947175976%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e175946175953%_)
                                                    (let ((_%e175949175961%_
                                                           (gx#syntax-e
                                                            _%e175946175953%_)))
                                                      (let ((_%hd175950175964%_
                                                             (##car _%e175949175961%_))
                                                            (_%tl175951175966%_
                                                             (##cdr _%e175949175961%_)))
                                                        (let* ((_%condition175969%_
                                                                _%hd175950175964%_)
                                                               (_%body175971%_
                                                                _%tl175951175966%_))
                                                          (if (gx#stx-eq?
                                                               _%condition175969%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest175945%_)
                          _%body175971%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx175881%_
                           _%hd175943%_))
                      (if (_%satisfied?175883%_ _%condition175969%_)
                          _%body175971%_
                          (_%loop175884%_ _%rest175945%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E175948175957%_)))))
                                        (_%E175947175976%_))))
                                  (_%E175917175931%_)))))
                      (_%E175916175980%_)))))
          (let* ((_%e175885175892%_ _%stx175881%_)
                 (_%E175887175896%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e175885175892%_)))
                 (_%E175886175910%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175885175892%_)
                        (let ((_%e175888175900%_
                               (gx#syntax-e _%e175885175892%_)))
                          (let ((_%hd175889175903%_ (##car _%e175888175900%_))
                                (_%tl175890175905%_ (##cdr _%e175888175900%_)))
                            (let ((_%clauses175908%_ _%tl175890175905%_))
                              (if (gx#stx-list? _%clauses175908%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop175884%_ _%clauses175908%_))
                                  (_%E175887175896%_)))))
                        (_%E175887175896%_)))))
            (_%E175886175910%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx175824%_ _%rpath175825%_)
        (let* ((_%e175826175836%_ _%stx175824%_)
               (_%E175828175840%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175826175836%_)))
               (_%E175827175867%_
                (lambda ()
                  (if (gx#stx-pair? _%e175826175836%_)
                      (let ((_%e175829175844%_
                             (gx#syntax-e _%e175826175836%_)))
                        (let ((_%hd175830175847%_ (##car _%e175829175844%_))
                              (_%tl175831175849%_ (##cdr _%e175829175844%_)))
                          (if (gx#stx-pair? _%tl175831175849%_)
                              (let ((_%e175832175852%_
                                     (gx#syntax-e _%tl175831175849%_)))
                                (let ((_%hd175833175855%_
                                       (##car _%e175832175852%_))
                                      (_%tl175834175857%_
                                       (##cdr _%e175832175852%_)))
                                  (let ((_%path175860%_ _%hd175833175855%_))
                                    (if (gx#stx-null? _%tl175834175857%_)
                                        (if (gx#stx-string? _%path175860%_)
                                            (let ((_%rpath175865%_
                                                   (let ((_%$e175862%_
                                                          _%rpath175825%_))
                                                     (if _%$e175862%_
                                                         _%$e175862%_
                                                         (gx#core-resolve-path__%
                                                          _%path175860%_
                                                          (gx#stx-source
                                                           _%stx175824%_))))))
                                              (if (member _%rpath175865%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx175824%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath175865%_))
                                                    (gx#stx-source
                                                     _%stx175824%_)))))
                                            (_%E175828175840%_))
                                        (_%E175828175840%_)))))
                              (_%E175828175840%_))))
                      (_%E175828175840%_)))))
          (_%E175827175867%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx175874%_)
        (let ((_%rpath175876%_ '#f))
          (gx#core-expand-include%__% _%stx175874%_ _%rpath175876%_))))
    (define gx#core-expand-include%
      (lambda _g178199_
        (let ((_g178200_ (##length _g178199_)))
          (cond ((##fx= _g178200_ 1)
                 (apply gx#core-expand-include%__0 _g178199_))
                ((##fx= _g178200_ 2)
                 (apply gx#core-expand-include%__% _g178199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g178199_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K175790%_ _%stx175791%_ _%method175792%_)
        (if (procedure? _%K175790%_)
            (let ((_%$e175795%_ (gx#stx-source _%stx175791%_)))
              (if _%$e175795%_
                  ((lambda (_%g175797175799%_)
                     (gx#stx-wrap-source
                      (_%K175790%_ _%stx175791%_)
                      _%g175797175799%_))
                   _%$e175795%_)
                  (_%K175790%_ _%stx175791%_)))
            (let ((_%$e175803%_
                   (bound-method-ref _%K175790%_ _%method175792%_)))
              (if _%$e175803%_
                  ((lambda (_%g175805175807%_)
                     (gx#core-apply-expander__%
                      _%g175805175807%_
                      _%stx175791%_
                      _%method175792%_))
                   _%$e175803%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx175791%_
                   _%method175792%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K175814%_ _%stx175815%_)
        (let ((_%method175817%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K175814%_
           _%stx175815%_
           _%method175817%_))))
    (define gx#core-apply-expander
      (lambda _g178201_
        (let ((_g178202_ (##length _g178201_)))
          (cond ((##fx= _g178202_ 2)
                 (apply gx#core-apply-expander__0 _g178201_))
                ((##fx= _g178202_ 3)
                 (apply gx#core-apply-expander__% _g178201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g178201_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self175775%_ _%stx175776%_)
        (let ((_%self175779%_ _%self175775%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx175776%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self175618%_ _%stx175619%_)
        (let* ((_%self175622%_ _%self175618%_)
               (_%self175631175637%_ _%self175622%_)
               (_%E175633175640%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175631175637%_
                         '((macro-expander K)))
                  '#!void))
               (_%K175634175645%_
                (lambda (_%K175643%_)
                  (gx#core-apply-expander__0 _%K175643%_ _%stx175619%_)))
               (_%e175635175648%_
                (##unchecked-structure-ref _%self175631175637%_ '1 '#f '#f))
               (_%K175651%_ _%e175635175648%_))
          (_%K175634175645%_ _%K175651%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self175461%_ _%stx175462%_)
        (let ((_%self175465%_ _%self175461%_))
          (if (gx#sealed-syntax? _%stx175462%_)
              _%stx175462%_
              (let* ((_%self175474175480%_ _%self175465%_)
                     (_%E175476175483%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self175474175480%_
                               '((core-expander K)))
                        '#!void))
                     (_%K175477175488%_
                      (lambda (_%K175486%_)
                        (gx#core-apply-expander__0 _%K175486%_ _%stx175462%_)))
                     (_%e175478175491%_
                      (##unchecked-structure-ref
                       _%self175474175480%_
                       '1
                       '#f
                       '#f))
                     (_%K175494%_ _%e175478175491%_))
                (_%K175477175488%_ _%K175494%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self175312%_ _%stx175313%_ _%top?175314%_)
        (let ((_%self175317%_ _%self175312%_))
          (if (_%top?175314%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self175317%_
               _%stx175313%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx175313%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self175330%_ _%stx175331%_)
        (let ((_%top?175333%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self175330%_
           _%stx175331%_
           _%top?175333%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g178203_
        (let ((_g178204_ (##length _g178203_)))
          (cond ((##fx= _g178204_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g178203_))
                ((##fx= _g178204_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g178203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g178203_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self175175%_ _%stx175176%_)
        (let ((_%self175179%_ _%self175175%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self175179%_
           _%stx175176%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self174990%_ _%stx174991%_)
        (let* ((_%self174994%_ _%self174990%_)
               (_%self175003175009%_ _%self174994%_)
               (_%E175005175012%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175003175009%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K175006175045%_
                (lambda (_%id175015%_)
                  (let* ((_%e175016175023%_ _%stx174991%_)
                         (_%E175018175027%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e175016175023%_)))
                         (_%E175017175041%_
                          (lambda ()
                            (if (gx#stx-pair? _%e175016175023%_)
                                (let ((_%e175019175031%_
                                       (gx#syntax-e _%e175016175023%_)))
                                  (let ((_%hd175020175034%_
                                         (##car _%e175019175031%_))
                                        (_%tl175021175036%_
                                         (##cdr _%e175019175031%_)))
                                    (let ((_%body175039%_ _%tl175021175036%_))
                                      (gx#core-cons
                                       _%id175015%_
                                       _%body175039%_))))
                                (_%E175018175027%_)))))
                    (_%E175017175041%_))))
               (_%e175007175048%_
                (##unchecked-structure-ref _%self175003175009%_ '1 '#f '#f))
               (_%id175051%_ _%e175007175048%_))
          (_%K175006175045%_ _%id175051%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self174817%_ _%stx174818%_ _%method174819%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx174818%_))
              (force-output))
            '#!void)
        (let* ((_%self174820174828%_ _%self174817%_)
               (_%E174822174831%_
                (lambda ()
                  (error '"No clause matching"
                         _%self174820174828%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K174823174838%_
                (lambda (_%phi174834%_ _%ctx174835%_ _%K174836%_)
                  (gx#core-apply-user-macro
                   _%K174836%_
                   _%stx174818%_
                   _%ctx174835%_
                   _%phi174834%_
                   _%method174819%_))))
          (if (##structure-instance-of?
               _%self174820174828%_
               'gx#user-expander::t)
              (let* ((_%e174824174841%_
                      (##unchecked-structure-ref
                       _%self174820174828%_
                       '1
                       '#f
                       '#f))
                     (_%K174844%_ _%e174824174841%_)
                     (_%e174825174846%_
                      (##unchecked-structure-ref
                       _%self174820174828%_
                       '2
                       '#f
                       '#f))
                     (_%ctx174849%_ _%e174825174846%_)
                     (_%e174826174851%_
                      (##unchecked-structure-ref
                       _%self174820174828%_
                       '3
                       '#f
                       '#f))
                     (_%phi174854%_ _%e174826174851%_))
                (_%K174823174838%_ _%phi174854%_ _%ctx174849%_ _%K174844%_))
              (_%E174822174831%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self174859%_ _%stx174860%_)
        (let ((_%method174862%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self174859%_
           _%stx174860%_
           _%method174862%_))))
    (define gx#core-apply-user-expander
      (lambda _g178205_
        (let ((_g178206_ (##length _g178205_)))
          (cond ((##fx= _g178206_ 2)
                 (apply gx#core-apply-user-expander__0 _g178205_))
                ((##fx= _g178206_ 3)
                 (apply gx#core-apply-user-expander__% _g178205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g178205_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K174807%_
               _%stx174808%_
               _%ctx174809%_
               _%phi174810%_
               _%method174811%_)
        (let ((_%mark174813%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx174809%_
                _%phi174810%_
                _%stx174808%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K174807%_
               (gx#stx-apply-mark _%stx174808%_ _%mark174813%_)
               _%method174811%_)
              _%mark174813%_))
           gx#current-expander-marks
           (cons _%mark174813%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx174655%_ _%phi174656%_ _%ctx174657%_)
        (let _%lp174659%_ ((_%bind174661%_
                            (gx#core-resolve-identifier__%
                             _%stx174655%_
                             _%phi174656%_
                             _%ctx174657%_)))
          (if (##structure-direct-instance-of?
               _%bind174661%_
               'gx#import-binding::t)
              (_%lp174659%_
               (##unchecked-structure-ref _%bind174661%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind174661%_
                   'gx#alias-binding::t)
                  (_%lp174659%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind174661%_ '5 '#f '#f)
                    _%phi174656%_
                    _%ctx174657%_))
                  _%bind174661%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx174669%_)
        (let* ((_%phi174671%_ (gx#current-expander-phi))
               (_%ctx174673%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx174669%_
           _%phi174671%_
           _%ctx174673%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx174675%_ _%phi174676%_)
        (let ((_%ctx174678%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx174675%_
           _%phi174676%_
           _%ctx174678%_))))
    (define gx#resolve-identifier
      (lambda _g178207_
        (let ((_g178208_ (##length _g178207_)))
          (cond ((##fx= _g178208_ 1)
                 (apply gx#resolve-identifier__0 _g178207_))
                ((##fx= _g178208_ 2)
                 (apply gx#resolve-identifier__1 _g178207_))
                ((##fx= _g178208_ 3)
                 (apply gx#resolve-identifier__% _g178207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g178207_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx174610%_
               _%val174611%_
               _%rebind?174612%_
               _%phi174613%_
               _%ctx174614%_)
        (let ((_%rebind?174619%_
               (if (not _%rebind?174612%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?174612%_)
                       _%rebind?174612%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx174610%_)
           _%val174611%_
           _%rebind?174619%_
           _%phi174613%_
           _%ctx174614%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx174624%_ _%val174625%_)
        (let* ((_%rebind?174627%_ '#f)
               (_%phi174629%_ (gx#current-expander-phi))
               (_%ctx174631%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174624%_
           _%val174625%_
           _%rebind?174627%_
           _%phi174629%_
           _%ctx174631%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx174633%_ _%val174634%_ _%rebind?174635%_)
        (let* ((_%phi174637%_ (gx#current-expander-phi))
               (_%ctx174639%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174633%_
           _%val174634%_
           _%rebind?174635%_
           _%phi174637%_
           _%ctx174639%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx174641%_ _%val174642%_ _%rebind?174643%_ _%phi174644%_)
        (let ((_%ctx174646%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174641%_
           _%val174642%_
           _%rebind?174643%_
           _%phi174644%_
           _%ctx174646%_))))
    (define gx#bind-identifier!
      (lambda _g178209_
        (let ((_g178210_ (##length _g178209_)))
          (cond ((##fx= _g178210_ 2) (apply gx#bind-identifier!__0 _g178209_))
                ((##fx= _g178210_ 3) (apply gx#bind-identifier!__1 _g178209_))
                ((##fx= _g178210_ 4) (apply gx#bind-identifier!__2 _g178209_))
                ((##fx= _g178210_ 5) (apply gx#bind-identifier!__% _g178209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g178209_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx174576%_ _%phi174577%_ _%ctx174578%_)
        (let _%lp174580%_ ((_%e174582%_ _%stx174576%_)
                           (_%marks174583%_ (gx#current-expander-marks)))
          (if (symbol? _%e174582%_)
              (gx#core-resolve-binding
               _%e174582%_
               _%phi174577%_
               _%phi174577%_
               _%ctx174578%_
               (reverse _%marks174583%_))
              (if (gx#identifier-quote? _%e174582%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e174582%_ '1 '#f '#f)
                   _%phi174577%_
                   '0
                   (##unchecked-structure-ref _%e174582%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e174582%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e174582%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e174582%_ '1 '#f '#f)
                       _%phi174577%_
                       _%phi174577%_
                       _%ctx174578%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e174582%_ '3 '#f '#f)
                        _%marks174583%_))
                      (if (##structure-direct-instance-of?
                           _%e174582%_
                           'gx#syntax-wrap::t)
                          (_%lp174580%_
                           (##unchecked-structure-ref _%e174582%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e174582%_ '3 '#f '#f)
                            _%marks174583%_))
                          (if (##structure-instance-of?
                               _%e174582%_
                               'gerbil#AST::t)
                              (_%lp174580%_
                               (##unchecked-structure-ref
                                _%e174582%_
                                '1
                                '#f
                                '#f)
                               _%marks174583%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx174576%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx174594%_)
        (let* ((_%phi174596%_ (gx#current-expander-phi))
               (_%ctx174598%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx174594%_
           _%phi174596%_
           _%ctx174598%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx174600%_ _%phi174601%_)
        (let ((_%ctx174603%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx174600%_
           _%phi174601%_
           _%ctx174603%_))))
    (define gx#core-resolve-identifier
      (lambda _g178211_
        (let ((_g178212_ (##length _g178211_)))
          (cond ((##fx= _g178212_ 1)
                 (apply gx#core-resolve-identifier__0 _g178211_))
                ((##fx= _g178212_ 2)
                 (apply gx#core-resolve-identifier__1 _g178211_))
                ((##fx= _g178212_ 3)
                 (apply gx#core-resolve-identifier__% _g178211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g178211_))))))
    (define gx#core-resolve-binding
      (lambda (_%id174487%_
               _%phi174488%_
               _%src-phi174489%_
               _%ctx174490%_
               _%marks174491%_)
        (letrec ((_%resolve174493%_
                  (lambda (_%ctx174560%_ _%src-phi174561%_ _%key174562%_)
                    (let _%lp174564%_ ((_%ctx174566%_
                                        (gx#core-context-shift
                                         _%ctx174560%_
                                         _%phi174488%_))
                                       (_%dphi174567%_
                                        (fx- _%phi174488%_ _%src-phi174561%_)))
                      (let ((_%$e174569%_
                             (gx#core-context-resolve
                              _%ctx174566%_
                              _%key174562%_)))
                        (if _%$e174569%_
                            _%$e174569%_
                            (if (fxzero? _%dphi174567%_)
                                '#f
                                (if (fxpositive? _%dphi174567%_)
                                    (_%lp174564%_
                                     (gx#core-context-shift _%ctx174566%_ '-1)
                                     (##fx- _%dphi174567%_ '1))
                                    (_%lp174564%_
                                     (gx#core-context-shift _%ctx174566%_ '1)
                                     (##fx+ _%dphi174567%_ '1))))))))))
          (let _%lp174495%_ ((_%ctx174497%_ _%ctx174490%_)
                             (_%src-phi174498%_ _%src-phi174489%_)
                             (_%rest174499%_ _%marks174491%_))
            (let* ((_%rest174500174508%_ _%rest174499%_)
                   (_%else174502174516%_
                    (lambda ()
                      (_%resolve174493%_
                       _%ctx174497%_
                       _%src-phi174498%_
                       _%id174487%_)))
                   (_%K174504174548%_
                    (lambda (_%rest174519%_ _%hd174520%_)
                      (let* ((_%hd174521174527%_ _%hd174520%_)
                             (_%E174523174530%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd174521174527%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K174524174540%_
                              (lambda (_%subst174533%_)
                                (let ((_%$e174537%_
                                       (let ((_%key174535%_
                                              (if _%subst174533%_
                                                  (hash-get
                                                   _%subst174533%_
                                                   _%id174487%_)
                                                  '#f)))
                                         (if _%key174535%_
                                             (_%resolve174493%_
                                              _%ctx174497%_
                                              _%src-phi174498%_
                                              _%key174535%_)
                                             '#f))))
                                  (if _%$e174537%_
                                      _%$e174537%_
                                      (_%lp174495%_
                                       (##unchecked-structure-ref
                                        _%hd174520%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd174520%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest174519%_))))))
                        (if (##structure-instance-of?
                             _%hd174521174527%_
                             'gx#expander-mark::t)
                            (let* ((_%e174525174543%_
                                    (##unchecked-structure-ref
                                     _%hd174521174527%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst174546%_ _%e174525174543%_))
                              (_%K174524174540%_ _%subst174546%_))
                            (_%E174523174530%_))))))
              (if (pair? _%rest174500174508%_)
                  (let ((_%hd174505174551%_ (##car _%rest174500174508%_))
                        (_%tl174506174553%_ (##cdr _%rest174500174508%_)))
                    (let* ((_%hd174556%_ _%hd174505174551%_)
                           (_%rest174558%_ _%tl174506174553%_))
                      (_%K174504174548%_ _%rest174558%_ _%hd174556%_)))
                  (_%else174502174516%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key174358%_
               _%val174359%_
               _%rebind?174360%_
               _%phi174361%_
               _%ctx174362%_)
        (letrec ((_%update-binding174364%_
                  (lambda (_%xval174436%_)
                    (if (or (_%rebind?174360%_
                             _%ctx174362%_
                             _%xval174436%_
                             _%val174359%_)
                            (and (##structure-direct-instance-of?
                                  _%xval174436%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval174436%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val174359%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val174359%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval174436%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val174359%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val174359%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval174436%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val174359%_
                        (if (and (##structure-direct-instance-of?
                                  _%val174359%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val174359%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval174436%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val174359%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval174436%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval174436%_
                            (if (and (##structure-direct-instance-of?
                                      _%val174359%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval174436%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key174358%_
                                 (cons (##unchecked-structure-ref
                                        _%val174359%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val174359%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval174436%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval174436%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval174436%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval174436%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key174358%_
                                 _%val174359%_
                                 _%xval174436%_))))))
                 (_%gensubst174365%_
                  (lambda (_%subst174431%_ _%id174432%_)
                    (let ((_%eid174434%_
                           (gensym (if (uninterned-symbol? _%id174432%_)
                                       '%
                                       _%id174432%_))))
                      (hash-put! _%subst174431%_ _%id174432%_ _%eid174434%_)
                      _%eid174434%_)))
                 (_%subst!174366%_
                  (lambda (_%key174368%_)
                    (let* ((_%key174369174377%_ _%key174368%_)
                           (_%else174371174385%_ (lambda () _%key174368%_))
                           (_%K174373174419%_
                            (lambda (_%mark174388%_ _%id174389%_)
                              (let* ((_%mark174390174396%_ _%mark174388%_)
                                     (_%E174392174399%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark174390174396%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K174393174411%_
                                      (lambda (_%subst174402%_)
                                        (if (not _%subst174402%_)
                                            (let ((_%subst174405%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark174388%_
                                               _%subst174405%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst174365%_
                                               _%subst174405%_
                                               _%id174389%_))
                                            (let ((_%$e174407%_
                                                   (hash-get
                                                    _%subst174402%_
                                                    _%id174389%_)))
                                              (if _%$e174407%_
                                                  _%$e174407%_
                                                  (_%gensubst174365%_
                                                   _%subst174402%_
                                                   _%id174389%_)))))))
                                (if (##structure-instance-of?
                                     _%mark174390174396%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e174394174414%_
                                            (##unchecked-structure-ref
                                             _%mark174390174396%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst174417%_ _%e174394174414%_))
                                      (_%K174393174411%_ _%subst174417%_))
                                    (_%E174392174399%_))))))
                      (if (pair? _%key174369174377%_)
                          (let ((_%hd174374174422%_
                                 (##car _%key174369174377%_))
                                (_%tl174375174424%_
                                 (##cdr _%key174369174377%_)))
                            (let* ((_%id174427%_ _%hd174374174422%_)
                                   (_%mark174429%_ _%tl174375174424%_))
                              (_%K174373174419%_ _%mark174429%_ _%id174427%_)))
                          (_%else174371174385%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx174362%_ _%phi174361%_)
           (_%subst!174366%_ _%key174358%_)
           _%val174359%_
           _%update-binding174364%_))))
    (define gx#core-bind!__0
      (lambda (_%key174457%_ _%val174458%_)
        (let* ((_%rebind?174460%_ false)
               (_%phi174462%_ (gx#current-expander-phi))
               (_%ctx174464%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174457%_
           _%val174458%_
           _%rebind?174460%_
           _%phi174462%_
           _%ctx174464%_))))
    (define gx#core-bind!__1
      (lambda (_%key174466%_ _%val174467%_ _%rebind?174468%_)
        (let* ((_%phi174470%_ (gx#current-expander-phi))
               (_%ctx174472%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174466%_
           _%val174467%_
           _%rebind?174468%_
           _%phi174470%_
           _%ctx174472%_))))
    (define gx#core-bind!__2
      (lambda (_%key174474%_ _%val174475%_ _%rebind?174476%_ _%phi174477%_)
        (let ((_%ctx174479%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174474%_
           _%val174475%_
           _%rebind?174476%_
           _%phi174477%_
           _%ctx174479%_))))
    (define gx#core-bind!
      (lambda _g178213_
        (let ((_g178214_ (##length _g178213_)))
          (cond ((##fx= _g178214_ 2) (apply gx#core-bind!__0 _g178213_))
                ((##fx= _g178214_ 3) (apply gx#core-bind!__1 _g178213_))
                ((##fx= _g178214_ 4) (apply gx#core-bind!__2 _g178213_))
                ((##fx= _g178214_ 5) (apply gx#core-bind!__% _g178213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g178213_))))))
    (define gx#core-identifier-key
      (lambda (_%stx174289%_)
        (if (symbol? _%stx174289%_)
            (let* ((_%g174291174299%_ (gx#current-expander-marks))
                   (_%else174293174307%_ (lambda () _%stx174289%_))
                   (_%K174295174312%_
                    (lambda (_%hd174310%_) (cons _%stx174289%_ _%hd174310%_))))
              (if (pair? _%g174291174299%_)
                  (let* ((_%hd174296174315%_ (##car _%g174291174299%_))
                         (_%hd174318%_ _%hd174296174315%_))
                    (_%K174295174312%_ _%hd174318%_))
                  (_%else174293174307%_)))
            (if (gx#identifier? _%stx174289%_)
                (let* ((_%id174321%_ (gx#syntax-local-unwrap _%stx174289%_))
                       (_%eid174323%_ (gx#stx-e _%id174321%_))
                       (_%marks174325%_
                        (gx#stx-identifier-marks* _%id174321%_))
                       (_%marks174327174335%_ _%marks174325%_)
                       (_%else174329174343%_ (lambda () _%eid174323%_))
                       (_%K174331174348%_
                        (lambda (_%hd174346%_)
                          (cons _%eid174323%_ _%hd174346%_))))
                  (if (pair? _%marks174327174335%_)
                      (let* ((_%hd174332174351%_ (##car _%marks174327174335%_))
                             (_%hd174354%_ _%hd174332174351%_))
                        (_%K174331174348%_ _%hd174354%_))
                      (_%else174329174343%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx174289%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx174228%_ _%phi174229%_)
        (letrec ((_%make-phi174231%_
                  (lambda (_%super174287%_)
                    (let ((__obj178184
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj178184
                       (##gensym 'phi)
                       _%super174287%_)
                      __obj178184)))
                 (_%make-phi/up174232%_
                  (lambda (_%ctx174282%_ _%super174283%_)
                    (let ((_%ctx+1174285%_
                           (_%make-phi174231%_ _%super174283%_)))
                      (##unchecked-structure-set!
                       _%ctx174282%_
                       _%ctx+1174285%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1174285%_
                       _%ctx174282%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1174285%_)))
                 (_%make-phi/down174233%_
                  (lambda (_%ctx174277%_ _%super174278%_)
                    (let ((_%ctx-1174280%_
                           (_%make-phi174231%_ _%super174278%_)))
                      (##unchecked-structure-set!
                       _%ctx-1174280%_
                       _%ctx174277%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx174277%_
                       _%ctx-1174280%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1174280%_)))
                 (_%shift174234%_
                  (lambda (_%ctx174260%_
                           _%delta174261%_
                           _%make-delta-context174262%_
                           _%phi174263%_
                           _%K174264%_)
                    (let ((_%$e174266%_
                           (##unchecked-structure-ref
                            _%ctx174260%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e174266%_
                          ((lambda (_%super174269%_)
                             (let* ((_%super174271%_
                                     (_%K174264%_
                                      _%super174269%_
                                      _%delta174261%_))
                                    (_%ctx+d174273%_
                                     (_%make-delta-context174262%_
                                      _%ctx174260%_
                                      _%super174271%_)))
                               (_%K174264%_
                                _%ctx+d174273%_
                                (fx- _%phi174263%_ _%delta174261%_))))
                           _%$e174266%_)
                          (error '"Bad context" _%ctx174260%_))))))
          (let _%K174236%_ ((_%ctx174238%_ _%ctx174228%_)
                            (_%phi174239%_ _%phi174229%_))
            (if (fxzero? _%phi174239%_)
                _%ctx174238%_
                (if (##structure-instance-of? _%ctx174238%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi174239%_)
                        (let ((_%$e174243%_
                               (##unchecked-structure-ref
                                _%ctx174238%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e174243%_
                              ((lambda (_%g174245174247%_)
                                 (_%K174236%_
                                  _%g174245174247%_
                                  (##fx- _%phi174239%_ '1)))
                               _%$e174243%_)
                              (_%shift174234%_
                               _%ctx174238%_
                               '1
                               _%make-phi/up174232%_
                               _%phi174239%_
                               _%K174236%_)))
                        (let ((_%$e174251%_
                               (##unchecked-structure-ref
                                _%ctx174238%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e174251%_
                              ((lambda (_%g174253174255%_)
                                 (_%K174236%_
                                  _%g174253174255%_
                                  (##fx+ _%phi174239%_ '1)))
                               _%$e174251%_)
                              (_%shift174234%_
                               _%ctx174238%_
                               '-1
                               _%make-phi/down174233%_
                               _%phi174239%_
                               _%K174236%_))))
                    _%ctx174238%_))))))
    (define gx#core-context-get
      (lambda (_%ctx174225%_ _%key174226%_)
        (hash-get
         (##unchecked-structure-ref _%ctx174225%_ '2 '#f '#f)
         _%key174226%_)))
    (define gx#core-context-put!
      (lambda (_%ctx174221%_ _%key174222%_ _%val174223%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx174221%_ '2 '#f '#f)
         _%key174222%_
         _%val174223%_)
        _%val174223%_))
    (define gx#core-context-resolve
      (lambda (_%ctx174207%_ _%key174208%_)
        (let _%lp174210%_ ((_%ctx174212%_ _%ctx174207%_))
          (let ((_%$e174214%_
                 (gx#core-context-get _%ctx174212%_ _%key174208%_)))
            (if _%$e174214%_
                _%$e174214%_
                (let ((_%$e174217%_
                       (if (##structure-instance-of?
                            _%ctx174212%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx174212%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e174217%_ (_%lp174210%_ _%$e174217%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx174196%_ _%key174197%_ _%val174198%_ _%rebind174199%_)
        (let ((_%$e174201%_ (gx#core-context-get _%ctx174196%_ _%key174197%_)))
          (if _%$e174201%_
              ((lambda (_%xval174204%_)
                 (gx#core-context-put!
                  _%ctx174196%_
                  _%key174197%_
                  (_%rebind174199%_ _%xval174204%_)))
               _%$e174201%_)
              (gx#core-context-put!
               _%ctx174196%_
               _%key174197%_
               _%val174198%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx174171%_ _%stop?174172%_)
        (let _%lp174174%_ ((_%ctx174176%_ _%ctx174171%_))
          (if (_%stop?174172%_ _%ctx174176%_)
              _%ctx174176%_
              (if (##structure-instance-of? _%ctx174176%_ 'gx#phi-context::t)
                  (_%lp174174%_
                   (##unchecked-structure-ref _%ctx174176%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx174185%_ (gx#current-expander-context))
               (_%stop?174187%_ gx#top-context?))
          (gx#core-context-top__% _%ctx174185%_ _%stop?174187%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx174189%_)
        (let ((_%stop?174191%_ gx#top-context?))
          (gx#core-context-top__% _%ctx174189%_ _%stop?174191%_))))
    (define gx#core-context-top
      (lambda _g178215_
        (let ((_g178216_ (##length _g178215_)))
          (cond ((##fx= _g178216_ 0) (apply gx#core-context-top__0 _g178215_))
                ((##fx= _g178216_ 1) (apply gx#core-context-top__1 _g178215_))
                ((##fx= _g178216_ 2) (apply gx#core-context-top__% _g178215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g178215_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx174156%_)
        (let _%lp174158%_ ((_%ctx174160%_ _%ctx174156%_))
          (if (##structure-instance-of? _%ctx174160%_ 'gx#phi-context::t)
              (_%lp174158%_
               (##unchecked-structure-ref _%ctx174160%_ '3 '#f '#f))
              _%ctx174160%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx174166%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx174166%_))))
    (define gx#core-context-root
      (lambda _g178217_
        (let ((_g178218_ (##length _g178217_)))
          (cond ((##fx= _g178218_ 0) (apply gx#core-context-root__0 _g178217_))
                ((##fx= _g178218_ 1) (apply gx#core-context-root__% _g178217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g178217_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx174138%_ . _%ignore174139%_)
        (let ((_%$e174141%_ (gx#current-expander-allow-rebind?)))
          (if _%$e174141%_
              _%$e174141%_
              (if (##structure-instance-of? _%ctx174138%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx174138%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx174138%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx174148%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx174148%_))))
    (define gx#core-context-rebind?
      (lambda _g178219_
        (let ((_g178220_ (##length _g178219_)))
          (cond ((##fx= _g178220_ 0)
                 (apply gx#core-context-rebind?__0 _g178219_))
                ((##fx= _g178220_ 1)
                 (apply gx#core-context-rebind?__% _g178219_))
                ((##fx>= _g178220_ 1)
                 (apply gx#core-context-rebind?__% _g178219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g178219_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx174121%_)
        (let ((_%$e174123%_ (gx#core-context-top__1 _%ctx174121%_)))
          (if _%$e174123%_
              ((lambda (_%ctx174126%_)
                 (if (##structure-instance-of?
                      _%ctx174126%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx174126%_ '6 '#f '#f)
                     '#f))
               _%$e174123%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx174133%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx174133%_))))
    (define gx#core-context-namespace
      (lambda _g178221_
        (let ((_g178222_ (##length _g178221_)))
          (cond ((##fx= _g178222_ 0)
                 (apply gx#core-context-namespace__0 _g178221_))
                ((##fx= _g178222_ 1)
                 (apply gx#core-context-namespace__% _g178221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g178221_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind174107%_ _%is?174108%_)
        (if (##structure-direct-instance-of?
             _%bind174107%_
             'gx#syntax-binding::t)
            (_%is?174108%_
             (##unchecked-structure-ref _%bind174107%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind174113%_)
        (let ((_%is?174115%_ gx#expander?))
          (gx#expander-binding?__% _%bind174113%_ _%is?174115%_))))
    (define gx#expander-binding?
      (lambda _g178223_
        (let ((_g178224_ (##length _g178223_)))
          (cond ((##fx= _g178224_ 1) (apply gx#expander-binding?__0 _g178223_))
                ((##fx= _g178224_ 2) (apply gx#expander-binding?__% _g178223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g178223_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind174104%_)
        (gx#expander-binding?__% _%bind174104%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind174102%_)
        (gx#expander-binding?__% _%bind174102%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind174096%_)
        (letrec ((_%direct-special-form?174098%_
                  (lambda (_%obj174100%_)
                    (##structure-direct-instance-of?
                     _%obj174100%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind174096%_
           _%direct-special-form?174098%_))))
    (define gx#special-form-binding?
      (lambda (_%bind174094%_)
        (gx#expander-binding?__% _%bind174094%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind174085%_)
        (letrec ((_%feature?174087%_
                  (lambda (_%e174089%_)
                    (let ((_%$e174091%_
                           (##structure-instance-of?
                            _%e174089%_
                            'gx#feature-expander::t)))
                      (if _%$e174091%_
                          _%$e174091%_
                          (##structure-instance-of?
                           _%e174089%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind174085%_ _%feature?174087%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind174083%_)
        (gx#expander-binding?__% _%bind174083%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id174070%_ _%bound?174071%_)
        (if (gx#identifier? _%id174070%_)
            (_%bound?174071%_ (gx#resolve-identifier__0 _%id174070%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id174076%_)
        (let ((_%bound?174078%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id174076%_ _%bound?174078%_))))
    (define gx#core-bound-identifier?
      (lambda _g178225_
        (let ((_g178226_ (##length _g178225_)))
          (cond ((##fx= _g178226_ 1)
                 (apply gx#core-bound-identifier?__0 _g178225_))
                ((##fx= _g178226_ 2)
                 (apply gx#core-bound-identifier?__% _g178225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g178225_))))))
    (define gx#core-identifier=?
      (lambda (_%x174060%_ _%y174061%_)
        (letrec ((_%y=?174063%_
                  (lambda (_%xid174067%_)
                    ((if (list? _%y174061%_) memq eq?)
                     _%xid174067%_
                     _%y174061%_))))
          (let ((_%bind174065%_ (gx#resolve-identifier__0 _%x174060%_)))
            (if (##structure-instance-of? _%bind174065%_ 'gx#binding::t)
                (_%y=?174063%_
                 (##unchecked-structure-ref _%bind174065%_ '1 '#f '#f))
                (_%y=?174063%_ (gx#stx-e _%x174060%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e174058%_)
        (if (interned-symbol? _%e174058%_)
            (string-index__0 (symbol->string _%e174058%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx174011%_ _%src174012%_ _%ctx174013%_ _%marks174014%_)
        (if (##structure? _%stx174011%_)
            (let ((_%$e174016%_ (gx#sealed-syntax-unwrap _%stx174011%_)))
              (if _%$e174016%_
                  _%$e174016%_
                  (if (gx#identifier? _%stx174011%_)
                      (let ((_%id174020%_
                             (gx#stx-unwrap__% _%stx174011%_ _%marks174014%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id174020%_ '1 '#f '#f)
                         (let ((_%$e174022%_
                                (##unchecked-structure-ref
                                 _%id174020%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e174022%_ _%$e174022%_ _%src174012%_))
                         _%ctx174013%_
                         (##unchecked-structure-ref _%id174020%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx174011%_)
                       (let ((_%$e174026%_ (gx#stx-source _%stx174011%_)))
                         (if _%$e174026%_ _%$e174026%_ _%src174012%_))
                       _%ctx174013%_
                       (reverse _%marks174014%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx174011%_
             _%src174012%_
             _%ctx174013%_
             (reverse _%marks174014%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx174032%_)
        (let* ((_%src174034%_ '#f)
               (_%ctx174036%_ (gx#current-expander-context))
               (_%marks174038%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174032%_
           _%src174034%_
           _%ctx174036%_
           _%marks174038%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx174040%_ _%src174041%_)
        (let* ((_%ctx174043%_ (gx#current-expander-context))
               (_%marks174045%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174040%_
           _%src174041%_
           _%ctx174043%_
           _%marks174045%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx174047%_ _%src174048%_ _%ctx174049%_)
        (let ((_%marks174051%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174047%_
           _%src174048%_
           _%ctx174049%_
           _%marks174051%_))))
    (define gx#core-quote-syntax
      (lambda _g178227_
        (let ((_g178228_ (##length _g178227_)))
          (cond ((##fx= _g178228_ 1) (apply gx#core-quote-syntax__0 _g178227_))
                ((##fx= _g178228_ 2) (apply gx#core-quote-syntax__1 _g178227_))
                ((##fx= _g178228_ 3) (apply gx#core-quote-syntax__2 _g178227_))
                ((##fx= _g178228_ 4) (apply gx#core-quote-syntax__% _g178227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g178227_))))))
    (define gx#core-cons
      (lambda (_%hd174007%_ _%tl174008%_)
        (cons (gx#core-quote-syntax__0 _%hd174007%_) _%tl174008%_)))
    (define gx#core-list
      (lambda (_%hd174004%_ . _%rest174005%_)
        (cons (gx#core-quote-syntax__0 _%hd174004%_) _%rest174005%_)))
    (define gx#core-cons*
      (lambda (_%hd174001%_ . _%rest174002%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd174001%_) _%rest174002%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path173970%_ _%rel173971%_)
        (let ((_%path173988%_ (gx#stx-e _%stx-path173970%_))
              (_%reldir173989%_
               (let _%lp173973%_ ((_%relsrc173975%_
                                   (let ((_%$e173985%_
                                          (gx#stx-source _%stx-path173970%_)))
                                     (if _%$e173985%_
                                         _%$e173985%_
                                         _%rel173971%_))))
                 (if (##structure-instance-of? _%relsrc173975%_ 'gerbil#AST::t)
                     (_%lp173973%_
                      (let ((_%$e173978%_ (gx#stx-source _%relsrc173975%_)))
                        (if _%$e173978%_
                            _%$e173978%_
                            (gx#stx-e _%relsrc173975%_))))
                     (if (source-location-path? _%relsrc173975%_)
                         (path-directory
                          (source-location-path _%relsrc173975%_))
                         (if (string? _%relsrc173975%_)
                             (path-directory _%relsrc173975%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path173988%_ (path-normalize _%reldir173989%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path173994%_)
        (let ((_%rel173996%_ '#f))
          (gx#core-resolve-path__% _%stx-path173994%_ _%rel173996%_))))
    (define gx#core-resolve-path
      (lambda _g178229_
        (let ((_g178230_ (##length _g178229_)))
          (cond ((##fx= _g178230_ 1) (apply gx#core-resolve-path__0 _g178229_))
                ((##fx= _g178230_ 2) (apply gx#core-resolve-path__% _g178229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g178229_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr173926%_ _%ctx173927%_)
        (let* ((_%repr173928173935%_ _%repr173926%_)
               (_%E173930173939%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr173928173935%_
                         '([phi . subs]))
                  '#!void))
               (_%K173931173947%_
                (lambda (_%subs173942%_ _%phi173943%_)
                  (let ((_%subst173945%_
                         (if (null? _%subs173942%_)
                             '#f
                             (list->hash-table-eq _%subs173942%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst173945%_
                     _%ctx173927%_
                     _%phi173943%_
                     '#f)))))
          (if (pair? _%repr173928173935%_)
              (let ((_%hd173932173950%_ (##car _%repr173928173935%_))
                    (_%tl173933173952%_ (##cdr _%repr173928173935%_)))
                (let* ((_%phi173955%_ _%hd173932173950%_)
                       (_%subs173957%_ _%tl173933173952%_))
                  (_%K173931173947%_ _%subs173957%_ _%phi173955%_)))
              (_%E173930173939%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr173962%_)
        (let ((_%ctx173964%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr173962%_ _%ctx173964%_))))
    (define gx#core-deserialize-mark
      (lambda _g178231_
        (let ((_g178232_ (##length _g178231_)))
          (cond ((##fx= _g178232_ 1)
                 (apply gx#core-deserialize-mark__0 _g178231_))
                ((##fx= _g178232_ 2)
                 (apply gx#core-deserialize-mark__% _g178231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g178231_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx173923%_)
        (gx#stx-rewrap _%stx173923%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx173921%_)
        (gx#stx-unwrap__% _%stx173921%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx173891%_)
        (let* ((_%g173892173900%_ (gx#current-expander-marks))
               (_%else173894173908%_ (lambda () _%stx173891%_))
               (_%K173896173913%_
                (lambda (_%hd173911%_)
                  (gx#stx-apply-mark _%stx173891%_ _%hd173911%_))))
          (if (pair? _%g173892173900%_)
              (let* ((_%hd173897173916%_ (##car _%g173892173900%_))
                     (_%hd173919%_ _%hd173897173916%_))
                (_%K173896173913%_ _%hd173919%_))
              (_%else173894173908%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym173889%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym173889%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx173874%_ _%E173875%_)
        (let ((_%bind173877%_ (gx#resolve-identifier__0 _%stx173874%_)))
          (if (##structure-direct-instance-of?
               _%bind173877%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind173877%_ '5 '#f '#f)
              (_%E173875%_ _%stx173874%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx173882%_)
        (let ((_%E173884%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx173882%_ _%E173884%_))))
    (define gx#syntax-local-e
      (lambda _g178233_
        (let ((_g178234_ (##length _g178233_)))
          (cond ((##fx= _g178234_ 1) (apply gx#syntax-local-e__0 _g178233_))
                ((##fx= _g178234_ 2) (apply gx#syntax-local-e__% _g178233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g178233_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx173858%_ _%E173859%_)
        (let ((_%e173861%_ (gx#syntax-local-e__% _%stx173858%_ _%E173859%_)))
          (if (##structure-instance-of? _%e173861%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e173861%_ '1 '#f '#f)
              _%e173861%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx173866%_)
        (let ((_%E173868%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx173866%_ _%E173868%_))))
    (define gx#syntax-local-value
      (lambda _g178235_
        (let ((_g178236_ (##length _g178235_)))
          (cond ((##fx= _g178236_ 1)
                 (apply gx#syntax-local-value__0 _g178235_))
                ((##fx= _g178236_ 2)
                 (apply gx#syntax-local-value__% _g178235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g178235_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx173855%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx173855%_)))))
