(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712773525)
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
      (lambda _%$args118324%_
        (apply make-instance gx#expander-context::t _%$args118324%_)))
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
      (lambda _%$args118321%_
        (apply make-instance gx#root-context::t _%$args118321%_)))
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
      (lambda _%$args118318%_
        (apply make-instance gx#phi-context::t _%$args118318%_)))
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
      (lambda _%$args118315%_
        (apply make-instance gx#top-context::t _%$args118315%_)))
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
      (lambda _%$args118312%_
        (apply make-instance gx#module-context::t _%$args118312%_)))
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
      (lambda _%$args118309%_
        (apply make-instance gx#prelude-context::t _%$args118309%_)))
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
      (lambda _%$args118306%_
        (apply make-instance gx#local-context::t _%$args118306%_)))
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
      (lambda (_%self115212118277%_ _%id118279%_ _%super118280%_)
        (let* ((_%self118282%_ _%self115212118277%_)
               (_%self118284%_ _%self118282%_))
          (if (##fx< '3 (##structure-length _%self118284%_))
              (begin
                (##unchecked-structure-set!
                 _%self118284%_
                 _%id118279%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118284%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118284%_
                 _%super118280%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118284%_
                     '3
                     (##vector-length _%self118284%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self115212118297%_ _%id118298%_)
        (let ((_%super118300%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self115212118297%_
           _%id118298%_
           _%super118300%_))))
    (define gx#phi-context:::init!
      (lambda _g118367_
        (let ((_g118366_ (##length _g118367_)))
          (cond ((##fx= _g118366_ 2)
                 (apply gx#phi-context:::init!__0 _g118367_))
                ((##fx= _g118366_ 3)
                 (apply gx#phi-context:::init!__% _g118367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g118367_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self115213118128%_ _%super118130%_)
        (let* ((_%self118132%_ _%self115213118128%_)
               (_%self118134%_ _%self118132%_))
          (if (##fx< '3 (##structure-length _%self118134%_))
              (begin
                (##unchecked-structure-set!
                 _%self118134%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118134%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118134%_
                 _%super118130%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118134%_
                     '3
                     (##vector-length _%self118134%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self115213118147%_)
        (let ((_%super118149%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self115213118147%_ _%super118149%_))))
    (define gx#local-context:::init!
      (lambda _g118369_
        (let ((_g118368_ (##length _g118369_)))
          (cond ((##fx= _g118368_ 1)
                 (apply gx#local-context:::init!__0 _g118369_))
                ((##fx= _g118368_ 2)
                 (apply gx#local-context:::init!__% _g118369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g118369_))))))
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
      (lambda _%$args118002%_
        (apply make-instance gx#binding::t _%$args118002%_)))
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
      (lambda _%$args117999%_
        (apply make-instance gx#runtime-binding::t _%$args117999%_)))
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
      (lambda _%$args117996%_
        (apply make-instance gx#local-binding::t _%$args117996%_)))
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
      (lambda _%$args117993%_
        (apply make-instance gx#top-binding::t _%$args117993%_)))
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
      (lambda _%$args117990%_
        (apply make-instance gx#module-binding::t _%$args117990%_)))
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
      (lambda _%$args117987%_
        (apply make-instance gx#extern-binding::t _%$args117987%_)))
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
      (lambda _%$args117984%_
        (apply make-instance gx#syntax-binding::t _%$args117984%_)))
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
      (lambda _%$args117981%_
        (apply make-instance gx#import-binding::t _%$args117981%_)))
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
      (lambda _%$args117978%_
        (apply make-instance gx#alias-binding::t _%$args117978%_)))
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
      (lambda _%$args117975%_
        (apply make-instance gx#expander::t _%$args117975%_)))
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
      (lambda _%$args117972%_
        (apply make-instance gx#core-expander::t _%$args117972%_)))
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
      (lambda _%$args117969%_
        (apply make-instance gx#expression-form::t _%$args117969%_)))
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
      (lambda _%$args117966%_
        (apply make-instance gx#special-form::t _%$args117966%_)))
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
      (lambda _%$args117963%_
        (apply make-instance gx#definition-form::t _%$args117963%_)))
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
      (lambda _%$args117960%_
        (apply make-instance gx#top-special-form::t _%$args117960%_)))
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
      (lambda _%$args117957%_
        (apply make-instance gx#module-special-form::t _%$args117957%_)))
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
      (lambda _%$args117954%_
        (apply make-instance gx#feature-expander::t _%$args117954%_)))
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
      (lambda _%$args117951%_
        (apply make-instance gx#private-feature-expander::t _%$args117951%_)))
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
      (lambda _%$args117948%_
        (apply make-instance gx#reserved-expander::t _%$args117948%_)))
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
      (lambda _%$args117945%_
        (apply make-instance gx#macro-expander::t _%$args117945%_)))
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
      (lambda _%$args117942%_
        (apply make-instance gx#rename-macro-expander::t _%$args117942%_)))
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
      (lambda _%$args117939%_
        (apply make-instance gx#user-expander::t _%$args117939%_)))
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
      (lambda _%$args117936%_
        (apply make-instance gx#expander-mark::t _%$args117936%_)))
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
      (lambda (_%ctx117920%_
               _%message117921%_
               _%stx117922%_
               .
               _%details117923%_)
        (let ((_%ctx117934%_
               (let ((_%$e117925%_ _%ctx117920%_))
                 (if _%$e117925%_
                     _%$e117925%_
                     (let ((_%$e117928%_ (gx#core-context-top__0)))
                       (if _%$e117928%_
                           ((lambda (_%ctx117931%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117931%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117928%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message117921%_
                  (cons _%stx117922%_ _%details117923%_)
                  _%ctx117934%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117907%_ _%expression?117908%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117907%_ _%expression?117908%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117913%_)
        (let ((_%expression?117915%_ '#f))
          (gx#eval-syntax__% _%stx117913%_ _%expression?117915%_))))
    (define gx#eval-syntax
      (lambda _g118371_
        (let ((_g118370_ (##length _g118371_)))
          (cond ((##fx= _g118370_ 1) (apply gx#eval-syntax__0 _g118371_))
                ((##fx= _g118370_ 2) (apply gx#eval-syntax__% _g118371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g118371_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117904%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117904%_))))
    (define gx#core-expand__%
      (lambda (_%stx117891%_ _%expression?117892%_)
        (if _%expression?117892%_
            (gx#core-expand-expression _%stx117891%_)
            (gx#core-expand-top _%stx117891%_))))
    (define gx#core-expand__0
      (lambda (_%stx117897%_)
        (let ((_%expression?117899%_ '#f))
          (gx#core-expand__% _%stx117897%_ _%expression?117899%_))))
    (define gx#core-expand
      (lambda _g118373_
        (let ((_g118372_ (##length _g118373_)))
          (cond ((##fx= _g118372_ 1) (apply gx#core-expand__0 _g118373_))
                ((##fx= _g118372_ 2) (apply gx#core-expand__% _g118373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g118373_))))))
    (define gx#core-expand-top
      (lambda (_%stx117858%_)
        (let* ((_%stx117860%_ (gx#core-expand*__0 _%stx117858%_))
               (_%e117861117868%_ _%stx117860%_)
               (_%E117863117872%_
                (lambda () (gx#core-expand-expression _%stx117860%_)))
               (_%E117862117886%_
                (lambda ()
                  (if (gx#stx-pair? _%e117861117868%_)
                      (let ((_%e117864117876%_
                             (gx#syntax-e _%e117861117868%_)))
                        (let ((_%hd117865117879%_ (##car _%e117864117876%_))
                              (_%tl117866117881%_ (##cdr _%e117864117876%_)))
                          (let ((_%form117884%_ _%hd117865117879%_))
                            (if (gx#core-bound-identifier?__0 _%form117884%_)
                                _%stx117860%_
                                (_%E117863117872%_)))))
                      (_%E117863117872%_)))))
          (_%E117862117886%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117790%_)
        (letrec ((_%sealed-expression?117792%_
                  (lambda (_%hd117828%_)
                    (if (gx#sealed-syntax? _%hd117828%_)
                        (let* ((_%e117829117836%_ _%hd117828%_)
                               (_%E117831117840%_ (lambda () '#f))
                               (_%E117830117854%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117829117836%_)
                                      (let ((_%e117832117844%_
                                             (gx#syntax-e _%e117829117836%_)))
                                        (let ((_%hd117833117847%_
                                               (##car _%e117832117844%_))
                                              (_%tl117834117849%_
                                               (##cdr _%e117832117844%_)))
                                          (let ((_%form117852%_
                                                 _%hd117833117847%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117852%_
                                                 gx#expression-form-binding?)
                                                (_%E117831117840%_)))))
                                      (_%E117831117840%_)))))
                          (_%E117830117854%_))
                        '#f)))
                 (_%illegal-expression117793%_
                  (lambda (_%hd117825%_ . _%_117826%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117790%_
                     _%hd117825%_)))
                 (_%expand-e117794%_
                  (lambda (_%form117817%_ _%hd117818%_)
                    (let ((_%bind117820%_
                           (if (##structure-instance-of?
                                _%form117817%_
                                'gx#binding::t)
                               _%form117817%_
                               (gx#resolve-identifier__0 _%form117817%_))))
                      (if (gx#core-expander-binding? _%bind117820%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind117820%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd117818%_
                            (gx#stx-source _%stx117790%_)))
                          (if (##structure-direct-instance-of?
                               _%bind117820%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind117820%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd117818%_
                                 (gx#stx-source _%stx117790%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx117790%_
                               _%form117817%_)))))))
          (let ((_%hd117796%_ (gx#core-expand-head _%stx117790%_)))
            (if (_%sealed-expression?117792%_ _%hd117796%_)
                _%hd117796%_
                (if (gx#stx-pair? _%hd117796%_)
                    (let* ((_%form117800%_ (gx#stx-car _%hd117796%_))
                           (_%bind117802%_
                            (if (gx#identifier? _%form117800%_)
                                (gx#resolve-identifier__0 _%form117800%_)
                                '#f)))
                      (if (or (not _%bind117802%_)
                              (not (gx#core-expander-binding? _%bind117802%_)))
                          (_%expand-e117794%_
                           '%%app
                           (cons '%%app _%hd117796%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind117802%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd117796%_
                               _%illegal-expression117793%_)
                              (if (gx#expression-form-binding? _%bind117802%_)
                                  (_%expand-e117794%_
                                   _%bind117802%_
                                   _%hd117796%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind117802%_)
                                      (gx#core-expand-expression
                                       (_%expand-e117794%_
                                        _%bind117802%_
                                        _%hd117796%_))
                                      (_%illegal-expression117793%_
                                       _%hd117796%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd117796%_)
                        (_%illegal-expression117793%_ _%hd117796%_)
                        (if (gx#identifier? _%hd117796%_)
                            (_%expand-e117794%_
                             '%%ref
                             (cons '%%ref (cons _%hd117796%_ '())))
                            (if (gx#stx-datum? _%hd117796%_)
                                (_%expand-e117794%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd117796%_ '())))
                                (_%illegal-expression117793%_
                                 _%hd117796%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117785%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117788%_ (gx#core-expand-expression _%stx117785%_)))
             (values _%stx117788%_ (gx#eval-syntax* _%stx117788%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117766%_ _%stop?117767%_)
        (let _%lp117769%_ ((_%stx117771%_ _%stx117766%_))
          (if (_%stop?117767%_ _%stx117771%_)
              _%stx117771%_
              (let ((_%rstx117773%_ (gx#core-expand1 _%stx117771%_)))
                (if (eq? _%stx117771%_ _%rstx117773%_)
                    _%stx117771%_
                    (_%lp117769%_ _%rstx117773%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117778%_)
        (let ((_%stop?117780%_ false))
          (gx#core-expand*__% _%stx117778%_ _%stop?117780%_))))
    (define gx#core-expand*
      (lambda _g118375_
        (let ((_g118374_ (##length _g118375_)))
          (cond ((##fx= _g118374_ 1) (apply gx#core-expand*__0 _g118375_))
                ((##fx= _g118374_ 2) (apply gx#core-expand*__% _g118375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g118375_))))))
    (define gx#core-expand1
      (lambda (_%stx117718%_)
        (letrec ((_%step117720%_
                  (lambda (_%hd117757%_)
                    (let ((_%bind117759%_
                           (gx#resolve-identifier__0 _%hd117757%_)))
                      (if (##structure-instance-of?
                           _%bind117759%_
                           'gx#runtime-binding::t)
                          _%stx117718%_
                          (if (##structure-direct-instance-of?
                               _%bind117759%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind117759%_
                                '4
                                '#f
                                '#f)
                               _%stx117718%_)
                              (if (not _%bind117759%_)
                                  _%stx117718%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx117718%_))))))))
          (let* ((_%e117721117729%_ _%stx117718%_)
                 (_%E117727117733%_ (lambda () _%stx117718%_))
                 (_%E117723117739%_
                  (lambda ()
                    (let ((_%hd117737%_ _%e117721117729%_))
                      (if (gx#identifier? _%hd117737%_)
                          (_%step117720%_ _%hd117737%_)
                          (_%E117727117733%_)))))
                 (_%E117722117753%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117721117729%_)
                        (let ((_%e117724117743%_
                               (gx#syntax-e _%e117721117729%_)))
                          (let ((_%hd117725117746%_ (##car _%e117724117743%_))
                                (_%tl117726117748%_ (##cdr _%e117724117743%_)))
                            (let ((_%hd117751%_ _%hd117725117746%_))
                              (if (gx#identifier? _%hd117751%_)
                                  (_%step117720%_ _%hd117751%_)
                                  (_%E117723117739%_)))))
                        (_%E117723117739%_)))))
            (_%E117722117753%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117684%_)
        (letrec ((_%stop?117686%_
                  (lambda (_%stx117688%_)
                    (let* ((_%e117689117696%_ _%stx117688%_)
                           (_%E117691117700%_ (lambda () '#f))
                           (_%E117690117714%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117689117696%_)
                                  (let ((_%e117692117704%_
                                         (gx#syntax-e _%e117689117696%_)))
                                    (let ((_%hd117693117707%_
                                           (##car _%e117692117704%_))
                                          (_%tl117694117709%_
                                           (##cdr _%e117692117704%_)))
                                      (let ((_%hd117712%_ _%hd117693117707%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117712%_)
                                            (_%E117691117700%_)))))
                                  (_%E117691117700%_)))))
                      (_%E117690117714%_)))))
          (gx#core-expand*__% _%stx117684%_ _%stop?117686%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx117490%_
               _%expand-special117491%_
               _%begin-form117492%_
               _%expand-e117493%_)
        (letrec ((_%expand-splice117495%_
                  (lambda (_%hd117658%_
                           _%body117659%_
                           _%rest117660%_
                           _%r117661%_)
                    (if (gx#stx-list? _%body117659%_)
                        (_%K117499%_
                         (gx#stx-foldr cons _%rest117660%_ _%body117659%_)
                         _%r117661%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx117490%_
                         _%hd117658%_))))
                 (_%expand-cond-expand117496%_
                  (lambda (_%hd117654%_ _%rest117655%_ _%r117656%_)
                    (_%K117499%_
                     (cons (gx#core-expand-cond-expand% _%hd117654%_)
                           _%rest117655%_)
                     _%r117656%_)))
                 (_%expand-include117497%_
                  (lambda (_%hd117603%_ _%rest117604%_ _%r117605%_)
                    (let* ((_%e117606117616%_ _%hd117603%_)
                           (_%E117608117620%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117606117616%_)))
                           (_%E117607117650%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117606117616%_)
                                  (let ((_%e117609117624%_
                                         (gx#syntax-e _%e117606117616%_)))
                                    (let ((_%hd117610117627%_
                                           (##car _%e117609117624%_))
                                          (_%tl117611117629%_
                                           (##cdr _%e117609117624%_)))
                                      (if (gx#stx-pair? _%tl117611117629%_)
                                          (let ((_%e117612117632%_
                                                 (gx#syntax-e
                                                  _%tl117611117629%_)))
                                            (let ((_%hd117613117635%_
                                                   (##car _%e117612117632%_))
                                                  (_%tl117614117637%_
                                                   (##cdr _%e117612117632%_)))
                                              (let ((_%path117640%_
                                                     _%hd117613117635%_))
                                                (if (gx#stx-null?
                                                     _%tl117614117637%_)
                                                    (if (gx#stx-string?
                                                         _%path117640%_)
                                                        (let* ((_%rpath117642%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path117640%_
                         (gx#stx-source _%hd117603%_)))
                       (_%block117644%_
                        (gx#core-expand-include%__%
                         _%hd117603%_
                         _%rpath117642%_))
                       (_%rbody117647%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block117644%_
                            _%expand-special117491%_
                            '#f
                            _%expand-e117493%_))
                         gx#current-expander-path
                         (cons _%rpath117642%_ (gx#current-expander-path)))))
                  (_%K117499%_
                   _%rest117604%_
                   (__foldr1 cons _%r117605%_ _%rbody117647%_)))
                (_%E117608117620%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E117608117620%_)))))
                                          (_%E117608117620%_))))
                                  (_%E117608117620%_)))))
                      (_%E117607117650%_))))
                 (_%expand-expression117498%_
                  (lambda (_%hd117599%_ _%rest117600%_ _%r117601%_)
                    (_%K117499%_
                     _%rest117600%_
                     (cons (_%expand-e117493%_ _%hd117599%_) _%r117601%_))))
                 (_%K117499%_
                  (lambda (_%rest117529%_ _%r117530%_)
                    (let* ((_%e117531117538%_ _%rest117529%_)
                           (_%E117533117542%_
                            (lambda ()
                              (if _%begin-form117492%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form117492%_
                                    (reverse _%r117530%_))
                                   (gx#stx-source _%stx117490%_))
                                  _%r117530%_)))
                           (_%E117532117595%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117531117538%_)
                                  (let ((_%e117534117546%_
                                         (gx#syntax-e _%e117531117538%_)))
                                    (let ((_%hd117535117549%_
                                           (##car _%e117534117546%_))
                                          (_%tl117536117551%_
                                           (##cdr _%e117534117546%_)))
                                      (let* ((_%hd117554%_ _%hd117535117549%_)
                                             (_%rest117556%_
                                              _%tl117536117551%_))
                                        (if '#t
                                            (let* ((_%hd117558%_
                                                    (gx#core-expand-head
                                                     _%hd117554%_))
                                                   (_%e117559117566%_
                                                    _%hd117558%_)
                                                   (_%E117561117570%_
                                                    (lambda ()
                                                      (_%expand-expression117498%_
                                                       _%hd117558%_
                                                       _%rest117556%_
                                                       _%r117530%_)))
                                                   (_%E117560117591%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117559117566%_)
                                                          (let ((_%e117562117574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117559117566%_)))
                    (let ((_%hd117563117577%_ (##car _%e117562117574%_))
                          (_%tl117564117579%_ (##cdr _%e117562117574%_)))
                      (let* ((_%form117582%_ _%hd117563117577%_)
                             (_%body117584%_ _%tl117564117579%_))
                        (if '#t
                            (let ((_%bind117586%_
                                   (if (gx#identifier? _%form117582%_)
                                       (gx#resolve-identifier__0
                                        _%form117582%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind117586%_)
                                  (let ((_%$e117588%_
                                         (##unchecked-structure-ref
                                          _%bind117586%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e117588%_)
                                        (_%expand-splice117495%_
                                         _%hd117558%_
                                         _%body117584%_
                                         _%rest117556%_
                                         _%r117530%_)
                                        (if (eq? '%#cond-expand _%$e117588%_)
                                            (_%expand-cond-expand117496%_
                                             _%hd117558%_
                                             _%rest117556%_
                                             _%r117530%_)
                                            (if (eq? '%#include _%$e117588%_)
                                                (_%expand-include117497%_
                                                 _%hd117558%_
                                                 _%rest117556%_
                                                 _%r117530%_)
                                                (_%expand-special117491%_
                                                 _%hd117558%_
                                                 _%K117499%_
                                                 _%rest117556%_
                                                 _%r117530%_)))))
                                  (_%expand-expression117498%_
                                   _%hd117558%_
                                   _%rest117556%_
                                   _%r117530%_)))
                            (_%E117561117570%_)))))
                  (_%E117561117570%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117560117591%_))
                                            (_%E117533117542%_)))))
                                  (_%E117533117542%_)))))
                      (_%E117532117595%_)))))
          (let* ((_%e117500117507%_ _%stx117490%_)
                 (_%E117502117511%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117500117507%_)))
                 (_%E117501117525%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117500117507%_)
                        (let ((_%e117503117515%_
                               (gx#syntax-e _%e117500117507%_)))
                          (let ((_%hd117504117518%_ (##car _%e117503117515%_))
                                (_%tl117505117520%_ (##cdr _%e117503117515%_)))
                            (let ((_%body117523%_ _%tl117505117520%_))
                              (if (gx#stx-list? _%body117523%_)
                                  (_%K117499%_ _%body117523%_ '())
                                  (_%E117502117511%_)))))
                        (_%E117502117511%_)))))
            (_%E117501117525%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117666%_ _%expand-special117667%_)
        (let* ((_%begin-form117669%_ '%#begin)
               (_%expand-e117671%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117666%_
           _%expand-special117667%_
           _%begin-form117669%_
           _%expand-e117671%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117673%_ _%expand-special117674%_ _%begin-form117675%_)
        (let ((_%expand-e117677%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117673%_
           _%expand-special117674%_
           _%begin-form117675%_
           _%expand-e117677%_))))
    (define gx#core-expand-block
      (lambda _g118377_
        (let ((_g118376_ (##length _g118377_)))
          (cond ((##fx= _g118376_ 2) (apply gx#core-expand-block__0 _g118377_))
                ((##fx= _g118376_ 3) (apply gx#core-expand-block__1 _g118377_))
                ((##fx= _g118376_ 4) (apply gx#core-expand-block__% _g118377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g118377_))))))
    (define gx#core-expand-block*
      (lambda (_%stx117438%_ _%expand-special117439%_)
        (let* ((_%g117440117451%_
                (gx#core-expand-block__1
                 _%stx117438%_
                 _%expand-special117439%_
                 '#f))
               (_%E117444117455%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117440117451%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K117449117486%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx117438%_)))
                (_%K117446117472%_ (lambda (_%expr117470%_) _%expr117470%_))
                (_%K117445117461%_
                 (lambda (_%body117459%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body117459%_))
                    (gx#stx-source _%stx117438%_)))))
            (let ((_%try-match117442117482%_
                   (lambda ()
                     (if (##pair? _%g117440117451%_)
                         (let ((_%tl117448117477%_ (##cdr _%g117440117451%_))
                               (_%hd117447117475%_ (##car _%g117440117451%_)))
                           (if (##null? _%tl117448117477%_)
                               (let ((_%expr117480%_ _%hd117447117475%_))
                                 (_%K117446117472%_ _%expr117480%_))
                               (let ((_%body117464%_ _%g117440117451%_))
                                 (_%K117445117461%_ _%body117464%_))))
                         (let ((_%body117464%_ _%g117440117451%_))
                           (_%K117445117461%_ _%body117464%_))))))
              (if (##null? _%g117440117451%_)
                  (_%K117449117486%_)
                  (_%try-match117442117482%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx117263%_)
        (letrec ((_%satisfied?117265%_
                  (lambda (_%condition117366%_)
                    (let* ((_%e117367117382%_ _%condition117366%_)
                           (_%E117377117386%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117367117382%_)))
                           (_%E117370117405%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117367117382%_)
                                  (let ((_%e117378117390%_
                                         (gx#syntax-e _%e117367117382%_)))
                                    (let ((_%hd117379117393%_
                                           (##car _%e117378117390%_))
                                          (_%tl117380117395%_
                                           (##cdr _%e117378117390%_)))
                                      (let* ((_%combinator117398%_
                                              _%hd117379117393%_)
                                             (_%body117400%_
                                              _%tl117380117395%_))
                                        (if (gx#stx-list? _%body117400%_)
                                            (let ((_%$e117402%_
                                                   (gx#stx-e
                                                    _%combinator117398%_)))
                                              (if (eq? 'not _%$e117402%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?117265%_
                                                        _%body117400%_))
                                                  (if (eq? 'and _%$e117402%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?117265%_
                                                       _%body117400%_)
                                                      (if (eq? 'or
                                                               _%$e117402%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?117265%_
                                                           _%body117400%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e117402%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body117400%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx117263%_
                       _%combinator117398%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E117377117386%_)))))
                                  (_%E117377117386%_))))
                           (_%E117369117428%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117367117382%_)
                                  (let ((_%e117371117409%_
                                         (gx#syntax-e _%e117367117382%_)))
                                    (let ((_%hd117372117412%_
                                           (##car _%e117371117409%_))
                                          (_%tl117373117414%_
                                           (##cdr _%e117371117409%_)))
                                      (if (and (gx#identifier?
                                                _%hd117372117412%_)
                                               (gx#core-identifier=?
                                                _%hd117372117412%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl117373117414%_)
                                              (let ((_%e117374117417%_
                                                     (gx#syntax-e
                                                      _%tl117373117414%_)))
                                                (let ((_%hd117375117420%_
                                                       (##car _%e117374117417%_))
                                                      (_%tl117376117422%_
                                                       (##cdr _%e117374117417%_)))
                                                  (let ((_%expr117425%_
                                                         _%hd117375117420%_))
                                                    (if (gx#stx-null?
                                                         _%tl117376117422%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr117425%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E117370117405%_))
                (_%E117370117405%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117370117405%_))
                                          (_%E117370117405%_))))
                                  (_%E117370117405%_))))
                           (_%E117368117434%_
                            (lambda ()
                              (let ((_%id117432%_ _%e117367117382%_))
                                (if (gx#identifier? _%id117432%_)
                                    (gx#core-bound-identifier?__%
                                     _%id117432%_
                                     gx#feature-binding?)
                                    (_%E117369117428%_))))))
                      (_%E117368117434%_))))
                 (_%loop117266%_
                  (lambda (_%rest117296%_)
                    (let* ((_%e117297117305%_ _%rest117296%_)
                           (_%E117303117309%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117297117305%_)))
                           (_%E117299117313%_
                            (lambda ()
                              (if (gx#stx-null? _%e117297117305%_)
                                  (if '#t '() (_%E117303117309%_))
                                  (_%E117303117309%_))))
                           (_%E117298117362%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117297117305%_)
                                  (let ((_%e117300117317%_
                                         (gx#syntax-e _%e117297117305%_)))
                                    (let ((_%hd117301117320%_
                                           (##car _%e117300117317%_))
                                          (_%tl117302117322%_
                                           (##cdr _%e117300117317%_)))
                                      (let* ((_%hd117325%_ _%hd117301117320%_)
                                             (_%rest117327%_
                                              _%tl117302117322%_))
                                        (if '#t
                                            (let* ((_%e117328117335%_
                                                    _%hd117325%_)
                                                   (_%E117330117339%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e117328117335%_)))
                                                   (_%E117329117358%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117328117335%_)
                                                          (let ((_%e117331117343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117328117335%_)))
                    (let ((_%hd117332117346%_ (##car _%e117331117343%_))
                          (_%tl117333117348%_ (##cdr _%e117331117343%_)))
                      (let* ((_%condition117351%_ _%hd117332117346%_)
                             (_%body117353%_ _%tl117333117348%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition117351%_ 'else)
                                (if (gx#stx-null? _%rest117327%_)
                                    _%body117353%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _%stx117263%_
                                     _%hd117325%_))
                                (if (_%satisfied?117265%_ _%condition117351%_)
                                    _%body117353%_
                                    (_%loop117266%_ _%rest117327%_)))
                            (_%E117330117339%_)))))
                  (_%E117330117339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117329117358%_))
                                            (_%E117299117313%_)))))
                                  (_%E117299117313%_)))))
                      (_%E117298117362%_)))))
          (let* ((_%e117267117274%_ _%stx117263%_)
                 (_%E117269117278%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117267117274%_)))
                 (_%E117268117292%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117267117274%_)
                        (let ((_%e117270117282%_
                               (gx#syntax-e _%e117267117274%_)))
                          (let ((_%hd117271117285%_ (##car _%e117270117282%_))
                                (_%tl117272117287%_ (##cdr _%e117270117282%_)))
                            (let ((_%clauses117290%_ _%tl117272117287%_))
                              (if (gx#stx-list? _%clauses117290%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop117266%_ _%clauses117290%_))
                                  (_%E117269117278%_)))))
                        (_%E117269117278%_)))))
            (_%E117268117292%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx117206%_ _%rpath117207%_)
        (let* ((_%e117208117218%_ _%stx117206%_)
               (_%E117210117222%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e117208117218%_)))
               (_%E117209117249%_
                (lambda ()
                  (if (gx#stx-pair? _%e117208117218%_)
                      (let ((_%e117211117226%_
                             (gx#syntax-e _%e117208117218%_)))
                        (let ((_%hd117212117229%_ (##car _%e117211117226%_))
                              (_%tl117213117231%_ (##cdr _%e117211117226%_)))
                          (if (gx#stx-pair? _%tl117213117231%_)
                              (let ((_%e117214117234%_
                                     (gx#syntax-e _%tl117213117231%_)))
                                (let ((_%hd117215117237%_
                                       (##car _%e117214117234%_))
                                      (_%tl117216117239%_
                                       (##cdr _%e117214117234%_)))
                                  (let ((_%path117242%_ _%hd117215117237%_))
                                    (if (gx#stx-null? _%tl117216117239%_)
                                        (if (gx#stx-string? _%path117242%_)
                                            (let ((_%rpath117247%_
                                                   (let ((_%$e117244%_
                                                          _%rpath117207%_))
                                                     (if _%$e117244%_
                                                         _%$e117244%_
                                                         (gx#core-resolve-path__%
                                                          _%path117242%_
                                                          (gx#stx-source
                                                           _%stx117206%_))))))
                                              (if (member _%rpath117247%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx117206%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath117247%_))
                                                    (gx#stx-source
                                                     _%stx117206%_)))))
                                            (_%E117210117222%_))
                                        (_%E117210117222%_)))))
                              (_%E117210117222%_))))
                      (_%E117210117222%_)))))
          (_%E117209117249%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx117256%_)
        (let ((_%rpath117258%_ '#f))
          (gx#core-expand-include%__% _%stx117256%_ _%rpath117258%_))))
    (define gx#core-expand-include%
      (lambda _g118379_
        (let ((_g118378_ (##length _g118379_)))
          (cond ((##fx= _g118378_ 1)
                 (apply gx#core-expand-include%__0 _g118379_))
                ((##fx= _g118378_ 2)
                 (apply gx#core-expand-include%__% _g118379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g118379_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K117172%_ _%stx117173%_ _%method117174%_)
        (if (procedure? _%K117172%_)
            (let ((_%$e117177%_ (gx#stx-source _%stx117173%_)))
              (if _%$e117177%_
                  ((lambda (_%g117179117181%_)
                     (gx#stx-wrap-source
                      (_%K117172%_ _%stx117173%_)
                      _%g117179117181%_))
                   _%$e117177%_)
                  (_%K117172%_ _%stx117173%_)))
            (let ((_%$e117185%_
                   (bound-method-ref _%K117172%_ _%method117174%_)))
              (if _%$e117185%_
                  ((lambda (_%g117187117189%_)
                     (gx#core-apply-expander__%
                      _%g117187117189%_
                      _%stx117173%_
                      _%method117174%_))
                   _%$e117185%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx117173%_
                   _%method117174%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K117196%_ _%stx117197%_)
        (let ((_%method117199%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K117196%_
           _%stx117197%_
           _%method117199%_))))
    (define gx#core-apply-expander
      (lambda _g118381_
        (let ((_g118380_ (##length _g118381_)))
          (cond ((##fx= _g118380_ 2)
                 (apply gx#core-apply-expander__0 _g118381_))
                ((##fx= _g118380_ 3)
                 (apply gx#core-apply-expander__% _g118381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g118381_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self115214117155%_ _%stx117157%_)
        (let* ((_%self117159%_ _%self115214117155%_)
               (_%self117161%_ _%self117159%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx117157%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self115215116995%_ _%stx116997%_)
        (let* ((_%self116999%_ _%self115215116995%_)
               (_%self117001%_ _%self116999%_)
               (_%self117010117016%_ _%self117001%_)
               (_%E117012117020%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117010117016%_
                         '((macro-expander K)))
                  '#!void))
               (_%K117013117025%_
                (lambda (_%K117023%_)
                  (gx#core-apply-expander__0 _%K117023%_ _%stx116997%_))))
          (if '#t
              (let* ((_%e117014117028%_
                      (##unchecked-structure-ref
                       _%self117010117016%_
                       '1
                       '#f
                       '#f))
                     (_%K117031%_ _%e117014117028%_))
                (_%K117013117025%_ _%K117031%_))
              (_%E117012117020%_)))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self115216116835%_ _%stx116837%_)
        (let* ((_%self116839%_ _%self115216116835%_)
               (_%self116841%_ _%self116839%_))
          (if (gx#sealed-syntax? _%stx116837%_)
              _%stx116837%_
              (let* ((_%self116850116856%_ _%self116841%_)
                     (_%E116852116860%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116850116856%_
                               '((core-expander K)))
                        '#!void))
                     (_%K116853116865%_
                      (lambda (_%K116863%_)
                        (gx#core-apply-expander__0
                         _%K116863%_
                         _%stx116837%_))))
                (if '#t
                    (let* ((_%e116854116868%_
                            (##unchecked-structure-ref
                             _%self116850116856%_
                             '1
                             '#f
                             '#f))
                           (_%K116871%_ _%e116854116868%_))
                      (_%K116853116865%_ _%K116871%_))
                    (_%E116852116860%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self115217116684%_ _%stx116686%_ _%top?116687%_)
        (let* ((_%self116689%_ _%self115217116684%_)
               (_%self116691%_ _%self116689%_))
          (if (_%top?116687%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self116691%_
               _%stx116686%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx116686%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self115217116704%_ _%stx116705%_)
        (let ((_%top?116707%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self115217116704%_
           _%stx116705%_
           _%top?116707%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g118383_
        (let ((_g118382_ (##length _g118383_)))
          (cond ((##fx= _g118382_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g118383_))
                ((##fx= _g118382_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g118383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g118383_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self115218116545%_ _%stx116547%_)
        (let* ((_%self116549%_ _%self115218116545%_)
               (_%self116551%_ _%self116549%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self116551%_
           _%stx116547%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self115219116357%_ _%stx116359%_)
        (let* ((_%self116361%_ _%self115219116357%_)
               (_%self116363%_ _%self116361%_)
               (_%self116372116378%_ _%self116363%_)
               (_%E116374116382%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116372116378%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K116375116415%_
                (lambda (_%id116385%_)
                  (let* ((_%e116386116393%_ _%stx116359%_)
                         (_%E116388116397%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e116386116393%_)))
                         (_%E116387116411%_
                          (lambda ()
                            (if (gx#stx-pair? _%e116386116393%_)
                                (let ((_%e116389116401%_
                                       (gx#syntax-e _%e116386116393%_)))
                                  (let ((_%hd116390116404%_
                                         (##car _%e116389116401%_))
                                        (_%tl116391116406%_
                                         (##cdr _%e116389116401%_)))
                                    (let ((_%body116409%_ _%tl116391116406%_))
                                      (if '#t
                                          (gx#core-cons
                                           _%id116385%_
                                           _%body116409%_)
                                          (_%E116388116397%_)))))
                                (_%E116388116397%_)))))
                    (_%E116387116411%_)))))
          (if '#t
              (let* ((_%e116376116418%_
                      (##unchecked-structure-ref
                       _%self116372116378%_
                       '1
                       '#f
                       '#f))
                     (_%id116421%_ _%e116376116418%_))
                (_%K116375116415%_ _%id116421%_))
              (_%E116374116382%_)))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self116183%_ _%stx116184%_ _%method116185%_)
        (let* ((_%self116186116194%_ _%self116183%_)
               (_%E116188116198%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116186116194%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K116189116205%_
                (lambda (_%phi116201%_ _%ctx116202%_ _%K116203%_)
                  (gx#core-apply-user-macro
                   _%K116203%_
                   _%stx116184%_
                   _%ctx116202%_
                   _%phi116201%_
                   _%method116185%_))))
          (if (##structure-instance-of?
               _%self116186116194%_
               'gx#user-expander::t)
              (let* ((_%e116190116208%_
                      (##unchecked-structure-ref
                       _%self116186116194%_
                       '1
                       '#f
                       '#f))
                     (_%K116211%_ _%e116190116208%_)
                     (_%e116191116213%_
                      (##unchecked-structure-ref
                       _%self116186116194%_
                       '2
                       '#f
                       '#f))
                     (_%ctx116216%_ _%e116191116213%_)
                     (_%e116192116218%_
                      (##unchecked-structure-ref
                       _%self116186116194%_
                       '3
                       '#f
                       '#f))
                     (_%phi116221%_ _%e116192116218%_))
                (_%K116189116205%_ _%phi116221%_ _%ctx116216%_ _%K116211%_))
              (_%E116188116198%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self116226%_ _%stx116227%_)
        (let ((_%method116229%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self116226%_
           _%stx116227%_
           _%method116229%_))))
    (define gx#core-apply-user-expander
      (lambda _g118385_
        (let ((_g118384_ (##length _g118385_)))
          (cond ((##fx= _g118384_ 2)
                 (apply gx#core-apply-user-expander__0 _g118385_))
                ((##fx= _g118384_ 3)
                 (apply gx#core-apply-user-expander__% _g118385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g118385_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K116173%_
               _%stx116174%_
               _%ctx116175%_
               _%phi116176%_
               _%method116177%_)
        (let ((_%mark116179%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx116175%_
                _%phi116176%_
                _%stx116174%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K116173%_
               (gx#stx-apply-mark _%stx116174%_ _%mark116179%_)
               _%method116177%_)
              _%mark116179%_))
           gx#current-expander-marks
           (cons _%mark116179%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx116021%_ _%phi116022%_ _%ctx116023%_)
        (let _%lp116025%_ ((_%bind116027%_
                            (gx#core-resolve-identifier__%
                             _%stx116021%_
                             _%phi116022%_
                             _%ctx116023%_)))
          (if (##structure-direct-instance-of?
               _%bind116027%_
               'gx#import-binding::t)
              (_%lp116025%_
               (##unchecked-structure-ref _%bind116027%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind116027%_
                   'gx#alias-binding::t)
                  (_%lp116025%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind116027%_ '4 '#f '#f)
                    _%phi116022%_
                    _%ctx116023%_))
                  _%bind116027%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx116035%_)
        (let* ((_%phi116037%_ (gx#current-expander-phi))
               (_%ctx116039%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx116035%_
           _%phi116037%_
           _%ctx116039%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx116041%_ _%phi116042%_)
        (let ((_%ctx116044%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx116041%_
           _%phi116042%_
           _%ctx116044%_))))
    (define gx#resolve-identifier
      (lambda _g118387_
        (let ((_g118386_ (##length _g118387_)))
          (cond ((##fx= _g118386_ 1)
                 (apply gx#resolve-identifier__0 _g118387_))
                ((##fx= _g118386_ 2)
                 (apply gx#resolve-identifier__1 _g118387_))
                ((##fx= _g118386_ 3)
                 (apply gx#resolve-identifier__% _g118387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g118387_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115976%_
               _%val115977%_
               _%rebind?115978%_
               _%phi115979%_
               _%ctx115980%_)
        (let ((_%rebind?115985%_
               (if (not _%rebind?115978%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?115978%_)
                       _%rebind?115978%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115976%_)
           _%val115977%_
           _%rebind?115985%_
           _%phi115979%_
           _%ctx115980%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115990%_ _%val115991%_)
        (let* ((_%rebind?115993%_ '#f)
               (_%phi115995%_ (gx#current-expander-phi))
               (_%ctx115997%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115990%_
           _%val115991%_
           _%rebind?115993%_
           _%phi115995%_
           _%ctx115997%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115999%_ _%val116000%_ _%rebind?116001%_)
        (let* ((_%phi116003%_ (gx#current-expander-phi))
               (_%ctx116005%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115999%_
           _%val116000%_
           _%rebind?116001%_
           _%phi116003%_
           _%ctx116005%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx116007%_ _%val116008%_ _%rebind?116009%_ _%phi116010%_)
        (let ((_%ctx116012%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx116007%_
           _%val116008%_
           _%rebind?116009%_
           _%phi116010%_
           _%ctx116012%_))))
    (define gx#bind-identifier!
      (lambda _g118389_
        (let ((_g118388_ (##length _g118389_)))
          (cond ((##fx= _g118388_ 2) (apply gx#bind-identifier!__0 _g118389_))
                ((##fx= _g118388_ 3) (apply gx#bind-identifier!__1 _g118389_))
                ((##fx= _g118388_ 4) (apply gx#bind-identifier!__2 _g118389_))
                ((##fx= _g118388_ 5) (apply gx#bind-identifier!__% _g118389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g118389_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115942%_ _%phi115943%_ _%ctx115944%_)
        (let _%lp115946%_ ((_%e115948%_ _%stx115942%_)
                           (_%marks115949%_ (gx#current-expander-marks)))
          (if (symbol? _%e115948%_)
              (gx#core-resolve-binding
               _%e115948%_
               _%phi115943%_
               _%phi115943%_
               _%ctx115944%_
               (reverse _%marks115949%_))
              (if (gx#identifier-quote? _%e115948%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e115948%_ '1 '#f '#f)
                   _%phi115943%_
                   '0
                   (##unchecked-structure-ref _%e115948%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e115948%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e115948%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e115948%_ '1 '#f '#f)
                       _%phi115943%_
                       _%phi115943%_
                       _%ctx115944%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e115948%_ '3 '#f '#f)
                        _%marks115949%_))
                      (if (##structure-direct-instance-of?
                           _%e115948%_
                           'gx#syntax-wrap::t)
                          (_%lp115946%_
                           (##unchecked-structure-ref _%e115948%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e115948%_ '3 '#f '#f)
                            _%marks115949%_))
                          (if (##structure-instance-of?
                               _%e115948%_
                               'gerbil#AST::t)
                              (_%lp115946%_
                               (##unchecked-structure-ref
                                _%e115948%_
                                '1
                                '#f
                                '#f)
                               _%marks115949%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx115942%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115960%_)
        (let* ((_%phi115962%_ (gx#current-expander-phi))
               (_%ctx115964%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115960%_
           _%phi115962%_
           _%ctx115964%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115966%_ _%phi115967%_)
        (let ((_%ctx115969%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115966%_
           _%phi115967%_
           _%ctx115969%_))))
    (define gx#core-resolve-identifier
      (lambda _g118391_
        (let ((_g118390_ (##length _g118391_)))
          (cond ((##fx= _g118390_ 1)
                 (apply gx#core-resolve-identifier__0 _g118391_))
                ((##fx= _g118390_ 2)
                 (apply gx#core-resolve-identifier__1 _g118391_))
                ((##fx= _g118390_ 3)
                 (apply gx#core-resolve-identifier__% _g118391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g118391_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115852%_
               _%phi115853%_
               _%src-phi115854%_
               _%ctx115855%_
               _%marks115856%_)
        (letrec ((_%resolve115858%_
                  (lambda (_%ctx115926%_ _%src-phi115927%_ _%key115928%_)
                    (let _%lp115930%_ ((_%ctx115932%_
                                        (gx#core-context-shift
                                         _%ctx115926%_
                                         _%phi115853%_))
                                       (_%dphi115933%_
                                        (fx- _%phi115853%_ _%src-phi115927%_)))
                      (let ((_%$e115935%_
                             (gx#core-context-resolve
                              _%ctx115932%_
                              _%key115928%_)))
                        (if _%$e115935%_
                            (values _%$e115935%_)
                            (if (fxzero? _%dphi115933%_)
                                '#f
                                (if (fxpositive? _%dphi115933%_)
                                    (_%lp115930%_
                                     (gx#core-context-shift _%ctx115932%_ '-1)
                                     (##fx- _%dphi115933%_ '1))
                                    (_%lp115930%_
                                     (gx#core-context-shift _%ctx115932%_ '1)
                                     (##fx+ _%dphi115933%_ '1))))))))))
          (let _%lp115860%_ ((_%ctx115862%_ _%ctx115855%_)
                             (_%src-phi115863%_ _%src-phi115854%_)
                             (_%rest115864%_ _%marks115856%_))
            (let* ((_%rest115865115873%_ _%rest115864%_)
                   (_%else115867115881%_
                    (lambda ()
                      (_%resolve115858%_
                       _%ctx115862%_
                       _%src-phi115863%_
                       _%id115852%_)))
                   (_%K115869115914%_
                    (lambda (_%rest115884%_ _%hd115885%_)
                      (let* ((_%hd115886115892%_ _%hd115885%_)
                             (_%E115888115896%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115886115892%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115889115906%_
                              (lambda (_%subst115899%_)
                                (let ((_%$e115903%_
                                       (let ((_%key115901%_
                                              (if _%subst115899%_
                                                  (hash-get
                                                   _%subst115899%_
                                                   _%id115852%_)
                                                  '#f)))
                                         (if _%key115901%_
                                             (_%resolve115858%_
                                              _%ctx115862%_
                                              _%src-phi115863%_
                                              _%key115901%_)
                                             '#f))))
                                  (if _%$e115903%_
                                      _%$e115903%_
                                      (_%lp115860%_
                                       (##unchecked-structure-ref
                                        _%hd115885%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115885%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115884%_))))))
                        (if (##structure-instance-of?
                             _%hd115886115892%_
                             'gx#expander-mark::t)
                            (let* ((_%e115890115909%_
                                    (##unchecked-structure-ref
                                     _%hd115886115892%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115912%_ _%e115890115909%_))
                              (_%K115889115906%_ _%subst115912%_))
                            (_%E115888115896%_))))))
              (if (##pair? _%rest115865115873%_)
                  (let ((_%hd115870115917%_ (##car _%rest115865115873%_))
                        (_%tl115871115919%_ (##cdr _%rest115865115873%_)))
                    (let* ((_%hd115922%_ _%hd115870115917%_)
                           (_%rest115924%_ _%tl115871115919%_))
                      (_%K115869115914%_ _%rest115924%_ _%hd115922%_)))
                  (_%else115867115881%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115722%_
               _%val115723%_
               _%rebind?115724%_
               _%phi115725%_
               _%ctx115726%_)
        (letrec ((_%update-binding115728%_
                  (lambda (_%xval115801%_)
                    (if (or (_%rebind?115724%_
                             _%ctx115726%_
                             _%xval115801%_
                             _%val115723%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115801%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115801%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115723%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115723%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115801%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115723%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115723%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115801%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val115723%_
                        (if (and (##structure-direct-instance-of?
                                  _%val115723%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115723%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115801%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115723%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115801%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval115801%_
                            (if (and (##structure-direct-instance-of?
                                      _%val115723%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115801%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key115722%_
                                 (cons (##unchecked-structure-ref
                                        _%val115723%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val115723%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval115801%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval115801%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval115801%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval115801%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key115722%_
                                 _%val115723%_
                                 _%xval115801%_))))))
                 (_%gensubst115729%_
                  (lambda (_%subst115796%_ _%id115797%_)
                    (let ((_%eid115799%_
                           (gensym (if (uninterned-symbol? _%id115797%_)
                                       '%
                                       _%id115797%_))))
                      (hash-put! _%subst115796%_ _%id115797%_ _%eid115799%_)
                      _%eid115799%_)))
                 (_%subst!115730%_
                  (lambda (_%key115732%_)
                    (let* ((_%key115733115741%_ _%key115732%_)
                           (_%else115735115749%_ (lambda () _%key115732%_))
                           (_%K115737115784%_
                            (lambda (_%mark115752%_ _%id115753%_)
                              (let* ((_%mark115754115760%_ _%mark115752%_)
                                     (_%E115756115764%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115754115760%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115757115776%_
                                      (lambda (_%subst115767%_)
                                        (if (not _%subst115767%_)
                                            (let ((_%subst115770%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark115752%_
                                               _%subst115770%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst115729%_
                                               _%subst115770%_
                                               _%id115753%_))
                                            (let ((_%$e115772%_
                                                   (hash-get
                                                    _%subst115767%_
                                                    _%id115753%_)))
                                              (if _%$e115772%_
                                                  (values _%$e115772%_)
                                                  (_%gensubst115729%_
                                                   _%subst115767%_
                                                   _%id115753%_)))))))
                                (if (##structure-instance-of?
                                     _%mark115754115760%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115758115779%_
                                            (##unchecked-structure-ref
                                             _%mark115754115760%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115782%_ _%e115758115779%_))
                                      (_%K115757115776%_ _%subst115782%_))
                                    (_%E115756115764%_))))))
                      (if (##pair? _%key115733115741%_)
                          (let ((_%hd115738115787%_
                                 (##car _%key115733115741%_))
                                (_%tl115739115789%_
                                 (##cdr _%key115733115741%_)))
                            (let* ((_%id115792%_ _%hd115738115787%_)
                                   (_%mark115794%_ _%tl115739115789%_))
                              (_%K115737115784%_ _%mark115794%_ _%id115792%_)))
                          (_%else115735115749%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115726%_ _%phi115725%_)
           (_%subst!115730%_ _%key115722%_)
           _%val115723%_
           _%update-binding115728%_))))
    (define gx#core-bind!__0
      (lambda (_%key115822%_ _%val115823%_)
        (let* ((_%rebind?115825%_ false)
               (_%phi115827%_ (gx#current-expander-phi))
               (_%ctx115829%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115822%_
           _%val115823%_
           _%rebind?115825%_
           _%phi115827%_
           _%ctx115829%_))))
    (define gx#core-bind!__1
      (lambda (_%key115831%_ _%val115832%_ _%rebind?115833%_)
        (let* ((_%phi115835%_ (gx#current-expander-phi))
               (_%ctx115837%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115831%_
           _%val115832%_
           _%rebind?115833%_
           _%phi115835%_
           _%ctx115837%_))))
    (define gx#core-bind!__2
      (lambda (_%key115839%_ _%val115840%_ _%rebind?115841%_ _%phi115842%_)
        (let ((_%ctx115844%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115839%_
           _%val115840%_
           _%rebind?115841%_
           _%phi115842%_
           _%ctx115844%_))))
    (define gx#core-bind!
      (lambda _g118393_
        (let ((_g118392_ (##length _g118393_)))
          (cond ((##fx= _g118392_ 2) (apply gx#core-bind!__0 _g118393_))
                ((##fx= _g118392_ 3) (apply gx#core-bind!__1 _g118393_))
                ((##fx= _g118392_ 4) (apply gx#core-bind!__2 _g118393_))
                ((##fx= _g118392_ 5) (apply gx#core-bind!__% _g118393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g118393_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115653%_)
        (if (symbol? _%stx115653%_)
            (let* ((_%g115655115663%_ (gx#current-expander-marks))
                   (_%else115657115671%_ (lambda () _%stx115653%_))
                   (_%K115659115676%_
                    (lambda (_%hd115674%_) (cons _%stx115653%_ _%hd115674%_))))
              (if (##pair? _%g115655115663%_)
                  (let* ((_%hd115660115679%_ (##car _%g115655115663%_))
                         (_%hd115682%_ _%hd115660115679%_))
                    (_%K115659115676%_ _%hd115682%_))
                  (_%else115657115671%_)))
            (if (gx#identifier? _%stx115653%_)
                (let* ((_%id115685%_ (gx#syntax-local-unwrap _%stx115653%_))
                       (_%eid115687%_ (gx#stx-e _%id115685%_))
                       (_%marks115689%_
                        (gx#stx-identifier-marks* _%id115685%_))
                       (_%marks115691115699%_ _%marks115689%_)
                       (_%else115693115707%_ (lambda () _%eid115687%_))
                       (_%K115695115712%_
                        (lambda (_%hd115710%_)
                          (cons _%eid115687%_ _%hd115710%_))))
                  (if (##pair? _%marks115691115699%_)
                      (let* ((_%hd115696115715%_ (##car _%marks115691115699%_))
                             (_%hd115718%_ _%hd115696115715%_))
                        (_%K115695115712%_ _%hd115718%_))
                      (_%else115693115707%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx115653%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx115592%_ _%phi115593%_)
        (letrec ((_%make-phi115595%_
                  (lambda (_%super115651%_)
                    (let ((__obj118365
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj118365
                       (##gensym 'phi)
                       _%super115651%_)
                      __obj118365)))
                 (_%make-phi/up115596%_
                  (lambda (_%ctx115646%_ _%super115647%_)
                    (let ((_%ctx+1115649%_
                           (_%make-phi115595%_ _%super115647%_)))
                      (##unchecked-structure-set!
                       _%ctx115646%_
                       _%ctx+1115649%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115649%_
                       _%ctx115646%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115649%_)))
                 (_%make-phi/down115597%_
                  (lambda (_%ctx115641%_ _%super115642%_)
                    (let ((_%ctx-1115644%_
                           (_%make-phi115595%_ _%super115642%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115644%_
                       _%ctx115641%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115641%_
                       _%ctx-1115644%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115644%_)))
                 (_%shift115598%_
                  (lambda (_%ctx115624%_
                           _%delta115625%_
                           _%make-delta-context115626%_
                           _%phi115627%_
                           _%K115628%_)
                    (let ((_%$e115630%_
                           (##unchecked-structure-ref
                            _%ctx115624%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e115630%_
                          ((lambda (_%super115633%_)
                             (let* ((_%super115635%_
                                     (_%K115628%_
                                      _%super115633%_
                                      _%delta115625%_))
                                    (_%ctx+d115637%_
                                     (_%make-delta-context115626%_
                                      _%ctx115624%_
                                      _%super115635%_)))
                               (_%K115628%_
                                _%ctx+d115637%_
                                (fx- _%phi115627%_ _%delta115625%_))))
                           _%$e115630%_)
                          (error '"Bad context" _%ctx115624%_))))))
          (let _%K115600%_ ((_%ctx115602%_ _%ctx115592%_)
                            (_%phi115603%_ _%phi115593%_))
            (if (fxzero? _%phi115603%_)
                _%ctx115602%_
                (if (##structure-instance-of? _%ctx115602%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi115603%_)
                        (let ((_%$e115607%_
                               (##unchecked-structure-ref
                                _%ctx115602%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e115607%_
                              ((lambda (_%g115609115611%_)
                                 (_%K115600%_
                                  _%g115609115611%_
                                  (##fx- _%phi115603%_ '1)))
                               _%$e115607%_)
                              (_%shift115598%_
                               _%ctx115602%_
                               '1
                               _%make-phi/up115596%_
                               _%phi115603%_
                               _%K115600%_)))
                        (let ((_%$e115615%_
                               (##unchecked-structure-ref
                                _%ctx115602%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e115615%_
                              ((lambda (_%g115617115619%_)
                                 (_%K115600%_
                                  _%g115617115619%_
                                  (##fx+ _%phi115603%_ '1)))
                               _%$e115615%_)
                              (_%shift115598%_
                               _%ctx115602%_
                               '-1
                               _%make-phi/down115597%_
                               _%phi115603%_
                               _%K115600%_))))
                    _%ctx115602%_))))))
    (define gx#core-context-get
      (lambda (_%ctx115589%_ _%key115590%_)
        (hash-get
         (##unchecked-structure-ref _%ctx115589%_ '2 '#f '#f)
         _%key115590%_)))
    (define gx#core-context-put!
      (lambda (_%ctx115585%_ _%key115586%_ _%val115587%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx115585%_ '2 '#f '#f)
         _%key115586%_
         _%val115587%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx115571%_ _%key115572%_)
        (let _%lp115574%_ ((_%ctx115576%_ _%ctx115571%_))
          (let ((_%$e115578%_
                 (gx#core-context-get _%ctx115576%_ _%key115572%_)))
            (if _%$e115578%_
                (values _%$e115578%_)
                (let ((_%$e115581%_
                       (if (##structure-instance-of?
                            _%ctx115576%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx115576%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e115581%_ (_%lp115574%_ _%$e115581%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx115560%_ _%key115561%_ _%val115562%_ _%rebind115563%_)
        (let ((_%$e115565%_ (gx#core-context-get _%ctx115560%_ _%key115561%_)))
          (if _%$e115565%_
              ((lambda (_%xval115568%_)
                 (gx#core-context-put!
                  _%ctx115560%_
                  _%key115561%_
                  (_%rebind115563%_ _%xval115568%_)))
               _%$e115565%_)
              (gx#core-context-put!
               _%ctx115560%_
               _%key115561%_
               _%val115562%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx115535%_ _%stop?115536%_)
        (let _%lp115538%_ ((_%ctx115540%_ _%ctx115535%_))
          (if (_%stop?115536%_ _%ctx115540%_)
              _%ctx115540%_
              (if (##structure-instance-of? _%ctx115540%_ 'gx#phi-context::t)
                  (_%lp115538%_
                   (##unchecked-structure-ref _%ctx115540%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx115549%_ (gx#current-expander-context))
               (_%stop?115551%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115549%_ _%stop?115551%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx115553%_)
        (let ((_%stop?115555%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115553%_ _%stop?115555%_))))
    (define gx#core-context-top
      (lambda _g118395_
        (let ((_g118394_ (##length _g118395_)))
          (cond ((##fx= _g118394_ 0) (apply gx#core-context-top__0 _g118395_))
                ((##fx= _g118394_ 1) (apply gx#core-context-top__1 _g118395_))
                ((##fx= _g118394_ 2) (apply gx#core-context-top__% _g118395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g118395_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx115520%_)
        (let _%lp115522%_ ((_%ctx115524%_ _%ctx115520%_))
          (if (##structure-instance-of? _%ctx115524%_ 'gx#phi-context::t)
              (_%lp115522%_
               (##unchecked-structure-ref _%ctx115524%_ '3 '#f '#f))
              _%ctx115524%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx115530%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx115530%_))))
    (define gx#core-context-root
      (lambda _g118397_
        (let ((_g118396_ (##length _g118397_)))
          (cond ((##fx= _g118396_ 0) (apply gx#core-context-root__0 _g118397_))
                ((##fx= _g118396_ 1) (apply gx#core-context-root__% _g118397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g118397_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx115502%_ . _%ignore115503%_)
        (let ((_%$e115505%_ (gx#current-expander-allow-rebind?)))
          (if _%$e115505%_
              _%$e115505%_
              (if (##structure-instance-of? _%ctx115502%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx115502%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx115502%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx115512%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx115512%_))))
    (define gx#core-context-rebind?
      (lambda _g118399_
        (let ((_g118398_ (##length _g118399_)))
          (cond ((##fx= _g118398_ 0)
                 (apply gx#core-context-rebind?__0 _g118399_))
                ((##fx= _g118398_ 1)
                 (apply gx#core-context-rebind?__% _g118399_))
                ((##fx>= _g118398_ 1)
                 (apply gx#core-context-rebind?__% _g118399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g118399_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx115485%_)
        (let ((_%$e115487%_ (gx#core-context-top__1 _%ctx115485%_)))
          (if _%$e115487%_
              ((lambda (_%ctx115490%_)
                 (if (##structure-instance-of?
                      _%ctx115490%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx115490%_ '6 '#f '#f)
                     '#f))
               _%$e115487%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx115497%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx115497%_))))
    (define gx#core-context-namespace
      (lambda _g118401_
        (let ((_g118400_ (##length _g118401_)))
          (cond ((##fx= _g118400_ 0)
                 (apply gx#core-context-namespace__0 _g118401_))
                ((##fx= _g118400_ 1)
                 (apply gx#core-context-namespace__% _g118401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g118401_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind115471%_ _%is?115472%_)
        (if (##structure-direct-instance-of?
             _%bind115471%_
             'gx#syntax-binding::t)
            (_%is?115472%_
             (##unchecked-structure-ref _%bind115471%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind115477%_)
        (let ((_%is?115479%_ gx#expander?))
          (gx#expander-binding?__% _%bind115477%_ _%is?115479%_))))
    (define gx#expander-binding?
      (lambda _g118403_
        (let ((_g118402_ (##length _g118403_)))
          (cond ((##fx= _g118402_ 1) (apply gx#expander-binding?__0 _g118403_))
                ((##fx= _g118402_ 2) (apply gx#expander-binding?__% _g118403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g118403_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind115468%_)
        (gx#expander-binding?__% _%bind115468%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind115466%_)
        (gx#expander-binding?__% _%bind115466%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind115460%_)
        (letrec ((_%direct-special-form?115462%_
                  (lambda (_%obj115464%_)
                    (##structure-direct-instance-of?
                     _%obj115464%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind115460%_
           _%direct-special-form?115462%_))))
    (define gx#special-form-binding?
      (lambda (_%bind115458%_)
        (gx#expander-binding?__% _%bind115458%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind115449%_)
        (letrec ((_%feature?115451%_
                  (lambda (_%e115453%_)
                    (let ((_%$e115455%_
                           (##structure-instance-of?
                            _%e115453%_
                            'gx#feature-expander::t)))
                      (if _%$e115455%_
                          _%$e115455%_
                          (##structure-instance-of?
                           _%e115453%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind115449%_ _%feature?115451%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind115447%_)
        (gx#expander-binding?__% _%bind115447%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id115434%_ _%bound?115435%_)
        (if (gx#identifier? _%id115434%_)
            (_%bound?115435%_ (gx#resolve-identifier__0 _%id115434%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id115440%_)
        (let ((_%bound?115442%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id115440%_ _%bound?115442%_))))
    (define gx#core-bound-identifier?
      (lambda _g118405_
        (let ((_g118404_ (##length _g118405_)))
          (cond ((##fx= _g118404_ 1)
                 (apply gx#core-bound-identifier?__0 _g118405_))
                ((##fx= _g118404_ 2)
                 (apply gx#core-bound-identifier?__% _g118405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g118405_))))))
    (define gx#core-identifier=?
      (lambda (_%x115424%_ _%y115425%_)
        (letrec ((_%y=?115427%_
                  (lambda (_%xid115431%_)
                    ((if (list? _%y115425%_) memq eq?)
                     _%xid115431%_
                     _%y115425%_))))
          (let ((_%bind115429%_ (gx#resolve-identifier__0 _%x115424%_)))
            (if (##structure-instance-of? _%bind115429%_ 'gx#binding::t)
                (_%y=?115427%_
                 (##unchecked-structure-ref _%bind115429%_ '1 '#f '#f))
                (_%y=?115427%_ (gx#stx-e _%x115424%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e115422%_)
        (if (interned-symbol? _%e115422%_)
            (string-index__0 (symbol->string _%e115422%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx115375%_ _%src115376%_ _%ctx115377%_ _%marks115378%_)
        (if (##structure? _%stx115375%_)
            (let ((_%$e115380%_ (gx#sealed-syntax-unwrap _%stx115375%_)))
              (if _%$e115380%_
                  (values _%$e115380%_)
                  (if (gx#identifier? _%stx115375%_)
                      (let ((_%id115384%_
                             (gx#stx-unwrap__% _%stx115375%_ _%marks115378%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id115384%_ '1 '#f '#f)
                         (let ((_%$e115386%_
                                (##unchecked-structure-ref
                                 _%id115384%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e115386%_ _%$e115386%_ _%src115376%_))
                         _%ctx115377%_
                         (##unchecked-structure-ref _%id115384%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx115375%_)
                       (let ((_%$e115390%_ (gx#stx-source _%stx115375%_)))
                         (if _%$e115390%_ _%$e115390%_ _%src115376%_))
                       _%ctx115377%_
                       (reverse _%marks115378%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx115375%_
             _%src115376%_
             _%ctx115377%_
             (reverse _%marks115378%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx115396%_)
        (let* ((_%src115398%_ '#f)
               (_%ctx115400%_ (gx#current-expander-context))
               (_%marks115402%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115396%_
           _%src115398%_
           _%ctx115400%_
           _%marks115402%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx115404%_ _%src115405%_)
        (let* ((_%ctx115407%_ (gx#current-expander-context))
               (_%marks115409%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115404%_
           _%src115405%_
           _%ctx115407%_
           _%marks115409%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx115411%_ _%src115412%_ _%ctx115413%_)
        (let ((_%marks115415%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115411%_
           _%src115412%_
           _%ctx115413%_
           _%marks115415%_))))
    (define gx#core-quote-syntax
      (lambda _g118407_
        (let ((_g118406_ (##length _g118407_)))
          (cond ((##fx= _g118406_ 1) (apply gx#core-quote-syntax__0 _g118407_))
                ((##fx= _g118406_ 2) (apply gx#core-quote-syntax__1 _g118407_))
                ((##fx= _g118406_ 3) (apply gx#core-quote-syntax__2 _g118407_))
                ((##fx= _g118406_ 4) (apply gx#core-quote-syntax__% _g118407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g118407_))))))
    (define gx#core-cons
      (lambda (_%hd115371%_ _%tl115372%_)
        (cons (gx#core-quote-syntax__0 _%hd115371%_) _%tl115372%_)))
    (define gx#core-list
      (lambda (_%hd115368%_ . _%rest115369%_)
        (cons (gx#core-quote-syntax__0 _%hd115368%_) _%rest115369%_)))
    (define gx#core-cons*
      (lambda (_%hd115365%_ . _%rest115366%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd115365%_) _%rest115366%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path115334%_ _%rel115335%_)
        (let ((_%path115352%_ (gx#stx-e _%stx-path115334%_))
              (_%reldir115353%_
               (let _%lp115337%_ ((_%relsrc115339%_
                                   (let ((_%$e115349%_
                                          (gx#stx-source _%stx-path115334%_)))
                                     (if _%$e115349%_
                                         _%$e115349%_
                                         _%rel115335%_))))
                 (if (##structure-instance-of? _%relsrc115339%_ 'gerbil#AST::t)
                     (_%lp115337%_
                      (let ((_%$e115342%_ (gx#stx-source _%relsrc115339%_)))
                        (if _%$e115342%_
                            _%$e115342%_
                            (gx#stx-e _%relsrc115339%_))))
                     (if (source-location-path? _%relsrc115339%_)
                         (path-directory
                          (source-location-path _%relsrc115339%_))
                         (if (string? _%relsrc115339%_)
                             (path-directory _%relsrc115339%_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _%path115352%_ (path-normalize _%reldir115353%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path115358%_)
        (let ((_%rel115360%_ '#f))
          (gx#core-resolve-path__% _%stx-path115358%_ _%rel115360%_))))
    (define gx#core-resolve-path
      (lambda _g118409_
        (let ((_g118408_ (##length _g118409_)))
          (cond ((##fx= _g118408_ 1) (apply gx#core-resolve-path__0 _g118409_))
                ((##fx= _g118408_ 2) (apply gx#core-resolve-path__% _g118409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g118409_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr115290%_ _%ctx115291%_)
        (let* ((_%repr115292115299%_ _%repr115290%_)
               (_%E115294115303%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr115292115299%_
                         '([phi . subs]))
                  '#!void))
               (_%K115295115311%_
                (lambda (_%subs115306%_ _%phi115307%_)
                  (let ((_%subst115309%_
                         (if (not (null? _%subs115306%_))
                             (list->hash-table-eq _%subs115306%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst115309%_
                     _%ctx115291%_
                     _%phi115307%_
                     '#f)))))
          (if (##pair? _%repr115292115299%_)
              (let ((_%hd115296115314%_ (##car _%repr115292115299%_))
                    (_%tl115297115316%_ (##cdr _%repr115292115299%_)))
                (let* ((_%phi115319%_ _%hd115296115314%_)
                       (_%subs115321%_ _%tl115297115316%_))
                  (_%K115295115311%_ _%subs115321%_ _%phi115319%_)))
              (_%E115294115303%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr115326%_)
        (let ((_%ctx115328%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr115326%_ _%ctx115328%_))))
    (define gx#core-deserialize-mark
      (lambda _g118411_
        (let ((_g118410_ (##length _g118411_)))
          (cond ((##fx= _g118410_ 1)
                 (apply gx#core-deserialize-mark__0 _g118411_))
                ((##fx= _g118410_ 2)
                 (apply gx#core-deserialize-mark__% _g118411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g118411_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx115287%_)
        (gx#stx-rewrap _%stx115287%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx115285%_)
        (gx#stx-unwrap__% _%stx115285%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx115255%_)
        (let* ((_%g115256115264%_ (gx#current-expander-marks))
               (_%else115258115272%_ (lambda () _%stx115255%_))
               (_%K115260115277%_
                (lambda (_%hd115275%_)
                  (gx#stx-apply-mark _%stx115255%_ _%hd115275%_))))
          (if (##pair? _%g115256115264%_)
              (let* ((_%hd115261115280%_ (##car _%g115256115264%_))
                     (_%hd115283%_ _%hd115261115280%_))
                (_%K115260115277%_ _%hd115283%_))
              (_%else115258115272%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx115240%_ _%E115241%_)
        (let ((_%bind115243%_ (gx#resolve-identifier__0 _%stx115240%_)))
          (if (##structure-direct-instance-of?
               _%bind115243%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind115243%_ '4 '#f '#f)
              (_%E115241%_ _%stx115240%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx115248%_)
        (let ((_%E115250%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx115248%_ _%E115250%_))))
    (define gx#syntax-local-e
      (lambda _g118413_
        (let ((_g118412_ (##length _g118413_)))
          (cond ((##fx= _g118412_ 1) (apply gx#syntax-local-e__0 _g118413_))
                ((##fx= _g118412_ 2) (apply gx#syntax-local-e__% _g118413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g118413_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx115224%_ _%E115225%_)
        (let ((_%e115227%_ (gx#syntax-local-e__% _%stx115224%_ _%E115225%_)))
          (if (##structure-instance-of? _%e115227%_ 'gx#expander::t)
              (##structure-ref _%e115227%_ '1 gx#expander::t '#f)
              _%e115227%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx115232%_)
        (let ((_%E115234%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx115232%_ _%E115234%_))))
    (define gx#syntax-local-value
      (lambda _g118415_
        (let ((_g118414_ (##length _g118415_)))
          (cond ((##fx= _g118414_ 1)
                 (apply gx#syntax-local-value__0 _g118415_))
                ((##fx= _g118414_ 2)
                 (apply gx#syntax-local-value__% _g118415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g118415_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx115221%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx115221%_)))))
