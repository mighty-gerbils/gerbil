(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1771036674)
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
      (lambda _%$args360538%_
        (apply make-instance gx#expander-context::t _%$args360538%_)))
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
      (lambda _%$args360535%_
        (apply make-instance gx#root-context::t _%$args360535%_)))
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
      (lambda _%$args360532%_
        (apply make-instance gx#phi-context::t _%$args360532%_)))
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
      (lambda _%$args360529%_
        (apply make-instance gx#top-context::t _%$args360529%_)))
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
      (lambda _%$args360526%_
        (apply make-instance gx#module-context::t _%$args360526%_)))
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
      (lambda _%$args360523%_
        (apply make-instance gx#prelude-context::t _%$args360523%_)))
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
      (lambda _%$args360520%_
        (apply make-instance gx#local-context::t _%$args360520%_)))
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
      (lambda (_%self360493%_ _%id360494%_ _%super360495%_)
        (let ((_%self360498%_ _%self360493%_))
          (if (##fx< '3 (##structure-length _%self360498%_))
              (begin
                (##unchecked-structure-set!
                 _%self360498%_
                 _%id360494%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self360498%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self360498%_
                 _%super360495%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self360498%_
                     '3
                     (##structure-length _%self360498%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self360511%_ _%id360512%_)
        (let ((_%super360514%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self360511%_
           _%id360512%_
           _%super360514%_))))
    (define gx#phi-context:::init!
      (lambda _g360580_
        (let ((_g360581_ (##length _g360580_)))
          (cond ((##fx= _g360581_ 2)
                 (apply gx#phi-context:::init!__0 _g360580_))
                ((##fx= _g360581_ 3)
                 (apply gx#phi-context:::init!__% _g360580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g360580_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self360346%_ _%super360347%_)
        (let ((_%self360350%_ _%self360346%_))
          (if (##fx< '3 (##structure-length _%self360350%_))
              (begin
                (##unchecked-structure-set!
                 _%self360350%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self360350%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self360350%_
                 _%super360347%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self360350%_
                     '3
                     (##structure-length _%self360350%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self360363%_)
        (let ((_%super360365%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self360363%_ _%super360365%_))))
    (define gx#local-context:::init!
      (lambda _g360582_
        (let ((_g360583_ (##length _g360582_)))
          (cond ((##fx= _g360583_ 1)
                 (apply gx#local-context:::init!__0 _g360582_))
                ((##fx= _g360583_ 2)
                 (apply gx#local-context:::init!__% _g360582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g360582_))))))
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
      (lambda _%$args360220%_
        (apply make-instance gx#binding::t _%$args360220%_)))
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
      (lambda (_%self360203%_ _%id360204%_ _%key360205%_ _%phi360206%_)
        (let ((_%self360209%_ _%self360203%_))
          (##unchecked-structure-set! _%self360209%_ _%id360204%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self360209%_ _%key360205%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self360209%_
           _%phi360206%_
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
      (lambda _%$args360078%_
        (apply make-instance gx#runtime-binding::t _%$args360078%_)))
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
      (lambda _%$args360075%_
        (apply make-instance gx#local-binding::t _%$args360075%_)))
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
      (lambda _%$args360072%_
        (apply make-instance gx#top-binding::t _%$args360072%_)))
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
      (lambda _%$args360069%_
        (apply make-instance gx#module-binding::t _%$args360069%_)))
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
      (lambda _%$args360066%_
        (apply make-instance gx#extern-binding::t _%$args360066%_)))
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
      (lambda (_%self359682%_
               _%id359683%_
               _%key359684%_
               _%phi359685%_
               _%ctx359686%_)
        (let ((_%self359689%_ _%self359682%_))
          (gx#binding:::init!
           _%self359689%_
           _%id359683%_
           _%key359684%_
           _%phi359685%_)
          (##unchecked-structure-set!
           _%self359689%_
           _%ctx359686%_
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
      (lambda _%$args359435%_
        (apply make-instance gx#syntax-binding::t _%$args359435%_)))
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
      (lambda _%$args359432%_
        (apply make-instance gx#import-binding::t _%$args359432%_)))
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
      (lambda _%$args359429%_
        (apply make-instance gx#alias-binding::t _%$args359429%_)))
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
      (lambda (_%self359411%_
               _%id359412%_
               _%key359413%_
               _%phi359414%_
               _%e359415%_)
        (let ((_%self359418%_ _%self359411%_))
          (gx#binding:::init!
           _%self359418%_
           _%id359412%_
           _%key359413%_
           _%phi359414%_)
          (##unchecked-structure-set! _%self359418%_ _%e359415%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self359269%_
               _%id359270%_
               _%key359271%_
               _%phi359272%_
               _%e359273%_
               _%ctx359274%_
               _%weak?359275%_)
        (let ((_%self359278%_ _%self359269%_))
          (gx#binding:::init!
           _%self359278%_
           _%id359270%_
           _%key359271%_
           _%phi359272%_)
          (##unchecked-structure-set! _%self359278%_ _%e359273%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self359278%_ _%ctx359274%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self359278%_
           _%weak?359275%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self359129%_
               _%id359130%_
               _%key359131%_
               _%phi359132%_
               _%e359133%_)
        (let ((_%self359136%_ _%self359129%_))
          (gx#binding:::init!
           _%self359136%_
           _%id359130%_
           _%key359131%_
           _%phi359132%_)
          (##unchecked-structure-set! _%self359136%_ _%e359133%_ '5 '#f '#f))))
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
      (lambda _%$args359004%_
        (apply make-instance gx#expander::t _%$args359004%_)))
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
      (lambda _%$args359001%_
        (apply make-instance gx#core-expander::t _%$args359001%_)))
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
      (lambda _%$args358998%_
        (apply make-instance gx#expression-form::t _%$args358998%_)))
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
      (lambda _%$args358995%_
        (apply make-instance gx#special-form::t _%$args358995%_)))
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
      (lambda _%$args358992%_
        (apply make-instance gx#definition-form::t _%$args358992%_)))
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
      (lambda _%$args358989%_
        (apply make-instance gx#top-special-form::t _%$args358989%_)))
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
      (lambda _%$args358986%_
        (apply make-instance gx#module-special-form::t _%$args358986%_)))
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
      (lambda _%$args358983%_
        (apply make-instance gx#feature-expander::t _%$args358983%_)))
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
      (lambda _%$args358980%_
        (apply make-instance gx#private-feature-expander::t _%$args358980%_)))
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
      (lambda _%$args358977%_
        (apply make-instance gx#reserved-expander::t _%$args358977%_)))
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
      (lambda _%$args358974%_
        (apply make-instance gx#macro-expander::t _%$args358974%_)))
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
      (lambda _%$args358971%_
        (apply make-instance gx#rename-macro-expander::t _%$args358971%_)))
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
      (lambda _%$args358968%_
        (apply make-instance gx#user-expander::t _%$args358968%_)))
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
      (lambda _%$args358965%_
        (apply make-instance gx#expander-mark::t _%$args358965%_)))
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
      (lambda (_%ctx358949%_
               _%message358950%_
               _%stx358951%_
               .
               _%details358952%_)
        (let ((_%ctx358963%_
               (let ((_%$e358954%_ _%ctx358949%_))
                 (if _%$e358954%_
                     _%$e358954%_
                     (let ((_%$e358957%_ (gx#core-context-top__0)))
                       (if _%$e358957%_
                           ((lambda (_%ctx358960%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx358960%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e358957%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message358950%_
                  (cons _%stx358951%_ _%details358952%_)
                  _%ctx358963%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx358936%_ _%expression?358937%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx358936%_ _%expression?358937%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx358942%_)
        (let ((_%expression?358944%_ '#f))
          (gx#eval-syntax__% _%stx358942%_ _%expression?358944%_))))
    (define gx#eval-syntax
      (lambda _g360584_
        (let ((_g360585_ (##length _g360584_)))
          (cond ((##fx= _g360585_ 1) (apply gx#eval-syntax__0 _g360584_))
                ((##fx= _g360585_ 2) (apply gx#eval-syntax__% _g360584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g360584_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx358921%_ _%expression?358922%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx358921%_ _%expression?358922%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx358928%_)
        (let ((_%expression?358930%_ '#f))
          (gx#eval-syntax+1__% _%stx358928%_ _%expression?358930%_))))
    (define gx#eval-syntax+1
      (lambda _g360586_
        (let ((_g360587_ (##length _g360586_)))
          (cond ((##fx= _g360587_ 1) (apply gx#eval-syntax+1__0 _g360586_))
                ((##fx= _g360587_ 2) (apply gx#eval-syntax+1__% _g360586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g360586_))))))
    (define gx#eval-expression+1
      (lambda (_%stx358918%_) (gx#eval-syntax+1__% _%stx358918%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx358916%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx358916%_))))
    (define gx#core-expand__%
      (lambda (_%stx358903%_ _%expression?358904%_)
        (if _%expression?358904%_
            (gx#core-expand-expression _%stx358903%_)
            (gx#core-expand-top _%stx358903%_))))
    (define gx#core-expand__0
      (lambda (_%stx358909%_)
        (let ((_%expression?358911%_ '#f))
          (gx#core-expand__% _%stx358909%_ _%expression?358911%_))))
    (define gx#core-expand
      (lambda _g360588_
        (let ((_g360589_ (##length _g360588_)))
          (cond ((##fx= _g360589_ 1) (apply gx#core-expand__0 _g360588_))
                ((##fx= _g360589_ 2) (apply gx#core-expand__% _g360588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g360588_))))))
    (define gx#core-expand-top
      (lambda (_%stx358870%_)
        (let* ((_%stx358872%_ (gx#core-expand*__0 _%stx358870%_))
               (_%e358873358880%_ _%stx358872%_)
               (_%E358875358884%_
                (lambda () (gx#core-expand-expression _%stx358872%_)))
               (_%E358874358898%_
                (lambda ()
                  (if (gx#stx-pair? _%e358873358880%_)
                      (let ((_%e358876358888%_
                             (gx#syntax-e _%e358873358880%_)))
                        (let ((_%hd358877358891%_ (##car _%e358876358888%_))
                              (_%tl358878358893%_ (##cdr _%e358876358888%_)))
                          (let ((_%form358896%_ _%hd358877358891%_))
                            (if (gx#core-bound-identifier?__0 _%form358896%_)
                                _%stx358872%_
                                (_%E358875358884%_)))))
                      (_%E358875358884%_)))))
          (_%E358874358898%_))))
    (define gx#core-expand-expression
      (lambda (_%stx358802%_)
        (letrec ((_%sealed-expression?358804%_
                  (lambda (_%hd358840%_)
                    (if (gx#sealed-syntax? _%hd358840%_)
                        (let* ((_%e358841358848%_ _%hd358840%_)
                               (_%E358843358852%_ (lambda () '#f))
                               (_%E358842358866%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e358841358848%_)
                                      (let ((_%e358844358856%_
                                             (gx#syntax-e _%e358841358848%_)))
                                        (let ((_%hd358845358859%_
                                               (##car _%e358844358856%_))
                                              (_%tl358846358861%_
                                               (##cdr _%e358844358856%_)))
                                          (let ((_%form358864%_
                                                 _%hd358845358859%_))
                                            (gx#core-bound-identifier?__%
                                             _%form358864%_
                                             gx#expression-form-binding?))))
                                      (_%E358843358852%_)))))
                          (_%E358842358866%_))
                        '#f)))
                 (_%illegal-expression358805%_
                  (lambda (_%hd358837%_ . _%_358838%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx358802%_
                     _%hd358837%_)))
                 (_%expand-e358806%_
                  (lambda (_%form358829%_ _%hd358830%_)
                    (let ((_%bind358832%_
                           (if (##structure-instance-of?
                                _%form358829%_
                                'gx#binding::t)
                               _%form358829%_
                               (gx#resolve-identifier__0 _%form358829%_))))
                      (if (gx#core-expander-binding? _%bind358832%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind358832%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd358830%_
                            (gx#stx-source _%stx358802%_)))
                          (if (##structure-direct-instance-of?
                               _%bind358832%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind358832%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd358830%_
                                 (gx#stx-source _%stx358802%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx358802%_
                               _%form358829%_)))))))
          (let ((_%hd358808%_ (gx#core-expand-head _%stx358802%_)))
            (if (_%sealed-expression?358804%_ _%hd358808%_)
                _%hd358808%_
                (if (gx#stx-pair? _%hd358808%_)
                    (let* ((_%form358812%_ (gx#stx-car _%hd358808%_))
                           (_%bind358814%_
                            (if (gx#identifier? _%form358812%_)
                                (gx#resolve-identifier__0 _%form358812%_)
                                '#f)))
                      (if (or (not _%bind358814%_)
                              (not (gx#core-expander-binding? _%bind358814%_)))
                          (_%expand-e358806%_
                           '%%app
                           (cons '%%app _%hd358808%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind358814%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd358808%_
                               _%illegal-expression358805%_)
                              (if (gx#expression-form-binding? _%bind358814%_)
                                  (_%expand-e358806%_
                                   _%bind358814%_
                                   _%hd358808%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind358814%_)
                                      (gx#core-expand-expression
                                       (_%expand-e358806%_
                                        _%bind358814%_
                                        _%hd358808%_))
                                      (_%illegal-expression358805%_
                                       _%hd358808%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd358808%_)
                        (_%illegal-expression358805%_ _%hd358808%_)
                        (if (gx#identifier? _%hd358808%_)
                            (_%expand-e358806%_
                             '%%ref
                             (cons '%%ref (cons _%hd358808%_ '())))
                            (if (gx#stx-datum? _%hd358808%_)
                                (_%expand-e358806%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd358808%_ '())))
                                (_%illegal-expression358805%_
                                 _%hd358808%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx358797%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx358800%_ (gx#core-expand-expression _%stx358797%_)))
             (values _%stx358800%_ (gx#eval-syntax* _%stx358800%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx358778%_ _%stop?358779%_)
        (let _%lp358781%_ ((_%stx358783%_ _%stx358778%_))
          (if (_%stop?358779%_ _%stx358783%_)
              _%stx358783%_
              (let ((_%rstx358785%_ (gx#core-expand1 _%stx358783%_)))
                (if (eq? _%stx358783%_ _%rstx358785%_)
                    _%stx358783%_
                    (_%lp358781%_ _%rstx358785%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx358790%_)
        (let ((_%stop?358792%_ false))
          (gx#core-expand*__% _%stx358790%_ _%stop?358792%_))))
    (define gx#core-expand*
      (lambda _g360590_
        (let ((_g360591_ (##length _g360590_)))
          (cond ((##fx= _g360591_ 1) (apply gx#core-expand*__0 _g360590_))
                ((##fx= _g360591_ 2) (apply gx#core-expand*__% _g360590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g360590_))))))
    (define gx#core-expand1
      (lambda (_%stx358730%_)
        (letrec ((_%step358732%_
                  (lambda (_%hd358769%_)
                    (let ((_%bind358771%_
                           (gx#resolve-identifier__0 _%hd358769%_)))
                      (if (##structure-instance-of?
                           _%bind358771%_
                           'gx#runtime-binding::t)
                          _%stx358730%_
                          (if (##structure-direct-instance-of?
                               _%bind358771%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind358771%_
                                '5
                                '#f
                                '#f)
                               _%stx358730%_)
                              (if (not _%bind358771%_)
                                  _%stx358730%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx358730%_))))))))
          (let* ((_%e358733358741%_ _%stx358730%_)
                 (_%E358739358745%_ (lambda () _%stx358730%_))
                 (_%E358735358751%_
                  (lambda ()
                    (let ((_%hd358749%_ _%e358733358741%_))
                      (if (gx#identifier? _%hd358749%_)
                          (_%step358732%_ _%hd358749%_)
                          (_%E358739358745%_)))))
                 (_%E358734358765%_
                  (lambda ()
                    (if (gx#stx-pair? _%e358733358741%_)
                        (let ((_%e358736358755%_
                               (gx#syntax-e _%e358733358741%_)))
                          (let ((_%hd358737358758%_ (##car _%e358736358755%_))
                                (_%tl358738358760%_ (##cdr _%e358736358755%_)))
                            (let ((_%hd358763%_ _%hd358737358758%_))
                              (if (gx#identifier? _%hd358763%_)
                                  (_%step358732%_ _%hd358763%_)
                                  (_%E358735358751%_)))))
                        (_%E358735358751%_)))))
            (_%E358734358765%_)))))
    (define gx#core-expand-head
      (lambda (_%stx358696%_)
        (letrec ((_%stop?358698%_
                  (lambda (_%stx358700%_)
                    (let* ((_%e358701358708%_ _%stx358700%_)
                           (_%E358703358712%_ (lambda () '#f))
                           (_%E358702358726%_
                            (lambda ()
                              (if (gx#stx-pair? _%e358701358708%_)
                                  (let ((_%e358704358716%_
                                         (gx#syntax-e _%e358701358708%_)))
                                    (let ((_%hd358705358719%_
                                           (##car _%e358704358716%_))
                                          (_%tl358706358721%_
                                           (##cdr _%e358704358716%_)))
                                      (let ((_%hd358724%_ _%hd358705358719%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd358724%_))))
                                  (_%E358703358712%_)))))
                      (_%E358702358726%_)))))
          (gx#core-expand*__% _%stx358696%_ _%stop?358698%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx358502%_
               _%expand-special358503%_
               _%begin-form358504%_
               _%expand-e358505%_)
        (letrec ((_%expand-splice358507%_
                  (lambda (_%hd358670%_
                           _%body358671%_
                           _%rest358672%_
                           _%r358673%_)
                    (if (gx#stx-list? _%body358671%_)
                        (_%K358511%_
                         (gx#stx-foldr cons _%rest358672%_ _%body358671%_)
                         _%r358673%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx358502%_
                         _%hd358670%_))))
                 (_%expand-cond-expand358508%_
                  (lambda (_%hd358666%_ _%rest358667%_ _%r358668%_)
                    (_%K358511%_
                     (cons (gx#core-expand-cond-expand% _%hd358666%_)
                           _%rest358667%_)
                     _%r358668%_)))
                 (_%expand-include358509%_
                  (lambda (_%hd358615%_ _%rest358616%_ _%r358617%_)
                    (let* ((_%e358618358628%_ _%hd358615%_)
                           (_%E358620358632%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e358618358628%_)))
                           (_%E358619358662%_
                            (lambda ()
                              (if (gx#stx-pair? _%e358618358628%_)
                                  (let ((_%e358621358636%_
                                         (gx#syntax-e _%e358618358628%_)))
                                    (let ((_%hd358622358639%_
                                           (##car _%e358621358636%_))
                                          (_%tl358623358641%_
                                           (##cdr _%e358621358636%_)))
                                      (if (gx#stx-pair? _%tl358623358641%_)
                                          (let ((_%e358624358644%_
                                                 (gx#syntax-e
                                                  _%tl358623358641%_)))
                                            (let ((_%hd358625358647%_
                                                   (##car _%e358624358644%_))
                                                  (_%tl358626358649%_
                                                   (##cdr _%e358624358644%_)))
                                              (let ((_%path358652%_
                                                     _%hd358625358647%_))
                                                (if (gx#stx-null?
                                                     _%tl358626358649%_)
                                                    (if (gx#stx-string?
                                                         _%path358652%_)
                                                        (let* ((_%rpath358654%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path358652%_
                         (gx#stx-source _%hd358615%_)))
                       (_%block358656%_
                        (gx#core-expand-include%__%
                         _%hd358615%_
                         _%rpath358654%_))
                       (_%rbody358659%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block358656%_
                            _%expand-special358503%_
                            '#f
                            _%expand-e358505%_))
                         gx#current-expander-path
                         (cons _%rpath358654%_ (gx#current-expander-path)))))
                  (_%K358511%_
                   _%rest358616%_
                   (foldr__0 cons _%r358617%_ _%rbody358659%_)))
                (_%E358620358632%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E358620358632%_)))))
                                          (_%E358620358632%_))))
                                  (_%E358620358632%_)))))
                      (_%E358619358662%_))))
                 (_%expand-expression358510%_
                  (lambda (_%hd358611%_ _%rest358612%_ _%r358613%_)
                    (_%K358511%_
                     _%rest358612%_
                     (cons (_%expand-e358505%_ _%hd358611%_) _%r358613%_))))
                 (_%K358511%_
                  (lambda (_%rest358541%_ _%r358542%_)
                    (let* ((_%e358543358550%_ _%rest358541%_)
                           (_%E358545358554%_
                            (lambda ()
                              (if _%begin-form358504%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form358504%_
                                    (reverse _%r358542%_))
                                   (gx#stx-source _%stx358502%_))
                                  _%r358542%_)))
                           (_%E358544358607%_
                            (lambda ()
                              (if (gx#stx-pair? _%e358543358550%_)
                                  (let ((_%e358546358558%_
                                         (gx#syntax-e _%e358543358550%_)))
                                    (let ((_%hd358547358561%_
                                           (##car _%e358546358558%_))
                                          (_%tl358548358563%_
                                           (##cdr _%e358546358558%_)))
                                      (let* ((_%hd358566%_ _%hd358547358561%_)
                                             (_%rest358568%_
                                              _%tl358548358563%_)
                                             (_%hd358570%_
                                              (gx#core-expand-head
                                               _%hd358566%_))
                                             (_%e358571358578%_ _%hd358570%_)
                                             (_%E358573358582%_
                                              (lambda ()
                                                (_%expand-expression358510%_
                                                 _%hd358570%_
                                                 _%rest358568%_
                                                 _%r358542%_)))
                                             (_%E358572358603%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e358571358578%_)
                                                    (let ((_%e358574358586%_
                                                           (gx#syntax-e
                                                            _%e358571358578%_)))
                                                      (let ((_%hd358575358589%_
                                                             (##car _%e358574358586%_))
                                                            (_%tl358576358591%_
                                                             (##cdr _%e358574358586%_)))
                                                        (let* ((_%form358594%_
                                                                _%hd358575358589%_)
                                                               (_%body358596%_
                                                                _%tl358576358591%_)
                                                               (_%bind358598%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form358594%_)
                            (gx#resolve-identifier__0 _%form358594%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind358598%_)
                      (let ((_%$e358600%_
                             (##unchecked-structure-ref
                              _%bind358598%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e358600%_)
                            (_%expand-splice358507%_
                             _%hd358570%_
                             _%body358596%_
                             _%rest358568%_
                             _%r358542%_)
                            (if (eq? '%#cond-expand _%$e358600%_)
                                (_%expand-cond-expand358508%_
                                 _%hd358570%_
                                 _%rest358568%_
                                 _%r358542%_)
                                (if (eq? '%#include _%$e358600%_)
                                    (_%expand-include358509%_
                                     _%hd358570%_
                                     _%rest358568%_
                                     _%r358542%_)
                                    (_%expand-special358503%_
                                     _%hd358570%_
                                     _%K358511%_
                                     _%rest358568%_
                                     _%r358542%_)))))
                      (_%expand-expression358510%_
                       _%hd358570%_
                       _%rest358568%_
                       _%r358542%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E358573358582%_)))))
                                        (_%E358572358603%_))))
                                  (_%E358545358554%_)))))
                      (_%E358544358607%_)))))
          (let* ((_%e358512358519%_ _%stx358502%_)
                 (_%E358514358523%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e358512358519%_)))
                 (_%E358513358537%_
                  (lambda ()
                    (if (gx#stx-pair? _%e358512358519%_)
                        (let ((_%e358515358527%_
                               (gx#syntax-e _%e358512358519%_)))
                          (let ((_%hd358516358530%_ (##car _%e358515358527%_))
                                (_%tl358517358532%_ (##cdr _%e358515358527%_)))
                            (let ((_%body358535%_ _%tl358517358532%_))
                              (if (gx#stx-list? _%body358535%_)
                                  (_%K358511%_ _%body358535%_ '())
                                  (_%E358514358523%_)))))
                        (_%E358514358523%_)))))
            (_%E358513358537%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx358678%_ _%expand-special358679%_)
        (let* ((_%begin-form358681%_ '%#begin)
               (_%expand-e358683%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx358678%_
           _%expand-special358679%_
           _%begin-form358681%_
           _%expand-e358683%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx358685%_ _%expand-special358686%_ _%begin-form358687%_)
        (let ((_%expand-e358689%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx358685%_
           _%expand-special358686%_
           _%begin-form358687%_
           _%expand-e358689%_))))
    (define gx#core-expand-block
      (lambda _g360592_
        (let ((_g360593_ (##length _g360592_)))
          (cond ((##fx= _g360593_ 2) (apply gx#core-expand-block__0 _g360592_))
                ((##fx= _g360593_ 3) (apply gx#core-expand-block__1 _g360592_))
                ((##fx= _g360593_ 4) (apply gx#core-expand-block__% _g360592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g360592_))))))
    (define gx#core-expand-block*
      (lambda (_%stx358450%_ _%expand-special358451%_)
        (let* ((_%g358452358463%_
                (gx#core-expand-block__1
                 _%stx358450%_
                 _%expand-special358451%_
                 '#f))
               (_%E358456358467%_
                (lambda ()
                  (error '"No clause matching"
                         _%g358452358463%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K358461358498%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx358450%_)))
                (_%K358458358484%_ (lambda (_%expr358482%_) _%expr358482%_))
                (_%K358457358473%_
                 (lambda (_%body358471%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body358471%_))
                    (gx#stx-source _%stx358450%_)))))
            (let ((_%try-match358454358494%_
                   (lambda ()
                     (if (pair? _%g358452358463%_)
                         (let ((_%tl358460358489%_ (##cdr _%g358452358463%_))
                               (_%hd358459358487%_ (##car _%g358452358463%_)))
                           (if (null? _%tl358460358489%_)
                               (let ((_%expr358492%_ _%hd358459358487%_))
                                 (_%K358458358484%_ _%expr358492%_))
                               (let ((_%body358476%_ _%g358452358463%_))
                                 (_%K358457358473%_ _%body358476%_))))
                         (let ((_%body358476%_ _%g358452358463%_))
                           (_%K358457358473%_ _%body358476%_))))))
              (if (null? _%g358452358463%_)
                  (_%K358461358498%_)
                  (_%try-match358454358494%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx358276%_)
        (letrec ((_%satisfied?358278%_
                  (lambda (_%condition358379%_)
                    (let* ((_%e358380358395%_ _%condition358379%_)
                           (_%E358390358399%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e358380358395%_)))
                           (_%E358383358418%_
                            (lambda ()
                              (if (gx#stx-pair? _%e358380358395%_)
                                  (let ((_%e358391358403%_
                                         (gx#syntax-e _%e358380358395%_)))
                                    (let ((_%hd358392358406%_
                                           (##car _%e358391358403%_))
                                          (_%tl358393358408%_
                                           (##cdr _%e358391358403%_)))
                                      (let* ((_%combinator358411%_
                                              _%hd358392358406%_)
                                             (_%body358413%_
                                              _%tl358393358408%_))
                                        (if (gx#stx-list? _%body358413%_)
                                            (let ((_%$e358415%_
                                                   (gx#stx-e
                                                    _%combinator358411%_)))
                                              (if (eq? 'not _%$e358415%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?358278%_
                                                        _%body358413%_))
                                                  (if (eq? 'and _%$e358415%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?358278%_
                                                       _%body358413%_)
                                                      (if (eq? 'or
                                                               _%$e358415%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?358278%_
                                                           _%body358413%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e358415%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body358413%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx358276%_
                       _%combinator358411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E358390358399%_)))))
                                  (_%E358390358399%_))))
                           (_%E358382358440%_
                            (lambda ()
                              (if (gx#stx-pair? _%e358380358395%_)
                                  (let ((_%e358384358422%_
                                         (gx#syntax-e _%e358380358395%_)))
                                    (let ((_%hd358385358425%_
                                           (##car _%e358384358422%_))
                                          (_%tl358386358427%_
                                           (##cdr _%e358384358422%_)))
                                      (if (and (gx#identifier?
                                                _%hd358385358425%_)
                                               (gx#core-identifier=?
                                                _%hd358385358425%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl358386358427%_)
                                              (let ((_%e358387358430%_
                                                     (gx#syntax-e
                                                      _%tl358386358427%_)))
                                                (let ((_%hd358388358433%_
                                                       (##car _%e358387358430%_))
                                                      (_%tl358389358435%_
                                                       (##cdr _%e358387358430%_)))
                                                  (let ((_%expr358438%_
                                                         _%hd358388358433%_))
                                                    (if (gx#stx-null?
                                                         _%tl358389358435%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr358438%_)
                                                        (_%E358383358418%_)))))
                                              (_%E358383358418%_))
                                          (_%E358383358418%_))))
                                  (_%E358383358418%_))))
                           (_%E358381358446%_
                            (lambda ()
                              (let ((_%id358444%_ _%e358380358395%_))
                                (if (gx#identifier? _%id358444%_)
                                    (gx#core-bound-identifier?__%
                                     _%id358444%_
                                     gx#feature-binding?)
                                    (_%E358382358440%_))))))
                      (_%E358381358446%_))))
                 (_%loop358279%_
                  (lambda (_%rest358309%_)
                    (let* ((_%e358310358318%_ _%rest358309%_)
                           (_%E358316358322%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e358310358318%_)))
                           (_%E358312358326%_
                            (lambda ()
                              (if (gx#stx-null? _%e358310358318%_)
                                  '()
                                  (_%E358316358322%_))))
                           (_%E358311358375%_
                            (lambda ()
                              (if (gx#stx-pair? _%e358310358318%_)
                                  (let ((_%e358313358330%_
                                         (gx#syntax-e _%e358310358318%_)))
                                    (let ((_%hd358314358333%_
                                           (##car _%e358313358330%_))
                                          (_%tl358315358335%_
                                           (##cdr _%e358313358330%_)))
                                      (let* ((_%hd358338%_ _%hd358314358333%_)
                                             (_%rest358340%_
                                              _%tl358315358335%_)
                                             (_%e358341358348%_ _%hd358338%_)
                                             (_%E358343358352%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e358341358348%_)))
                                             (_%E358342358371%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e358341358348%_)
                                                    (let ((_%e358344358356%_
                                                           (gx#syntax-e
                                                            _%e358341358348%_)))
                                                      (let ((_%hd358345358359%_
                                                             (##car _%e358344358356%_))
                                                            (_%tl358346358361%_
                                                             (##cdr _%e358344358356%_)))
                                                        (let* ((_%condition358364%_
                                                                _%hd358345358359%_)
                                                               (_%body358366%_
                                                                _%tl358346358361%_))
                                                          (if (gx#stx-eq?
                                                               _%condition358364%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest358340%_)
                          _%body358366%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx358276%_
                           _%hd358338%_))
                      (if (_%satisfied?358278%_ _%condition358364%_)
                          _%body358366%_
                          (_%loop358279%_ _%rest358340%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E358343358352%_)))))
                                        (_%E358342358371%_))))
                                  (_%E358312358326%_)))))
                      (_%E358311358375%_)))))
          (let* ((_%e358280358287%_ _%stx358276%_)
                 (_%E358282358291%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e358280358287%_)))
                 (_%E358281358305%_
                  (lambda ()
                    (if (gx#stx-pair? _%e358280358287%_)
                        (let ((_%e358283358295%_
                               (gx#syntax-e _%e358280358287%_)))
                          (let ((_%hd358284358298%_ (##car _%e358283358295%_))
                                (_%tl358285358300%_ (##cdr _%e358283358295%_)))
                            (let ((_%clauses358303%_ _%tl358285358300%_))
                              (if (gx#stx-list? _%clauses358303%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop358279%_ _%clauses358303%_))
                                  (_%E358282358291%_)))))
                        (_%E358282358291%_)))))
            (_%E358281358305%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx358219%_ _%rpath358220%_)
        (let* ((_%e358221358231%_ _%stx358219%_)
               (_%E358223358235%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e358221358231%_)))
               (_%E358222358262%_
                (lambda ()
                  (if (gx#stx-pair? _%e358221358231%_)
                      (let ((_%e358224358239%_
                             (gx#syntax-e _%e358221358231%_)))
                        (let ((_%hd358225358242%_ (##car _%e358224358239%_))
                              (_%tl358226358244%_ (##cdr _%e358224358239%_)))
                          (if (gx#stx-pair? _%tl358226358244%_)
                              (let ((_%e358227358247%_
                                     (gx#syntax-e _%tl358226358244%_)))
                                (let ((_%hd358228358250%_
                                       (##car _%e358227358247%_))
                                      (_%tl358229358252%_
                                       (##cdr _%e358227358247%_)))
                                  (let ((_%path358255%_ _%hd358228358250%_))
                                    (if (gx#stx-null? _%tl358229358252%_)
                                        (if (gx#stx-string? _%path358255%_)
                                            (let ((_%rpath358260%_
                                                   (let ((_%$e358257%_
                                                          _%rpath358220%_))
                                                     (if _%$e358257%_
                                                         _%$e358257%_
                                                         (gx#core-resolve-path__%
                                                          _%path358255%_
                                                          (gx#stx-source
                                                           _%stx358219%_))))))
                                              (if (member _%rpath358260%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx358219%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath358260%_))
                                                    (gx#stx-source
                                                     _%stx358219%_)))))
                                            (_%E358223358235%_))
                                        (_%E358223358235%_)))))
                              (_%E358223358235%_))))
                      (_%E358223358235%_)))))
          (_%E358222358262%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx358269%_)
        (let ((_%rpath358271%_ '#f))
          (gx#core-expand-include%__% _%stx358269%_ _%rpath358271%_))))
    (define gx#core-expand-include%
      (lambda _g360594_
        (let ((_g360595_ (##length _g360594_)))
          (cond ((##fx= _g360595_ 1)
                 (apply gx#core-expand-include%__0 _g360594_))
                ((##fx= _g360595_ 2)
                 (apply gx#core-expand-include%__% _g360594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g360594_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K358185%_ _%stx358186%_ _%method358187%_)
        (if (procedure? _%K358185%_)
            (let ((_%$e358190%_ (gx#stx-source _%stx358186%_)))
              (if _%$e358190%_
                  ((lambda (_%g358192358194%_)
                     (gx#stx-wrap-source
                      (_%K358185%_ _%stx358186%_)
                      _%g358192358194%_))
                   _%$e358190%_)
                  (_%K358185%_ _%stx358186%_)))
            (let ((_%$e358198%_
                   (bound-method-ref _%K358185%_ _%method358187%_)))
              (if _%$e358198%_
                  ((lambda (_%g358200358202%_)
                     (gx#core-apply-expander__%
                      _%g358200358202%_
                      _%stx358186%_
                      _%method358187%_))
                   _%$e358198%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx358186%_
                   _%method358187%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K358209%_ _%stx358210%_)
        (let ((_%method358212%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K358209%_
           _%stx358210%_
           _%method358212%_))))
    (define gx#core-apply-expander
      (lambda _g360596_
        (let ((_g360597_ (##length _g360596_)))
          (cond ((##fx= _g360597_ 2)
                 (apply gx#core-apply-expander__0 _g360596_))
                ((##fx= _g360597_ 3)
                 (apply gx#core-apply-expander__% _g360596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g360596_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self358170%_ _%stx358171%_)
        (let ((_%self358174%_ _%self358170%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx358171%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self358013%_ _%stx358014%_)
        (let* ((_%self358017%_ _%self358013%_)
               (_%self358026358032%_ _%self358017%_)
               (_%E358028358035%_
                (lambda ()
                  (error '"No clause matching"
                         _%self358026358032%_
                         '((macro-expander K)))
                  '#!void))
               (_%K358029358040%_
                (lambda (_%K358038%_)
                  (gx#core-apply-expander__0 _%K358038%_ _%stx358014%_)))
               (_%e358030358043%_
                (##unchecked-structure-ref _%self358026358032%_ '1 '#f '#f))
               (_%K358046%_ _%e358030358043%_))
          (_%K358029358040%_ _%K358046%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self357856%_ _%stx357857%_)
        (let ((_%self357860%_ _%self357856%_))
          (if (gx#sealed-syntax? _%stx357857%_)
              _%stx357857%_
              (let* ((_%self357869357875%_ _%self357860%_)
                     (_%E357871357878%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self357869357875%_
                               '((core-expander K)))
                        '#!void))
                     (_%K357872357883%_
                      (lambda (_%K357881%_)
                        (gx#core-apply-expander__0 _%K357881%_ _%stx357857%_)))
                     (_%e357873357886%_
                      (##unchecked-structure-ref
                       _%self357869357875%_
                       '1
                       '#f
                       '#f))
                     (_%K357889%_ _%e357873357886%_))
                (_%K357872357883%_ _%K357889%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self357707%_ _%stx357708%_ _%top?357709%_)
        (let ((_%self357712%_ _%self357707%_))
          (if (_%top?357709%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self357712%_
               _%stx357708%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx357708%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self357725%_ _%stx357726%_)
        (let ((_%top?357728%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self357725%_
           _%stx357726%_
           _%top?357728%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g360598_
        (let ((_g360599_ (##length _g360598_)))
          (cond ((##fx= _g360599_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g360598_))
                ((##fx= _g360599_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g360598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g360598_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self357570%_ _%stx357571%_)
        (let ((_%self357574%_ _%self357570%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self357574%_
           _%stx357571%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self357385%_ _%stx357386%_)
        (let* ((_%self357389%_ _%self357385%_)
               (_%self357398357404%_ _%self357389%_)
               (_%E357400357407%_
                (lambda ()
                  (error '"No clause matching"
                         _%self357398357404%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K357401357440%_
                (lambda (_%id357410%_)
                  (let* ((_%e357411357418%_ _%stx357386%_)
                         (_%E357413357422%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e357411357418%_)))
                         (_%E357412357436%_
                          (lambda ()
                            (if (gx#stx-pair? _%e357411357418%_)
                                (let ((_%e357414357426%_
                                       (gx#syntax-e _%e357411357418%_)))
                                  (let ((_%hd357415357429%_
                                         (##car _%e357414357426%_))
                                        (_%tl357416357431%_
                                         (##cdr _%e357414357426%_)))
                                    (let ((_%body357434%_ _%tl357416357431%_))
                                      (gx#core-cons
                                       _%id357410%_
                                       _%body357434%_))))
                                (_%E357413357422%_)))))
                    (_%E357412357436%_))))
               (_%e357402357443%_
                (##unchecked-structure-ref _%self357398357404%_ '1 '#f '#f))
               (_%id357446%_ _%e357402357443%_))
          (_%K357401357440%_ _%id357446%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self357212%_ _%stx357213%_ _%method357214%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx357213%_))
              (force-output))
            '#!void)
        (let* ((_%self357215357223%_ _%self357212%_)
               (_%E357217357226%_
                (lambda ()
                  (error '"No clause matching"
                         _%self357215357223%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K357218357233%_
                (lambda (_%phi357229%_ _%ctx357230%_ _%K357231%_)
                  (gx#core-apply-user-macro
                   _%K357231%_
                   _%stx357213%_
                   _%ctx357230%_
                   _%phi357229%_
                   _%method357214%_))))
          (if (##structure-instance-of?
               _%self357215357223%_
               'gx#user-expander::t)
              (let* ((_%e357219357236%_
                      (##unchecked-structure-ref
                       _%self357215357223%_
                       '1
                       '#f
                       '#f))
                     (_%K357239%_ _%e357219357236%_)
                     (_%e357220357241%_
                      (##unchecked-structure-ref
                       _%self357215357223%_
                       '2
                       '#f
                       '#f))
                     (_%ctx357244%_ _%e357220357241%_)
                     (_%e357221357246%_
                      (##unchecked-structure-ref
                       _%self357215357223%_
                       '3
                       '#f
                       '#f))
                     (_%phi357249%_ _%e357221357246%_))
                (_%K357218357233%_ _%phi357249%_ _%ctx357244%_ _%K357239%_))
              (_%E357217357226%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self357254%_ _%stx357255%_)
        (let ((_%method357257%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self357254%_
           _%stx357255%_
           _%method357257%_))))
    (define gx#core-apply-user-expander
      (lambda _g360600_
        (let ((_g360601_ (##length _g360600_)))
          (cond ((##fx= _g360601_ 2)
                 (apply gx#core-apply-user-expander__0 _g360600_))
                ((##fx= _g360601_ 3)
                 (apply gx#core-apply-user-expander__% _g360600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g360600_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K357202%_
               _%stx357203%_
               _%ctx357204%_
               _%phi357205%_
               _%method357206%_)
        (let ((_%mark357208%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx357204%_
                _%phi357205%_
                _%stx357203%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K357202%_
               (gx#stx-apply-mark _%stx357203%_ _%mark357208%_)
               _%method357206%_)
              _%mark357208%_))
           gx#current-expander-marks
           (cons _%mark357208%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx357050%_ _%phi357051%_ _%ctx357052%_)
        (let _%lp357054%_ ((_%bind357056%_
                            (gx#core-resolve-identifier__%
                             _%stx357050%_
                             _%phi357051%_
                             _%ctx357052%_)))
          (if (##structure-direct-instance-of?
               _%bind357056%_
               'gx#import-binding::t)
              (_%lp357054%_
               (##unchecked-structure-ref _%bind357056%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind357056%_
                   'gx#alias-binding::t)
                  (_%lp357054%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind357056%_ '5 '#f '#f)
                    _%phi357051%_
                    _%ctx357052%_))
                  _%bind357056%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx357064%_)
        (let* ((_%phi357066%_ (gx#current-expander-phi))
               (_%ctx357068%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx357064%_
           _%phi357066%_
           _%ctx357068%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx357070%_ _%phi357071%_)
        (let ((_%ctx357073%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx357070%_
           _%phi357071%_
           _%ctx357073%_))))
    (define gx#resolve-identifier
      (lambda _g360602_
        (let ((_g360603_ (##length _g360602_)))
          (cond ((##fx= _g360603_ 1)
                 (apply gx#resolve-identifier__0 _g360602_))
                ((##fx= _g360603_ 2)
                 (apply gx#resolve-identifier__1 _g360602_))
                ((##fx= _g360603_ 3)
                 (apply gx#resolve-identifier__% _g360602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g360602_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx357005%_
               _%val357006%_
               _%rebind?357007%_
               _%phi357008%_
               _%ctx357009%_)
        (let ((_%rebind?357014%_
               (if (not _%rebind?357007%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?357007%_)
                       _%rebind?357007%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx357005%_)
           _%val357006%_
           _%rebind?357014%_
           _%phi357008%_
           _%ctx357009%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx357019%_ _%val357020%_)
        (let* ((_%rebind?357022%_ '#f)
               (_%phi357024%_ (gx#current-expander-phi))
               (_%ctx357026%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx357019%_
           _%val357020%_
           _%rebind?357022%_
           _%phi357024%_
           _%ctx357026%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx357028%_ _%val357029%_ _%rebind?357030%_)
        (let* ((_%phi357032%_ (gx#current-expander-phi))
               (_%ctx357034%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx357028%_
           _%val357029%_
           _%rebind?357030%_
           _%phi357032%_
           _%ctx357034%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx357036%_ _%val357037%_ _%rebind?357038%_ _%phi357039%_)
        (let ((_%ctx357041%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx357036%_
           _%val357037%_
           _%rebind?357038%_
           _%phi357039%_
           _%ctx357041%_))))
    (define gx#bind-identifier!
      (lambda _g360604_
        (let ((_g360605_ (##length _g360604_)))
          (cond ((##fx= _g360605_ 2) (apply gx#bind-identifier!__0 _g360604_))
                ((##fx= _g360605_ 3) (apply gx#bind-identifier!__1 _g360604_))
                ((##fx= _g360605_ 4) (apply gx#bind-identifier!__2 _g360604_))
                ((##fx= _g360605_ 5) (apply gx#bind-identifier!__% _g360604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g360604_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx356971%_ _%phi356972%_ _%ctx356973%_)
        (let _%lp356975%_ ((_%e356977%_ _%stx356971%_)
                           (_%marks356978%_ (gx#current-expander-marks)))
          (if (symbol? _%e356977%_)
              (gx#core-resolve-binding
               _%e356977%_
               _%phi356972%_
               _%phi356972%_
               _%ctx356973%_
               (reverse _%marks356978%_))
              (if (gx#identifier-quote? _%e356977%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e356977%_ '1 '#f '#f)
                   _%phi356972%_
                   '0
                   (##unchecked-structure-ref _%e356977%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e356977%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e356977%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e356977%_ '1 '#f '#f)
                       _%phi356972%_
                       _%phi356972%_
                       _%ctx356973%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e356977%_ '3 '#f '#f)
                        _%marks356978%_))
                      (if (##structure-direct-instance-of?
                           _%e356977%_
                           'gx#syntax-wrap::t)
                          (_%lp356975%_
                           (##unchecked-structure-ref _%e356977%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e356977%_ '3 '#f '#f)
                            _%marks356978%_))
                          (if (##structure-instance-of?
                               _%e356977%_
                               'gerbil#AST::t)
                              (_%lp356975%_
                               (##unchecked-structure-ref
                                _%e356977%_
                                '1
                                '#f
                                '#f)
                               _%marks356978%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx356971%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx356989%_)
        (let* ((_%phi356991%_ (gx#current-expander-phi))
               (_%ctx356993%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx356989%_
           _%phi356991%_
           _%ctx356993%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx356995%_ _%phi356996%_)
        (let ((_%ctx356998%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx356995%_
           _%phi356996%_
           _%ctx356998%_))))
    (define gx#core-resolve-identifier
      (lambda _g360606_
        (let ((_g360607_ (##length _g360606_)))
          (cond ((##fx= _g360607_ 1)
                 (apply gx#core-resolve-identifier__0 _g360606_))
                ((##fx= _g360607_ 2)
                 (apply gx#core-resolve-identifier__1 _g360606_))
                ((##fx= _g360607_ 3)
                 (apply gx#core-resolve-identifier__% _g360606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g360606_))))))
    (define gx#core-resolve-binding
      (lambda (_%id356882%_
               _%phi356883%_
               _%src-phi356884%_
               _%ctx356885%_
               _%marks356886%_)
        (letrec ((_%resolve356888%_
                  (lambda (_%ctx356955%_ _%src-phi356956%_ _%key356957%_)
                    (let _%lp356959%_ ((_%ctx356961%_
                                        (gx#core-context-shift
                                         _%ctx356955%_
                                         _%phi356883%_))
                                       (_%dphi356962%_
                                        (fx- _%phi356883%_ _%src-phi356956%_)))
                      (let ((_%$e356964%_
                             (gx#core-context-resolve
                              _%ctx356961%_
                              _%key356957%_)))
                        (if _%$e356964%_
                            _%$e356964%_
                            (if (fxzero? _%dphi356962%_)
                                '#f
                                (if (fxpositive? _%dphi356962%_)
                                    (_%lp356959%_
                                     (gx#core-context-shift _%ctx356961%_ '-1)
                                     (##fx- _%dphi356962%_ '1))
                                    (_%lp356959%_
                                     (gx#core-context-shift _%ctx356961%_ '1)
                                     (##fx+ _%dphi356962%_ '1))))))))))
          (let _%lp356890%_ ((_%ctx356892%_ _%ctx356885%_)
                             (_%src-phi356893%_ _%src-phi356884%_)
                             (_%rest356894%_ _%marks356886%_))
            (let* ((_%rest356895356903%_ _%rest356894%_)
                   (_%else356897356911%_
                    (lambda ()
                      (_%resolve356888%_
                       _%ctx356892%_
                       _%src-phi356893%_
                       _%id356882%_)))
                   (_%K356899356943%_
                    (lambda (_%rest356914%_ _%hd356915%_)
                      (let* ((_%hd356916356922%_ _%hd356915%_)
                             (_%E356918356925%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd356916356922%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K356919356935%_
                              (lambda (_%subst356928%_)
                                (let ((_%$e356932%_
                                       (let ((_%key356930%_
                                              (if _%subst356928%_
                                                  (hash-get
                                                   _%subst356928%_
                                                   _%id356882%_)
                                                  '#f)))
                                         (if _%key356930%_
                                             (_%resolve356888%_
                                              _%ctx356892%_
                                              _%src-phi356893%_
                                              _%key356930%_)
                                             '#f))))
                                  (if _%$e356932%_
                                      _%$e356932%_
                                      (_%lp356890%_
                                       (##unchecked-structure-ref
                                        _%hd356915%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd356915%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest356914%_))))))
                        (if (##structure-instance-of?
                             _%hd356916356922%_
                             'gx#expander-mark::t)
                            (let* ((_%e356920356938%_
                                    (##unchecked-structure-ref
                                     _%hd356916356922%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst356941%_ _%e356920356938%_))
                              (_%K356919356935%_ _%subst356941%_))
                            (_%E356918356925%_))))))
              (if (pair? _%rest356895356903%_)
                  (let ((_%hd356900356946%_ (##car _%rest356895356903%_))
                        (_%tl356901356948%_ (##cdr _%rest356895356903%_)))
                    (let* ((_%hd356951%_ _%hd356900356946%_)
                           (_%rest356953%_ _%tl356901356948%_))
                      (_%K356899356943%_ _%rest356953%_ _%hd356951%_)))
                  (_%else356897356911%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key356753%_
               _%val356754%_
               _%rebind?356755%_
               _%phi356756%_
               _%ctx356757%_)
        (letrec ((_%update-binding356759%_
                  (lambda (_%xval356831%_)
                    (if (or (_%rebind?356755%_
                             _%ctx356757%_
                             _%xval356831%_
                             _%val356754%_)
                            (and (##structure-direct-instance-of?
                                  _%xval356831%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval356831%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val356754%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val356754%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval356831%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val356754%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val356754%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval356831%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val356754%_
                        (if (and (##structure-direct-instance-of?
                                  _%val356754%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val356754%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval356831%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val356754%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval356831%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval356831%_
                            (if (and (##structure-direct-instance-of?
                                      _%val356754%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval356831%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key356753%_
                                 (cons (##unchecked-structure-ref
                                        _%val356754%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val356754%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval356831%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval356831%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval356831%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval356831%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key356753%_
                                 _%val356754%_
                                 _%xval356831%_))))))
                 (_%gensubst356760%_
                  (lambda (_%subst356826%_ _%id356827%_)
                    (let ((_%eid356829%_
                           (gensym (if (uninterned-symbol? _%id356827%_)
                                       '%
                                       _%id356827%_))))
                      (hash-put! _%subst356826%_ _%id356827%_ _%eid356829%_)
                      _%eid356829%_)))
                 (_%subst!356761%_
                  (lambda (_%key356763%_)
                    (let* ((_%key356764356772%_ _%key356763%_)
                           (_%else356766356780%_ (lambda () _%key356763%_))
                           (_%K356768356814%_
                            (lambda (_%mark356783%_ _%id356784%_)
                              (let* ((_%mark356785356791%_ _%mark356783%_)
                                     (_%E356787356794%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark356785356791%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K356788356806%_
                                      (lambda (_%subst356797%_)
                                        (if (not _%subst356797%_)
                                            (let ((_%subst356800%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark356783%_
                                               _%subst356800%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst356760%_
                                               _%subst356800%_
                                               _%id356784%_))
                                            (let ((_%$e356802%_
                                                   (hash-get
                                                    _%subst356797%_
                                                    _%id356784%_)))
                                              (if _%$e356802%_
                                                  _%$e356802%_
                                                  (_%gensubst356760%_
                                                   _%subst356797%_
                                                   _%id356784%_)))))))
                                (if (##structure-instance-of?
                                     _%mark356785356791%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e356789356809%_
                                            (##unchecked-structure-ref
                                             _%mark356785356791%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst356812%_ _%e356789356809%_))
                                      (_%K356788356806%_ _%subst356812%_))
                                    (_%E356787356794%_))))))
                      (if (pair? _%key356764356772%_)
                          (let ((_%hd356769356817%_
                                 (##car _%key356764356772%_))
                                (_%tl356770356819%_
                                 (##cdr _%key356764356772%_)))
                            (let* ((_%id356822%_ _%hd356769356817%_)
                                   (_%mark356824%_ _%tl356770356819%_))
                              (_%K356768356814%_ _%mark356824%_ _%id356822%_)))
                          (_%else356766356780%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx356757%_ _%phi356756%_)
           (_%subst!356761%_ _%key356753%_)
           _%val356754%_
           _%update-binding356759%_))))
    (define gx#core-bind!__0
      (lambda (_%key356852%_ _%val356853%_)
        (let* ((_%rebind?356855%_ false)
               (_%phi356857%_ (gx#current-expander-phi))
               (_%ctx356859%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key356852%_
           _%val356853%_
           _%rebind?356855%_
           _%phi356857%_
           _%ctx356859%_))))
    (define gx#core-bind!__1
      (lambda (_%key356861%_ _%val356862%_ _%rebind?356863%_)
        (let* ((_%phi356865%_ (gx#current-expander-phi))
               (_%ctx356867%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key356861%_
           _%val356862%_
           _%rebind?356863%_
           _%phi356865%_
           _%ctx356867%_))))
    (define gx#core-bind!__2
      (lambda (_%key356869%_ _%val356870%_ _%rebind?356871%_ _%phi356872%_)
        (let ((_%ctx356874%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key356869%_
           _%val356870%_
           _%rebind?356871%_
           _%phi356872%_
           _%ctx356874%_))))
    (define gx#core-bind!
      (lambda _g360608_
        (let ((_g360609_ (##length _g360608_)))
          (cond ((##fx= _g360609_ 2) (apply gx#core-bind!__0 _g360608_))
                ((##fx= _g360609_ 3) (apply gx#core-bind!__1 _g360608_))
                ((##fx= _g360609_ 4) (apply gx#core-bind!__2 _g360608_))
                ((##fx= _g360609_ 5) (apply gx#core-bind!__% _g360608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g360608_))))))
    (define gx#core-identifier-key
      (lambda (_%stx356684%_)
        (if (symbol? _%stx356684%_)
            (let* ((_%g356686356694%_ (gx#current-expander-marks))
                   (_%else356688356702%_ (lambda () _%stx356684%_))
                   (_%K356690356707%_
                    (lambda (_%hd356705%_) (cons _%stx356684%_ _%hd356705%_))))
              (if (pair? _%g356686356694%_)
                  (let* ((_%hd356691356710%_ (##car _%g356686356694%_))
                         (_%hd356713%_ _%hd356691356710%_))
                    (_%K356690356707%_ _%hd356713%_))
                  (_%else356688356702%_)))
            (if (gx#identifier? _%stx356684%_)
                (let* ((_%id356716%_ (gx#syntax-local-unwrap _%stx356684%_))
                       (_%eid356718%_ (gx#stx-e _%id356716%_))
                       (_%marks356720%_
                        (gx#stx-identifier-marks* _%id356716%_))
                       (_%marks356722356730%_ _%marks356720%_)
                       (_%else356724356738%_ (lambda () _%eid356718%_))
                       (_%K356726356743%_
                        (lambda (_%hd356741%_)
                          (cons _%eid356718%_ _%hd356741%_))))
                  (if (pair? _%marks356722356730%_)
                      (let* ((_%hd356727356746%_ (##car _%marks356722356730%_))
                             (_%hd356749%_ _%hd356727356746%_))
                        (_%K356726356743%_ _%hd356749%_))
                      (_%else356724356738%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx356684%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx356623%_ _%phi356624%_)
        (letrec ((_%make-phi356626%_
                  (lambda (_%super356682%_)
                    (let ((__obj360579
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj360579
                       (##gensym 'phi)
                       _%super356682%_)
                      __obj360579)))
                 (_%make-phi/up356627%_
                  (lambda (_%ctx356677%_ _%super356678%_)
                    (let ((_%ctx+1356680%_
                           (_%make-phi356626%_ _%super356678%_)))
                      (##unchecked-structure-set!
                       _%ctx356677%_
                       _%ctx+1356680%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1356680%_
                       _%ctx356677%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1356680%_)))
                 (_%make-phi/down356628%_
                  (lambda (_%ctx356672%_ _%super356673%_)
                    (let ((_%ctx-1356675%_
                           (_%make-phi356626%_ _%super356673%_)))
                      (##unchecked-structure-set!
                       _%ctx-1356675%_
                       _%ctx356672%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx356672%_
                       _%ctx-1356675%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1356675%_)))
                 (_%shift356629%_
                  (lambda (_%ctx356655%_
                           _%delta356656%_
                           _%make-delta-context356657%_
                           _%phi356658%_
                           _%K356659%_)
                    (let ((_%$e356661%_
                           (##unchecked-structure-ref
                            _%ctx356655%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e356661%_
                          ((lambda (_%super356664%_)
                             (let* ((_%super356666%_
                                     (_%K356659%_
                                      _%super356664%_
                                      _%delta356656%_))
                                    (_%ctx+d356668%_
                                     (_%make-delta-context356657%_
                                      _%ctx356655%_
                                      _%super356666%_)))
                               (_%K356659%_
                                _%ctx+d356668%_
                                (fx- _%phi356658%_ _%delta356656%_))))
                           _%$e356661%_)
                          (error '"Bad context" _%ctx356655%_))))))
          (let _%K356631%_ ((_%ctx356633%_ _%ctx356623%_)
                            (_%phi356634%_ _%phi356624%_))
            (if (fxzero? _%phi356634%_)
                _%ctx356633%_
                (if (##structure-instance-of? _%ctx356633%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi356634%_)
                        (let ((_%$e356638%_
                               (##unchecked-structure-ref
                                _%ctx356633%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e356638%_
                              ((lambda (_%g356640356642%_)
                                 (_%K356631%_
                                  _%g356640356642%_
                                  (##fx- _%phi356634%_ '1)))
                               _%$e356638%_)
                              (_%shift356629%_
                               _%ctx356633%_
                               '1
                               _%make-phi/up356627%_
                               _%phi356634%_
                               _%K356631%_)))
                        (let ((_%$e356646%_
                               (##unchecked-structure-ref
                                _%ctx356633%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e356646%_
                              ((lambda (_%g356648356650%_)
                                 (_%K356631%_
                                  _%g356648356650%_
                                  (##fx+ _%phi356634%_ '1)))
                               _%$e356646%_)
                              (_%shift356629%_
                               _%ctx356633%_
                               '-1
                               _%make-phi/down356628%_
                               _%phi356634%_
                               _%K356631%_))))
                    _%ctx356633%_))))))
    (define gx#core-context-get
      (lambda (_%ctx356620%_ _%key356621%_)
        (hash-get
         (##unchecked-structure-ref _%ctx356620%_ '2 '#f '#f)
         _%key356621%_)))
    (define gx#core-context-put!
      (lambda (_%ctx356616%_ _%key356617%_ _%val356618%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx356616%_ '2 '#f '#f)
         _%key356617%_
         _%val356618%_)
        _%val356618%_))
    (define gx#core-context-resolve
      (lambda (_%ctx356602%_ _%key356603%_)
        (let _%lp356605%_ ((_%ctx356607%_ _%ctx356602%_))
          (let ((_%$e356609%_
                 (gx#core-context-get _%ctx356607%_ _%key356603%_)))
            (if _%$e356609%_
                _%$e356609%_
                (let ((_%$e356612%_
                       (if (##structure-instance-of?
                            _%ctx356607%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx356607%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e356612%_ (_%lp356605%_ _%$e356612%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx356591%_ _%key356592%_ _%val356593%_ _%rebind356594%_)
        (let ((_%$e356596%_ (gx#core-context-get _%ctx356591%_ _%key356592%_)))
          (if _%$e356596%_
              ((lambda (_%xval356599%_)
                 (gx#core-context-put!
                  _%ctx356591%_
                  _%key356592%_
                  (_%rebind356594%_ _%xval356599%_)))
               _%$e356596%_)
              (gx#core-context-put!
               _%ctx356591%_
               _%key356592%_
               _%val356593%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx356566%_ _%stop?356567%_)
        (let _%lp356569%_ ((_%ctx356571%_ _%ctx356566%_))
          (if (_%stop?356567%_ _%ctx356571%_)
              _%ctx356571%_
              (if (##structure-instance-of? _%ctx356571%_ 'gx#phi-context::t)
                  (_%lp356569%_
                   (##unchecked-structure-ref _%ctx356571%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx356580%_ (gx#current-expander-context))
               (_%stop?356582%_ gx#top-context?))
          (gx#core-context-top__% _%ctx356580%_ _%stop?356582%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx356584%_)
        (let ((_%stop?356586%_ gx#top-context?))
          (gx#core-context-top__% _%ctx356584%_ _%stop?356586%_))))
    (define gx#core-context-top
      (lambda _g360610_
        (let ((_g360611_ (##length _g360610_)))
          (cond ((##fx= _g360611_ 0) (apply gx#core-context-top__0 _g360610_))
                ((##fx= _g360611_ 1) (apply gx#core-context-top__1 _g360610_))
                ((##fx= _g360611_ 2) (apply gx#core-context-top__% _g360610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g360610_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx356551%_)
        (let _%lp356553%_ ((_%ctx356555%_ _%ctx356551%_))
          (if (##structure-instance-of? _%ctx356555%_ 'gx#phi-context::t)
              (_%lp356553%_
               (##unchecked-structure-ref _%ctx356555%_ '3 '#f '#f))
              _%ctx356555%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx356561%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx356561%_))))
    (define gx#core-context-root
      (lambda _g360612_
        (let ((_g360613_ (##length _g360612_)))
          (cond ((##fx= _g360613_ 0) (apply gx#core-context-root__0 _g360612_))
                ((##fx= _g360613_ 1) (apply gx#core-context-root__% _g360612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g360612_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx356533%_ . _%ignore356534%_)
        (let ((_%$e356536%_ (gx#current-expander-allow-rebind?)))
          (if _%$e356536%_
              _%$e356536%_
              (if (##structure-instance-of? _%ctx356533%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx356533%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx356533%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx356543%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx356543%_))))
    (define gx#core-context-rebind?
      (lambda _g360614_
        (let ((_g360615_ (##length _g360614_)))
          (cond ((##fx= _g360615_ 0)
                 (apply gx#core-context-rebind?__0 _g360614_))
                ((##fx= _g360615_ 1)
                 (apply gx#core-context-rebind?__% _g360614_))
                ((##fx>= _g360615_ 1)
                 (apply gx#core-context-rebind?__% _g360614_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g360614_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx356516%_)
        (let ((_%$e356518%_ (gx#core-context-top__1 _%ctx356516%_)))
          (if _%$e356518%_
              ((lambda (_%ctx356521%_)
                 (if (##structure-instance-of?
                      _%ctx356521%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx356521%_ '6 '#f '#f)
                     '#f))
               _%$e356518%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx356528%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx356528%_))))
    (define gx#core-context-namespace
      (lambda _g360616_
        (let ((_g360617_ (##length _g360616_)))
          (cond ((##fx= _g360617_ 0)
                 (apply gx#core-context-namespace__0 _g360616_))
                ((##fx= _g360617_ 1)
                 (apply gx#core-context-namespace__% _g360616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g360616_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind356502%_ _%is?356503%_)
        (if (##structure-direct-instance-of?
             _%bind356502%_
             'gx#syntax-binding::t)
            (_%is?356503%_
             (##unchecked-structure-ref _%bind356502%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind356508%_)
        (let ((_%is?356510%_ gx#expander?))
          (gx#expander-binding?__% _%bind356508%_ _%is?356510%_))))
    (define gx#expander-binding?
      (lambda _g360618_
        (let ((_g360619_ (##length _g360618_)))
          (cond ((##fx= _g360619_ 1) (apply gx#expander-binding?__0 _g360618_))
                ((##fx= _g360619_ 2) (apply gx#expander-binding?__% _g360618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g360618_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind356499%_)
        (gx#expander-binding?__% _%bind356499%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind356497%_)
        (gx#expander-binding?__% _%bind356497%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind356491%_)
        (letrec ((_%direct-special-form?356493%_
                  (lambda (_%obj356495%_)
                    (##structure-direct-instance-of?
                     _%obj356495%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind356491%_
           _%direct-special-form?356493%_))))
    (define gx#special-form-binding?
      (lambda (_%bind356489%_)
        (gx#expander-binding?__% _%bind356489%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind356480%_)
        (letrec ((_%feature?356482%_
                  (lambda (_%e356484%_)
                    (let ((_%$e356486%_
                           (##structure-instance-of?
                            _%e356484%_
                            'gx#feature-expander::t)))
                      (if _%$e356486%_
                          _%$e356486%_
                          (##structure-instance-of?
                           _%e356484%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind356480%_ _%feature?356482%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind356478%_)
        (gx#expander-binding?__% _%bind356478%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id356465%_ _%bound?356466%_)
        (if (gx#identifier? _%id356465%_)
            (_%bound?356466%_ (gx#resolve-identifier__0 _%id356465%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id356471%_)
        (let ((_%bound?356473%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id356471%_ _%bound?356473%_))))
    (define gx#core-bound-identifier?
      (lambda _g360620_
        (let ((_g360621_ (##length _g360620_)))
          (cond ((##fx= _g360621_ 1)
                 (apply gx#core-bound-identifier?__0 _g360620_))
                ((##fx= _g360621_ 2)
                 (apply gx#core-bound-identifier?__% _g360620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g360620_))))))
    (define gx#core-identifier=?
      (lambda (_%x356455%_ _%y356456%_)
        (letrec ((_%y=?356458%_
                  (lambda (_%xid356462%_)
                    ((if (list? _%y356456%_) memq eq?)
                     _%xid356462%_
                     _%y356456%_))))
          (let ((_%bind356460%_ (gx#resolve-identifier__0 _%x356455%_)))
            (if (##structure-instance-of? _%bind356460%_ 'gx#binding::t)
                (_%y=?356458%_
                 (##unchecked-structure-ref _%bind356460%_ '1 '#f '#f))
                (_%y=?356458%_ (gx#stx-e _%x356455%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e356453%_)
        (if (interned-symbol? _%e356453%_)
            (string-index__0 (symbol->string _%e356453%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx356406%_ _%src356407%_ _%ctx356408%_ _%marks356409%_)
        (if (##structure? _%stx356406%_)
            (let ((_%$e356411%_ (gx#sealed-syntax-unwrap _%stx356406%_)))
              (if _%$e356411%_
                  _%$e356411%_
                  (if (gx#identifier? _%stx356406%_)
                      (let ((_%id356415%_
                             (gx#stx-unwrap__% _%stx356406%_ _%marks356409%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id356415%_ '1 '#f '#f)
                         (let ((_%$e356417%_
                                (##unchecked-structure-ref
                                 _%id356415%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e356417%_ _%$e356417%_ _%src356407%_))
                         _%ctx356408%_
                         (##unchecked-structure-ref _%id356415%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx356406%_)
                       (let ((_%$e356421%_ (gx#stx-source _%stx356406%_)))
                         (if _%$e356421%_ _%$e356421%_ _%src356407%_))
                       _%ctx356408%_
                       (reverse _%marks356409%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx356406%_
             _%src356407%_
             _%ctx356408%_
             (reverse _%marks356409%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx356427%_)
        (let* ((_%src356429%_ '#f)
               (_%ctx356431%_ (gx#current-expander-context))
               (_%marks356433%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx356427%_
           _%src356429%_
           _%ctx356431%_
           _%marks356433%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx356435%_ _%src356436%_)
        (let* ((_%ctx356438%_ (gx#current-expander-context))
               (_%marks356440%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx356435%_
           _%src356436%_
           _%ctx356438%_
           _%marks356440%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx356442%_ _%src356443%_ _%ctx356444%_)
        (let ((_%marks356446%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx356442%_
           _%src356443%_
           _%ctx356444%_
           _%marks356446%_))))
    (define gx#core-quote-syntax
      (lambda _g360622_
        (let ((_g360623_ (##length _g360622_)))
          (cond ((##fx= _g360623_ 1) (apply gx#core-quote-syntax__0 _g360622_))
                ((##fx= _g360623_ 2) (apply gx#core-quote-syntax__1 _g360622_))
                ((##fx= _g360623_ 3) (apply gx#core-quote-syntax__2 _g360622_))
                ((##fx= _g360623_ 4) (apply gx#core-quote-syntax__% _g360622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g360622_))))))
    (define gx#core-cons
      (lambda (_%hd356402%_ _%tl356403%_)
        (cons (gx#core-quote-syntax__0 _%hd356402%_) _%tl356403%_)))
    (define gx#core-list
      (lambda (_%hd356399%_ . _%rest356400%_)
        (cons (gx#core-quote-syntax__0 _%hd356399%_) _%rest356400%_)))
    (define gx#core-cons*
      (lambda (_%hd356396%_ . _%rest356397%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd356396%_) _%rest356397%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path356365%_ _%rel356366%_)
        (let ((_%path356383%_ (gx#stx-e _%stx-path356365%_))
              (_%reldir356384%_
               (let _%lp356368%_ ((_%relsrc356370%_
                                   (let ((_%$e356380%_
                                          (gx#stx-source _%stx-path356365%_)))
                                     (if _%$e356380%_
                                         _%$e356380%_
                                         _%rel356366%_))))
                 (if (##structure-instance-of? _%relsrc356370%_ 'gerbil#AST::t)
                     (_%lp356368%_
                      (let ((_%$e356373%_ (gx#stx-source _%relsrc356370%_)))
                        (if _%$e356373%_
                            _%$e356373%_
                            (gx#stx-e _%relsrc356370%_))))
                     (if (source-location-path? _%relsrc356370%_)
                         (path-directory
                          (source-location-path _%relsrc356370%_))
                         (if (string? _%relsrc356370%_)
                             (path-directory _%relsrc356370%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path356383%_ (path-normalize _%reldir356384%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path356389%_)
        (let ((_%rel356391%_ '#f))
          (gx#core-resolve-path__% _%stx-path356389%_ _%rel356391%_))))
    (define gx#core-resolve-path
      (lambda _g360624_
        (let ((_g360625_ (##length _g360624_)))
          (cond ((##fx= _g360625_ 1) (apply gx#core-resolve-path__0 _g360624_))
                ((##fx= _g360625_ 2) (apply gx#core-resolve-path__% _g360624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g360624_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr356321%_ _%ctx356322%_)
        (let* ((_%repr356323356330%_ _%repr356321%_)
               (_%E356325356334%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr356323356330%_
                         '([phi . subs]))
                  '#!void))
               (_%K356326356342%_
                (lambda (_%subs356337%_ _%phi356338%_)
                  (let ((_%subst356340%_
                         (if (null? _%subs356337%_)
                             '#f
                             (list->hash-table-eq _%subs356337%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst356340%_
                     _%ctx356322%_
                     _%phi356338%_
                     '#f)))))
          (if (pair? _%repr356323356330%_)
              (let ((_%hd356327356345%_ (##car _%repr356323356330%_))
                    (_%tl356328356347%_ (##cdr _%repr356323356330%_)))
                (let* ((_%phi356350%_ _%hd356327356345%_)
                       (_%subs356352%_ _%tl356328356347%_))
                  (_%K356326356342%_ _%subs356352%_ _%phi356350%_)))
              (_%E356325356334%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr356357%_)
        (let ((_%ctx356359%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr356357%_ _%ctx356359%_))))
    (define gx#core-deserialize-mark
      (lambda _g360626_
        (let ((_g360627_ (##length _g360626_)))
          (cond ((##fx= _g360627_ 1)
                 (apply gx#core-deserialize-mark__0 _g360626_))
                ((##fx= _g360627_ 2)
                 (apply gx#core-deserialize-mark__% _g360626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g360626_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx356318%_)
        (gx#stx-rewrap _%stx356318%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx356316%_)
        (gx#stx-unwrap__% _%stx356316%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx356286%_)
        (let* ((_%g356287356295%_ (gx#current-expander-marks))
               (_%else356289356303%_ (lambda () _%stx356286%_))
               (_%K356291356308%_
                (lambda (_%hd356306%_)
                  (gx#stx-apply-mark _%stx356286%_ _%hd356306%_))))
          (if (pair? _%g356287356295%_)
              (let* ((_%hd356292356311%_ (##car _%g356287356295%_))
                     (_%hd356314%_ _%hd356292356311%_))
                (_%K356291356308%_ _%hd356314%_))
              (_%else356289356303%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym356284%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym356284%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx356269%_ _%E356270%_)
        (let ((_%bind356272%_ (gx#resolve-identifier__0 _%stx356269%_)))
          (if (##structure-direct-instance-of?
               _%bind356272%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind356272%_ '5 '#f '#f)
              (_%E356270%_ _%stx356269%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx356277%_)
        (let ((_%E356279%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx356277%_ _%E356279%_))))
    (define gx#syntax-local-e
      (lambda _g360628_
        (let ((_g360629_ (##length _g360628_)))
          (cond ((##fx= _g360629_ 1) (apply gx#syntax-local-e__0 _g360628_))
                ((##fx= _g360629_ 2) (apply gx#syntax-local-e__% _g360628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g360628_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx356253%_ _%E356254%_)
        (let ((_%e356256%_ (gx#syntax-local-e__% _%stx356253%_ _%E356254%_)))
          (if (##structure-instance-of? _%e356256%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e356256%_ '1 '#f '#f)
              _%e356256%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx356261%_)
        (let ((_%E356263%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx356261%_ _%E356263%_))))
    (define gx#syntax-local-value
      (lambda _g360630_
        (let ((_g360631_ (##length _g360630_)))
          (cond ((##fx= _g360631_ 1)
                 (apply gx#syntax-local-value__0 _g360630_))
                ((##fx= _g360631_ 2)
                 (apply gx#syntax-local-value__% _g360630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g360630_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx356250%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx356250%_)))))
