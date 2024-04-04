(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712251111)
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
      (lambda _%$args118252%_
        (apply make-instance gx#expander-context::t _%$args118252%_)))
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
      (lambda _%$args118249%_
        (apply make-instance gx#root-context::t _%$args118249%_)))
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
      (lambda _%$args118246%_
        (apply make-instance gx#phi-context::t _%$args118246%_)))
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
      (lambda _%$args118243%_
        (apply make-instance gx#top-context::t _%$args118243%_)))
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
      (lambda _%$args118240%_
        (apply make-instance gx#module-context::t _%$args118240%_)))
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
      (lambda _%$args118237%_
        (apply make-instance gx#prelude-context::t _%$args118237%_)))
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
      (lambda _%$args118234%_
        (apply make-instance gx#local-context::t _%$args118234%_)))
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
      (lambda (_%self118207%_ _%id118208%_ _%super118209%_)
        (let ((_%self118212%_ _%self118207%_))
          (if (##fx< '3 (##structure-length _%self118212%_))
              (begin
                (##unchecked-structure-set!
                 _%self118212%_
                 _%id118208%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118212%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118212%_
                 _%super118209%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118212%_
                     '3
                     (##vector-length _%self118212%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118225%_ _%id118226%_)
        (let ((_%super118228%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118225%_
           _%id118226%_
           _%super118228%_))))
    (define gx#phi-context:::init!
      (lambda _g118295_
        (let ((_g118294_ (##length _g118295_)))
          (cond ((##fx= _g118294_ 2)
                 (apply (lambda (_%self118225%_ _%id118226%_)
                          (gx#phi-context:::init!__0
                           _%self118225%_
                           _%id118226%_))
                        _g118295_))
                ((##fx= _g118294_ 3)
                 (apply (lambda (_%self118230%_ _%id118231%_ _%super118232%_)
                          (gx#phi-context:::init!__%
                           _%self118230%_
                           _%id118231%_
                           _%super118232%_))
                        _g118295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g118295_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self118060%_ _%super118061%_)
        (let ((_%self118064%_ _%self118060%_))
          (if (##fx< '3 (##structure-length _%self118064%_))
              (begin
                (##unchecked-structure-set!
                 _%self118064%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118064%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118064%_
                 _%super118061%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118064%_
                     '3
                     (##vector-length _%self118064%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118077%_)
        (let ((_%super118079%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118077%_ _%super118079%_))))
    (define gx#local-context:::init!
      (lambda _g118297_
        (let ((_g118296_ (##length _g118297_)))
          (cond ((##fx= _g118296_ 1)
                 (apply (lambda (_%self118077%_)
                          (gx#local-context:::init!__0 _%self118077%_))
                        _g118297_))
                ((##fx= _g118296_ 2)
                 (apply (lambda (_%self118081%_ _%super118082%_)
                          (gx#local-context:::init!__%
                           _%self118081%_
                           _%super118082%_))
                        _g118297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g118297_))))))
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
      (lambda _%$args117934%_
        (apply make-instance gx#binding::t _%$args117934%_)))
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
      (lambda _%$args117931%_
        (apply make-instance gx#runtime-binding::t _%$args117931%_)))
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
      (lambda _%$args117928%_
        (apply make-instance gx#local-binding::t _%$args117928%_)))
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
      (lambda _%$args117925%_
        (apply make-instance gx#top-binding::t _%$args117925%_)))
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
      (lambda _%$args117922%_
        (apply make-instance gx#module-binding::t _%$args117922%_)))
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
      (lambda _%$args117919%_
        (apply make-instance gx#extern-binding::t _%$args117919%_)))
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
      (lambda _%$args117916%_
        (apply make-instance gx#syntax-binding::t _%$args117916%_)))
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
      (lambda _%$args117913%_
        (apply make-instance gx#import-binding::t _%$args117913%_)))
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
      (lambda _%$args117910%_
        (apply make-instance gx#alias-binding::t _%$args117910%_)))
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
      (lambda _%$args117907%_
        (apply make-instance gx#expander::t _%$args117907%_)))
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
      (lambda _%$args117904%_
        (apply make-instance gx#core-expander::t _%$args117904%_)))
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
      (lambda _%$args117901%_
        (apply make-instance gx#expression-form::t _%$args117901%_)))
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
      (lambda _%$args117898%_
        (apply make-instance gx#special-form::t _%$args117898%_)))
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
      (lambda _%$args117895%_
        (apply make-instance gx#definition-form::t _%$args117895%_)))
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
      (lambda _%$args117892%_
        (apply make-instance gx#top-special-form::t _%$args117892%_)))
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
      (lambda _%$args117889%_
        (apply make-instance gx#module-special-form::t _%$args117889%_)))
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
      (lambda _%$args117886%_
        (apply make-instance gx#feature-expander::t _%$args117886%_)))
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
      (lambda _%$args117883%_
        (apply make-instance gx#private-feature-expander::t _%$args117883%_)))
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
      (lambda _%$args117880%_
        (apply make-instance gx#reserved-expander::t _%$args117880%_)))
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
      (lambda _%$args117877%_
        (apply make-instance gx#macro-expander::t _%$args117877%_)))
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
      (lambda _%$args117874%_
        (apply make-instance gx#rename-macro-expander::t _%$args117874%_)))
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
      (lambda _%$args117871%_
        (apply make-instance gx#user-expander::t _%$args117871%_)))
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
      (lambda _%$args117868%_
        (apply make-instance gx#expander-mark::t _%$args117868%_)))
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
      (lambda (_%ctx117852%_
               _%message117853%_
               _%stx117854%_
               .
               _%details117855%_)
        (let ((_%ctx117866%_
               (let ((_%$e117857%_ _%ctx117852%_))
                 (if _%$e117857%_
                     _%$e117857%_
                     (let ((_%$e117860%_ (gx#core-context-top__0)))
                       (if _%$e117860%_
                           ((lambda (_%ctx117863%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117863%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117860%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117853%_
                  (cons _%stx117854%_ _%details117855%_)
                  _%ctx117866%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117839%_ _%expression?117840%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117839%_ _%expression?117840%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117845%_)
        (let ((_%expression?117847%_ '#f))
          (gx#eval-syntax__% _%stx117845%_ _%expression?117847%_))))
    (define gx#eval-syntax
      (lambda _g118299_
        (let ((_g118298_ (##length _g118299_)))
          (cond ((##fx= _g118298_ 1)
                 (apply (lambda (_%stx117845%_)
                          (gx#eval-syntax__0 _%stx117845%_))
                        _g118299_))
                ((##fx= _g118298_ 2)
                 (apply (lambda (_%stx117849%_ _%expression?117850%_)
                          (gx#eval-syntax__%
                           _%stx117849%_
                           _%expression?117850%_))
                        _g118299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g118299_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117836%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117836%_))))
    (define gx#core-expand__%
      (lambda (_%stx117823%_ _%expression?117824%_)
        (if _%expression?117824%_
            (gx#core-expand-expression _%stx117823%_)
            (gx#core-expand-top _%stx117823%_))))
    (define gx#core-expand__0
      (lambda (_%stx117829%_)
        (let ((_%expression?117831%_ '#f))
          (gx#core-expand__% _%stx117829%_ _%expression?117831%_))))
    (define gx#core-expand
      (lambda _g118301_
        (let ((_g118300_ (##length _g118301_)))
          (cond ((##fx= _g118300_ 1)
                 (apply (lambda (_%stx117829%_)
                          (gx#core-expand__0 _%stx117829%_))
                        _g118301_))
                ((##fx= _g118300_ 2)
                 (apply (lambda (_%stx117833%_ _%expression?117834%_)
                          (gx#core-expand__%
                           _%stx117833%_
                           _%expression?117834%_))
                        _g118301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g118301_))))))
    (define gx#core-expand-top
      (lambda (_%stx117790%_)
        (let* ((_%stx117792%_ (gx#core-expand*__0 _%stx117790%_))
               (_%e117793117800%_ _%stx117792%_)
               (_%E117795117804%_
                (lambda () (gx#core-expand-expression _%stx117792%_)))
               (_%E117794117818%_
                (lambda ()
                  (if (gx#stx-pair? _%e117793117800%_)
                      (let ((_%e117796117808%_
                             (gx#syntax-e _%e117793117800%_)))
                        (let ((_%hd117797117811%_ (##car _%e117796117808%_))
                              (_%tl117798117813%_ (##cdr _%e117796117808%_)))
                          (let ((_%form117816%_ _%hd117797117811%_))
                            (if (gx#core-bound-identifier?__0 _%form117816%_)
                                _%stx117792%_
                                (_%E117795117804%_)))))
                      (_%E117795117804%_)))))
          (_%E117794117818%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117722%_)
        (letrec ((_%sealed-expression?117724%_
                  (lambda (_%hd117760%_)
                    (if (gx#sealed-syntax? _%hd117760%_)
                        (let* ((_%e117761117768%_ _%hd117760%_)
                               (_%E117763117772%_ (lambda () '#f))
                               (_%E117762117786%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117761117768%_)
                                      (let ((_%e117764117776%_
                                             (gx#syntax-e _%e117761117768%_)))
                                        (let ((_%hd117765117779%_
                                               (##car _%e117764117776%_))
                                              (_%tl117766117781%_
                                               (##cdr _%e117764117776%_)))
                                          (let ((_%form117784%_
                                                 _%hd117765117779%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117784%_
                                                 gx#expression-form-binding?)
                                                (_%E117763117772%_)))))
                                      (_%E117763117772%_)))))
                          (_%E117762117786%_))
                        '#f)))
                 (_%illegal-expression117725%_
                  (lambda (_%hd117757%_ . _%_117758%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117722%_
                     _%hd117757%_)))
                 (_%expand-e117726%_
                  (lambda (_%form117749%_ _%hd117750%_)
                    (let ((_%bind117752%_
                           (if (##structure-instance-of?
                                _%form117749%_
                                'gx#binding::t)
                               _%form117749%_
                               (gx#resolve-identifier__0 _%form117749%_))))
                      (if (gx#core-expander-binding? _%bind117752%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117752%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117750%_
                              (gx#stx-source _%stx117722%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117752%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117752%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117750%_
                                   (gx#stx-source _%stx117722%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117722%_
                                 _%form117749%_))))))))
          (let ((_%hd117728%_ (gx#core-expand-head _%stx117722%_)))
            (if (_%sealed-expression?117724%_ _%hd117728%_)
                (let () _%hd117728%_)
                (if (gx#stx-pair? _%hd117728%_)
                    (let ()
                      (let* ((_%form117732%_ (gx#stx-car _%hd117728%_))
                             (_%bind117734%_
                              (if (gx#identifier? _%form117732%_)
                                  (gx#resolve-identifier__0 _%form117732%_)
                                  '#f)))
                        (if (or (not _%bind117734%_)
                                (not (gx#core-expander-binding?
                                      _%bind117734%_)))
                            (let ()
                              (_%expand-e117726%_
                               '%%app
                               (cons '%%app _%hd117728%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117734%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117728%_
                                   _%illegal-expression117725%_))
                                (if (gx#expression-form-binding?
                                     _%bind117734%_)
                                    (let ()
                                      (_%expand-e117726%_
                                       _%bind117734%_
                                       _%hd117728%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117734%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117726%_
                                            _%bind117734%_
                                            _%hd117728%_)))
                                        (let ()
                                          (_%illegal-expression117725%_
                                           _%hd117728%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117728%_)
                        (let () (_%illegal-expression117725%_ _%hd117728%_))
                        (if (gx#identifier? _%hd117728%_)
                            (let ()
                              (_%expand-e117726%_
                               '%%ref
                               (cons '%%ref (cons _%hd117728%_ '()))))
                            (if (gx#stx-datum? _%hd117728%_)
                                (let ()
                                  (_%expand-e117726%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117728%_ '()))))
                                (let ()
                                  (_%illegal-expression117725%_
                                   _%hd117728%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117717%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117720%_ (gx#core-expand-expression _%stx117717%_)))
             (values _%stx117720%_ (gx#eval-syntax* _%stx117720%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117698%_ _%stop?117699%_)
        (let _%lp117701%_ ((_%stx117703%_ _%stx117698%_))
          (if (_%stop?117699%_ _%stx117703%_)
              _%stx117703%_
              (let ((_%rstx117705%_ (gx#core-expand1 _%stx117703%_)))
                (if (eq? _%stx117703%_ _%rstx117705%_)
                    _%stx117703%_
                    (_%lp117701%_ _%rstx117705%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117710%_)
        (let ((_%stop?117712%_ false))
          (gx#core-expand*__% _%stx117710%_ _%stop?117712%_))))
    (define gx#core-expand*
      (lambda _g118303_
        (let ((_g118302_ (##length _g118303_)))
          (cond ((##fx= _g118302_ 1)
                 (apply (lambda (_%stx117710%_)
                          (gx#core-expand*__0 _%stx117710%_))
                        _g118303_))
                ((##fx= _g118302_ 2)
                 (apply (lambda (_%stx117714%_ _%stop?117715%_)
                          (gx#core-expand*__% _%stx117714%_ _%stop?117715%_))
                        _g118303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g118303_))))))
    (define gx#core-expand1
      (lambda (_%stx117650%_)
        (letrec ((_%step117652%_
                  (lambda (_%hd117689%_)
                    (let ((_%bind117691%_
                           (gx#resolve-identifier__0 _%hd117689%_)))
                      (if (##structure-instance-of?
                           _%bind117691%_
                           'gx#runtime-binding::t)
                          (let () _%stx117650%_)
                          (if (##structure-direct-instance-of?
                               _%bind117691%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind117691%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx117650%_))
                              (if (not _%bind117691%_)
                                  (let () _%stx117650%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx117650%_)))))))))
          (let* ((_%e117653117661%_ _%stx117650%_)
                 (_%E117659117665%_ (lambda () _%stx117650%_))
                 (_%E117655117671%_
                  (lambda ()
                    (let ((_%hd117669%_ _%e117653117661%_))
                      (if (gx#identifier? _%hd117669%_)
                          (_%step117652%_ _%hd117669%_)
                          (_%E117659117665%_)))))
                 (_%E117654117685%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117653117661%_)
                        (let ((_%e117656117675%_
                               (gx#syntax-e _%e117653117661%_)))
                          (let ((_%hd117657117678%_ (##car _%e117656117675%_))
                                (_%tl117658117680%_ (##cdr _%e117656117675%_)))
                            (let ((_%hd117683%_ _%hd117657117678%_))
                              (if (gx#identifier? _%hd117683%_)
                                  (_%step117652%_ _%hd117683%_)
                                  (_%E117655117671%_)))))
                        (_%E117655117671%_)))))
            (_%E117654117685%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117616%_)
        (letrec ((_%stop?117618%_
                  (lambda (_%stx117620%_)
                    (let* ((_%e117621117628%_ _%stx117620%_)
                           (_%E117623117632%_ (lambda () '#f))
                           (_%E117622117646%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117621117628%_)
                                  (let ((_%e117624117636%_
                                         (gx#syntax-e _%e117621117628%_)))
                                    (let ((_%hd117625117639%_
                                           (##car _%e117624117636%_))
                                          (_%tl117626117641%_
                                           (##cdr _%e117624117636%_)))
                                      (let ((_%hd117644%_ _%hd117625117639%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117644%_)
                                            (_%E117623117632%_)))))
                                  (_%E117623117632%_)))))
                      (_%E117622117646%_)))))
          (gx#core-expand*__% _%stx117616%_ _%stop?117618%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx117422%_
               _%expand-special117423%_
               _%begin-form117424%_
               _%expand-e117425%_)
        (letrec ((_%expand-splice117427%_
                  (lambda (_%hd117590%_
                           _%body117591%_
                           _%rest117592%_
                           _%r117593%_)
                    (if (gx#stx-list? _%body117591%_)
                        (_%K117431%_
                         (gx#stx-foldr cons _%rest117592%_ _%body117591%_)
                         _%r117593%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx117422%_
                         _%hd117590%_))))
                 (_%expand-cond-expand117428%_
                  (lambda (_%hd117586%_ _%rest117587%_ _%r117588%_)
                    (_%K117431%_
                     (cons (gx#core-expand-cond-expand% _%hd117586%_)
                           _%rest117587%_)
                     _%r117588%_)))
                 (_%expand-include117429%_
                  (lambda (_%hd117535%_ _%rest117536%_ _%r117537%_)
                    (let* ((_%e117538117548%_ _%hd117535%_)
                           (_%E117540117552%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117538117548%_)))
                           (_%E117539117582%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117538117548%_)
                                  (let ((_%e117541117556%_
                                         (gx#syntax-e _%e117538117548%_)))
                                    (let ((_%hd117542117559%_
                                           (##car _%e117541117556%_))
                                          (_%tl117543117561%_
                                           (##cdr _%e117541117556%_)))
                                      (if (gx#stx-pair? _%tl117543117561%_)
                                          (let ((_%e117544117564%_
                                                 (gx#syntax-e
                                                  _%tl117543117561%_)))
                                            (let ((_%hd117545117567%_
                                                   (##car _%e117544117564%_))
                                                  (_%tl117546117569%_
                                                   (##cdr _%e117544117564%_)))
                                              (let ((_%path117572%_
                                                     _%hd117545117567%_))
                                                (if (gx#stx-null?
                                                     _%tl117546117569%_)
                                                    (if (gx#stx-string?
                                                         _%path117572%_)
                                                        (let* ((_%rpath117574%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path117572%_
                         (gx#stx-source _%hd117535%_)))
                       (_%block117576%_
                        (gx#core-expand-include%__%
                         _%hd117535%_
                         _%rpath117574%_))
                       (_%rbody117579%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block117576%_
                            _%expand-special117423%_
                            '#f
                            _%expand-e117425%_))
                         gx#current-expander-path
                         (cons _%rpath117574%_ (gx#current-expander-path)))))
                  (_%K117431%_
                   _%rest117536%_
                   (__foldr1 cons _%r117537%_ _%rbody117579%_)))
                (_%E117540117552%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E117540117552%_)))))
                                          (_%E117540117552%_))))
                                  (_%E117540117552%_)))))
                      (_%E117539117582%_))))
                 (_%expand-expression117430%_
                  (lambda (_%hd117531%_ _%rest117532%_ _%r117533%_)
                    (_%K117431%_
                     _%rest117532%_
                     (cons (_%expand-e117425%_ _%hd117531%_) _%r117533%_))))
                 (_%K117431%_
                  (lambda (_%rest117461%_ _%r117462%_)
                    (let* ((_%e117463117470%_ _%rest117461%_)
                           (_%E117465117474%_
                            (lambda ()
                              (if _%begin-form117424%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form117424%_
                                    (reverse _%r117462%_))
                                   (gx#stx-source _%stx117422%_))
                                  _%r117462%_)))
                           (_%E117464117527%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117463117470%_)
                                  (let ((_%e117466117478%_
                                         (gx#syntax-e _%e117463117470%_)))
                                    (let ((_%hd117467117481%_
                                           (##car _%e117466117478%_))
                                          (_%tl117468117483%_
                                           (##cdr _%e117466117478%_)))
                                      (let* ((_%hd117486%_ _%hd117467117481%_)
                                             (_%rest117488%_
                                              _%tl117468117483%_))
                                        (if '#t
                                            (let* ((_%hd117490%_
                                                    (gx#core-expand-head
                                                     _%hd117486%_))
                                                   (_%e117491117498%_
                                                    _%hd117490%_)
                                                   (_%E117493117502%_
                                                    (lambda ()
                                                      (_%expand-expression117430%_
                                                       _%hd117490%_
                                                       _%rest117488%_
                                                       _%r117462%_)))
                                                   (_%E117492117523%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117491117498%_)
                                                          (let ((_%e117494117506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117491117498%_)))
                    (let ((_%hd117495117509%_ (##car _%e117494117506%_))
                          (_%tl117496117511%_ (##cdr _%e117494117506%_)))
                      (let* ((_%form117514%_ _%hd117495117509%_)
                             (_%body117516%_ _%tl117496117511%_))
                        (if '#t
                            (let ((_%bind117518%_
                                   (if (gx#identifier? _%form117514%_)
                                       (gx#resolve-identifier__0
                                        _%form117514%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind117518%_)
                                  (let ((_%$e117520%_
                                         (##unchecked-structure-ref
                                          _%bind117518%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e117520%_)
                                        (_%expand-splice117427%_
                                         _%hd117490%_
                                         _%body117516%_
                                         _%rest117488%_
                                         _%r117462%_)
                                        (if (eq? '%#cond-expand _%$e117520%_)
                                            (_%expand-cond-expand117428%_
                                             _%hd117490%_
                                             _%rest117488%_
                                             _%r117462%_)
                                            (if (eq? '%#include _%$e117520%_)
                                                (_%expand-include117429%_
                                                 _%hd117490%_
                                                 _%rest117488%_
                                                 _%r117462%_)
                                                (_%expand-special117423%_
                                                 _%hd117490%_
                                                 _%K117431%_
                                                 _%rest117488%_
                                                 _%r117462%_)))))
                                  (_%expand-expression117430%_
                                   _%hd117490%_
                                   _%rest117488%_
                                   _%r117462%_)))
                            (_%E117493117502%_)))))
                  (_%E117493117502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117492117523%_))
                                            (_%E117465117474%_)))))
                                  (_%E117465117474%_)))))
                      (_%E117464117527%_)))))
          (let* ((_%e117432117439%_ _%stx117422%_)
                 (_%E117434117443%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117432117439%_)))
                 (_%E117433117457%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117432117439%_)
                        (let ((_%e117435117447%_
                               (gx#syntax-e _%e117432117439%_)))
                          (let ((_%hd117436117450%_ (##car _%e117435117447%_))
                                (_%tl117437117452%_ (##cdr _%e117435117447%_)))
                            (let ((_%body117455%_ _%tl117437117452%_))
                              (if (gx#stx-list? _%body117455%_)
                                  (_%K117431%_ _%body117455%_ '())
                                  (_%E117434117443%_)))))
                        (_%E117434117443%_)))))
            (_%E117433117457%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117598%_ _%expand-special117599%_)
        (let* ((_%begin-form117601%_ '%#begin)
               (_%expand-e117603%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117598%_
           _%expand-special117599%_
           _%begin-form117601%_
           _%expand-e117603%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117605%_ _%expand-special117606%_ _%begin-form117607%_)
        (let ((_%expand-e117609%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117605%_
           _%expand-special117606%_
           _%begin-form117607%_
           _%expand-e117609%_))))
    (define gx#core-expand-block
      (lambda _g118305_
        (let ((_g118304_ (##length _g118305_)))
          (cond ((##fx= _g118304_ 2)
                 (apply (lambda (_%stx117598%_ _%expand-special117599%_)
                          (gx#core-expand-block__0
                           _%stx117598%_
                           _%expand-special117599%_))
                        _g118305_))
                ((##fx= _g118304_ 3)
                 (apply (lambda (_%stx117605%_
                                 _%expand-special117606%_
                                 _%begin-form117607%_)
                          (gx#core-expand-block__1
                           _%stx117605%_
                           _%expand-special117606%_
                           _%begin-form117607%_))
                        _g118305_))
                ((##fx= _g118304_ 4)
                 (apply (lambda (_%stx117611%_
                                 _%expand-special117612%_
                                 _%begin-form117613%_
                                 _%expand-e117614%_)
                          (gx#core-expand-block__%
                           _%stx117611%_
                           _%expand-special117612%_
                           _%begin-form117613%_
                           _%expand-e117614%_))
                        _g118305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g118305_))))))
    (define gx#core-expand-block*
      (lambda (_%stx117370%_ _%expand-special117371%_)
        (let* ((_%g117372117383%_
                (gx#core-expand-block__1
                 _%stx117370%_
                 _%expand-special117371%_
                 '#f))
               (_%E117376117387%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117372117383%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K117381117418%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx117370%_)))
                (_%K117378117404%_ (lambda (_%expr117402%_) _%expr117402%_))
                (_%K117377117393%_
                 (lambda (_%body117391%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body117391%_))
                    (gx#stx-source _%stx117370%_)))))
            (let ((_%try-match117374117414%_
                   (lambda ()
                     (if (##pair? _%g117372117383%_)
                         (let ((_%tl117380117409%_ (##cdr _%g117372117383%_))
                               (_%hd117379117407%_ (##car _%g117372117383%_)))
                           (if (##null? _%tl117380117409%_)
                               (let ((_%expr117412%_ _%hd117379117407%_))
                                 (_%K117378117404%_ _%expr117412%_))
                               (let ((_%body117396%_ _%g117372117383%_))
                                 (_%K117377117393%_ _%body117396%_))))
                         (let ((_%body117396%_ _%g117372117383%_))
                           (_%K117377117393%_ _%body117396%_))))))
              (if (##null? _%g117372117383%_)
                  (_%K117381117418%_)
                  (_%try-match117374117414%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx117195%_)
        (letrec ((_%satisfied?117197%_
                  (lambda (_%condition117298%_)
                    (let* ((_%e117299117314%_ _%condition117298%_)
                           (_%E117309117318%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117299117314%_)))
                           (_%E117302117337%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117299117314%_)
                                  (let ((_%e117310117322%_
                                         (gx#syntax-e _%e117299117314%_)))
                                    (let ((_%hd117311117325%_
                                           (##car _%e117310117322%_))
                                          (_%tl117312117327%_
                                           (##cdr _%e117310117322%_)))
                                      (let* ((_%combinator117330%_
                                              _%hd117311117325%_)
                                             (_%body117332%_
                                              _%tl117312117327%_))
                                        (if (gx#stx-list? _%body117332%_)
                                            (let ((_%$e117334%_
                                                   (gx#stx-e
                                                    _%combinator117330%_)))
                                              (if (eq? 'not _%$e117334%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?117197%_
                                                        _%body117332%_))
                                                  (if (eq? 'and _%$e117334%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?117197%_
                                                       _%body117332%_)
                                                      (if (eq? 'or
                                                               _%$e117334%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?117197%_
                                                           _%body117332%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e117334%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body117332%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx117195%_
                       _%combinator117330%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E117309117318%_)))))
                                  (_%E117309117318%_))))
                           (_%E117301117360%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117299117314%_)
                                  (let ((_%e117303117341%_
                                         (gx#syntax-e _%e117299117314%_)))
                                    (let ((_%hd117304117344%_
                                           (##car _%e117303117341%_))
                                          (_%tl117305117346%_
                                           (##cdr _%e117303117341%_)))
                                      (if (and (gx#identifier?
                                                _%hd117304117344%_)
                                               (gx#core-identifier=?
                                                _%hd117304117344%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl117305117346%_)
                                              (let ((_%e117306117349%_
                                                     (gx#syntax-e
                                                      _%tl117305117346%_)))
                                                (let ((_%hd117307117352%_
                                                       (##car _%e117306117349%_))
                                                      (_%tl117308117354%_
                                                       (##cdr _%e117306117349%_)))
                                                  (let ((_%expr117357%_
                                                         _%hd117307117352%_))
                                                    (if (gx#stx-null?
                                                         _%tl117308117354%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr117357%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E117302117337%_))
                (_%E117302117337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117302117337%_))
                                          (_%E117302117337%_))))
                                  (_%E117302117337%_))))
                           (_%E117300117366%_
                            (lambda ()
                              (let ((_%id117364%_ _%e117299117314%_))
                                (if (gx#identifier? _%id117364%_)
                                    (gx#core-bound-identifier?__%
                                     _%id117364%_
                                     gx#feature-binding?)
                                    (_%E117301117360%_))))))
                      (_%E117300117366%_))))
                 (_%loop117198%_
                  (lambda (_%rest117228%_)
                    (let* ((_%e117229117237%_ _%rest117228%_)
                           (_%E117235117241%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117229117237%_)))
                           (_%E117231117245%_
                            (lambda ()
                              (if (gx#stx-null? _%e117229117237%_)
                                  (if '#t '() (_%E117235117241%_))
                                  (_%E117235117241%_))))
                           (_%E117230117294%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117229117237%_)
                                  (let ((_%e117232117249%_
                                         (gx#syntax-e _%e117229117237%_)))
                                    (let ((_%hd117233117252%_
                                           (##car _%e117232117249%_))
                                          (_%tl117234117254%_
                                           (##cdr _%e117232117249%_)))
                                      (let* ((_%hd117257%_ _%hd117233117252%_)
                                             (_%rest117259%_
                                              _%tl117234117254%_))
                                        (if '#t
                                            (let* ((_%e117260117267%_
                                                    _%hd117257%_)
                                                   (_%E117262117271%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e117260117267%_)))
                                                   (_%E117261117290%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117260117267%_)
                                                          (let ((_%e117263117275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117260117267%_)))
                    (let ((_%hd117264117278%_ (##car _%e117263117275%_))
                          (_%tl117265117280%_ (##cdr _%e117263117275%_)))
                      (let* ((_%condition117283%_ _%hd117264117278%_)
                             (_%body117285%_ _%tl117265117280%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition117283%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest117259%_)
                                      _%body117285%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx117195%_
                                       _%hd117257%_)))
                                (if (_%satisfied?117197%_ _%condition117283%_)
                                    (let () _%body117285%_)
                                    (let () (_%loop117198%_ _%rest117259%_))))
                            (_%E117262117271%_)))))
                  (_%E117262117271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117261117290%_))
                                            (_%E117231117245%_)))))
                                  (_%E117231117245%_)))))
                      (_%E117230117294%_)))))
          (let* ((_%e117199117206%_ _%stx117195%_)
                 (_%E117201117210%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117199117206%_)))
                 (_%E117200117224%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117199117206%_)
                        (let ((_%e117202117214%_
                               (gx#syntax-e _%e117199117206%_)))
                          (let ((_%hd117203117217%_ (##car _%e117202117214%_))
                                (_%tl117204117219%_ (##cdr _%e117202117214%_)))
                            (let ((_%clauses117222%_ _%tl117204117219%_))
                              (if (gx#stx-list? _%clauses117222%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop117198%_ _%clauses117222%_))
                                  (_%E117201117210%_)))))
                        (_%E117201117210%_)))))
            (_%E117200117224%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx117138%_ _%rpath117139%_)
        (let* ((_%e117140117150%_ _%stx117138%_)
               (_%E117142117154%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e117140117150%_)))
               (_%E117141117181%_
                (lambda ()
                  (if (gx#stx-pair? _%e117140117150%_)
                      (let ((_%e117143117158%_
                             (gx#syntax-e _%e117140117150%_)))
                        (let ((_%hd117144117161%_ (##car _%e117143117158%_))
                              (_%tl117145117163%_ (##cdr _%e117143117158%_)))
                          (if (gx#stx-pair? _%tl117145117163%_)
                              (let ((_%e117146117166%_
                                     (gx#syntax-e _%tl117145117163%_)))
                                (let ((_%hd117147117169%_
                                       (##car _%e117146117166%_))
                                      (_%tl117148117171%_
                                       (##cdr _%e117146117166%_)))
                                  (let ((_%path117174%_ _%hd117147117169%_))
                                    (if (gx#stx-null? _%tl117148117171%_)
                                        (if (gx#stx-string? _%path117174%_)
                                            (let ((_%rpath117179%_
                                                   (let ((_%$e117176%_
                                                          _%rpath117139%_))
                                                     (if _%$e117176%_
                                                         _%$e117176%_
                                                         (gx#core-resolve-path__%
                                                          _%path117174%_
                                                          (gx#stx-source
                                                           _%stx117138%_))))))
                                              (if (member _%rpath117179%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx117138%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath117179%_))
                                                    (gx#stx-source
                                                     _%stx117138%_)))))
                                            (_%E117142117154%_))
                                        (_%E117142117154%_)))))
                              (_%E117142117154%_))))
                      (_%E117142117154%_)))))
          (_%E117141117181%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx117188%_)
        (let ((_%rpath117190%_ '#f))
          (gx#core-expand-include%__% _%stx117188%_ _%rpath117190%_))))
    (define gx#core-expand-include%
      (lambda _g118307_
        (let ((_g118306_ (##length _g118307_)))
          (cond ((##fx= _g118306_ 1)
                 (apply (lambda (_%stx117188%_)
                          (gx#core-expand-include%__0 _%stx117188%_))
                        _g118307_))
                ((##fx= _g118306_ 2)
                 (apply (lambda (_%stx117192%_ _%rpath117193%_)
                          (gx#core-expand-include%__%
                           _%stx117192%_
                           _%rpath117193%_))
                        _g118307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g118307_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K117104%_ _%stx117105%_ _%method117106%_)
        (if (procedure? _%K117104%_)
            (let ((_%$e117109%_ (gx#stx-source _%stx117105%_)))
              (if _%$e117109%_
                  ((lambda (_%g117111117113%_)
                     (gx#stx-wrap-source
                      (_%K117104%_ _%stx117105%_)
                      _%g117111117113%_))
                   _%$e117109%_)
                  (let () (_%K117104%_ _%stx117105%_))))
            (let ((_%$e117117%_
                   (bound-method-ref _%K117104%_ _%method117106%_)))
              (if _%$e117117%_
                  ((lambda (_%g117119117121%_)
                     (gx#core-apply-expander__%
                      _%g117119117121%_
                      _%stx117105%_
                      _%method117106%_))
                   _%$e117117%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx117105%_
                     _%method117106%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K117128%_ _%stx117129%_)
        (let ((_%method117131%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K117128%_
           _%stx117129%_
           _%method117131%_))))
    (define gx#core-apply-expander
      (lambda _g118309_
        (let ((_g118308_ (##length _g118309_)))
          (cond ((##fx= _g118308_ 2)
                 (apply (lambda (_%K117128%_ _%stx117129%_)
                          (gx#core-apply-expander__0
                           _%K117128%_
                           _%stx117129%_))
                        _g118309_))
                ((##fx= _g118308_ 3)
                 (apply (lambda (_%K117133%_ _%stx117134%_ _%method117135%_)
                          (gx#core-apply-expander__%
                           _%K117133%_
                           _%stx117134%_
                           _%method117135%_))
                        _g118309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g118309_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self117089%_ _%stx117090%_)
        (let ((_%self117093%_ _%self117089%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx117090%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116931%_ _%stx116932%_)
        (let ((_%self116935%_ _%self116931%_))
          (let* ((_%self116944116950%_ _%self116935%_)
                 (_%E116946116954%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116944116950%_
                           '((macro-expander K)))
                    '#!void))
                 (_%K116947116959%_
                  (lambda (_%K116957%_)
                    (gx#core-apply-expander__0 _%K116957%_ _%stx116932%_))))
            (if '#t
                (let* ((_%e116948116962%_
                        (##unchecked-structure-ref
                         _%self116944116950%_
                         '1
                         '#f
                         '#f))
                       (_%K116965%_ _%e116948116962%_))
                  (_%K116947116959%_ _%K116965%_))
                (_%E116946116954%_))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116773%_ _%stx116774%_)
        (let ((_%self116777%_ _%self116773%_))
          (if (gx#sealed-syntax? _%stx116774%_)
              _%stx116774%_
              (let* ((_%self116786116792%_ _%self116777%_)
                     (_%E116788116796%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116786116792%_
                               '((core-expander K)))
                        '#!void))
                     (_%K116789116801%_
                      (lambda (_%K116799%_)
                        (gx#core-apply-expander__0
                         _%K116799%_
                         _%stx116774%_))))
                (if '#t
                    (let* ((_%e116790116804%_
                            (##unchecked-structure-ref
                             _%self116786116792%_
                             '1
                             '#f
                             '#f))
                           (_%K116807%_ _%e116790116804%_))
                      (_%K116789116801%_ _%K116807%_))
                    (_%E116788116796%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116624%_ _%stx116625%_ _%top?116626%_)
        (let ((_%self116629%_ _%self116624%_))
          (if (_%top?116626%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self116629%_
               _%stx116625%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx116625%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116642%_ _%stx116643%_)
        (let ((_%top?116645%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116642%_
           _%stx116643%_
           _%top?116645%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g118311_
        (let ((_g118310_ (##length _g118311_)))
          (cond ((##fx= _g118310_ 2)
                 (apply (lambda (_%self116642%_ _%stx116643%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self116642%_
                           _%stx116643%_))
                        _g118311_))
                ((##fx= _g118310_ 3)
                 (apply (lambda (_%self116647%_ _%stx116648%_ _%top?116649%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self116647%_
                           _%stx116648%_
                           _%top?116649%_))
                        _g118311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g118311_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116487%_ _%stx116488%_)
        (let ((_%self116491%_ _%self116487%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self116491%_
           _%stx116488%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116301%_ _%stx116302%_)
        (let ((_%self116305%_ _%self116301%_))
          (let* ((_%self116314116320%_ _%self116305%_)
                 (_%E116316116324%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116314116320%_
                           '((rename-macro-expander id)))
                    '#!void))
                 (_%K116317116357%_
                  (lambda (_%id116327%_)
                    (let* ((_%e116328116335%_ _%stx116302%_)
                           (_%E116330116339%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116328116335%_)))
                           (_%E116329116353%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116328116335%_)
                                  (let ((_%e116331116343%_
                                         (gx#syntax-e _%e116328116335%_)))
                                    (let ((_%hd116332116346%_
                                           (##car _%e116331116343%_))
                                          (_%tl116333116348%_
                                           (##cdr _%e116331116343%_)))
                                      (let ((_%body116351%_
                                             _%tl116333116348%_))
                                        (if '#t
                                            (gx#core-cons
                                             _%id116327%_
                                             _%body116351%_)
                                            (_%E116330116339%_)))))
                                  (_%E116330116339%_)))))
                      (_%E116329116353%_)))))
            (if '#t
                (let* ((_%e116318116360%_
                        (##unchecked-structure-ref
                         _%self116314116320%_
                         '1
                         '#f
                         '#f))
                       (_%id116363%_ _%e116318116360%_))
                  (_%K116317116357%_ _%id116363%_))
                (_%E116316116324%_))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self116127%_ _%stx116128%_ _%method116129%_)
        (let* ((_%self116130116138%_ _%self116127%_)
               (_%E116132116142%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116130116138%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K116133116149%_
                (lambda (_%phi116145%_ _%ctx116146%_ _%K116147%_)
                  (gx#core-apply-user-macro
                   _%K116147%_
                   _%stx116128%_
                   _%ctx116146%_
                   _%phi116145%_
                   _%method116129%_))))
          (if (##structure-instance-of?
               _%self116130116138%_
               'gx#user-expander::t)
              (let* ((_%e116134116152%_
                      (##unchecked-structure-ref
                       _%self116130116138%_
                       '1
                       '#f
                       '#f))
                     (_%K116155%_ _%e116134116152%_)
                     (_%e116135116157%_
                      (##unchecked-structure-ref
                       _%self116130116138%_
                       '2
                       '#f
                       '#f))
                     (_%ctx116160%_ _%e116135116157%_)
                     (_%e116136116162%_
                      (##unchecked-structure-ref
                       _%self116130116138%_
                       '3
                       '#f
                       '#f))
                     (_%phi116165%_ _%e116136116162%_))
                (_%K116133116149%_ _%phi116165%_ _%ctx116160%_ _%K116155%_))
              (_%E116132116142%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self116170%_ _%stx116171%_)
        (let ((_%method116173%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self116170%_
           _%stx116171%_
           _%method116173%_))))
    (define gx#core-apply-user-expander
      (lambda _g118313_
        (let ((_g118312_ (##length _g118313_)))
          (cond ((##fx= _g118312_ 2)
                 (apply (lambda (_%self116170%_ _%stx116171%_)
                          (gx#core-apply-user-expander__0
                           _%self116170%_
                           _%stx116171%_))
                        _g118313_))
                ((##fx= _g118312_ 3)
                 (apply (lambda (_%self116175%_ _%stx116176%_ _%method116177%_)
                          (gx#core-apply-user-expander__%
                           _%self116175%_
                           _%stx116176%_
                           _%method116177%_))
                        _g118313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g118313_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K116117%_
               _%stx116118%_
               _%ctx116119%_
               _%phi116120%_
               _%method116121%_)
        (let ((_%mark116123%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx116119%_
                _%phi116120%_
                _%stx116118%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K116117%_
               (gx#stx-apply-mark _%stx116118%_ _%mark116123%_)
               _%method116121%_)
              _%mark116123%_))
           gx#current-expander-marks
           (cons _%mark116123%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115965%_ _%phi115966%_ _%ctx115967%_)
        (let _%lp115969%_ ((_%bind115971%_
                            (gx#core-resolve-identifier__%
                             _%stx115965%_
                             _%phi115966%_
                             _%ctx115967%_)))
          (if (##structure-direct-instance-of?
               _%bind115971%_
               'gx#import-binding::t)
              (let ()
                (_%lp115969%_
                 (##unchecked-structure-ref _%bind115971%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115971%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115969%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115971%_ '4 '#f '#f)
                      _%phi115966%_
                      _%ctx115967%_)))
                  (let () _%bind115971%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115979%_)
        (let* ((_%phi115981%_ (gx#current-expander-phi))
               (_%ctx115983%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115979%_
           _%phi115981%_
           _%ctx115983%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115985%_ _%phi115986%_)
        (let ((_%ctx115988%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115985%_
           _%phi115986%_
           _%ctx115988%_))))
    (define gx#resolve-identifier
      (lambda _g118315_
        (let ((_g118314_ (##length _g118315_)))
          (cond ((##fx= _g118314_ 1)
                 (apply (lambda (_%stx115979%_)
                          (gx#resolve-identifier__0 _%stx115979%_))
                        _g118315_))
                ((##fx= _g118314_ 2)
                 (apply (lambda (_%stx115985%_ _%phi115986%_)
                          (gx#resolve-identifier__1
                           _%stx115985%_
                           _%phi115986%_))
                        _g118315_))
                ((##fx= _g118314_ 3)
                 (apply (lambda (_%stx115990%_ _%phi115991%_ _%ctx115992%_)
                          (gx#resolve-identifier__%
                           _%stx115990%_
                           _%phi115991%_
                           _%ctx115992%_))
                        _g118315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g118315_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115920%_
               _%val115921%_
               _%rebind?115922%_
               _%phi115923%_
               _%ctx115924%_)
        (let ((_%rebind?115929%_
               (if (not _%rebind?115922%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115922%_)
                       (let () _%rebind?115922%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115920%_)
           _%val115921%_
           _%rebind?115929%_
           _%phi115923%_
           _%ctx115924%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115934%_ _%val115935%_)
        (let* ((_%rebind?115937%_ '#f)
               (_%phi115939%_ (gx#current-expander-phi))
               (_%ctx115941%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115934%_
           _%val115935%_
           _%rebind?115937%_
           _%phi115939%_
           _%ctx115941%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115943%_ _%val115944%_ _%rebind?115945%_)
        (let* ((_%phi115947%_ (gx#current-expander-phi))
               (_%ctx115949%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115943%_
           _%val115944%_
           _%rebind?115945%_
           _%phi115947%_
           _%ctx115949%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115951%_ _%val115952%_ _%rebind?115953%_ _%phi115954%_)
        (let ((_%ctx115956%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115951%_
           _%val115952%_
           _%rebind?115953%_
           _%phi115954%_
           _%ctx115956%_))))
    (define gx#bind-identifier!
      (lambda _g118317_
        (let ((_g118316_ (##length _g118317_)))
          (cond ((##fx= _g118316_ 2)
                 (apply (lambda (_%stx115934%_ _%val115935%_)
                          (gx#bind-identifier!__0 _%stx115934%_ _%val115935%_))
                        _g118317_))
                ((##fx= _g118316_ 3)
                 (apply (lambda (_%stx115943%_ _%val115944%_ _%rebind?115945%_)
                          (gx#bind-identifier!__1
                           _%stx115943%_
                           _%val115944%_
                           _%rebind?115945%_))
                        _g118317_))
                ((##fx= _g118316_ 4)
                 (apply (lambda (_%stx115951%_
                                 _%val115952%_
                                 _%rebind?115953%_
                                 _%phi115954%_)
                          (gx#bind-identifier!__2
                           _%stx115951%_
                           _%val115952%_
                           _%rebind?115953%_
                           _%phi115954%_))
                        _g118317_))
                ((##fx= _g118316_ 5)
                 (apply (lambda (_%stx115958%_
                                 _%val115959%_
                                 _%rebind?115960%_
                                 _%phi115961%_
                                 _%ctx115962%_)
                          (gx#bind-identifier!__%
                           _%stx115958%_
                           _%val115959%_
                           _%rebind?115960%_
                           _%phi115961%_
                           _%ctx115962%_))
                        _g118317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g118317_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115886%_ _%phi115887%_ _%ctx115888%_)
        (let _%lp115890%_ ((_%e115892%_ _%stx115886%_)
                           (_%marks115893%_ (gx#current-expander-marks)))
          (if (symbol? _%e115892%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115892%_
                 _%phi115887%_
                 _%phi115887%_
                 _%ctx115888%_
                 (reverse _%marks115893%_)))
              (if (gx#identifier-quote? _%e115892%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115892%_ '1 '#f '#f)
                     _%phi115887%_
                     '0
                     (##unchecked-structure-ref _%e115892%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115892%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115892%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115892%_ '1 '#f '#f)
                         _%phi115887%_
                         _%phi115887%_
                         _%ctx115888%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115892%_ '3 '#f '#f)
                          _%marks115893%_)))
                      (if (##structure-direct-instance-of?
                           _%e115892%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115890%_
                             (##unchecked-structure-ref _%e115892%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115892%_
                               '3
                               '#f
                               '#f)
                              _%marks115893%_)))
                          (if (##structure-instance-of?
                               _%e115892%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115890%_
                                 (##unchecked-structure-ref
                                  _%e115892%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115893%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115886%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115904%_)
        (let* ((_%phi115906%_ (gx#current-expander-phi))
               (_%ctx115908%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115904%_
           _%phi115906%_
           _%ctx115908%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115910%_ _%phi115911%_)
        (let ((_%ctx115913%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115910%_
           _%phi115911%_
           _%ctx115913%_))))
    (define gx#core-resolve-identifier
      (lambda _g118319_
        (let ((_g118318_ (##length _g118319_)))
          (cond ((##fx= _g118318_ 1)
                 (apply (lambda (_%stx115904%_)
                          (gx#core-resolve-identifier__0 _%stx115904%_))
                        _g118319_))
                ((##fx= _g118318_ 2)
                 (apply (lambda (_%stx115910%_ _%phi115911%_)
                          (gx#core-resolve-identifier__1
                           _%stx115910%_
                           _%phi115911%_))
                        _g118319_))
                ((##fx= _g118318_ 3)
                 (apply (lambda (_%stx115915%_ _%phi115916%_ _%ctx115917%_)
                          (gx#core-resolve-identifier__%
                           _%stx115915%_
                           _%phi115916%_
                           _%ctx115917%_))
                        _g118319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g118319_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115796%_
               _%phi115797%_
               _%src-phi115798%_
               _%ctx115799%_
               _%marks115800%_)
        (letrec ((_%resolve115802%_
                  (lambda (_%ctx115870%_ _%src-phi115871%_ _%key115872%_)
                    (let _%lp115874%_ ((_%ctx115876%_
                                        (gx#core-context-shift
                                         _%ctx115870%_
                                         _%phi115797%_))
                                       (_%dphi115877%_
                                        (fx- _%phi115797%_ _%src-phi115871%_)))
                      (let ((_%$e115879%_
                             (gx#core-context-resolve
                              _%ctx115876%_
                              _%key115872%_)))
                        (if _%$e115879%_
                            (values _%$e115879%_)
                            (if (fxzero? _%dphi115877%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115877%_)
                                    (let ()
                                      (_%lp115874%_
                                       (gx#core-context-shift
                                        _%ctx115876%_
                                        '-1)
                                       (##fx- _%dphi115877%_ '1)))
                                    (let ()
                                      (_%lp115874%_
                                       (gx#core-context-shift _%ctx115876%_ '1)
                                       (##fx+ _%dphi115877%_ '1)))))))))))
          (let _%lp115804%_ ((_%ctx115806%_ _%ctx115799%_)
                             (_%src-phi115807%_ _%src-phi115798%_)
                             (_%rest115808%_ _%marks115800%_))
            (let* ((_%rest115809115817%_ _%rest115808%_)
                   (_%else115811115825%_
                    (lambda ()
                      (_%resolve115802%_
                       _%ctx115806%_
                       _%src-phi115807%_
                       _%id115796%_)))
                   (_%K115813115858%_
                    (lambda (_%rest115828%_ _%hd115829%_)
                      (let* ((_%hd115830115836%_ _%hd115829%_)
                             (_%E115832115840%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115830115836%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115833115850%_
                              (lambda (_%subst115843%_)
                                (let ((_%$e115847%_
                                       (let ((_%key115845%_
                                              (if _%subst115843%_
                                                  (hash-get
                                                   _%subst115843%_
                                                   _%id115796%_)
                                                  '#f)))
                                         (if _%key115845%_
                                             (_%resolve115802%_
                                              _%ctx115806%_
                                              _%src-phi115807%_
                                              _%key115845%_)
                                             '#f))))
                                  (if _%$e115847%_
                                      _%$e115847%_
                                      (_%lp115804%_
                                       (##unchecked-structure-ref
                                        _%hd115829%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115829%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115828%_))))))
                        (if (##structure-instance-of?
                             _%hd115830115836%_
                             'gx#expander-mark::t)
                            (let* ((_%e115834115853%_
                                    (##unchecked-structure-ref
                                     _%hd115830115836%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115856%_ _%e115834115853%_))
                              (_%K115833115850%_ _%subst115856%_))
                            (_%E115832115840%_))))))
              (if (##pair? _%rest115809115817%_)
                  (let ((_%hd115814115861%_ (##car _%rest115809115817%_))
                        (_%tl115815115863%_ (##cdr _%rest115809115817%_)))
                    (let* ((_%hd115866%_ _%hd115814115861%_)
                           (_%rest115868%_ _%tl115815115863%_))
                      (_%K115813115858%_ _%rest115868%_ _%hd115866%_)))
                  (_%else115811115825%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115666%_
               _%val115667%_
               _%rebind?115668%_
               _%phi115669%_
               _%ctx115670%_)
        (letrec ((_%update-binding115672%_
                  (lambda (_%xval115745%_)
                    (if (or (_%rebind?115668%_
                             _%ctx115670%_
                             _%xval115745%_
                             _%val115667%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115745%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115745%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115667%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115667%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115745%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115667%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115667%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115745%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val115667%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val115667%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115667%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115745%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115667%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115745%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115745%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val115667%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115745%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key115666%_
                                   (cons (##unchecked-structure-ref
                                          _%val115667%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val115667%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115745%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115745%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115745%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115745%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key115666%_
                                   _%val115667%_
                                   _%xval115745%_)))))))
                 (_%gensubst115673%_
                  (lambda (_%subst115740%_ _%id115741%_)
                    (let ((_%eid115743%_
                           (gensym (if (uninterned-symbol? _%id115741%_)
                                       '%
                                       _%id115741%_))))
                      (hash-put! _%subst115740%_ _%id115741%_ _%eid115743%_)
                      _%eid115743%_)))
                 (_%subst!115674%_
                  (lambda (_%key115676%_)
                    (let* ((_%key115677115685%_ _%key115676%_)
                           (_%else115679115693%_ (lambda () _%key115676%_))
                           (_%K115681115728%_
                            (lambda (_%mark115696%_ _%id115697%_)
                              (let* ((_%mark115698115704%_ _%mark115696%_)
                                     (_%E115700115708%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115698115704%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115701115720%_
                                      (lambda (_%subst115711%_)
                                        (if (not _%subst115711%_)
                                            (let ((_%subst115714%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark115696%_
                                               _%subst115714%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst115673%_
                                               _%subst115714%_
                                               _%id115697%_))
                                            (let ((_%$e115716%_
                                                   (hash-get
                                                    _%subst115711%_
                                                    _%id115697%_)))
                                              (if _%$e115716%_
                                                  (values _%$e115716%_)
                                                  (let ()
                                                    (_%gensubst115673%_
                                                     _%subst115711%_
                                                     _%id115697%_))))))))
                                (if (##structure-instance-of?
                                     _%mark115698115704%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115702115723%_
                                            (##unchecked-structure-ref
                                             _%mark115698115704%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115726%_ _%e115702115723%_))
                                      (_%K115701115720%_ _%subst115726%_))
                                    (_%E115700115708%_))))))
                      (if (##pair? _%key115677115685%_)
                          (let ((_%hd115682115731%_
                                 (##car _%key115677115685%_))
                                (_%tl115683115733%_
                                 (##cdr _%key115677115685%_)))
                            (let* ((_%id115736%_ _%hd115682115731%_)
                                   (_%mark115738%_ _%tl115683115733%_))
                              (_%K115681115728%_ _%mark115738%_ _%id115736%_)))
                          (_%else115679115693%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115670%_ _%phi115669%_)
           (_%subst!115674%_ _%key115666%_)
           _%val115667%_
           _%update-binding115672%_))))
    (define gx#core-bind!__0
      (lambda (_%key115766%_ _%val115767%_)
        (let* ((_%rebind?115769%_ false)
               (_%phi115771%_ (gx#current-expander-phi))
               (_%ctx115773%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115766%_
           _%val115767%_
           _%rebind?115769%_
           _%phi115771%_
           _%ctx115773%_))))
    (define gx#core-bind!__1
      (lambda (_%key115775%_ _%val115776%_ _%rebind?115777%_)
        (let* ((_%phi115779%_ (gx#current-expander-phi))
               (_%ctx115781%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115775%_
           _%val115776%_
           _%rebind?115777%_
           _%phi115779%_
           _%ctx115781%_))))
    (define gx#core-bind!__2
      (lambda (_%key115783%_ _%val115784%_ _%rebind?115785%_ _%phi115786%_)
        (let ((_%ctx115788%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115783%_
           _%val115784%_
           _%rebind?115785%_
           _%phi115786%_
           _%ctx115788%_))))
    (define gx#core-bind!
      (lambda _g118321_
        (let ((_g118320_ (##length _g118321_)))
          (cond ((##fx= _g118320_ 2)
                 (apply (lambda (_%key115766%_ _%val115767%_)
                          (gx#core-bind!__0 _%key115766%_ _%val115767%_))
                        _g118321_))
                ((##fx= _g118320_ 3)
                 (apply (lambda (_%key115775%_ _%val115776%_ _%rebind?115777%_)
                          (gx#core-bind!__1
                           _%key115775%_
                           _%val115776%_
                           _%rebind?115777%_))
                        _g118321_))
                ((##fx= _g118320_ 4)
                 (apply (lambda (_%key115783%_
                                 _%val115784%_
                                 _%rebind?115785%_
                                 _%phi115786%_)
                          (gx#core-bind!__2
                           _%key115783%_
                           _%val115784%_
                           _%rebind?115785%_
                           _%phi115786%_))
                        _g118321_))
                ((##fx= _g118320_ 5)
                 (apply (lambda (_%key115790%_
                                 _%val115791%_
                                 _%rebind?115792%_
                                 _%phi115793%_
                                 _%ctx115794%_)
                          (gx#core-bind!__%
                           _%key115790%_
                           _%val115791%_
                           _%rebind?115792%_
                           _%phi115793%_
                           _%ctx115794%_))
                        _g118321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g118321_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115597%_)
        (if (symbol? _%stx115597%_)
            (let ()
              (let* ((_%g115599115607%_ (gx#current-expander-marks))
                     (_%else115601115615%_ (lambda () _%stx115597%_))
                     (_%K115603115620%_
                      (lambda (_%hd115618%_)
                        (cons _%stx115597%_ _%hd115618%_))))
                (if (##pair? _%g115599115607%_)
                    (let* ((_%hd115604115623%_ (##car _%g115599115607%_))
                           (_%hd115626%_ _%hd115604115623%_))
                      (_%K115603115620%_ _%hd115626%_))
                    (_%else115601115615%_))))
            (if (gx#identifier? _%stx115597%_)
                (let ()
                  (let* ((_%id115629%_ (gx#syntax-local-unwrap _%stx115597%_))
                         (_%eid115631%_ (gx#stx-e _%id115629%_))
                         (_%marks115633%_
                          (gx#stx-identifier-marks* _%id115629%_)))
                    (let* ((_%marks115635115643%_ _%marks115633%_)
                           (_%else115637115651%_ (lambda () _%eid115631%_))
                           (_%K115639115656%_
                            (lambda (_%hd115654%_)
                              (cons _%eid115631%_ _%hd115654%_))))
                      (if (##pair? _%marks115635115643%_)
                          (let* ((_%hd115640115659%_
                                  (##car _%marks115635115643%_))
                                 (_%hd115662%_ _%hd115640115659%_))
                            (_%K115639115656%_ _%hd115662%_))
                          (_%else115637115651%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx115597%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx115536%_ _%phi115537%_)
        (letrec ((_%make-phi115539%_
                  (lambda (_%super115595%_)
                    (let ((__obj118293
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj118293
                       (##gensym 'phi)
                       _%super115595%_)
                      __obj118293)))
                 (_%make-phi/up115540%_
                  (lambda (_%ctx115590%_ _%super115591%_)
                    (let ((_%ctx+1115593%_
                           (_%make-phi115539%_ _%super115591%_)))
                      (##unchecked-structure-set!
                       _%ctx115590%_
                       _%ctx+1115593%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115593%_
                       _%ctx115590%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115593%_)))
                 (_%make-phi/down115541%_
                  (lambda (_%ctx115585%_ _%super115586%_)
                    (let ((_%ctx-1115588%_
                           (_%make-phi115539%_ _%super115586%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115588%_
                       _%ctx115585%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115585%_
                       _%ctx-1115588%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115588%_)))
                 (_%shift115542%_
                  (lambda (_%ctx115568%_
                           _%delta115569%_
                           _%make-delta-context115570%_
                           _%phi115571%_
                           _%K115572%_)
                    (let ((_%$e115574%_
                           (##unchecked-structure-ref
                            _%ctx115568%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e115574%_
                          ((lambda (_%super115577%_)
                             (let* ((_%super115579%_
                                     (_%K115572%_
                                      _%super115577%_
                                      _%delta115569%_))
                                    (_%ctx+d115581%_
                                     (_%make-delta-context115570%_
                                      _%ctx115568%_
                                      _%super115579%_)))
                               (_%K115572%_
                                _%ctx+d115581%_
                                (fx- _%phi115571%_ _%delta115569%_))))
                           _%$e115574%_)
                          (let () (error '"Bad context" _%ctx115568%_)))))))
          (let _%K115544%_ ((_%ctx115546%_ _%ctx115536%_)
                            (_%phi115547%_ _%phi115537%_))
            (if (fxzero? _%phi115547%_)
                (let () _%ctx115546%_)
                (if (##structure-instance-of? _%ctx115546%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi115547%_)
                          (let ((_%$e115551%_
                                 (##unchecked-structure-ref
                                  _%ctx115546%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e115551%_
                                ((lambda (_%g115553115555%_)
                                   (_%K115544%_
                                    _%g115553115555%_
                                    (##fx- _%phi115547%_ '1)))
                                 _%$e115551%_)
                                (let ()
                                  (_%shift115542%_
                                   _%ctx115546%_
                                   '1
                                   _%make-phi/up115540%_
                                   _%phi115547%_
                                   _%K115544%_))))
                          (let ((_%$e115559%_
                                 (##unchecked-structure-ref
                                  _%ctx115546%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e115559%_
                                ((lambda (_%g115561115563%_)
                                   (_%K115544%_
                                    _%g115561115563%_
                                    (##fx+ _%phi115547%_ '1)))
                                 _%$e115559%_)
                                (let ()
                                  (_%shift115542%_
                                   _%ctx115546%_
                                   '-1
                                   _%make-phi/down115541%_
                                   _%phi115547%_
                                   _%K115544%_))))))
                    (let () _%ctx115546%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx115533%_ _%key115534%_)
        (hash-get
         (##unchecked-structure-ref _%ctx115533%_ '2 '#f '#f)
         _%key115534%_)))
    (define gx#core-context-put!
      (lambda (_%ctx115529%_ _%key115530%_ _%val115531%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx115529%_ '2 '#f '#f)
         _%key115530%_
         _%val115531%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx115515%_ _%key115516%_)
        (let _%lp115518%_ ((_%ctx115520%_ _%ctx115515%_))
          (let ((_%$e115522%_
                 (gx#core-context-get _%ctx115520%_ _%key115516%_)))
            (if _%$e115522%_
                (values _%$e115522%_)
                (let ((_%$e115525%_
                       (if (##structure-instance-of?
                            _%ctx115520%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx115520%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e115525%_
                      (_%lp115518%_ _%$e115525%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx115504%_ _%key115505%_ _%val115506%_ _%rebind115507%_)
        (let ((_%$e115509%_ (gx#core-context-get _%ctx115504%_ _%key115505%_)))
          (if _%$e115509%_
              ((lambda (_%xval115512%_)
                 (gx#core-context-put!
                  _%ctx115504%_
                  _%key115505%_
                  (_%rebind115507%_ _%xval115512%_)))
               _%$e115509%_)
              (let ()
                (gx#core-context-put!
                 _%ctx115504%_
                 _%key115505%_
                 _%val115506%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx115479%_ _%stop?115480%_)
        (let _%lp115482%_ ((_%ctx115484%_ _%ctx115479%_))
          (if (_%stop?115480%_ _%ctx115484%_)
              (let () _%ctx115484%_)
              (if (##structure-instance-of? _%ctx115484%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp115482%_
                     (##unchecked-structure-ref _%ctx115484%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx115493%_ (gx#current-expander-context))
               (_%stop?115495%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115493%_ _%stop?115495%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx115497%_)
        (let ((_%stop?115499%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115497%_ _%stop?115499%_))))
    (define gx#core-context-top
      (lambda _g118323_
        (let ((_g118322_ (##length _g118323_)))
          (cond ((##fx= _g118322_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g118323_))
                ((##fx= _g118322_ 1)
                 (apply (lambda (_%ctx115497%_)
                          (gx#core-context-top__1 _%ctx115497%_))
                        _g118323_))
                ((##fx= _g118322_ 2)
                 (apply (lambda (_%ctx115501%_ _%stop?115502%_)
                          (gx#core-context-top__%
                           _%ctx115501%_
                           _%stop?115502%_))
                        _g118323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g118323_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx115464%_)
        (let _%lp115466%_ ((_%ctx115468%_ _%ctx115464%_))
          (if (##structure-instance-of? _%ctx115468%_ 'gx#phi-context::t)
              (_%lp115466%_
               (##unchecked-structure-ref _%ctx115468%_ '3 '#f '#f))
              _%ctx115468%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx115474%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx115474%_))))
    (define gx#core-context-root
      (lambda _g118325_
        (let ((_g118324_ (##length _g118325_)))
          (cond ((##fx= _g118324_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g118325_))
                ((##fx= _g118324_ 1)
                 (apply (lambda (_%ctx115476%_)
                          (gx#core-context-root__% _%ctx115476%_))
                        _g118325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g118325_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx115446%_ . _%ignore115447%_)
        (let ((_%$e115449%_ (gx#current-expander-allow-rebind?)))
          (if _%$e115449%_
              _%$e115449%_
              (if (##structure-instance-of? _%ctx115446%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx115446%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx115446%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx115456%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx115456%_))))
    (define gx#core-context-rebind?
      (lambda _g118327_
        (let ((_g118326_ (##length _g118327_)))
          (cond ((##fx= _g118326_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g118327_))
                ((##fx= _g118326_ 1)
                 (apply (lambda (_%ctx115458%_)
                          (gx#core-context-rebind?__% _%ctx115458%_))
                        _g118327_))
                ((##fx>= _g118326_ 1)
                 (apply gx#core-context-rebind?__% _g118327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g118327_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx115429%_)
        (let ((_%$e115431%_ (gx#core-context-top__1 _%ctx115429%_)))
          (if _%$e115431%_
              ((lambda (_%ctx115434%_)
                 (if (##structure-instance-of?
                      _%ctx115434%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx115434%_ '6 '#f '#f)
                     '#f))
               _%$e115431%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx115441%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx115441%_))))
    (define gx#core-context-namespace
      (lambda _g118329_
        (let ((_g118328_ (##length _g118329_)))
          (cond ((##fx= _g118328_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g118329_))
                ((##fx= _g118328_ 1)
                 (apply (lambda (_%ctx115443%_)
                          (gx#core-context-namespace__% _%ctx115443%_))
                        _g118329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g118329_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind115415%_ _%is?115416%_)
        (if (##structure-direct-instance-of?
             _%bind115415%_
             'gx#syntax-binding::t)
            (_%is?115416%_
             (##unchecked-structure-ref _%bind115415%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind115421%_)
        (let ((_%is?115423%_ gx#expander?))
          (gx#expander-binding?__% _%bind115421%_ _%is?115423%_))))
    (define gx#expander-binding?
      (lambda _g118331_
        (let ((_g118330_ (##length _g118331_)))
          (cond ((##fx= _g118330_ 1)
                 (apply (lambda (_%bind115421%_)
                          (gx#expander-binding?__0 _%bind115421%_))
                        _g118331_))
                ((##fx= _g118330_ 2)
                 (apply (lambda (_%bind115425%_ _%is?115426%_)
                          (gx#expander-binding?__%
                           _%bind115425%_
                           _%is?115426%_))
                        _g118331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g118331_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind115412%_)
        (gx#expander-binding?__% _%bind115412%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind115410%_)
        (gx#expander-binding?__% _%bind115410%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind115404%_)
        (letrec ((_%direct-special-form?115406%_
                  (lambda (_%obj115408%_)
                    (##structure-direct-instance-of?
                     _%obj115408%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind115404%_
           _%direct-special-form?115406%_))))
    (define gx#special-form-binding?
      (lambda (_%bind115402%_)
        (gx#expander-binding?__% _%bind115402%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind115393%_)
        (letrec ((_%feature?115395%_
                  (lambda (_%e115397%_)
                    (let ((_%$e115399%_
                           (##structure-instance-of?
                            _%e115397%_
                            'gx#feature-expander::t)))
                      (if _%$e115399%_
                          _%$e115399%_
                          (##structure-instance-of?
                           _%e115397%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind115393%_ _%feature?115395%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind115391%_)
        (gx#expander-binding?__% _%bind115391%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id115378%_ _%bound?115379%_)
        (if (gx#identifier? _%id115378%_)
            (_%bound?115379%_ (gx#resolve-identifier__0 _%id115378%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id115384%_)
        (let ((_%bound?115386%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id115384%_ _%bound?115386%_))))
    (define gx#core-bound-identifier?
      (lambda _g118333_
        (let ((_g118332_ (##length _g118333_)))
          (cond ((##fx= _g118332_ 1)
                 (apply (lambda (_%id115384%_)
                          (gx#core-bound-identifier?__0 _%id115384%_))
                        _g118333_))
                ((##fx= _g118332_ 2)
                 (apply (lambda (_%id115388%_ _%bound?115389%_)
                          (gx#core-bound-identifier?__%
                           _%id115388%_
                           _%bound?115389%_))
                        _g118333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g118333_))))))
    (define gx#core-identifier=?
      (lambda (_%x115368%_ _%y115369%_)
        (letrec ((_%y=?115371%_
                  (lambda (_%xid115375%_)
                    ((if (list? _%y115369%_) memq eq?)
                     _%xid115375%_
                     _%y115369%_))))
          (let ((_%bind115373%_ (gx#resolve-identifier__0 _%x115368%_)))
            (if (##structure-instance-of? _%bind115373%_ 'gx#binding::t)
                (_%y=?115371%_
                 (##unchecked-structure-ref _%bind115373%_ '1 '#f '#f))
                (_%y=?115371%_ (gx#stx-e _%x115368%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e115366%_)
        (if (interned-symbol? _%e115366%_)
            (string-index__0 (symbol->string _%e115366%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx115319%_ _%src115320%_ _%ctx115321%_ _%marks115322%_)
        (if (##structure? _%stx115319%_)
            (let ((_%$e115324%_ (gx#sealed-syntax-unwrap _%stx115319%_)))
              (if _%$e115324%_
                  (values _%$e115324%_)
                  (if (gx#identifier? _%stx115319%_)
                      (let ((_%id115328%_
                             (gx#stx-unwrap__% _%stx115319%_ _%marks115322%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id115328%_ '1 '#f '#f)
                         (let ((_%$e115330%_
                                (##unchecked-structure-ref
                                 _%id115328%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e115330%_ _%$e115330%_ _%src115320%_))
                         _%ctx115321%_
                         (##unchecked-structure-ref _%id115328%_ '3 '#f '#f)))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx115319%_)
                         (let ((_%$e115334%_ (gx#stx-source _%stx115319%_)))
                           (if _%$e115334%_ _%$e115334%_ _%src115320%_))
                         _%ctx115321%_
                         (reverse _%marks115322%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx115319%_
             _%src115320%_
             _%ctx115321%_
             (reverse _%marks115322%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx115340%_)
        (let* ((_%src115342%_ '#f)
               (_%ctx115344%_ (gx#current-expander-context))
               (_%marks115346%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115340%_
           _%src115342%_
           _%ctx115344%_
           _%marks115346%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx115348%_ _%src115349%_)
        (let* ((_%ctx115351%_ (gx#current-expander-context))
               (_%marks115353%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115348%_
           _%src115349%_
           _%ctx115351%_
           _%marks115353%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx115355%_ _%src115356%_ _%ctx115357%_)
        (let ((_%marks115359%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115355%_
           _%src115356%_
           _%ctx115357%_
           _%marks115359%_))))
    (define gx#core-quote-syntax
      (lambda _g118335_
        (let ((_g118334_ (##length _g118335_)))
          (cond ((##fx= _g118334_ 1)
                 (apply (lambda (_%stx115340%_)
                          (gx#core-quote-syntax__0 _%stx115340%_))
                        _g118335_))
                ((##fx= _g118334_ 2)
                 (apply (lambda (_%stx115348%_ _%src115349%_)
                          (gx#core-quote-syntax__1
                           _%stx115348%_
                           _%src115349%_))
                        _g118335_))
                ((##fx= _g118334_ 3)
                 (apply (lambda (_%stx115355%_ _%src115356%_ _%ctx115357%_)
                          (gx#core-quote-syntax__2
                           _%stx115355%_
                           _%src115356%_
                           _%ctx115357%_))
                        _g118335_))
                ((##fx= _g118334_ 4)
                 (apply (lambda (_%stx115361%_
                                 _%src115362%_
                                 _%ctx115363%_
                                 _%marks115364%_)
                          (gx#core-quote-syntax__%
                           _%stx115361%_
                           _%src115362%_
                           _%ctx115363%_
                           _%marks115364%_))
                        _g118335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g118335_))))))
    (define gx#core-cons
      (lambda (_%hd115315%_ _%tl115316%_)
        (cons (gx#core-quote-syntax__0 _%hd115315%_) _%tl115316%_)))
    (define gx#core-list
      (lambda (_%hd115312%_ . _%rest115313%_)
        (cons (gx#core-quote-syntax__0 _%hd115312%_) _%rest115313%_)))
    (define gx#core-cons*
      (lambda (_%hd115309%_ . _%rest115310%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd115309%_) _%rest115310%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path115278%_ _%rel115279%_)
        (let ((_%path115296%_ (gx#stx-e _%stx-path115278%_))
              (_%reldir115297%_
               (let _%lp115281%_ ((_%relsrc115283%_
                                   (let ((_%$e115293%_
                                          (gx#stx-source _%stx-path115278%_)))
                                     (if _%$e115293%_
                                         _%$e115293%_
                                         _%rel115279%_))))
                 (if (##structure-instance-of? _%relsrc115283%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp115281%_
                        (let ((_%$e115286%_ (gx#stx-source _%relsrc115283%_)))
                          (if _%$e115286%_
                              _%$e115286%_
                              (gx#stx-e _%relsrc115283%_)))))
                     (if (source-location-path? _%relsrc115283%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc115283%_)))
                         (if (string? _%relsrc115283%_)
                             (let () (path-directory _%relsrc115283%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path115296%_ (path-normalize _%reldir115297%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path115302%_)
        (let ((_%rel115304%_ '#f))
          (gx#core-resolve-path__% _%stx-path115302%_ _%rel115304%_))))
    (define gx#core-resolve-path
      (lambda _g118337_
        (let ((_g118336_ (##length _g118337_)))
          (cond ((##fx= _g118336_ 1)
                 (apply (lambda (_%stx-path115302%_)
                          (gx#core-resolve-path__0 _%stx-path115302%_))
                        _g118337_))
                ((##fx= _g118336_ 2)
                 (apply (lambda (_%stx-path115306%_ _%rel115307%_)
                          (gx#core-resolve-path__%
                           _%stx-path115306%_
                           _%rel115307%_))
                        _g118337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g118337_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr115234%_ _%ctx115235%_)
        (let* ((_%repr115236115243%_ _%repr115234%_)
               (_%E115238115247%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr115236115243%_
                         '([phi . subs]))
                  '#!void))
               (_%K115239115255%_
                (lambda (_%subs115250%_ _%phi115251%_)
                  (let ((_%subst115253%_
                         (if (not (null? _%subs115250%_))
                             (list->hash-table-eq _%subs115250%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst115253%_
                     _%ctx115235%_
                     _%phi115251%_
                     '#f)))))
          (if (##pair? _%repr115236115243%_)
              (let ((_%hd115240115258%_ (##car _%repr115236115243%_))
                    (_%tl115241115260%_ (##cdr _%repr115236115243%_)))
                (let* ((_%phi115263%_ _%hd115240115258%_)
                       (_%subs115265%_ _%tl115241115260%_))
                  (_%K115239115255%_ _%subs115265%_ _%phi115263%_)))
              (_%E115238115247%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr115270%_)
        (let ((_%ctx115272%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr115270%_ _%ctx115272%_))))
    (define gx#core-deserialize-mark
      (lambda _g118339_
        (let ((_g118338_ (##length _g118339_)))
          (cond ((##fx= _g118338_ 1)
                 (apply (lambda (_%repr115270%_)
                          (gx#core-deserialize-mark__0 _%repr115270%_))
                        _g118339_))
                ((##fx= _g118338_ 2)
                 (apply (lambda (_%repr115274%_ _%ctx115275%_)
                          (gx#core-deserialize-mark__%
                           _%repr115274%_
                           _%ctx115275%_))
                        _g118339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g118339_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx115231%_)
        (gx#stx-rewrap _%stx115231%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx115229%_)
        (gx#stx-unwrap__% _%stx115229%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx115199%_)
        (let* ((_%g115200115208%_ (gx#current-expander-marks))
               (_%else115202115216%_ (lambda () _%stx115199%_))
               (_%K115204115221%_
                (lambda (_%hd115219%_)
                  (gx#stx-apply-mark _%stx115199%_ _%hd115219%_))))
          (if (##pair? _%g115200115208%_)
              (let* ((_%hd115205115224%_ (##car _%g115200115208%_))
                     (_%hd115227%_ _%hd115205115224%_))
                (_%K115204115221%_ _%hd115227%_))
              (_%else115202115216%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx115184%_ _%E115185%_)
        (let ((_%bind115187%_ (gx#resolve-identifier__0 _%stx115184%_)))
          (if (##structure-direct-instance-of?
               _%bind115187%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind115187%_ '4 '#f '#f)
              (_%E115185%_ _%stx115184%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx115192%_)
        (let ((_%E115194%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx115192%_ _%E115194%_))))
    (define gx#syntax-local-e
      (lambda _g118341_
        (let ((_g118340_ (##length _g118341_)))
          (cond ((##fx= _g118340_ 1)
                 (apply (lambda (_%stx115192%_)
                          (gx#syntax-local-e__0 _%stx115192%_))
                        _g118341_))
                ((##fx= _g118340_ 2)
                 (apply (lambda (_%stx115196%_ _%E115197%_)
                          (gx#syntax-local-e__% _%stx115196%_ _%E115197%_))
                        _g118341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g118341_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx115168%_ _%E115169%_)
        (let ((_%e115171%_ (gx#syntax-local-e__% _%stx115168%_ _%E115169%_)))
          (if (##structure-instance-of? _%e115171%_ 'gx#expander::t)
              (##structure-ref _%e115171%_ '1 gx#expander::t '#f)
              _%e115171%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx115176%_)
        (let ((_%E115178%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx115176%_ _%E115178%_))))
    (define gx#syntax-local-value
      (lambda _g118343_
        (let ((_g118342_ (##length _g118343_)))
          (cond ((##fx= _g118342_ 1)
                 (apply (lambda (_%stx115176%_)
                          (gx#syntax-local-value__0 _%stx115176%_))
                        _g118343_))
                ((##fx= _g118342_ 2)
                 (apply (lambda (_%stx115180%_ _%E115181%_)
                          (gx#syntax-local-value__% _%stx115180%_ _%E115181%_))
                        _g118343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g118343_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx115165%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx115165%_)))))
