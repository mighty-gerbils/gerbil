(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712757955)
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
      (lambda _%$args117970%_
        (apply make-instance gx#expander-context::t _%$args117970%_)))
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
      (lambda _%$args117967%_
        (apply make-instance gx#root-context::t _%$args117967%_)))
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
      (lambda _%$args117964%_
        (apply make-instance gx#phi-context::t _%$args117964%_)))
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
      (lambda _%$args117961%_
        (apply make-instance gx#top-context::t _%$args117961%_)))
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
      (lambda _%$args117958%_
        (apply make-instance gx#module-context::t _%$args117958%_)))
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
      (lambda _%$args117955%_
        (apply make-instance gx#prelude-context::t _%$args117955%_)))
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
      (lambda _%$args117952%_
        (apply make-instance gx#local-context::t _%$args117952%_)))
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
      (lambda (_%self117925%_ _%id117926%_ _%super117927%_)
        (let ((_%self117930%_ _%self117925%_))
          (if (##fx< '3 (##structure-length _%self117930%_))
              (begin
                (##unchecked-structure-set!
                 _%self117930%_
                 _%id117926%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117930%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117930%_
                 _%super117927%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117930%_
                     '3
                     (##vector-length _%self117930%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117943%_ _%id117944%_)
        (let ((_%super117946%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117943%_
           _%id117944%_
           _%super117946%_))))
    (define gx#phi-context:::init!
      (lambda _g118013_
        (let ((_g118012_ (##length _g118013_)))
          (cond ((##fx= _g118012_ 2)
                 (apply gx#phi-context:::init!__0 _g118013_))
                ((##fx= _g118012_ 3)
                 (apply gx#phi-context:::init!__% _g118013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g118013_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117778%_ _%super117779%_)
        (let ((_%self117782%_ _%self117778%_))
          (if (##fx< '3 (##structure-length _%self117782%_))
              (begin
                (##unchecked-structure-set!
                 _%self117782%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117782%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117782%_
                 _%super117779%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117782%_
                     '3
                     (##vector-length _%self117782%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117795%_)
        (let ((_%super117797%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117795%_ _%super117797%_))))
    (define gx#local-context:::init!
      (lambda _g118015_
        (let ((_g118014_ (##length _g118015_)))
          (cond ((##fx= _g118014_ 1)
                 (apply gx#local-context:::init!__0 _g118015_))
                ((##fx= _g118014_ 2)
                 (apply gx#local-context:::init!__% _g118015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g118015_))))))
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
      (lambda _%$args117652%_
        (apply make-instance gx#binding::t _%$args117652%_)))
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
      (lambda _%$args117649%_
        (apply make-instance gx#runtime-binding::t _%$args117649%_)))
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
      (lambda _%$args117646%_
        (apply make-instance gx#local-binding::t _%$args117646%_)))
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
      (lambda _%$args117643%_
        (apply make-instance gx#top-binding::t _%$args117643%_)))
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
      (lambda _%$args117640%_
        (apply make-instance gx#module-binding::t _%$args117640%_)))
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
      (lambda _%$args117637%_
        (apply make-instance gx#extern-binding::t _%$args117637%_)))
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
      (lambda _%$args117634%_
        (apply make-instance gx#syntax-binding::t _%$args117634%_)))
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
      (lambda _%$args117631%_
        (apply make-instance gx#import-binding::t _%$args117631%_)))
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
      (lambda _%$args117628%_
        (apply make-instance gx#alias-binding::t _%$args117628%_)))
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
      (lambda _%$args117625%_
        (apply make-instance gx#expander::t _%$args117625%_)))
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
      (lambda _%$args117622%_
        (apply make-instance gx#core-expander::t _%$args117622%_)))
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
      (lambda _%$args117619%_
        (apply make-instance gx#expression-form::t _%$args117619%_)))
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
      (lambda _%$args117616%_
        (apply make-instance gx#special-form::t _%$args117616%_)))
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
      (lambda _%$args117613%_
        (apply make-instance gx#definition-form::t _%$args117613%_)))
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
      (lambda _%$args117610%_
        (apply make-instance gx#top-special-form::t _%$args117610%_)))
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
      (lambda _%$args117607%_
        (apply make-instance gx#module-special-form::t _%$args117607%_)))
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
      (lambda _%$args117604%_
        (apply make-instance gx#feature-expander::t _%$args117604%_)))
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
      (lambda _%$args117601%_
        (apply make-instance gx#private-feature-expander::t _%$args117601%_)))
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
      (lambda _%$args117598%_
        (apply make-instance gx#reserved-expander::t _%$args117598%_)))
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
      (lambda _%$args117595%_
        (apply make-instance gx#macro-expander::t _%$args117595%_)))
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
      (lambda _%$args117592%_
        (apply make-instance gx#rename-macro-expander::t _%$args117592%_)))
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
      (lambda _%$args117589%_
        (apply make-instance gx#user-expander::t _%$args117589%_)))
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
      (lambda _%$args117586%_
        (apply make-instance gx#expander-mark::t _%$args117586%_)))
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
      (lambda (_%ctx117570%_
               _%message117571%_
               _%stx117572%_
               .
               _%details117573%_)
        (let ((_%ctx117584%_
               (let ((_%$e117575%_ _%ctx117570%_))
                 (if _%$e117575%_
                     _%$e117575%_
                     (let ((_%$e117578%_ (gx#core-context-top__0)))
                       (if _%$e117578%_
                           ((lambda (_%ctx117581%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117581%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117578%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message117571%_
                  (cons _%stx117572%_ _%details117573%_)
                  _%ctx117584%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117557%_ _%expression?117558%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117557%_ _%expression?117558%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117563%_)
        (let ((_%expression?117565%_ '#f))
          (gx#eval-syntax__% _%stx117563%_ _%expression?117565%_))))
    (define gx#eval-syntax
      (lambda _g118017_
        (let ((_g118016_ (##length _g118017_)))
          (cond ((##fx= _g118016_ 1) (apply gx#eval-syntax__0 _g118017_))
                ((##fx= _g118016_ 2) (apply gx#eval-syntax__% _g118017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g118017_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117554%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117554%_))))
    (define gx#core-expand__%
      (lambda (_%stx117541%_ _%expression?117542%_)
        (if _%expression?117542%_
            (gx#core-expand-expression _%stx117541%_)
            (gx#core-expand-top _%stx117541%_))))
    (define gx#core-expand__0
      (lambda (_%stx117547%_)
        (let ((_%expression?117549%_ '#f))
          (gx#core-expand__% _%stx117547%_ _%expression?117549%_))))
    (define gx#core-expand
      (lambda _g118019_
        (let ((_g118018_ (##length _g118019_)))
          (cond ((##fx= _g118018_ 1) (apply gx#core-expand__0 _g118019_))
                ((##fx= _g118018_ 2) (apply gx#core-expand__% _g118019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g118019_))))))
    (define gx#core-expand-top
      (lambda (_%stx117508%_)
        (let* ((_%stx117510%_ (gx#core-expand*__0 _%stx117508%_))
               (_%e117511117518%_ _%stx117510%_)
               (_%E117513117522%_
                (lambda () (gx#core-expand-expression _%stx117510%_)))
               (_%E117512117536%_
                (lambda ()
                  (if (gx#stx-pair? _%e117511117518%_)
                      (let ((_%e117514117526%_
                             (gx#syntax-e _%e117511117518%_)))
                        (let ((_%hd117515117529%_ (##car _%e117514117526%_))
                              (_%tl117516117531%_ (##cdr _%e117514117526%_)))
                          (let ((_%form117534%_ _%hd117515117529%_))
                            (if (gx#core-bound-identifier?__0 _%form117534%_)
                                _%stx117510%_
                                (_%E117513117522%_)))))
                      (_%E117513117522%_)))))
          (_%E117512117536%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117440%_)
        (letrec ((_%sealed-expression?117442%_
                  (lambda (_%hd117478%_)
                    (if (gx#sealed-syntax? _%hd117478%_)
                        (let* ((_%e117479117486%_ _%hd117478%_)
                               (_%E117481117490%_ (lambda () '#f))
                               (_%E117480117504%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117479117486%_)
                                      (let ((_%e117482117494%_
                                             (gx#syntax-e _%e117479117486%_)))
                                        (let ((_%hd117483117497%_
                                               (##car _%e117482117494%_))
                                              (_%tl117484117499%_
                                               (##cdr _%e117482117494%_)))
                                          (let ((_%form117502%_
                                                 _%hd117483117497%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117502%_
                                                 gx#expression-form-binding?)
                                                (_%E117481117490%_)))))
                                      (_%E117481117490%_)))))
                          (_%E117480117504%_))
                        '#f)))
                 (_%illegal-expression117443%_
                  (lambda (_%hd117475%_ . _%_117476%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117440%_
                     _%hd117475%_)))
                 (_%expand-e117444%_
                  (lambda (_%form117467%_ _%hd117468%_)
                    (let ((_%bind117470%_
                           (if (##structure-instance-of?
                                _%form117467%_
                                'gx#binding::t)
                               _%form117467%_
                               (gx#resolve-identifier__0 _%form117467%_))))
                      (if (gx#core-expander-binding? _%bind117470%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind117470%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd117468%_
                            (gx#stx-source _%stx117440%_)))
                          (if (##structure-direct-instance-of?
                               _%bind117470%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind117470%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd117468%_
                                 (gx#stx-source _%stx117440%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx117440%_
                               _%form117467%_)))))))
          (let ((_%hd117446%_ (gx#core-expand-head _%stx117440%_)))
            (if (_%sealed-expression?117442%_ _%hd117446%_)
                _%hd117446%_
                (if (gx#stx-pair? _%hd117446%_)
                    (let* ((_%form117450%_ (gx#stx-car _%hd117446%_))
                           (_%bind117452%_
                            (if (gx#identifier? _%form117450%_)
                                (gx#resolve-identifier__0 _%form117450%_)
                                '#f)))
                      (if (or (not _%bind117452%_)
                              (not (gx#core-expander-binding? _%bind117452%_)))
                          (_%expand-e117444%_
                           '%%app
                           (cons '%%app _%hd117446%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind117452%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd117446%_
                               _%illegal-expression117443%_)
                              (if (gx#expression-form-binding? _%bind117452%_)
                                  (_%expand-e117444%_
                                   _%bind117452%_
                                   _%hd117446%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind117452%_)
                                      (gx#core-expand-expression
                                       (_%expand-e117444%_
                                        _%bind117452%_
                                        _%hd117446%_))
                                      (_%illegal-expression117443%_
                                       _%hd117446%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd117446%_)
                        (_%illegal-expression117443%_ _%hd117446%_)
                        (if (gx#identifier? _%hd117446%_)
                            (_%expand-e117444%_
                             '%%ref
                             (cons '%%ref (cons _%hd117446%_ '())))
                            (if (gx#stx-datum? _%hd117446%_)
                                (_%expand-e117444%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd117446%_ '())))
                                (_%illegal-expression117443%_
                                 _%hd117446%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117435%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117438%_ (gx#core-expand-expression _%stx117435%_)))
             (values _%stx117438%_ (gx#eval-syntax* _%stx117438%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117416%_ _%stop?117417%_)
        (let _%lp117419%_ ((_%stx117421%_ _%stx117416%_))
          (if (_%stop?117417%_ _%stx117421%_)
              _%stx117421%_
              (let ((_%rstx117423%_ (gx#core-expand1 _%stx117421%_)))
                (if (eq? _%stx117421%_ _%rstx117423%_)
                    _%stx117421%_
                    (_%lp117419%_ _%rstx117423%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117428%_)
        (let ((_%stop?117430%_ false))
          (gx#core-expand*__% _%stx117428%_ _%stop?117430%_))))
    (define gx#core-expand*
      (lambda _g118021_
        (let ((_g118020_ (##length _g118021_)))
          (cond ((##fx= _g118020_ 1) (apply gx#core-expand*__0 _g118021_))
                ((##fx= _g118020_ 2) (apply gx#core-expand*__% _g118021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g118021_))))))
    (define gx#core-expand1
      (lambda (_%stx117368%_)
        (letrec ((_%step117370%_
                  (lambda (_%hd117407%_)
                    (let ((_%bind117409%_
                           (gx#resolve-identifier__0 _%hd117407%_)))
                      (if (##structure-instance-of?
                           _%bind117409%_
                           'gx#runtime-binding::t)
                          _%stx117368%_
                          (if (##structure-direct-instance-of?
                               _%bind117409%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind117409%_
                                '4
                                '#f
                                '#f)
                               _%stx117368%_)
                              (if (not _%bind117409%_)
                                  _%stx117368%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx117368%_))))))))
          (let* ((_%e117371117379%_ _%stx117368%_)
                 (_%E117377117383%_ (lambda () _%stx117368%_))
                 (_%E117373117389%_
                  (lambda ()
                    (let ((_%hd117387%_ _%e117371117379%_))
                      (if (gx#identifier? _%hd117387%_)
                          (_%step117370%_ _%hd117387%_)
                          (_%E117377117383%_)))))
                 (_%E117372117403%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117371117379%_)
                        (let ((_%e117374117393%_
                               (gx#syntax-e _%e117371117379%_)))
                          (let ((_%hd117375117396%_ (##car _%e117374117393%_))
                                (_%tl117376117398%_ (##cdr _%e117374117393%_)))
                            (let ((_%hd117401%_ _%hd117375117396%_))
                              (if (gx#identifier? _%hd117401%_)
                                  (_%step117370%_ _%hd117401%_)
                                  (_%E117373117389%_)))))
                        (_%E117373117389%_)))))
            (_%E117372117403%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117334%_)
        (letrec ((_%stop?117336%_
                  (lambda (_%stx117338%_)
                    (let* ((_%e117339117346%_ _%stx117338%_)
                           (_%E117341117350%_ (lambda () '#f))
                           (_%E117340117364%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117339117346%_)
                                  (let ((_%e117342117354%_
                                         (gx#syntax-e _%e117339117346%_)))
                                    (let ((_%hd117343117357%_
                                           (##car _%e117342117354%_))
                                          (_%tl117344117359%_
                                           (##cdr _%e117342117354%_)))
                                      (let ((_%hd117362%_ _%hd117343117357%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117362%_)
                                            (_%E117341117350%_)))))
                                  (_%E117341117350%_)))))
                      (_%E117340117364%_)))))
          (gx#core-expand*__% _%stx117334%_ _%stop?117336%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx117140%_
               _%expand-special117141%_
               _%begin-form117142%_
               _%expand-e117143%_)
        (letrec ((_%expand-splice117145%_
                  (lambda (_%hd117308%_
                           _%body117309%_
                           _%rest117310%_
                           _%r117311%_)
                    (if (gx#stx-list? _%body117309%_)
                        (_%K117149%_
                         (gx#stx-foldr cons _%rest117310%_ _%body117309%_)
                         _%r117311%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx117140%_
                         _%hd117308%_))))
                 (_%expand-cond-expand117146%_
                  (lambda (_%hd117304%_ _%rest117305%_ _%r117306%_)
                    (_%K117149%_
                     (cons (gx#core-expand-cond-expand% _%hd117304%_)
                           _%rest117305%_)
                     _%r117306%_)))
                 (_%expand-include117147%_
                  (lambda (_%hd117253%_ _%rest117254%_ _%r117255%_)
                    (let* ((_%e117256117266%_ _%hd117253%_)
                           (_%E117258117270%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117256117266%_)))
                           (_%E117257117300%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117256117266%_)
                                  (let ((_%e117259117274%_
                                         (gx#syntax-e _%e117256117266%_)))
                                    (let ((_%hd117260117277%_
                                           (##car _%e117259117274%_))
                                          (_%tl117261117279%_
                                           (##cdr _%e117259117274%_)))
                                      (if (gx#stx-pair? _%tl117261117279%_)
                                          (let ((_%e117262117282%_
                                                 (gx#syntax-e
                                                  _%tl117261117279%_)))
                                            (let ((_%hd117263117285%_
                                                   (##car _%e117262117282%_))
                                                  (_%tl117264117287%_
                                                   (##cdr _%e117262117282%_)))
                                              (let ((_%path117290%_
                                                     _%hd117263117285%_))
                                                (if (gx#stx-null?
                                                     _%tl117264117287%_)
                                                    (if (gx#stx-string?
                                                         _%path117290%_)
                                                        (let* ((_%rpath117292%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path117290%_
                         (gx#stx-source _%hd117253%_)))
                       (_%block117294%_
                        (gx#core-expand-include%__%
                         _%hd117253%_
                         _%rpath117292%_))
                       (_%rbody117297%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block117294%_
                            _%expand-special117141%_
                            '#f
                            _%expand-e117143%_))
                         gx#current-expander-path
                         (cons _%rpath117292%_ (gx#current-expander-path)))))
                  (_%K117149%_
                   _%rest117254%_
                   (__foldr1 cons _%r117255%_ _%rbody117297%_)))
                (_%E117258117270%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E117258117270%_)))))
                                          (_%E117258117270%_))))
                                  (_%E117258117270%_)))))
                      (_%E117257117300%_))))
                 (_%expand-expression117148%_
                  (lambda (_%hd117249%_ _%rest117250%_ _%r117251%_)
                    (_%K117149%_
                     _%rest117250%_
                     (cons (_%expand-e117143%_ _%hd117249%_) _%r117251%_))))
                 (_%K117149%_
                  (lambda (_%rest117179%_ _%r117180%_)
                    (let* ((_%e117181117188%_ _%rest117179%_)
                           (_%E117183117192%_
                            (lambda ()
                              (if _%begin-form117142%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form117142%_
                                    (reverse _%r117180%_))
                                   (gx#stx-source _%stx117140%_))
                                  _%r117180%_)))
                           (_%E117182117245%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117181117188%_)
                                  (let ((_%e117184117196%_
                                         (gx#syntax-e _%e117181117188%_)))
                                    (let ((_%hd117185117199%_
                                           (##car _%e117184117196%_))
                                          (_%tl117186117201%_
                                           (##cdr _%e117184117196%_)))
                                      (let* ((_%hd117204%_ _%hd117185117199%_)
                                             (_%rest117206%_
                                              _%tl117186117201%_))
                                        (if '#t
                                            (let* ((_%hd117208%_
                                                    (gx#core-expand-head
                                                     _%hd117204%_))
                                                   (_%e117209117216%_
                                                    _%hd117208%_)
                                                   (_%E117211117220%_
                                                    (lambda ()
                                                      (_%expand-expression117148%_
                                                       _%hd117208%_
                                                       _%rest117206%_
                                                       _%r117180%_)))
                                                   (_%E117210117241%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117209117216%_)
                                                          (let ((_%e117212117224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117209117216%_)))
                    (let ((_%hd117213117227%_ (##car _%e117212117224%_))
                          (_%tl117214117229%_ (##cdr _%e117212117224%_)))
                      (let* ((_%form117232%_ _%hd117213117227%_)
                             (_%body117234%_ _%tl117214117229%_))
                        (if '#t
                            (let ((_%bind117236%_
                                   (if (gx#identifier? _%form117232%_)
                                       (gx#resolve-identifier__0
                                        _%form117232%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind117236%_)
                                  (let ((_%$e117238%_
                                         (##unchecked-structure-ref
                                          _%bind117236%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e117238%_)
                                        (_%expand-splice117145%_
                                         _%hd117208%_
                                         _%body117234%_
                                         _%rest117206%_
                                         _%r117180%_)
                                        (if (eq? '%#cond-expand _%$e117238%_)
                                            (_%expand-cond-expand117146%_
                                             _%hd117208%_
                                             _%rest117206%_
                                             _%r117180%_)
                                            (if (eq? '%#include _%$e117238%_)
                                                (_%expand-include117147%_
                                                 _%hd117208%_
                                                 _%rest117206%_
                                                 _%r117180%_)
                                                (_%expand-special117141%_
                                                 _%hd117208%_
                                                 _%K117149%_
                                                 _%rest117206%_
                                                 _%r117180%_)))))
                                  (_%expand-expression117148%_
                                   _%hd117208%_
                                   _%rest117206%_
                                   _%r117180%_)))
                            (_%E117211117220%_)))))
                  (_%E117211117220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117210117241%_))
                                            (_%E117183117192%_)))))
                                  (_%E117183117192%_)))))
                      (_%E117182117245%_)))))
          (let* ((_%e117150117157%_ _%stx117140%_)
                 (_%E117152117161%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117150117157%_)))
                 (_%E117151117175%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117150117157%_)
                        (let ((_%e117153117165%_
                               (gx#syntax-e _%e117150117157%_)))
                          (let ((_%hd117154117168%_ (##car _%e117153117165%_))
                                (_%tl117155117170%_ (##cdr _%e117153117165%_)))
                            (let ((_%body117173%_ _%tl117155117170%_))
                              (if (gx#stx-list? _%body117173%_)
                                  (_%K117149%_ _%body117173%_ '())
                                  (_%E117152117161%_)))))
                        (_%E117152117161%_)))))
            (_%E117151117175%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117316%_ _%expand-special117317%_)
        (let* ((_%begin-form117319%_ '%#begin)
               (_%expand-e117321%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117316%_
           _%expand-special117317%_
           _%begin-form117319%_
           _%expand-e117321%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117323%_ _%expand-special117324%_ _%begin-form117325%_)
        (let ((_%expand-e117327%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117323%_
           _%expand-special117324%_
           _%begin-form117325%_
           _%expand-e117327%_))))
    (define gx#core-expand-block
      (lambda _g118023_
        (let ((_g118022_ (##length _g118023_)))
          (cond ((##fx= _g118022_ 2) (apply gx#core-expand-block__0 _g118023_))
                ((##fx= _g118022_ 3) (apply gx#core-expand-block__1 _g118023_))
                ((##fx= _g118022_ 4) (apply gx#core-expand-block__% _g118023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g118023_))))))
    (define gx#core-expand-block*
      (lambda (_%stx117088%_ _%expand-special117089%_)
        (let* ((_%g117090117101%_
                (gx#core-expand-block__1
                 _%stx117088%_
                 _%expand-special117089%_
                 '#f))
               (_%E117094117105%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117090117101%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K117099117136%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx117088%_)))
                (_%K117096117122%_ (lambda (_%expr117120%_) _%expr117120%_))
                (_%K117095117111%_
                 (lambda (_%body117109%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body117109%_))
                    (gx#stx-source _%stx117088%_)))))
            (let ((_%try-match117092117132%_
                   (lambda ()
                     (if (##pair? _%g117090117101%_)
                         (let ((_%tl117098117127%_ (##cdr _%g117090117101%_))
                               (_%hd117097117125%_ (##car _%g117090117101%_)))
                           (if (##null? _%tl117098117127%_)
                               (let ((_%expr117130%_ _%hd117097117125%_))
                                 (_%K117096117122%_ _%expr117130%_))
                               (let ((_%body117114%_ _%g117090117101%_))
                                 (_%K117095117111%_ _%body117114%_))))
                         (let ((_%body117114%_ _%g117090117101%_))
                           (_%K117095117111%_ _%body117114%_))))))
              (if (##null? _%g117090117101%_)
                  (_%K117099117136%_)
                  (_%try-match117092117132%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx116913%_)
        (letrec ((_%satisfied?116915%_
                  (lambda (_%condition117016%_)
                    (let* ((_%e117017117032%_ _%condition117016%_)
                           (_%E117027117036%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117017117032%_)))
                           (_%E117020117055%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117017117032%_)
                                  (let ((_%e117028117040%_
                                         (gx#syntax-e _%e117017117032%_)))
                                    (let ((_%hd117029117043%_
                                           (##car _%e117028117040%_))
                                          (_%tl117030117045%_
                                           (##cdr _%e117028117040%_)))
                                      (let* ((_%combinator117048%_
                                              _%hd117029117043%_)
                                             (_%body117050%_
                                              _%tl117030117045%_))
                                        (if (gx#stx-list? _%body117050%_)
                                            (let ((_%$e117052%_
                                                   (gx#stx-e
                                                    _%combinator117048%_)))
                                              (if (eq? 'not _%$e117052%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?116915%_
                                                        _%body117050%_))
                                                  (if (eq? 'and _%$e117052%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?116915%_
                                                       _%body117050%_)
                                                      (if (eq? 'or
                                                               _%$e117052%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?116915%_
                                                           _%body117050%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e117052%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body117050%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx116913%_
                       _%combinator117048%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E117027117036%_)))))
                                  (_%E117027117036%_))))
                           (_%E117019117078%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117017117032%_)
                                  (let ((_%e117021117059%_
                                         (gx#syntax-e _%e117017117032%_)))
                                    (let ((_%hd117022117062%_
                                           (##car _%e117021117059%_))
                                          (_%tl117023117064%_
                                           (##cdr _%e117021117059%_)))
                                      (if (and (gx#identifier?
                                                _%hd117022117062%_)
                                               (gx#core-identifier=?
                                                _%hd117022117062%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl117023117064%_)
                                              (let ((_%e117024117067%_
                                                     (gx#syntax-e
                                                      _%tl117023117064%_)))
                                                (let ((_%hd117025117070%_
                                                       (##car _%e117024117067%_))
                                                      (_%tl117026117072%_
                                                       (##cdr _%e117024117067%_)))
                                                  (let ((_%expr117075%_
                                                         _%hd117025117070%_))
                                                    (if (gx#stx-null?
                                                         _%tl117026117072%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr117075%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E117020117055%_))
                (_%E117020117055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117020117055%_))
                                          (_%E117020117055%_))))
                                  (_%E117020117055%_))))
                           (_%E117018117084%_
                            (lambda ()
                              (let ((_%id117082%_ _%e117017117032%_))
                                (if (gx#identifier? _%id117082%_)
                                    (gx#core-bound-identifier?__%
                                     _%id117082%_
                                     gx#feature-binding?)
                                    (_%E117019117078%_))))))
                      (_%E117018117084%_))))
                 (_%loop116916%_
                  (lambda (_%rest116946%_)
                    (let* ((_%e116947116955%_ _%rest116946%_)
                           (_%E116953116959%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116947116955%_)))
                           (_%E116949116963%_
                            (lambda ()
                              (if (gx#stx-null? _%e116947116955%_)
                                  (if '#t '() (_%E116953116959%_))
                                  (_%E116953116959%_))))
                           (_%E116948117012%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116947116955%_)
                                  (let ((_%e116950116967%_
                                         (gx#syntax-e _%e116947116955%_)))
                                    (let ((_%hd116951116970%_
                                           (##car _%e116950116967%_))
                                          (_%tl116952116972%_
                                           (##cdr _%e116950116967%_)))
                                      (let* ((_%hd116975%_ _%hd116951116970%_)
                                             (_%rest116977%_
                                              _%tl116952116972%_))
                                        (if '#t
                                            (let* ((_%e116978116985%_
                                                    _%hd116975%_)
                                                   (_%E116980116989%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e116978116985%_)))
                                                   (_%E116979117008%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116978116985%_)
                                                          (let ((_%e116981116993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116978116985%_)))
                    (let ((_%hd116982116996%_ (##car _%e116981116993%_))
                          (_%tl116983116998%_ (##cdr _%e116981116993%_)))
                      (let* ((_%condition117001%_ _%hd116982116996%_)
                             (_%body117003%_ _%tl116983116998%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition117001%_ 'else)
                                (if (gx#stx-null? _%rest116977%_)
                                    _%body117003%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _%stx116913%_
                                     _%hd116975%_))
                                (if (_%satisfied?116915%_ _%condition117001%_)
                                    _%body117003%_
                                    (_%loop116916%_ _%rest116977%_)))
                            (_%E116980116989%_)))))
                  (_%E116980116989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116979117008%_))
                                            (_%E116949116963%_)))))
                                  (_%E116949116963%_)))))
                      (_%E116948117012%_)))))
          (let* ((_%e116917116924%_ _%stx116913%_)
                 (_%E116919116928%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116917116924%_)))
                 (_%E116918116942%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116917116924%_)
                        (let ((_%e116920116932%_
                               (gx#syntax-e _%e116917116924%_)))
                          (let ((_%hd116921116935%_ (##car _%e116920116932%_))
                                (_%tl116922116937%_ (##cdr _%e116920116932%_)))
                            (let ((_%clauses116940%_ _%tl116922116937%_))
                              (if (gx#stx-list? _%clauses116940%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop116916%_ _%clauses116940%_))
                                  (_%E116919116928%_)))))
                        (_%E116919116928%_)))))
            (_%E116918116942%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx116856%_ _%rpath116857%_)
        (let* ((_%e116858116868%_ _%stx116856%_)
               (_%E116860116872%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e116858116868%_)))
               (_%E116859116899%_
                (lambda ()
                  (if (gx#stx-pair? _%e116858116868%_)
                      (let ((_%e116861116876%_
                             (gx#syntax-e _%e116858116868%_)))
                        (let ((_%hd116862116879%_ (##car _%e116861116876%_))
                              (_%tl116863116881%_ (##cdr _%e116861116876%_)))
                          (if (gx#stx-pair? _%tl116863116881%_)
                              (let ((_%e116864116884%_
                                     (gx#syntax-e _%tl116863116881%_)))
                                (let ((_%hd116865116887%_
                                       (##car _%e116864116884%_))
                                      (_%tl116866116889%_
                                       (##cdr _%e116864116884%_)))
                                  (let ((_%path116892%_ _%hd116865116887%_))
                                    (if (gx#stx-null? _%tl116866116889%_)
                                        (if (gx#stx-string? _%path116892%_)
                                            (let ((_%rpath116897%_
                                                   (let ((_%$e116894%_
                                                          _%rpath116857%_))
                                                     (if _%$e116894%_
                                                         _%$e116894%_
                                                         (gx#core-resolve-path__%
                                                          _%path116892%_
                                                          (gx#stx-source
                                                           _%stx116856%_))))))
                                              (if (member _%rpath116897%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx116856%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath116897%_))
                                                    (gx#stx-source
                                                     _%stx116856%_)))))
                                            (_%E116860116872%_))
                                        (_%E116860116872%_)))))
                              (_%E116860116872%_))))
                      (_%E116860116872%_)))))
          (_%E116859116899%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx116906%_)
        (let ((_%rpath116908%_ '#f))
          (gx#core-expand-include%__% _%stx116906%_ _%rpath116908%_))))
    (define gx#core-expand-include%
      (lambda _g118025_
        (let ((_g118024_ (##length _g118025_)))
          (cond ((##fx= _g118024_ 1)
                 (apply gx#core-expand-include%__0 _g118025_))
                ((##fx= _g118024_ 2)
                 (apply gx#core-expand-include%__% _g118025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g118025_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K116822%_ _%stx116823%_ _%method116824%_)
        (if (procedure? _%K116822%_)
            (let ((_%$e116827%_ (gx#stx-source _%stx116823%_)))
              (if _%$e116827%_
                  ((lambda (_%g116829116831%_)
                     (gx#stx-wrap-source
                      (_%K116822%_ _%stx116823%_)
                      _%g116829116831%_))
                   _%$e116827%_)
                  (_%K116822%_ _%stx116823%_)))
            (let ((_%$e116835%_
                   (bound-method-ref _%K116822%_ _%method116824%_)))
              (if _%$e116835%_
                  ((lambda (_%g116837116839%_)
                     (gx#core-apply-expander__%
                      _%g116837116839%_
                      _%stx116823%_
                      _%method116824%_))
                   _%$e116835%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx116823%_
                   _%method116824%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K116846%_ _%stx116847%_)
        (let ((_%method116849%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K116846%_
           _%stx116847%_
           _%method116849%_))))
    (define gx#core-apply-expander
      (lambda _g118027_
        (let ((_g118026_ (##length _g118027_)))
          (cond ((##fx= _g118026_ 2)
                 (apply gx#core-apply-expander__0 _g118027_))
                ((##fx= _g118026_ 3)
                 (apply gx#core-apply-expander__% _g118027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g118027_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116807%_ _%stx116808%_)
        (let ((_%self116811%_ _%self116807%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx116808%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116649%_ _%stx116650%_)
        (let* ((_%self116653%_ _%self116649%_)
               (_%self116662116668%_ _%self116653%_)
               (_%E116664116672%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116662116668%_
                         '((macro-expander K)))
                  '#!void))
               (_%K116665116677%_
                (lambda (_%K116675%_)
                  (gx#core-apply-expander__0 _%K116675%_ _%stx116650%_))))
          (if '#t
              (let* ((_%e116666116680%_
                      (##unchecked-structure-ref
                       _%self116662116668%_
                       '1
                       '#f
                       '#f))
                     (_%K116683%_ _%e116666116680%_))
                (_%K116665116677%_ _%K116683%_))
              (_%E116664116672%_)))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116491%_ _%stx116492%_)
        (let ((_%self116495%_ _%self116491%_))
          (if (gx#sealed-syntax? _%stx116492%_)
              _%stx116492%_
              (let* ((_%self116504116510%_ _%self116495%_)
                     (_%E116506116514%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116504116510%_
                               '((core-expander K)))
                        '#!void))
                     (_%K116507116519%_
                      (lambda (_%K116517%_)
                        (gx#core-apply-expander__0
                         _%K116517%_
                         _%stx116492%_))))
                (if '#t
                    (let* ((_%e116508116522%_
                            (##unchecked-structure-ref
                             _%self116504116510%_
                             '1
                             '#f
                             '#f))
                           (_%K116525%_ _%e116508116522%_))
                      (_%K116507116519%_ _%K116525%_))
                    (_%E116506116514%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116342%_ _%stx116343%_ _%top?116344%_)
        (let ((_%self116347%_ _%self116342%_))
          (if (_%top?116344%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self116347%_
               _%stx116343%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx116343%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116360%_ _%stx116361%_)
        (let ((_%top?116363%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116360%_
           _%stx116361%_
           _%top?116363%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g118029_
        (let ((_g118028_ (##length _g118029_)))
          (cond ((##fx= _g118028_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g118029_))
                ((##fx= _g118028_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g118029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g118029_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116205%_ _%stx116206%_)
        (let ((_%self116209%_ _%self116205%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self116209%_
           _%stx116206%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116019%_ _%stx116020%_)
        (let* ((_%self116023%_ _%self116019%_)
               (_%self116032116038%_ _%self116023%_)
               (_%E116034116042%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116032116038%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K116035116075%_
                (lambda (_%id116045%_)
                  (let* ((_%e116046116053%_ _%stx116020%_)
                         (_%E116048116057%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e116046116053%_)))
                         (_%E116047116071%_
                          (lambda ()
                            (if (gx#stx-pair? _%e116046116053%_)
                                (let ((_%e116049116061%_
                                       (gx#syntax-e _%e116046116053%_)))
                                  (let ((_%hd116050116064%_
                                         (##car _%e116049116061%_))
                                        (_%tl116051116066%_
                                         (##cdr _%e116049116061%_)))
                                    (let ((_%body116069%_ _%tl116051116066%_))
                                      (if '#t
                                          (gx#core-cons
                                           _%id116045%_
                                           _%body116069%_)
                                          (_%E116048116057%_)))))
                                (_%E116048116057%_)))))
                    (_%E116047116071%_)))))
          (if '#t
              (let* ((_%e116036116078%_
                      (##unchecked-structure-ref
                       _%self116032116038%_
                       '1
                       '#f
                       '#f))
                     (_%id116081%_ _%e116036116078%_))
                (_%K116035116075%_ _%id116081%_))
              (_%E116034116042%_)))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self115845%_ _%stx115846%_ _%method115847%_)
        (let* ((_%self115848115856%_ _%self115845%_)
               (_%E115850115860%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115848115856%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K115851115867%_
                (lambda (_%phi115863%_ _%ctx115864%_ _%K115865%_)
                  (gx#core-apply-user-macro
                   _%K115865%_
                   _%stx115846%_
                   _%ctx115864%_
                   _%phi115863%_
                   _%method115847%_))))
          (if (##structure-instance-of?
               _%self115848115856%_
               'gx#user-expander::t)
              (let* ((_%e115852115870%_
                      (##unchecked-structure-ref
                       _%self115848115856%_
                       '1
                       '#f
                       '#f))
                     (_%K115873%_ _%e115852115870%_)
                     (_%e115853115875%_
                      (##unchecked-structure-ref
                       _%self115848115856%_
                       '2
                       '#f
                       '#f))
                     (_%ctx115878%_ _%e115853115875%_)
                     (_%e115854115880%_
                      (##unchecked-structure-ref
                       _%self115848115856%_
                       '3
                       '#f
                       '#f))
                     (_%phi115883%_ _%e115854115880%_))
                (_%K115851115867%_ _%phi115883%_ _%ctx115878%_ _%K115873%_))
              (_%E115850115860%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self115888%_ _%stx115889%_)
        (let ((_%method115891%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self115888%_
           _%stx115889%_
           _%method115891%_))))
    (define gx#core-apply-user-expander
      (lambda _g118031_
        (let ((_g118030_ (##length _g118031_)))
          (cond ((##fx= _g118030_ 2)
                 (apply gx#core-apply-user-expander__0 _g118031_))
                ((##fx= _g118030_ 3)
                 (apply gx#core-apply-user-expander__% _g118031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g118031_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K115835%_
               _%stx115836%_
               _%ctx115837%_
               _%phi115838%_
               _%method115839%_)
        (let ((_%mark115841%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx115837%_
                _%phi115838%_
                _%stx115836%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K115835%_
               (gx#stx-apply-mark _%stx115836%_ _%mark115841%_)
               _%method115839%_)
              _%mark115841%_))
           gx#current-expander-marks
           (cons _%mark115841%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115683%_ _%phi115684%_ _%ctx115685%_)
        (let _%lp115687%_ ((_%bind115689%_
                            (gx#core-resolve-identifier__%
                             _%stx115683%_
                             _%phi115684%_
                             _%ctx115685%_)))
          (if (##structure-direct-instance-of?
               _%bind115689%_
               'gx#import-binding::t)
              (_%lp115687%_
               (##unchecked-structure-ref _%bind115689%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind115689%_
                   'gx#alias-binding::t)
                  (_%lp115687%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind115689%_ '4 '#f '#f)
                    _%phi115684%_
                    _%ctx115685%_))
                  _%bind115689%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115697%_)
        (let* ((_%phi115699%_ (gx#current-expander-phi))
               (_%ctx115701%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115697%_
           _%phi115699%_
           _%ctx115701%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115703%_ _%phi115704%_)
        (let ((_%ctx115706%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115703%_
           _%phi115704%_
           _%ctx115706%_))))
    (define gx#resolve-identifier
      (lambda _g118033_
        (let ((_g118032_ (##length _g118033_)))
          (cond ((##fx= _g118032_ 1)
                 (apply gx#resolve-identifier__0 _g118033_))
                ((##fx= _g118032_ 2)
                 (apply gx#resolve-identifier__1 _g118033_))
                ((##fx= _g118032_ 3)
                 (apply gx#resolve-identifier__% _g118033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g118033_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115638%_
               _%val115639%_
               _%rebind?115640%_
               _%phi115641%_
               _%ctx115642%_)
        (let ((_%rebind?115647%_
               (if (not _%rebind?115640%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?115640%_)
                       _%rebind?115640%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115638%_)
           _%val115639%_
           _%rebind?115647%_
           _%phi115641%_
           _%ctx115642%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115652%_ _%val115653%_)
        (let* ((_%rebind?115655%_ '#f)
               (_%phi115657%_ (gx#current-expander-phi))
               (_%ctx115659%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115652%_
           _%val115653%_
           _%rebind?115655%_
           _%phi115657%_
           _%ctx115659%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115661%_ _%val115662%_ _%rebind?115663%_)
        (let* ((_%phi115665%_ (gx#current-expander-phi))
               (_%ctx115667%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115661%_
           _%val115662%_
           _%rebind?115663%_
           _%phi115665%_
           _%ctx115667%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115669%_ _%val115670%_ _%rebind?115671%_ _%phi115672%_)
        (let ((_%ctx115674%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115669%_
           _%val115670%_
           _%rebind?115671%_
           _%phi115672%_
           _%ctx115674%_))))
    (define gx#bind-identifier!
      (lambda _g118035_
        (let ((_g118034_ (##length _g118035_)))
          (cond ((##fx= _g118034_ 2) (apply gx#bind-identifier!__0 _g118035_))
                ((##fx= _g118034_ 3) (apply gx#bind-identifier!__1 _g118035_))
                ((##fx= _g118034_ 4) (apply gx#bind-identifier!__2 _g118035_))
                ((##fx= _g118034_ 5) (apply gx#bind-identifier!__% _g118035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g118035_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115604%_ _%phi115605%_ _%ctx115606%_)
        (let _%lp115608%_ ((_%e115610%_ _%stx115604%_)
                           (_%marks115611%_ (gx#current-expander-marks)))
          (if (symbol? _%e115610%_)
              (gx#core-resolve-binding
               _%e115610%_
               _%phi115605%_
               _%phi115605%_
               _%ctx115606%_
               (reverse _%marks115611%_))
              (if (gx#identifier-quote? _%e115610%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e115610%_ '1 '#f '#f)
                   _%phi115605%_
                   '0
                   (##unchecked-structure-ref _%e115610%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e115610%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e115610%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e115610%_ '1 '#f '#f)
                       _%phi115605%_
                       _%phi115605%_
                       _%ctx115606%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e115610%_ '3 '#f '#f)
                        _%marks115611%_))
                      (if (##structure-direct-instance-of?
                           _%e115610%_
                           'gx#syntax-wrap::t)
                          (_%lp115608%_
                           (##unchecked-structure-ref _%e115610%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e115610%_ '3 '#f '#f)
                            _%marks115611%_))
                          (if (##structure-instance-of?
                               _%e115610%_
                               'gerbil#AST::t)
                              (_%lp115608%_
                               (##unchecked-structure-ref
                                _%e115610%_
                                '1
                                '#f
                                '#f)
                               _%marks115611%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx115604%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115622%_)
        (let* ((_%phi115624%_ (gx#current-expander-phi))
               (_%ctx115626%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115622%_
           _%phi115624%_
           _%ctx115626%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115628%_ _%phi115629%_)
        (let ((_%ctx115631%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115628%_
           _%phi115629%_
           _%ctx115631%_))))
    (define gx#core-resolve-identifier
      (lambda _g118037_
        (let ((_g118036_ (##length _g118037_)))
          (cond ((##fx= _g118036_ 1)
                 (apply gx#core-resolve-identifier__0 _g118037_))
                ((##fx= _g118036_ 2)
                 (apply gx#core-resolve-identifier__1 _g118037_))
                ((##fx= _g118036_ 3)
                 (apply gx#core-resolve-identifier__% _g118037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g118037_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115514%_
               _%phi115515%_
               _%src-phi115516%_
               _%ctx115517%_
               _%marks115518%_)
        (letrec ((_%resolve115520%_
                  (lambda (_%ctx115588%_ _%src-phi115589%_ _%key115590%_)
                    (let _%lp115592%_ ((_%ctx115594%_
                                        (gx#core-context-shift
                                         _%ctx115588%_
                                         _%phi115515%_))
                                       (_%dphi115595%_
                                        (fx- _%phi115515%_ _%src-phi115589%_)))
                      (let ((_%$e115597%_
                             (gx#core-context-resolve
                              _%ctx115594%_
                              _%key115590%_)))
                        (if _%$e115597%_
                            (values _%$e115597%_)
                            (if (fxzero? _%dphi115595%_)
                                '#f
                                (if (fxpositive? _%dphi115595%_)
                                    (_%lp115592%_
                                     (gx#core-context-shift _%ctx115594%_ '-1)
                                     (##fx- _%dphi115595%_ '1))
                                    (_%lp115592%_
                                     (gx#core-context-shift _%ctx115594%_ '1)
                                     (##fx+ _%dphi115595%_ '1))))))))))
          (let _%lp115522%_ ((_%ctx115524%_ _%ctx115517%_)
                             (_%src-phi115525%_ _%src-phi115516%_)
                             (_%rest115526%_ _%marks115518%_))
            (let* ((_%rest115527115535%_ _%rest115526%_)
                   (_%else115529115543%_
                    (lambda ()
                      (_%resolve115520%_
                       _%ctx115524%_
                       _%src-phi115525%_
                       _%id115514%_)))
                   (_%K115531115576%_
                    (lambda (_%rest115546%_ _%hd115547%_)
                      (let* ((_%hd115548115554%_ _%hd115547%_)
                             (_%E115550115558%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115548115554%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115551115568%_
                              (lambda (_%subst115561%_)
                                (let ((_%$e115565%_
                                       (let ((_%key115563%_
                                              (if _%subst115561%_
                                                  (hash-get
                                                   _%subst115561%_
                                                   _%id115514%_)
                                                  '#f)))
                                         (if _%key115563%_
                                             (_%resolve115520%_
                                              _%ctx115524%_
                                              _%src-phi115525%_
                                              _%key115563%_)
                                             '#f))))
                                  (if _%$e115565%_
                                      _%$e115565%_
                                      (_%lp115522%_
                                       (##unchecked-structure-ref
                                        _%hd115547%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115547%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115546%_))))))
                        (if (##structure-instance-of?
                             _%hd115548115554%_
                             'gx#expander-mark::t)
                            (let* ((_%e115552115571%_
                                    (##unchecked-structure-ref
                                     _%hd115548115554%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115574%_ _%e115552115571%_))
                              (_%K115551115568%_ _%subst115574%_))
                            (_%E115550115558%_))))))
              (if (##pair? _%rest115527115535%_)
                  (let ((_%hd115532115579%_ (##car _%rest115527115535%_))
                        (_%tl115533115581%_ (##cdr _%rest115527115535%_)))
                    (let* ((_%hd115584%_ _%hd115532115579%_)
                           (_%rest115586%_ _%tl115533115581%_))
                      (_%K115531115576%_ _%rest115586%_ _%hd115584%_)))
                  (_%else115529115543%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115384%_
               _%val115385%_
               _%rebind?115386%_
               _%phi115387%_
               _%ctx115388%_)
        (letrec ((_%update-binding115390%_
                  (lambda (_%xval115463%_)
                    (if (or (_%rebind?115386%_
                             _%ctx115388%_
                             _%xval115463%_
                             _%val115385%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115463%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115463%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115385%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115385%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115463%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115385%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115385%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115463%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val115385%_
                        (if (and (##structure-direct-instance-of?
                                  _%val115385%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115385%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115463%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115385%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115463%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval115463%_
                            (if (and (##structure-direct-instance-of?
                                      _%val115385%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115463%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key115384%_
                                 (cons (##unchecked-structure-ref
                                        _%val115385%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val115385%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval115463%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval115463%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval115463%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval115463%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key115384%_
                                 _%val115385%_
                                 _%xval115463%_))))))
                 (_%gensubst115391%_
                  (lambda (_%subst115458%_ _%id115459%_)
                    (let ((_%eid115461%_
                           (gensym (if (uninterned-symbol? _%id115459%_)
                                       '%
                                       _%id115459%_))))
                      (hash-put! _%subst115458%_ _%id115459%_ _%eid115461%_)
                      _%eid115461%_)))
                 (_%subst!115392%_
                  (lambda (_%key115394%_)
                    (let* ((_%key115395115403%_ _%key115394%_)
                           (_%else115397115411%_ (lambda () _%key115394%_))
                           (_%K115399115446%_
                            (lambda (_%mark115414%_ _%id115415%_)
                              (let* ((_%mark115416115422%_ _%mark115414%_)
                                     (_%E115418115426%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115416115422%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115419115438%_
                                      (lambda (_%subst115429%_)
                                        (if (not _%subst115429%_)
                                            (let ((_%subst115432%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark115414%_
                                               _%subst115432%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst115391%_
                                               _%subst115432%_
                                               _%id115415%_))
                                            (let ((_%$e115434%_
                                                   (hash-get
                                                    _%subst115429%_
                                                    _%id115415%_)))
                                              (if _%$e115434%_
                                                  (values _%$e115434%_)
                                                  (_%gensubst115391%_
                                                   _%subst115429%_
                                                   _%id115415%_)))))))
                                (if (##structure-instance-of?
                                     _%mark115416115422%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115420115441%_
                                            (##unchecked-structure-ref
                                             _%mark115416115422%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115444%_ _%e115420115441%_))
                                      (_%K115419115438%_ _%subst115444%_))
                                    (_%E115418115426%_))))))
                      (if (##pair? _%key115395115403%_)
                          (let ((_%hd115400115449%_
                                 (##car _%key115395115403%_))
                                (_%tl115401115451%_
                                 (##cdr _%key115395115403%_)))
                            (let* ((_%id115454%_ _%hd115400115449%_)
                                   (_%mark115456%_ _%tl115401115451%_))
                              (_%K115399115446%_ _%mark115456%_ _%id115454%_)))
                          (_%else115397115411%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115388%_ _%phi115387%_)
           (_%subst!115392%_ _%key115384%_)
           _%val115385%_
           _%update-binding115390%_))))
    (define gx#core-bind!__0
      (lambda (_%key115484%_ _%val115485%_)
        (let* ((_%rebind?115487%_ false)
               (_%phi115489%_ (gx#current-expander-phi))
               (_%ctx115491%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115484%_
           _%val115485%_
           _%rebind?115487%_
           _%phi115489%_
           _%ctx115491%_))))
    (define gx#core-bind!__1
      (lambda (_%key115493%_ _%val115494%_ _%rebind?115495%_)
        (let* ((_%phi115497%_ (gx#current-expander-phi))
               (_%ctx115499%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115493%_
           _%val115494%_
           _%rebind?115495%_
           _%phi115497%_
           _%ctx115499%_))))
    (define gx#core-bind!__2
      (lambda (_%key115501%_ _%val115502%_ _%rebind?115503%_ _%phi115504%_)
        (let ((_%ctx115506%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115501%_
           _%val115502%_
           _%rebind?115503%_
           _%phi115504%_
           _%ctx115506%_))))
    (define gx#core-bind!
      (lambda _g118039_
        (let ((_g118038_ (##length _g118039_)))
          (cond ((##fx= _g118038_ 2) (apply gx#core-bind!__0 _g118039_))
                ((##fx= _g118038_ 3) (apply gx#core-bind!__1 _g118039_))
                ((##fx= _g118038_ 4) (apply gx#core-bind!__2 _g118039_))
                ((##fx= _g118038_ 5) (apply gx#core-bind!__% _g118039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g118039_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115315%_)
        (if (symbol? _%stx115315%_)
            (let* ((_%g115317115325%_ (gx#current-expander-marks))
                   (_%else115319115333%_ (lambda () _%stx115315%_))
                   (_%K115321115338%_
                    (lambda (_%hd115336%_) (cons _%stx115315%_ _%hd115336%_))))
              (if (##pair? _%g115317115325%_)
                  (let* ((_%hd115322115341%_ (##car _%g115317115325%_))
                         (_%hd115344%_ _%hd115322115341%_))
                    (_%K115321115338%_ _%hd115344%_))
                  (_%else115319115333%_)))
            (if (gx#identifier? _%stx115315%_)
                (let* ((_%id115347%_ (gx#syntax-local-unwrap _%stx115315%_))
                       (_%eid115349%_ (gx#stx-e _%id115347%_))
                       (_%marks115351%_
                        (gx#stx-identifier-marks* _%id115347%_))
                       (_%marks115353115361%_ _%marks115351%_)
                       (_%else115355115369%_ (lambda () _%eid115349%_))
                       (_%K115357115374%_
                        (lambda (_%hd115372%_)
                          (cons _%eid115349%_ _%hd115372%_))))
                  (if (##pair? _%marks115353115361%_)
                      (let* ((_%hd115358115377%_ (##car _%marks115353115361%_))
                             (_%hd115380%_ _%hd115358115377%_))
                        (_%K115357115374%_ _%hd115380%_))
                      (_%else115355115369%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx115315%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx115254%_ _%phi115255%_)
        (letrec ((_%make-phi115257%_
                  (lambda (_%super115313%_)
                    (let ((__obj118011
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj118011
                       (##gensym 'phi)
                       _%super115313%_)
                      __obj118011)))
                 (_%make-phi/up115258%_
                  (lambda (_%ctx115308%_ _%super115309%_)
                    (let ((_%ctx+1115311%_
                           (_%make-phi115257%_ _%super115309%_)))
                      (##unchecked-structure-set!
                       _%ctx115308%_
                       _%ctx+1115311%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115311%_
                       _%ctx115308%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115311%_)))
                 (_%make-phi/down115259%_
                  (lambda (_%ctx115303%_ _%super115304%_)
                    (let ((_%ctx-1115306%_
                           (_%make-phi115257%_ _%super115304%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115306%_
                       _%ctx115303%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115303%_
                       _%ctx-1115306%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115306%_)))
                 (_%shift115260%_
                  (lambda (_%ctx115286%_
                           _%delta115287%_
                           _%make-delta-context115288%_
                           _%phi115289%_
                           _%K115290%_)
                    (let ((_%$e115292%_
                           (##unchecked-structure-ref
                            _%ctx115286%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e115292%_
                          ((lambda (_%super115295%_)
                             (let* ((_%super115297%_
                                     (_%K115290%_
                                      _%super115295%_
                                      _%delta115287%_))
                                    (_%ctx+d115299%_
                                     (_%make-delta-context115288%_
                                      _%ctx115286%_
                                      _%super115297%_)))
                               (_%K115290%_
                                _%ctx+d115299%_
                                (fx- _%phi115289%_ _%delta115287%_))))
                           _%$e115292%_)
                          (error '"Bad context" _%ctx115286%_))))))
          (let _%K115262%_ ((_%ctx115264%_ _%ctx115254%_)
                            (_%phi115265%_ _%phi115255%_))
            (if (fxzero? _%phi115265%_)
                _%ctx115264%_
                (if (##structure-instance-of? _%ctx115264%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi115265%_)
                        (let ((_%$e115269%_
                               (##unchecked-structure-ref
                                _%ctx115264%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e115269%_
                              ((lambda (_%g115271115273%_)
                                 (_%K115262%_
                                  _%g115271115273%_
                                  (##fx- _%phi115265%_ '1)))
                               _%$e115269%_)
                              (_%shift115260%_
                               _%ctx115264%_
                               '1
                               _%make-phi/up115258%_
                               _%phi115265%_
                               _%K115262%_)))
                        (let ((_%$e115277%_
                               (##unchecked-structure-ref
                                _%ctx115264%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e115277%_
                              ((lambda (_%g115279115281%_)
                                 (_%K115262%_
                                  _%g115279115281%_
                                  (##fx+ _%phi115265%_ '1)))
                               _%$e115277%_)
                              (_%shift115260%_
                               _%ctx115264%_
                               '-1
                               _%make-phi/down115259%_
                               _%phi115265%_
                               _%K115262%_))))
                    _%ctx115264%_))))))
    (define gx#core-context-get
      (lambda (_%ctx115251%_ _%key115252%_)
        (hash-get
         (##unchecked-structure-ref _%ctx115251%_ '2 '#f '#f)
         _%key115252%_)))
    (define gx#core-context-put!
      (lambda (_%ctx115247%_ _%key115248%_ _%val115249%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx115247%_ '2 '#f '#f)
         _%key115248%_
         _%val115249%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx115233%_ _%key115234%_)
        (let _%lp115236%_ ((_%ctx115238%_ _%ctx115233%_))
          (let ((_%$e115240%_
                 (gx#core-context-get _%ctx115238%_ _%key115234%_)))
            (if _%$e115240%_
                (values _%$e115240%_)
                (let ((_%$e115243%_
                       (if (##structure-instance-of?
                            _%ctx115238%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx115238%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e115243%_ (_%lp115236%_ _%$e115243%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx115222%_ _%key115223%_ _%val115224%_ _%rebind115225%_)
        (let ((_%$e115227%_ (gx#core-context-get _%ctx115222%_ _%key115223%_)))
          (if _%$e115227%_
              ((lambda (_%xval115230%_)
                 (gx#core-context-put!
                  _%ctx115222%_
                  _%key115223%_
                  (_%rebind115225%_ _%xval115230%_)))
               _%$e115227%_)
              (gx#core-context-put!
               _%ctx115222%_
               _%key115223%_
               _%val115224%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx115197%_ _%stop?115198%_)
        (let _%lp115200%_ ((_%ctx115202%_ _%ctx115197%_))
          (if (_%stop?115198%_ _%ctx115202%_)
              _%ctx115202%_
              (if (##structure-instance-of? _%ctx115202%_ 'gx#phi-context::t)
                  (_%lp115200%_
                   (##unchecked-structure-ref _%ctx115202%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx115211%_ (gx#current-expander-context))
               (_%stop?115213%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115211%_ _%stop?115213%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx115215%_)
        (let ((_%stop?115217%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115215%_ _%stop?115217%_))))
    (define gx#core-context-top
      (lambda _g118041_
        (let ((_g118040_ (##length _g118041_)))
          (cond ((##fx= _g118040_ 0) (apply gx#core-context-top__0 _g118041_))
                ((##fx= _g118040_ 1) (apply gx#core-context-top__1 _g118041_))
                ((##fx= _g118040_ 2) (apply gx#core-context-top__% _g118041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g118041_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx115182%_)
        (let _%lp115184%_ ((_%ctx115186%_ _%ctx115182%_))
          (if (##structure-instance-of? _%ctx115186%_ 'gx#phi-context::t)
              (_%lp115184%_
               (##unchecked-structure-ref _%ctx115186%_ '3 '#f '#f))
              _%ctx115186%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx115192%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx115192%_))))
    (define gx#core-context-root
      (lambda _g118043_
        (let ((_g118042_ (##length _g118043_)))
          (cond ((##fx= _g118042_ 0) (apply gx#core-context-root__0 _g118043_))
                ((##fx= _g118042_ 1) (apply gx#core-context-root__% _g118043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g118043_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx115164%_ . _%ignore115165%_)
        (let ((_%$e115167%_ (gx#current-expander-allow-rebind?)))
          (if _%$e115167%_
              _%$e115167%_
              (if (##structure-instance-of? _%ctx115164%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx115164%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx115164%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx115174%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx115174%_))))
    (define gx#core-context-rebind?
      (lambda _g118045_
        (let ((_g118044_ (##length _g118045_)))
          (cond ((##fx= _g118044_ 0)
                 (apply gx#core-context-rebind?__0 _g118045_))
                ((##fx= _g118044_ 1)
                 (apply gx#core-context-rebind?__% _g118045_))
                ((##fx>= _g118044_ 1)
                 (apply gx#core-context-rebind?__% _g118045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g118045_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx115147%_)
        (let ((_%$e115149%_ (gx#core-context-top__1 _%ctx115147%_)))
          (if _%$e115149%_
              ((lambda (_%ctx115152%_)
                 (if (##structure-instance-of?
                      _%ctx115152%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx115152%_ '6 '#f '#f)
                     '#f))
               _%$e115149%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx115159%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx115159%_))))
    (define gx#core-context-namespace
      (lambda _g118047_
        (let ((_g118046_ (##length _g118047_)))
          (cond ((##fx= _g118046_ 0)
                 (apply gx#core-context-namespace__0 _g118047_))
                ((##fx= _g118046_ 1)
                 (apply gx#core-context-namespace__% _g118047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g118047_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind115133%_ _%is?115134%_)
        (if (##structure-direct-instance-of?
             _%bind115133%_
             'gx#syntax-binding::t)
            (_%is?115134%_
             (##unchecked-structure-ref _%bind115133%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind115139%_)
        (let ((_%is?115141%_ gx#expander?))
          (gx#expander-binding?__% _%bind115139%_ _%is?115141%_))))
    (define gx#expander-binding?
      (lambda _g118049_
        (let ((_g118048_ (##length _g118049_)))
          (cond ((##fx= _g118048_ 1) (apply gx#expander-binding?__0 _g118049_))
                ((##fx= _g118048_ 2) (apply gx#expander-binding?__% _g118049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g118049_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind115130%_)
        (gx#expander-binding?__% _%bind115130%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind115128%_)
        (gx#expander-binding?__% _%bind115128%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind115122%_)
        (letrec ((_%direct-special-form?115124%_
                  (lambda (_%obj115126%_)
                    (##structure-direct-instance-of?
                     _%obj115126%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind115122%_
           _%direct-special-form?115124%_))))
    (define gx#special-form-binding?
      (lambda (_%bind115120%_)
        (gx#expander-binding?__% _%bind115120%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind115111%_)
        (letrec ((_%feature?115113%_
                  (lambda (_%e115115%_)
                    (let ((_%$e115117%_
                           (##structure-instance-of?
                            _%e115115%_
                            'gx#feature-expander::t)))
                      (if _%$e115117%_
                          _%$e115117%_
                          (##structure-instance-of?
                           _%e115115%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind115111%_ _%feature?115113%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind115109%_)
        (gx#expander-binding?__% _%bind115109%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id115096%_ _%bound?115097%_)
        (if (gx#identifier? _%id115096%_)
            (_%bound?115097%_ (gx#resolve-identifier__0 _%id115096%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id115102%_)
        (let ((_%bound?115104%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id115102%_ _%bound?115104%_))))
    (define gx#core-bound-identifier?
      (lambda _g118051_
        (let ((_g118050_ (##length _g118051_)))
          (cond ((##fx= _g118050_ 1)
                 (apply gx#core-bound-identifier?__0 _g118051_))
                ((##fx= _g118050_ 2)
                 (apply gx#core-bound-identifier?__% _g118051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g118051_))))))
    (define gx#core-identifier=?
      (lambda (_%x115086%_ _%y115087%_)
        (letrec ((_%y=?115089%_
                  (lambda (_%xid115093%_)
                    ((if (list? _%y115087%_) memq eq?)
                     _%xid115093%_
                     _%y115087%_))))
          (let ((_%bind115091%_ (gx#resolve-identifier__0 _%x115086%_)))
            (if (##structure-instance-of? _%bind115091%_ 'gx#binding::t)
                (_%y=?115089%_
                 (##unchecked-structure-ref _%bind115091%_ '1 '#f '#f))
                (_%y=?115089%_ (gx#stx-e _%x115086%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e115084%_)
        (if (interned-symbol? _%e115084%_)
            (string-index__0 (symbol->string _%e115084%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx115037%_ _%src115038%_ _%ctx115039%_ _%marks115040%_)
        (if (##structure? _%stx115037%_)
            (let ((_%$e115042%_ (gx#sealed-syntax-unwrap _%stx115037%_)))
              (if _%$e115042%_
                  (values _%$e115042%_)
                  (if (gx#identifier? _%stx115037%_)
                      (let ((_%id115046%_
                             (gx#stx-unwrap__% _%stx115037%_ _%marks115040%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id115046%_ '1 '#f '#f)
                         (let ((_%$e115048%_
                                (##unchecked-structure-ref
                                 _%id115046%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e115048%_ _%$e115048%_ _%src115038%_))
                         _%ctx115039%_
                         (##unchecked-structure-ref _%id115046%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx115037%_)
                       (let ((_%$e115052%_ (gx#stx-source _%stx115037%_)))
                         (if _%$e115052%_ _%$e115052%_ _%src115038%_))
                       _%ctx115039%_
                       (reverse _%marks115040%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx115037%_
             _%src115038%_
             _%ctx115039%_
             (reverse _%marks115040%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx115058%_)
        (let* ((_%src115060%_ '#f)
               (_%ctx115062%_ (gx#current-expander-context))
               (_%marks115064%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115058%_
           _%src115060%_
           _%ctx115062%_
           _%marks115064%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx115066%_ _%src115067%_)
        (let* ((_%ctx115069%_ (gx#current-expander-context))
               (_%marks115071%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115066%_
           _%src115067%_
           _%ctx115069%_
           _%marks115071%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx115073%_ _%src115074%_ _%ctx115075%_)
        (let ((_%marks115077%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115073%_
           _%src115074%_
           _%ctx115075%_
           _%marks115077%_))))
    (define gx#core-quote-syntax
      (lambda _g118053_
        (let ((_g118052_ (##length _g118053_)))
          (cond ((##fx= _g118052_ 1) (apply gx#core-quote-syntax__0 _g118053_))
                ((##fx= _g118052_ 2) (apply gx#core-quote-syntax__1 _g118053_))
                ((##fx= _g118052_ 3) (apply gx#core-quote-syntax__2 _g118053_))
                ((##fx= _g118052_ 4) (apply gx#core-quote-syntax__% _g118053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g118053_))))))
    (define gx#core-cons
      (lambda (_%hd115033%_ _%tl115034%_)
        (cons (gx#core-quote-syntax__0 _%hd115033%_) _%tl115034%_)))
    (define gx#core-list
      (lambda (_%hd115030%_ . _%rest115031%_)
        (cons (gx#core-quote-syntax__0 _%hd115030%_) _%rest115031%_)))
    (define gx#core-cons*
      (lambda (_%hd115027%_ . _%rest115028%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd115027%_) _%rest115028%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path114996%_ _%rel114997%_)
        (let ((_%path115014%_ (gx#stx-e _%stx-path114996%_))
              (_%reldir115015%_
               (let _%lp114999%_ ((_%relsrc115001%_
                                   (let ((_%$e115011%_
                                          (gx#stx-source _%stx-path114996%_)))
                                     (if _%$e115011%_
                                         _%$e115011%_
                                         _%rel114997%_))))
                 (if (##structure-instance-of? _%relsrc115001%_ 'gerbil#AST::t)
                     (_%lp114999%_
                      (let ((_%$e115004%_ (gx#stx-source _%relsrc115001%_)))
                        (if _%$e115004%_
                            _%$e115004%_
                            (gx#stx-e _%relsrc115001%_))))
                     (if (source-location-path? _%relsrc115001%_)
                         (path-directory
                          (source-location-path _%relsrc115001%_))
                         (if (string? _%relsrc115001%_)
                             (path-directory _%relsrc115001%_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _%path115014%_ (path-normalize _%reldir115015%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path115020%_)
        (let ((_%rel115022%_ '#f))
          (gx#core-resolve-path__% _%stx-path115020%_ _%rel115022%_))))
    (define gx#core-resolve-path
      (lambda _g118055_
        (let ((_g118054_ (##length _g118055_)))
          (cond ((##fx= _g118054_ 1) (apply gx#core-resolve-path__0 _g118055_))
                ((##fx= _g118054_ 2) (apply gx#core-resolve-path__% _g118055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g118055_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr114952%_ _%ctx114953%_)
        (let* ((_%repr114954114961%_ _%repr114952%_)
               (_%E114956114965%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr114954114961%_
                         '([phi . subs]))
                  '#!void))
               (_%K114957114973%_
                (lambda (_%subs114968%_ _%phi114969%_)
                  (let ((_%subst114971%_
                         (if (not (null? _%subs114968%_))
                             (list->hash-table-eq _%subs114968%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst114971%_
                     _%ctx114953%_
                     _%phi114969%_
                     '#f)))))
          (if (##pair? _%repr114954114961%_)
              (let ((_%hd114958114976%_ (##car _%repr114954114961%_))
                    (_%tl114959114978%_ (##cdr _%repr114954114961%_)))
                (let* ((_%phi114981%_ _%hd114958114976%_)
                       (_%subs114983%_ _%tl114959114978%_))
                  (_%K114957114973%_ _%subs114983%_ _%phi114981%_)))
              (_%E114956114965%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr114988%_)
        (let ((_%ctx114990%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr114988%_ _%ctx114990%_))))
    (define gx#core-deserialize-mark
      (lambda _g118057_
        (let ((_g118056_ (##length _g118057_)))
          (cond ((##fx= _g118056_ 1)
                 (apply gx#core-deserialize-mark__0 _g118057_))
                ((##fx= _g118056_ 2)
                 (apply gx#core-deserialize-mark__% _g118057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g118057_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx114949%_)
        (gx#stx-rewrap _%stx114949%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx114947%_)
        (gx#stx-unwrap__% _%stx114947%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx114917%_)
        (let* ((_%g114918114926%_ (gx#current-expander-marks))
               (_%else114920114934%_ (lambda () _%stx114917%_))
               (_%K114922114939%_
                (lambda (_%hd114937%_)
                  (gx#stx-apply-mark _%stx114917%_ _%hd114937%_))))
          (if (##pair? _%g114918114926%_)
              (let* ((_%hd114923114942%_ (##car _%g114918114926%_))
                     (_%hd114945%_ _%hd114923114942%_))
                (_%K114922114939%_ _%hd114945%_))
              (_%else114920114934%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx114902%_ _%E114903%_)
        (let ((_%bind114905%_ (gx#resolve-identifier__0 _%stx114902%_)))
          (if (##structure-direct-instance-of?
               _%bind114905%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind114905%_ '4 '#f '#f)
              (_%E114903%_ _%stx114902%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx114910%_)
        (let ((_%E114912%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx114910%_ _%E114912%_))))
    (define gx#syntax-local-e
      (lambda _g118059_
        (let ((_g118058_ (##length _g118059_)))
          (cond ((##fx= _g118058_ 1) (apply gx#syntax-local-e__0 _g118059_))
                ((##fx= _g118058_ 2) (apply gx#syntax-local-e__% _g118059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g118059_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx114886%_ _%E114887%_)
        (let ((_%e114889%_ (gx#syntax-local-e__% _%stx114886%_ _%E114887%_)))
          (if (##structure-instance-of? _%e114889%_ 'gx#expander::t)
              (##structure-ref _%e114889%_ '1 gx#expander::t '#f)
              _%e114889%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx114894%_)
        (let ((_%E114896%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx114894%_ _%E114896%_))))
    (define gx#syntax-local-value
      (lambda _g118061_
        (let ((_g118060_ (##length _g118061_)))
          (cond ((##fx= _g118060_ 1)
                 (apply gx#syntax-local-value__0 _g118061_))
                ((##fx= _g118060_ 2)
                 (apply gx#syntax-local-value__% _g118061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g118061_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx114883%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx114883%_)))))
