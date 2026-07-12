(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1783878477)
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
      (lambda _%$args183985%_
        (apply make-instance gx#expander-context::t _%$args183985%_)))
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
      (lambda _%$args183982%_
        (apply make-instance gx#root-context::t _%$args183982%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args183979%_
        (apply make-instance gx#phi-context::t _%$args183979%_)))
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
      (lambda _%$args183976%_
        (apply make-instance gx#top-context::t _%$args183976%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args183973%_
        (apply make-instance gx#module-context::t _%$args183973%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args183970%_
        (apply make-instance gx#prelude-context::t _%$args183970%_)))
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
      (lambda _%$args183967%_
        (apply make-instance gx#local-context::t _%$args183967%_)))
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
      (lambda (_%self183940%_ _%id183941%_ _%super183942%_)
        (let ((_%self183945%_ _%self183940%_))
          (if (##fx< '3 (##structure-length _%self183945%_))
              (begin
                (##unchecked-structure-set!
                 _%self183945%_
                 _%id183941%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self183945%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self183945%_
                 _%super183942%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self183945%_
                     '3
                     (##structure-length _%self183945%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self183958%_ _%id183959%_)
        (let ((_%super183961%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self183958%_
           _%id183959%_
           _%super183961%_))))
    (define gx#phi-context:::init!
      (lambda _g184027_
        (let ((_g184028_ (##length _g184027_)))
          (cond ((##fx= _g184028_ 2)
                 (apply gx#phi-context:::init!__0 _g184027_))
                ((##fx= _g184028_ 3)
                 (apply gx#phi-context:::init!__% _g184027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g184027_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self183793%_ _%super183794%_)
        (let ((_%self183797%_ _%self183793%_))
          (if (##fx< '3 (##structure-length _%self183797%_))
              (begin
                (##unchecked-structure-set!
                 _%self183797%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self183797%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self183797%_
                 _%super183794%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self183797%_
                     '3
                     (##structure-length _%self183797%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self183810%_)
        (let ((_%super183812%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self183810%_ _%super183812%_))))
    (define gx#local-context:::init!
      (lambda _g184029_
        (let ((_g184030_ (##length _g184029_)))
          (cond ((##fx= _g184030_ 1)
                 (apply gx#local-context:::init!__0 _g184029_))
                ((##fx= _g184030_ 2)
                 (apply gx#local-context:::init!__% _g184029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g184029_))))))
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
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args183667%_
        (apply make-instance gx#binding::t _%$args183667%_)))
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
      (lambda (_%self183650%_ _%id183651%_ _%key183652%_ _%phi183653%_)
        (let ((_%self183656%_ _%self183650%_))
          (##unchecked-structure-set! _%self183656%_ _%id183651%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self183656%_ _%key183652%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self183656%_
           _%phi183653%_
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args183525%_
        (apply make-instance gx#runtime-binding::t _%$args183525%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args183522%_
        (apply make-instance gx#local-binding::t _%$args183522%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args183519%_
        (apply make-instance gx#top-binding::t _%$args183519%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args183516%_
        (apply make-instance gx#module-binding::t _%$args183516%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args183513%_
        (apply make-instance gx#extern-binding::t _%$args183513%_)))
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
      (lambda (_%self183129%_
               _%id183130%_
               _%key183131%_
               _%phi183132%_
               _%ctx183133%_)
        (let ((_%self183136%_ _%self183129%_))
          (gx#binding:::init!
           _%self183136%_
           _%id183130%_
           _%key183131%_
           _%phi183132%_)
          (##unchecked-structure-set!
           _%self183136%_
           _%ctx183133%_
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args182882%_
        (apply make-instance gx#syntax-binding::t _%$args182882%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args182879%_
        (apply make-instance gx#import-binding::t _%$args182879%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: e))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args182876%_
        (apply make-instance gx#alias-binding::t _%$args182876%_)))
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
      (lambda (_%self182858%_
               _%id182859%_
               _%key182860%_
               _%phi182861%_
               _%e182862%_)
        (let ((_%self182865%_ _%self182858%_))
          (gx#binding:::init!
           _%self182865%_
           _%id182859%_
           _%key182860%_
           _%phi182861%_)
          (##unchecked-structure-set! _%self182865%_ _%e182862%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self182716%_
               _%id182717%_
               _%key182718%_
               _%phi182719%_
               _%e182720%_
               _%ctx182721%_
               _%weak?182722%_)
        (let ((_%self182725%_ _%self182716%_))
          (gx#binding:::init!
           _%self182725%_
           _%id182717%_
           _%key182718%_
           _%phi182719%_)
          (##unchecked-structure-set! _%self182725%_ _%e182720%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self182725%_ _%ctx182721%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self182725%_
           _%weak?182722%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self182576%_
               _%id182577%_
               _%key182578%_
               _%phi182579%_
               _%e182580%_)
        (let ((_%self182583%_ _%self182576%_))
          (gx#binding:::init!
           _%self182583%_
           _%id182577%_
           _%key182578%_
           _%phi182579%_)
          (##unchecked-structure-set! _%self182583%_ _%e182580%_ '5 '#f '#f))))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args182451%_
        (apply make-instance gx#expander::t _%$args182451%_)))
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
       (cons (cons 'struct: '#t) '((print: id)))
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args182448%_
        (apply make-instance gx#core-expander::t _%$args182448%_)))
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
      (lambda _%$args182445%_
        (apply make-instance gx#expression-form::t _%$args182445%_)))
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
      (lambda _%$args182442%_
        (apply make-instance gx#special-form::t _%$args182442%_)))
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
      (lambda _%$args182439%_
        (apply make-instance gx#definition-form::t _%$args182439%_)))
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
      (lambda _%$args182436%_
        (apply make-instance gx#top-special-form::t _%$args182436%_)))
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
      (lambda _%$args182433%_
        (apply make-instance gx#module-special-form::t _%$args182433%_)))
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
      (lambda _%$args182430%_
        (apply make-instance gx#feature-expander::t _%$args182430%_)))
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
      (lambda _%$args182427%_
        (apply make-instance gx#private-feature-expander::t _%$args182427%_)))
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
      (lambda _%$args182424%_
        (apply make-instance gx#reserved-expander::t _%$args182424%_)))
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
      (lambda _%$args182421%_
        (apply make-instance gx#macro-expander::t _%$args182421%_)))
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
      (lambda _%$args182418%_
        (apply make-instance gx#rename-macro-expander::t _%$args182418%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args182415%_
        (apply make-instance gx#user-expander::t _%$args182415%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args182412%_
        (apply make-instance gx#expander-mark::t _%$args182412%_)))
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
      (lambda (_%ctx182396%_
               _%message182397%_
               _%stx182398%_
               .
               _%details182399%_)
        (let ((_%ctx182410%_
               (let ((_%$e182401%_ _%ctx182396%_))
                 (if _%$e182401%_
                     _%$e182401%_
                     (let ((_%$e182404%_ (gx#core-context-top__0)))
                       (if _%$e182404%_
                           (cons 'expand
                                 (cons (##structure-ref
                                        _%$e182404%_
                                        '1
                                        gx#expander-context::t
                                        '#f)
                                       '()))
                           '#f))))))
          (raise (make-syntax-error
                  _%message182397%_
                  (cons _%stx182398%_ _%details182399%_)
                  _%ctx182410%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx182383%_ _%expression?182384%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx182383%_ _%expression?182384%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx182389%_)
        (let ((_%expression?182391%_ '#f))
          (gx#eval-syntax__% _%stx182389%_ _%expression?182391%_))))
    (define gx#eval-syntax
      (lambda _g184031_
        (let ((_g184032_ (##length _g184031_)))
          (cond ((##fx= _g184032_ 1) (apply gx#eval-syntax__0 _g184031_))
                ((##fx= _g184032_ 2) (apply gx#eval-syntax__% _g184031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g184031_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx182368%_ _%expression?182369%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx182368%_ _%expression?182369%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx182375%_)
        (let ((_%expression?182377%_ '#f))
          (gx#eval-syntax+1__% _%stx182375%_ _%expression?182377%_))))
    (define gx#eval-syntax+1
      (lambda _g184033_
        (let ((_g184034_ (##length _g184033_)))
          (cond ((##fx= _g184034_ 1) (apply gx#eval-syntax+1__0 _g184033_))
                ((##fx= _g184034_ 2) (apply gx#eval-syntax+1__% _g184033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g184033_))))))
    (define gx#eval-expression+1
      (lambda (_%stx182365%_) (gx#eval-syntax+1__% _%stx182365%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx182363%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx182363%_))))
    (define gx#core-expand__%
      (lambda (_%stx182350%_ _%expression?182351%_)
        (if _%expression?182351%_
            (gx#core-expand-expression _%stx182350%_)
            (gx#core-expand-top _%stx182350%_))))
    (define gx#core-expand__0
      (lambda (_%stx182356%_)
        (let ((_%expression?182358%_ '#f))
          (gx#core-expand__% _%stx182356%_ _%expression?182358%_))))
    (define gx#core-expand
      (lambda _g184035_
        (let ((_g184036_ (##length _g184035_)))
          (cond ((##fx= _g184036_ 1) (apply gx#core-expand__0 _g184035_))
                ((##fx= _g184036_ 2) (apply gx#core-expand__% _g184035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g184035_))))))
    (define gx#core-expand-top
      (lambda (_%stx182317%_)
        (let* ((_%stx182319%_ (gx#core-expand*__0 _%stx182317%_))
               (_%$%e182320182327%_ _%stx182319%_)
               (_%$%E182322182331%_
                (lambda () (gx#core-expand-expression _%stx182319%_)))
               (_%$%E182321182345%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182320182327%_)
                      (let ((_%$%e182323182335%_
                             (gx#syntax-e _%$%e182320182327%_)))
                        (let ((_%$%hd182324182338%_
                               (##car _%$%e182323182335%_))
                              (_%$%tl182325182340%_
                               (##cdr _%$%e182323182335%_)))
                          (let ((_%form182343%_ _%$%hd182324182338%_))
                            (if (gx#core-bound-identifier?__0 _%form182343%_)
                                _%stx182319%_
                                (_%$%E182322182331%_)))))
                      (_%$%E182322182331%_)))))
          (_%$%E182321182345%_))))
    (define gx#core-expand-expression
      (lambda (_%stx182249%_)
        (letrec ((_%sealed-expression?182251%_
                  (lambda (_%hd182287%_)
                    (if (gx#sealed-syntax? _%hd182287%_)
                        (let* ((_%$%e182288182295%_ _%hd182287%_)
                               (_%$%E182290182299%_ (lambda () '#f))
                               (_%$%E182289182313%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e182288182295%_)
                                      (let ((_%$%e182291182303%_
                                             (gx#syntax-e
                                              _%$%e182288182295%_)))
                                        (let ((_%$%hd182292182306%_
                                               (##car _%$%e182291182303%_))
                                              (_%$%tl182293182308%_
                                               (##cdr _%$%e182291182303%_)))
                                          (let ((_%form182311%_
                                                 _%$%hd182292182306%_))
                                            (gx#core-bound-identifier?__%
                                             _%form182311%_
                                             gx#expression-form-binding?))))
                                      (_%$%E182290182299%_)))))
                          (_%$%E182289182313%_))
                        '#f)))
                 (_%illegal-expression182252%_
                  (lambda (_%hd182284%_ . _%_182285%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx182249%_
                     _%hd182284%_)))
                 (_%expand-e182253%_
                  (lambda (_%form182276%_ _%hd182277%_)
                    (let ((_%bind182279%_
                           (if (##structure-instance-of?
                                _%form182276%_
                                'gx#binding::t)
                               _%form182276%_
                               (gx#resolve-identifier__0 _%form182276%_))))
                      (if (gx#core-expander-binding? _%bind182279%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind182279%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd182277%_
                            (gx#stx-source _%stx182249%_)))
                          (if (##structure-direct-instance-of?
                               _%bind182279%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind182279%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd182277%_
                                 (gx#stx-source _%stx182249%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx182249%_
                               _%form182276%_)))))))
          (let ((_%hd182255%_ (gx#core-expand-head _%stx182249%_)))
            (if (_%sealed-expression?182251%_ _%hd182255%_)
                _%hd182255%_
                (if (gx#stx-pair? _%hd182255%_)
                    (let* ((_%form182259%_ (gx#stx-car _%hd182255%_))
                           (_%bind182261%_
                            (if (gx#identifier? _%form182259%_)
                                (gx#resolve-identifier__0 _%form182259%_)
                                '#f)))
                      (if (or (not _%bind182261%_)
                              (not (gx#core-expander-binding? _%bind182261%_)))
                          (_%expand-e182253%_
                           '%%app
                           (cons '%%app _%hd182255%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind182261%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd182255%_
                               _%illegal-expression182252%_)
                              (if (gx#expression-form-binding? _%bind182261%_)
                                  (_%expand-e182253%_
                                   _%bind182261%_
                                   _%hd182255%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind182261%_)
                                      (gx#core-expand-expression
                                       (_%expand-e182253%_
                                        _%bind182261%_
                                        _%hd182255%_))
                                      (_%illegal-expression182252%_
                                       _%hd182255%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd182255%_)
                        (_%illegal-expression182252%_ _%hd182255%_)
                        (if (gx#identifier? _%hd182255%_)
                            (_%expand-e182253%_
                             '%%ref
                             (cons '%%ref (cons _%hd182255%_ '())))
                            (if (gx#stx-datum? _%hd182255%_)
                                (_%expand-e182253%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd182255%_ '())))
                                (_%illegal-expression182252%_
                                 _%hd182255%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx182244%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx182247%_ (gx#core-expand-expression _%stx182244%_)))
             (values _%stx182247%_ (gx#eval-syntax* _%stx182247%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx182225%_ _%stop?182226%_)
        (let _%lp182228%_ ((_%stx182230%_ _%stx182225%_))
          (if (_%stop?182226%_ _%stx182230%_)
              _%stx182230%_
              (let ((_%rstx182232%_ (gx#core-expand1 _%stx182230%_)))
                (if (eq? _%stx182230%_ _%rstx182232%_)
                    _%stx182230%_
                    (_%lp182228%_ _%rstx182232%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx182237%_)
        (let ((_%stop?182239%_ false))
          (gx#core-expand*__% _%stx182237%_ _%stop?182239%_))))
    (define gx#core-expand*
      (lambda _g184037_
        (let ((_g184038_ (##length _g184037_)))
          (cond ((##fx= _g184038_ 1) (apply gx#core-expand*__0 _g184037_))
                ((##fx= _g184038_ 2) (apply gx#core-expand*__% _g184037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g184037_))))))
    (define gx#core-expand1
      (lambda (_%stx182177%_)
        (letrec ((_%step182179%_
                  (lambda (_%hd182216%_)
                    (let ((_%bind182218%_
                           (gx#resolve-identifier__0 _%hd182216%_)))
                      (if (##structure-instance-of?
                           _%bind182218%_
                           'gx#runtime-binding::t)
                          _%stx182177%_
                          (if (##structure-direct-instance-of?
                               _%bind182218%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind182218%_
                                '5
                                '#f
                                '#f)
                               _%stx182177%_)
                              (if (not _%bind182218%_)
                                  _%stx182177%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx182177%_))))))))
          (let* ((_%$%e182180182188%_ _%stx182177%_)
                 (_%$%E182186182192%_ (lambda () _%stx182177%_))
                 (_%$%E182182182198%_
                  (lambda ()
                    (let ((_%hd182196%_ _%$%e182180182188%_))
                      (if (gx#identifier? _%hd182196%_)
                          (_%step182179%_ _%hd182196%_)
                          (_%$%E182186182192%_)))))
                 (_%$%E182181182212%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e182180182188%_)
                        (let ((_%$%e182183182202%_
                               (gx#syntax-e _%$%e182180182188%_)))
                          (let ((_%$%hd182184182205%_
                                 (##car _%$%e182183182202%_))
                                (_%$%tl182185182207%_
                                 (##cdr _%$%e182183182202%_)))
                            (let ((_%hd182210%_ _%$%hd182184182205%_))
                              (if (gx#identifier? _%hd182210%_)
                                  (_%step182179%_ _%hd182210%_)
                                  (_%$%E182182182198%_)))))
                        (_%$%E182182182198%_)))))
            (_%$%E182181182212%_)))))
    (define gx#core-expand-head
      (lambda (_%stx182143%_)
        (letrec ((_%stop?182145%_
                  (lambda (_%stx182147%_)
                    (let* ((_%$%e182148182155%_ _%stx182147%_)
                           (_%$%E182150182159%_ (lambda () '#f))
                           (_%$%E182149182173%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e182148182155%_)
                                  (let ((_%$%e182151182163%_
                                         (gx#syntax-e _%$%e182148182155%_)))
                                    (let ((_%$%hd182152182166%_
                                           (##car _%$%e182151182163%_))
                                          (_%$%tl182153182168%_
                                           (##cdr _%$%e182151182163%_)))
                                      (let ((_%hd182171%_
                                             _%$%hd182152182166%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd182171%_))))
                                  (_%$%E182150182159%_)))))
                      (_%$%E182149182173%_)))))
          (gx#core-expand*__% _%stx182143%_ _%stop?182145%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx181949%_
               _%expand-special181950%_
               _%begin-form181951%_
               _%expand-e181952%_)
        (letrec ((_%expand-splice181954%_
                  (lambda (_%hd182117%_
                           _%body182118%_
                           _%rest182119%_
                           _%r182120%_)
                    (if (gx#stx-list? _%body182118%_)
                        (_%K181958%_
                         (gx#stx-foldr cons _%rest182119%_ _%body182118%_)
                         _%r182120%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx181949%_
                         _%hd182117%_))))
                 (_%expand-cond-expand181955%_
                  (lambda (_%hd182113%_ _%rest182114%_ _%r182115%_)
                    (_%K181958%_
                     (cons (gx#core-expand-cond-expand% _%hd182113%_)
                           _%rest182114%_)
                     _%r182115%_)))
                 (_%expand-include181956%_
                  (lambda (_%hd182062%_ _%rest182063%_ _%r182064%_)
                    (let* ((_%$%e182065182075%_ _%hd182062%_)
                           (_%$%E182067182079%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e182065182075%_)))
                           (_%$%E182066182109%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e182065182075%_)
                                  (let ((_%$%e182068182083%_
                                         (gx#syntax-e _%$%e182065182075%_)))
                                    (let ((_%$%hd182069182086%_
                                           (##car _%$%e182068182083%_))
                                          (_%$%tl182070182088%_
                                           (##cdr _%$%e182068182083%_)))
                                      (if (gx#stx-pair? _%$%tl182070182088%_)
                                          (let ((_%$%e182071182091%_
                                                 (gx#syntax-e
                                                  _%$%tl182070182088%_)))
                                            (let ((_%$%hd182072182094%_
                                                   (##car _%$%e182071182091%_))
                                                  (_%$%tl182073182096%_
                                                   (##cdr _%$%e182071182091%_)))
                                              (let ((_%path182099%_
                                                     _%$%hd182072182094%_))
                                                (if (gx#stx-null?
                                                     _%$%tl182073182096%_)
                                                    (if (gx#stx-string?
                                                         _%path182099%_)
                                                        (let* ((_%rpath182101%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path182099%_
                         (gx#stx-source _%hd182062%_)))
                       (_%block182103%_
                        (gx#core-expand-include%__%
                         _%hd182062%_
                         _%rpath182101%_))
                       (_%rbody182106%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block182103%_
                            _%expand-special181950%_
                            '#f
                            _%expand-e181952%_))
                         gx#current-expander-path
                         (cons _%rpath182101%_ (gx#current-expander-path)))))
                  (_%K181958%_
                   _%rest182063%_
                   (foldr__0 cons _%r182064%_ _%rbody182106%_)))
                (_%$%E182067182079%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E182067182079%_)))))
                                          (_%$%E182067182079%_))))
                                  (_%$%E182067182079%_)))))
                      (_%$%E182066182109%_))))
                 (_%expand-expression181957%_
                  (lambda (_%hd182058%_ _%rest182059%_ _%r182060%_)
                    (_%K181958%_
                     _%rest182059%_
                     (cons (_%expand-e181952%_ _%hd182058%_) _%r182060%_))))
                 (_%K181958%_
                  (lambda (_%rest181988%_ _%r181989%_)
                    (let* ((_%$%e181990181997%_ _%rest181988%_)
                           (_%$%E181992182001%_
                            (lambda ()
                              (if _%begin-form181951%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form181951%_
                                    (reverse _%r181989%_))
                                   (gx#stx-source _%stx181949%_))
                                  _%r181989%_)))
                           (_%$%E181991182054%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e181990181997%_)
                                  (let ((_%$%e181993182005%_
                                         (gx#syntax-e _%$%e181990181997%_)))
                                    (let ((_%$%hd181994182008%_
                                           (##car _%$%e181993182005%_))
                                          (_%$%tl181995182010%_
                                           (##cdr _%$%e181993182005%_)))
                                      (let* ((_%hd182013%_
                                              _%$%hd181994182008%_)
                                             (_%rest182015%_
                                              _%$%tl181995182010%_)
                                             (_%hd182017%_
                                              (gx#core-expand-head
                                               _%hd182013%_))
                                             (_%$%e182018182025%_ _%hd182017%_)
                                             (_%$%E182020182029%_
                                              (lambda ()
                                                (_%expand-expression181957%_
                                                 _%hd182017%_
                                                 _%rest182015%_
                                                 _%r181989%_)))
                                             (_%$%E182019182050%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e182018182025%_)
                                                    (let ((_%$%e182021182033%_
                                                           (gx#syntax-e
                                                            _%$%e182018182025%_)))
                                                      (let ((_%$%hd182022182036%_
                                                             (##car _%$%e182021182033%_))
                                                            (_%$%tl182023182038%_
                                                             (##cdr _%$%e182021182033%_)))
                                                        (let* ((_%form182041%_
                                                                _%$%hd182022182036%_)
                                                               (_%body182043%_
                                                                _%$%tl182023182038%_)
                                                               (_%bind182045%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form182041%_)
                            (gx#resolve-identifier__0 _%form182041%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind182045%_)
                      (let ((_%$e182047%_
                             (##unchecked-structure-ref
                              _%bind182045%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e182047%_)
                            (_%expand-splice181954%_
                             _%hd182017%_
                             _%body182043%_
                             _%rest182015%_
                             _%r181989%_)
                            (if (eq? '%#cond-expand _%$e182047%_)
                                (_%expand-cond-expand181955%_
                                 _%hd182017%_
                                 _%rest182015%_
                                 _%r181989%_)
                                (if (eq? '%#include _%$e182047%_)
                                    (_%expand-include181956%_
                                     _%hd182017%_
                                     _%rest182015%_
                                     _%r181989%_)
                                    (_%expand-special181950%_
                                     _%hd182017%_
                                     _%K181958%_
                                     _%rest182015%_
                                     _%r181989%_)))))
                      (_%expand-expression181957%_
                       _%hd182017%_
                       _%rest182015%_
                       _%r181989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E182020182029%_)))))
                                        (_%$%E182019182050%_))))
                                  (_%$%E181992182001%_)))))
                      (_%$%E181991182054%_)))))
          (let* ((_%$%e181959181966%_ _%stx181949%_)
                 (_%$%E181961181970%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e181959181966%_)))
                 (_%$%E181960181984%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e181959181966%_)
                        (let ((_%$%e181962181974%_
                               (gx#syntax-e _%$%e181959181966%_)))
                          (let ((_%$%hd181963181977%_
                                 (##car _%$%e181962181974%_))
                                (_%$%tl181964181979%_
                                 (##cdr _%$%e181962181974%_)))
                            (let ((_%body181982%_ _%$%tl181964181979%_))
                              (if (gx#stx-list? _%body181982%_)
                                  (_%K181958%_ _%body181982%_ '())
                                  (_%$%E181961181970%_)))))
                        (_%$%E181961181970%_)))))
            (_%$%E181960181984%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx182125%_ _%expand-special182126%_)
        (let* ((_%begin-form182128%_ '%#begin)
               (_%expand-e182130%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx182125%_
           _%expand-special182126%_
           _%begin-form182128%_
           _%expand-e182130%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx182132%_ _%expand-special182133%_ _%begin-form182134%_)
        (let ((_%expand-e182136%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx182132%_
           _%expand-special182133%_
           _%begin-form182134%_
           _%expand-e182136%_))))
    (define gx#core-expand-block
      (lambda _g184039_
        (let ((_g184040_ (##length _g184039_)))
          (cond ((##fx= _g184040_ 2) (apply gx#core-expand-block__0 _g184039_))
                ((##fx= _g184040_ 3) (apply gx#core-expand-block__1 _g184039_))
                ((##fx= _g184040_ 4) (apply gx#core-expand-block__% _g184039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g184039_))))))
    (define gx#core-expand-block*
      (lambda (_%stx181897%_ _%expand-special181898%_)
        (let* ((_%$%g181899181910%_
                (gx#core-expand-block__1
                 _%stx181897%_
                 _%expand-special181898%_
                 '#f))
               (_%$%E181903181914%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g181899181910%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K181908181945%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx181897%_)))
                (_%$%K181905181931%_ (lambda (_%expr181929%_) _%expr181929%_))
                (_%$%K181904181920%_
                 (lambda (_%body181918%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body181918%_))
                    (gx#stx-source _%stx181897%_)))))
            (let ((_%$%try-match181901181941%_
                   (lambda ()
                     (if (pair? _%$%g181899181910%_)
                         (let ((_%$%tl181907181936%_
                                (##cdr _%$%g181899181910%_))
                               (_%$%hd181906181934%_
                                (##car _%$%g181899181910%_)))
                           (if (null? _%$%tl181907181936%_)
                               (let ((_%expr181939%_ _%$%hd181906181934%_))
                                 (_%$%K181905181931%_ _%expr181939%_))
                               (let ((_%body181923%_ _%$%g181899181910%_))
                                 (_%$%K181904181920%_ _%body181923%_))))
                         (let ((_%body181923%_ _%$%g181899181910%_))
                           (_%$%K181904181920%_ _%body181923%_))))))
              (if (null? _%$%g181899181910%_)
                  (_%$%K181908181945%_)
                  (_%$%try-match181901181941%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx181723%_)
        (letrec ((_%satisfied?181725%_
                  (lambda (_%condition181826%_)
                    (let* ((_%$%e181827181842%_ _%condition181826%_)
                           (_%$%E181837181846%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e181827181842%_)))
                           (_%$%E181830181865%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e181827181842%_)
                                  (let ((_%$%e181838181850%_
                                         (gx#syntax-e _%$%e181827181842%_)))
                                    (let ((_%$%hd181839181853%_
                                           (##car _%$%e181838181850%_))
                                          (_%$%tl181840181855%_
                                           (##cdr _%$%e181838181850%_)))
                                      (let* ((_%combinator181858%_
                                              _%$%hd181839181853%_)
                                             (_%body181860%_
                                              _%$%tl181840181855%_))
                                        (if (gx#stx-list? _%body181860%_)
                                            (let ((_%$e181862%_
                                                   (gx#stx-e
                                                    _%combinator181858%_)))
                                              (if (eq? 'not _%$e181862%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?181725%_
                                                        _%body181860%_))
                                                  (if (eq? 'and _%$e181862%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?181725%_
                                                       _%body181860%_)
                                                      (if (eq? 'or
                                                               _%$e181862%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?181725%_
                                                           _%body181860%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e181862%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body181860%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx181723%_
                       _%combinator181858%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E181837181846%_)))))
                                  (_%$%E181837181846%_))))
                           (_%$%E181829181887%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e181827181842%_)
                                  (let ((_%$%e181831181869%_
                                         (gx#syntax-e _%$%e181827181842%_)))
                                    (let ((_%$%hd181832181872%_
                                           (##car _%$%e181831181869%_))
                                          (_%$%tl181833181874%_
                                           (##cdr _%$%e181831181869%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd181832181872%_)
                                               (gx#core-identifier=?
                                                _%$%hd181832181872%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl181833181874%_)
                                              (let ((_%$%e181834181877%_
                                                     (gx#syntax-e
                                                      _%$%tl181833181874%_)))
                                                (let ((_%$%hd181835181880%_
                                                       (##car _%$%e181834181877%_))
                                                      (_%$%tl181836181882%_
                                                       (##cdr _%$%e181834181877%_)))
                                                  (let ((_%expr181885%_
                                                         _%$%hd181835181880%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl181836181882%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr181885%_)
                                                        (_%$%E181830181865%_)))))
                                              (_%$%E181830181865%_))
                                          (_%$%E181830181865%_))))
                                  (_%$%E181830181865%_))))
                           (_%$%E181828181893%_
                            (lambda ()
                              (let ((_%id181891%_ _%$%e181827181842%_))
                                (if (gx#identifier? _%id181891%_)
                                    (gx#core-bound-identifier?__%
                                     _%id181891%_
                                     gx#feature-binding?)
                                    (_%$%E181829181887%_))))))
                      (_%$%E181828181893%_))))
                 (_%loop181726%_
                  (lambda (_%rest181756%_)
                    (let* ((_%$%e181757181765%_ _%rest181756%_)
                           (_%$%E181763181769%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e181757181765%_)))
                           (_%$%E181759181773%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e181757181765%_)
                                  '()
                                  (_%$%E181763181769%_))))
                           (_%$%E181758181822%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e181757181765%_)
                                  (let ((_%$%e181760181777%_
                                         (gx#syntax-e _%$%e181757181765%_)))
                                    (let ((_%$%hd181761181780%_
                                           (##car _%$%e181760181777%_))
                                          (_%$%tl181762181782%_
                                           (##cdr _%$%e181760181777%_)))
                                      (let* ((_%hd181785%_
                                              _%$%hd181761181780%_)
                                             (_%rest181787%_
                                              _%$%tl181762181782%_)
                                             (_%$%e181788181795%_ _%hd181785%_)
                                             (_%$%E181790181799%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e181788181795%_)))
                                             (_%$%E181789181818%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e181788181795%_)
                                                    (let ((_%$%e181791181803%_
                                                           (gx#syntax-e
                                                            _%$%e181788181795%_)))
                                                      (let ((_%$%hd181792181806%_
                                                             (##car _%$%e181791181803%_))
                                                            (_%$%tl181793181808%_
                                                             (##cdr _%$%e181791181803%_)))
                                                        (let* ((_%condition181811%_
                                                                _%$%hd181792181806%_)
                                                               (_%body181813%_
                                                                _%$%tl181793181808%_))
                                                          (if (gx#stx-eq?
                                                               _%condition181811%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest181787%_)
                          _%body181813%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx181723%_
                           _%hd181785%_))
                      (if (_%satisfied?181725%_ _%condition181811%_)
                          _%body181813%_
                          (_%loop181726%_ _%rest181787%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E181790181799%_)))))
                                        (_%$%E181789181818%_))))
                                  (_%$%E181759181773%_)))))
                      (_%$%E181758181822%_)))))
          (let* ((_%$%e181727181734%_ _%stx181723%_)
                 (_%$%E181729181738%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e181727181734%_)))
                 (_%$%E181728181752%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e181727181734%_)
                        (let ((_%$%e181730181742%_
                               (gx#syntax-e _%$%e181727181734%_)))
                          (let ((_%$%hd181731181745%_
                                 (##car _%$%e181730181742%_))
                                (_%$%tl181732181747%_
                                 (##cdr _%$%e181730181742%_)))
                            (let ((_%clauses181750%_ _%$%tl181732181747%_))
                              (if (gx#stx-list? _%clauses181750%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop181726%_ _%clauses181750%_))
                                  (_%$%E181729181738%_)))))
                        (_%$%E181729181738%_)))))
            (_%$%E181728181752%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx181666%_ _%rpath181667%_)
        (let* ((_%$%e181668181678%_ _%stx181666%_)
               (_%$%E181670181682%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e181668181678%_)))
               (_%$%E181669181709%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e181668181678%_)
                      (let ((_%$%e181671181686%_
                             (gx#syntax-e _%$%e181668181678%_)))
                        (let ((_%$%hd181672181689%_
                               (##car _%$%e181671181686%_))
                              (_%$%tl181673181691%_
                               (##cdr _%$%e181671181686%_)))
                          (if (gx#stx-pair? _%$%tl181673181691%_)
                              (let ((_%$%e181674181694%_
                                     (gx#syntax-e _%$%tl181673181691%_)))
                                (let ((_%$%hd181675181697%_
                                       (##car _%$%e181674181694%_))
                                      (_%$%tl181676181699%_
                                       (##cdr _%$%e181674181694%_)))
                                  (let ((_%path181702%_ _%$%hd181675181697%_))
                                    (if (gx#stx-null? _%$%tl181676181699%_)
                                        (if (gx#stx-string? _%path181702%_)
                                            (let ((_%rpath181707%_
                                                   (let ((_%$e181704%_
                                                          _%rpath181667%_))
                                                     (if _%$e181704%_
                                                         _%$e181704%_
                                                         (gx#core-resolve-path__%
                                                          _%path181702%_
                                                          (gx#stx-source
                                                           _%stx181666%_))))))
                                              (if (member _%rpath181707%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx181666%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath181707%_))
                                                    (gx#stx-source
                                                     _%stx181666%_)))))
                                            (_%$%E181670181682%_))
                                        (_%$%E181670181682%_)))))
                              (_%$%E181670181682%_))))
                      (_%$%E181670181682%_)))))
          (_%$%E181669181709%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx181716%_)
        (let ((_%rpath181718%_ '#f))
          (gx#core-expand-include%__% _%stx181716%_ _%rpath181718%_))))
    (define gx#core-expand-include%
      (lambda _g184041_
        (let ((_g184042_ (##length _g184041_)))
          (cond ((##fx= _g184042_ 1)
                 (apply gx#core-expand-include%__0 _g184041_))
                ((##fx= _g184042_ 2)
                 (apply gx#core-expand-include%__% _g184041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g184041_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K181632%_ _%stx181633%_ _%method181634%_)
        (if (procedure? _%K181632%_)
            (let ((_%$e181637%_ (gx#stx-source _%stx181633%_)))
              (if _%$e181637%_
                  (gx#stx-wrap-source (_%K181632%_ _%stx181633%_) _%$e181637%_)
                  (_%K181632%_ _%stx181633%_)))
            (let ((_%$e181645%_
                   (bound-method-ref _%K181632%_ _%method181634%_)))
              (if _%$e181645%_
                  (gx#core-apply-expander__%
                   _%$e181645%_
                   _%stx181633%_
                   _%method181634%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx181633%_
                   _%method181634%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K181656%_ _%stx181657%_)
        (let ((_%method181659%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K181656%_
           _%stx181657%_
           _%method181659%_))))
    (define gx#core-apply-expander
      (lambda _g184043_
        (let ((_g184044_ (##length _g184043_)))
          (cond ((##fx= _g184044_ 2)
                 (apply gx#core-apply-expander__0 _g184043_))
                ((##fx= _g184044_ 3)
                 (apply gx#core-apply-expander__% _g184043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g184043_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self181617%_ _%stx181618%_)
        (let ((_%self181621%_ _%self181617%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx181618%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self181460%_ _%stx181461%_)
        (let* ((_%self181464%_ _%self181460%_)
               (_%$%self181473181479%_ _%self181464%_)
               (_%$%E181475181482%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self181473181479%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K181476181487%_
                (lambda (_%K181485%_)
                  (gx#core-apply-expander__0 _%K181485%_ _%stx181461%_)))
               (_%$%e181477181490%_
                (##unchecked-structure-ref _%$%self181473181479%_ '1 '#f '#f))
               (_%K181493%_ _%$%e181477181490%_))
          (_%$%K181476181487%_ _%K181493%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self181303%_ _%stx181304%_)
        (let ((_%self181307%_ _%self181303%_))
          (if (gx#sealed-syntax? _%stx181304%_)
              _%stx181304%_
              (let* ((_%$%self181316181322%_ _%self181307%_)
                     (_%$%E181318181325%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self181316181322%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K181319181330%_
                      (lambda (_%K181328%_)
                        (gx#core-apply-expander__0 _%K181328%_ _%stx181304%_)))
                     (_%$%e181320181333%_
                      (##unchecked-structure-ref
                       _%$%self181316181322%_
                       '1
                       '#f
                       '#f))
                     (_%K181336%_ _%$%e181320181333%_))
                (_%$%K181319181330%_ _%K181336%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self181153%_ _%stx181154%_ _%top?181155%_)
        (let ((_%self181158%_ _%self181153%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx181154%_))
                (force-output))
              '#!void)
          (if (_%top?181155%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self181158%_
               _%stx181154%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx181154%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self181172%_ _%stx181173%_)
        (let ((_%top?181175%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self181172%_
           _%stx181173%_
           _%top?181175%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g184045_
        (let ((_g184046_ (##length _g184045_)))
          (cond ((##fx= _g184046_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g184045_))
                ((##fx= _g184046_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g184045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g184045_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self181016%_ _%stx181017%_)
        (let ((_%self181020%_ _%self181016%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self181020%_
           _%stx181017%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self180831%_ _%stx180832%_)
        (let* ((_%self180835%_ _%self180831%_)
               (_%$%self180844180850%_ _%self180835%_)
               (_%$%E180846180853%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self180844180850%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K180847180886%_
                (lambda (_%id180856%_)
                  (let* ((_%$%e180857180864%_ _%stx180832%_)
                         (_%$%E180859180868%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e180857180864%_)))
                         (_%$%E180858180882%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e180857180864%_)
                                (let ((_%$%e180860180872%_
                                       (gx#syntax-e _%$%e180857180864%_)))
                                  (let ((_%$%hd180861180875%_
                                         (##car _%$%e180860180872%_))
                                        (_%$%tl180862180877%_
                                         (##cdr _%$%e180860180872%_)))
                                    (let ((_%body180880%_
                                           _%$%tl180862180877%_))
                                      (gx#core-cons
                                       _%id180856%_
                                       _%body180880%_))))
                                (_%$%E180859180868%_)))))
                    (_%$%E180858180882%_))))
               (_%$%e180848180889%_
                (##unchecked-structure-ref _%$%self180844180850%_ '1 '#f '#f))
               (_%id180892%_ _%$%e180848180889%_))
          (_%$%K180847180886%_ _%id180892%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self180658%_ _%stx180659%_ _%method180660%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx180659%_))
              (force-output))
            '#!void)
        (let* ((_%$%self180661180669%_ _%self180658%_)
               (_%$%E180663180672%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self180661180669%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K180664180679%_
                (lambda (_%phi180675%_ _%ctx180676%_ _%K180677%_)
                  (gx#core-apply-user-macro
                   _%K180677%_
                   _%stx180659%_
                   _%ctx180676%_
                   _%phi180675%_
                   _%method180660%_))))
          (if (##structure-instance-of?
               _%$%self180661180669%_
               'gx#user-expander::t)
              (let* ((_%$%e180665180682%_
                      (##unchecked-structure-ref
                       _%$%self180661180669%_
                       '1
                       '#f
                       '#f))
                     (_%K180685%_ _%$%e180665180682%_)
                     (_%$%e180666180687%_
                      (##unchecked-structure-ref
                       _%$%self180661180669%_
                       '2
                       '#f
                       '#f))
                     (_%ctx180690%_ _%$%e180666180687%_)
                     (_%$%e180667180692%_
                      (##unchecked-structure-ref
                       _%$%self180661180669%_
                       '3
                       '#f
                       '#f))
                     (_%phi180695%_ _%$%e180667180692%_))
                (_%$%K180664180679%_ _%phi180695%_ _%ctx180690%_ _%K180685%_))
              (_%$%E180663180672%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self180700%_ _%stx180701%_)
        (let ((_%method180703%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self180700%_
           _%stx180701%_
           _%method180703%_))))
    (define gx#core-apply-user-expander
      (lambda _g184047_
        (let ((_g184048_ (##length _g184047_)))
          (cond ((##fx= _g184048_ 2)
                 (apply gx#core-apply-user-expander__0 _g184047_))
                ((##fx= _g184048_ 3)
                 (apply gx#core-apply-user-expander__% _g184047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g184047_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K180648%_
               _%stx180649%_
               _%ctx180650%_
               _%phi180651%_
               _%method180652%_)
        (let ((_%mark180654%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx180650%_
                _%phi180651%_
                _%stx180649%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K180648%_
               (gx#stx-apply-mark _%stx180649%_ _%mark180654%_)
               _%method180652%_)
              _%mark180654%_))
           gx#current-expander-marks
           (cons _%mark180654%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx180496%_ _%phi180497%_ _%ctx180498%_)
        (let _%lp180500%_ ((_%bind180502%_
                            (gx#core-resolve-identifier__%
                             _%stx180496%_
                             _%phi180497%_
                             _%ctx180498%_)))
          (if (##structure-direct-instance-of?
               _%bind180502%_
               'gx#import-binding::t)
              (_%lp180500%_
               (##unchecked-structure-ref _%bind180502%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind180502%_
                   'gx#alias-binding::t)
                  (_%lp180500%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind180502%_ '5 '#f '#f)
                    _%phi180497%_
                    _%ctx180498%_))
                  _%bind180502%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx180510%_)
        (let* ((_%phi180512%_ (gx#current-expander-phi))
               (_%ctx180514%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx180510%_
           _%phi180512%_
           _%ctx180514%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx180516%_ _%phi180517%_)
        (let ((_%ctx180519%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx180516%_
           _%phi180517%_
           _%ctx180519%_))))
    (define gx#resolve-identifier
      (lambda _g184049_
        (let ((_g184050_ (##length _g184049_)))
          (cond ((##fx= _g184050_ 1)
                 (apply gx#resolve-identifier__0 _g184049_))
                ((##fx= _g184050_ 2)
                 (apply gx#resolve-identifier__1 _g184049_))
                ((##fx= _g184050_ 3)
                 (apply gx#resolve-identifier__% _g184049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g184049_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx180451%_
               _%val180452%_
               _%rebind?180453%_
               _%phi180454%_
               _%ctx180455%_)
        (let ((_%rebind?180460%_
               (if (not _%rebind?180453%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?180453%_)
                       _%rebind?180453%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx180451%_)
           _%val180452%_
           _%rebind?180460%_
           _%phi180454%_
           _%ctx180455%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx180465%_ _%val180466%_)
        (let* ((_%rebind?180468%_ '#f)
               (_%phi180470%_ (gx#current-expander-phi))
               (_%ctx180472%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx180465%_
           _%val180466%_
           _%rebind?180468%_
           _%phi180470%_
           _%ctx180472%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx180474%_ _%val180475%_ _%rebind?180476%_)
        (let* ((_%phi180478%_ (gx#current-expander-phi))
               (_%ctx180480%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx180474%_
           _%val180475%_
           _%rebind?180476%_
           _%phi180478%_
           _%ctx180480%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx180482%_ _%val180483%_ _%rebind?180484%_ _%phi180485%_)
        (let ((_%ctx180487%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx180482%_
           _%val180483%_
           _%rebind?180484%_
           _%phi180485%_
           _%ctx180487%_))))
    (define gx#bind-identifier!
      (lambda _g184051_
        (let ((_g184052_ (##length _g184051_)))
          (cond ((##fx= _g184052_ 2) (apply gx#bind-identifier!__0 _g184051_))
                ((##fx= _g184052_ 3) (apply gx#bind-identifier!__1 _g184051_))
                ((##fx= _g184052_ 4) (apply gx#bind-identifier!__2 _g184051_))
                ((##fx= _g184052_ 5) (apply gx#bind-identifier!__% _g184051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g184051_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx180417%_ _%phi180418%_ _%ctx180419%_)
        (let _%lp180421%_ ((_%e180423%_ _%stx180417%_)
                           (_%marks180424%_ (gx#current-expander-marks)))
          (if (symbol? _%e180423%_)
              (gx#core-resolve-binding
               _%e180423%_
               _%phi180418%_
               _%phi180418%_
               _%ctx180419%_
               (reverse _%marks180424%_))
              (if (gx#identifier-quote? _%e180423%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e180423%_ '1 '#f '#f)
                   _%phi180418%_
                   '0
                   (##unchecked-structure-ref _%e180423%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e180423%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e180423%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e180423%_ '1 '#f '#f)
                       _%phi180418%_
                       _%phi180418%_
                       _%ctx180419%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e180423%_ '3 '#f '#f)
                        _%marks180424%_))
                      (if (##structure-direct-instance-of?
                           _%e180423%_
                           'gx#syntax-wrap::t)
                          (_%lp180421%_
                           (##unchecked-structure-ref _%e180423%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e180423%_ '3 '#f '#f)
                            _%marks180424%_))
                          (if (##structure-instance-of?
                               _%e180423%_
                               'gerbil#AST::t)
                              (_%lp180421%_
                               (##unchecked-structure-ref
                                _%e180423%_
                                '1
                                '#f
                                '#f)
                               _%marks180424%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx180417%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx180435%_)
        (let* ((_%phi180437%_ (gx#current-expander-phi))
               (_%ctx180439%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx180435%_
           _%phi180437%_
           _%ctx180439%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx180441%_ _%phi180442%_)
        (let ((_%ctx180444%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx180441%_
           _%phi180442%_
           _%ctx180444%_))))
    (define gx#core-resolve-identifier
      (lambda _g184053_
        (let ((_g184054_ (##length _g184053_)))
          (cond ((##fx= _g184054_ 1)
                 (apply gx#core-resolve-identifier__0 _g184053_))
                ((##fx= _g184054_ 2)
                 (apply gx#core-resolve-identifier__1 _g184053_))
                ((##fx= _g184054_ 3)
                 (apply gx#core-resolve-identifier__% _g184053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g184053_))))))
    (define gx#core-resolve-binding
      (lambda (_%id180328%_
               _%phi180329%_
               _%src-phi180330%_
               _%ctx180331%_
               _%marks180332%_)
        (letrec ((_%resolve180334%_
                  (lambda (_%ctx180401%_ _%src-phi180402%_ _%key180403%_)
                    (let _%lp180405%_ ((_%ctx180407%_
                                        (gx#core-context-shift
                                         _%ctx180401%_
                                         _%phi180329%_))
                                       (_%dphi180408%_
                                        (fx- _%phi180329%_ _%src-phi180402%_)))
                      (let ((_%$e180410%_
                             (gx#core-context-resolve
                              _%ctx180407%_
                              _%key180403%_)))
                        (if _%$e180410%_
                            _%$e180410%_
                            (if (fxzero? _%dphi180408%_)
                                '#f
                                (if (fxpositive? _%dphi180408%_)
                                    (_%lp180405%_
                                     (gx#core-context-shift _%ctx180407%_ '-1)
                                     (##fx- _%dphi180408%_ '1))
                                    (_%lp180405%_
                                     (gx#core-context-shift _%ctx180407%_ '1)
                                     (##fx+ _%dphi180408%_ '1))))))))))
          (let _%lp180336%_ ((_%ctx180338%_ _%ctx180331%_)
                             (_%src-phi180339%_ _%src-phi180330%_)
                             (_%rest180340%_ _%marks180332%_))
            (let* ((_%$%rest180341180349%_ _%rest180340%_)
                   (_%$%else180343180357%_
                    (lambda ()
                      (_%resolve180334%_
                       _%ctx180338%_
                       _%src-phi180339%_
                       _%id180328%_)))
                   (_%$%K180345180389%_
                    (lambda (_%rest180360%_ _%hd180361%_)
                      (let* ((_%$%hd180362180368%_ _%hd180361%_)
                             (_%$%E180364180371%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd180362180368%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K180365180381%_
                              (lambda (_%subst180374%_)
                                (let ((_%$e180378%_
                                       (let ((_%key180376%_
                                              (if _%subst180374%_
                                                  (hash-get
                                                   _%subst180374%_
                                                   _%id180328%_)
                                                  '#f)))
                                         (if _%key180376%_
                                             (_%resolve180334%_
                                              _%ctx180338%_
                                              _%src-phi180339%_
                                              _%key180376%_)
                                             '#f))))
                                  (if _%$e180378%_
                                      _%$e180378%_
                                      (_%lp180336%_
                                       (##unchecked-structure-ref
                                        _%hd180361%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd180361%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest180360%_))))))
                        (if (##structure-instance-of?
                             _%$%hd180362180368%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e180366180384%_
                                    (##unchecked-structure-ref
                                     _%$%hd180362180368%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst180387%_ _%$%e180366180384%_))
                              (_%$%K180365180381%_ _%subst180387%_))
                            (_%$%E180364180371%_))))))
              (if (pair? _%$%rest180341180349%_)
                  (let ((_%$%hd180346180392%_ (##car _%$%rest180341180349%_))
                        (_%$%tl180347180394%_ (##cdr _%$%rest180341180349%_)))
                    (let* ((_%hd180397%_ _%$%hd180346180392%_)
                           (_%rest180399%_ _%$%tl180347180394%_))
                      (_%$%K180345180389%_ _%rest180399%_ _%hd180397%_)))
                  (_%$%else180343180357%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key180199%_
               _%val180200%_
               _%rebind?180201%_
               _%phi180202%_
               _%ctx180203%_)
        (letrec ((_%update-binding180205%_
                  (lambda (_%xval180277%_)
                    (if (or (_%rebind?180201%_
                             _%ctx180203%_
                             _%xval180277%_
                             _%val180200%_)
                            (and (##structure-direct-instance-of?
                                  _%xval180277%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval180277%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val180200%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val180200%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval180277%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val180200%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val180200%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval180277%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val180200%_
                        (if (and (##structure-direct-instance-of?
                                  _%val180200%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val180200%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval180277%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val180200%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval180277%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval180277%_
                            (if (and (##structure-direct-instance-of?
                                      _%val180200%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval180277%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key180199%_
                                 (cons (##unchecked-structure-ref
                                        _%val180200%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val180200%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval180277%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval180277%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval180277%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval180277%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key180199%_
                                 _%val180200%_
                                 _%xval180277%_))))))
                 (_%gensubst180206%_
                  (lambda (_%subst180272%_ _%id180273%_)
                    (let ((_%eid180275%_
                           (gensym (if (uninterned-symbol? _%id180273%_)
                                       '%
                                       _%id180273%_))))
                      (hash-put! _%subst180272%_ _%id180273%_ _%eid180275%_)
                      _%eid180275%_)))
                 (_%subst!180207%_
                  (lambda (_%key180209%_)
                    (let* ((_%$%key180210180218%_ _%key180209%_)
                           (_%$%else180212180226%_ (lambda () _%key180209%_))
                           (_%$%K180214180260%_
                            (lambda (_%mark180229%_ _%id180230%_)
                              (let* ((_%$%mark180231180237%_ _%mark180229%_)
                                     (_%$%E180233180240%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark180231180237%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K180234180252%_
                                      (lambda (_%subst180243%_)
                                        (if (not _%subst180243%_)
                                            (let ((_%subst180246%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark180229%_
                                               _%subst180246%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst180206%_
                                               _%subst180246%_
                                               _%id180230%_))
                                            (let ((_%$e180248%_
                                                   (hash-get
                                                    _%subst180243%_
                                                    _%id180230%_)))
                                              (if _%$e180248%_
                                                  _%$e180248%_
                                                  (_%gensubst180206%_
                                                   _%subst180243%_
                                                   _%id180230%_)))))))
                                (if (##structure-instance-of?
                                     _%$%mark180231180237%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e180235180255%_
                                            (##unchecked-structure-ref
                                             _%$%mark180231180237%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst180258%_
                                            _%$%e180235180255%_))
                                      (_%$%K180234180252%_ _%subst180258%_))
                                    (_%$%E180233180240%_))))))
                      (if (pair? _%$%key180210180218%_)
                          (let ((_%$%hd180215180263%_
                                 (##car _%$%key180210180218%_))
                                (_%$%tl180216180265%_
                                 (##cdr _%$%key180210180218%_)))
                            (let* ((_%id180268%_ _%$%hd180215180263%_)
                                   (_%mark180270%_ _%$%tl180216180265%_))
                              (_%$%K180214180260%_
                               _%mark180270%_
                               _%id180268%_)))
                          (_%$%else180212180226%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key180199%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx180203%_ _%phi180202%_)
           (_%subst!180207%_ _%key180199%_)
           _%val180200%_
           _%update-binding180205%_))))
    (define gx#core-bind!__0
      (lambda (_%key180298%_ _%val180299%_)
        (let* ((_%rebind?180301%_ false)
               (_%phi180303%_ (gx#current-expander-phi))
               (_%ctx180305%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key180298%_
           _%val180299%_
           _%rebind?180301%_
           _%phi180303%_
           _%ctx180305%_))))
    (define gx#core-bind!__1
      (lambda (_%key180307%_ _%val180308%_ _%rebind?180309%_)
        (let* ((_%phi180311%_ (gx#current-expander-phi))
               (_%ctx180313%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key180307%_
           _%val180308%_
           _%rebind?180309%_
           _%phi180311%_
           _%ctx180313%_))))
    (define gx#core-bind!__2
      (lambda (_%key180315%_ _%val180316%_ _%rebind?180317%_ _%phi180318%_)
        (let ((_%ctx180320%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key180315%_
           _%val180316%_
           _%rebind?180317%_
           _%phi180318%_
           _%ctx180320%_))))
    (define gx#core-bind!
      (lambda _g184055_
        (let ((_g184056_ (##length _g184055_)))
          (cond ((##fx= _g184056_ 2) (apply gx#core-bind!__0 _g184055_))
                ((##fx= _g184056_ 3) (apply gx#core-bind!__1 _g184055_))
                ((##fx= _g184056_ 4) (apply gx#core-bind!__2 _g184055_))
                ((##fx= _g184056_ 5) (apply gx#core-bind!__% _g184055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g184055_))))))
    (define gx#core-identifier-key
      (lambda (_%stx180130%_)
        (if (symbol? _%stx180130%_)
            (let* ((_%$%g180132180140%_ (gx#current-expander-marks))
                   (_%$%else180134180148%_ (lambda () _%stx180130%_))
                   (_%$%K180136180153%_
                    (lambda (_%hd180151%_) (cons _%stx180130%_ _%hd180151%_))))
              (if (pair? _%$%g180132180140%_)
                  (let* ((_%$%hd180137180156%_ (##car _%$%g180132180140%_))
                         (_%hd180159%_ _%$%hd180137180156%_))
                    (_%$%K180136180153%_ _%hd180159%_))
                  (_%$%else180134180148%_)))
            (if (gx#identifier? _%stx180130%_)
                (let* ((_%id180162%_ (gx#syntax-local-unwrap _%stx180130%_))
                       (_%eid180164%_ (gx#stx-e _%id180162%_))
                       (_%marks180166%_
                        (gx#stx-identifier-marks* _%id180162%_))
                       (_%$%marks180168180176%_ _%marks180166%_)
                       (_%$%else180170180184%_ (lambda () _%eid180164%_))
                       (_%$%K180172180189%_
                        (lambda (_%hd180187%_)
                          (cons _%eid180164%_ _%hd180187%_))))
                  (if (pair? _%$%marks180168180176%_)
                      (let* ((_%$%hd180173180192%_
                              (##car _%$%marks180168180176%_))
                             (_%hd180195%_ _%$%hd180173180192%_))
                        (_%$%K180172180189%_ _%hd180195%_))
                      (_%$%else180170180184%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx180130%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx180069%_ _%phi180070%_)
        (letrec ((_%make-phi180072%_
                  (lambda (_%super180128%_)
                    (let ((__obj184026
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj184026
                       (##gensym 'phi)
                       _%super180128%_)
                      __obj184026)))
                 (_%make-phi/up180073%_
                  (lambda (_%ctx180123%_ _%super180124%_)
                    (let ((_%ctx+1180126%_
                           (_%make-phi180072%_ _%super180124%_)))
                      (##unchecked-structure-set!
                       _%ctx180123%_
                       _%ctx+1180126%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1180126%_
                       _%ctx180123%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1180126%_)))
                 (_%make-phi/down180074%_
                  (lambda (_%ctx180118%_ _%super180119%_)
                    (let ((_%ctx-1180121%_
                           (_%make-phi180072%_ _%super180119%_)))
                      (##unchecked-structure-set!
                       _%ctx-1180121%_
                       _%ctx180118%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx180118%_
                       _%ctx-1180121%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1180121%_)))
                 (_%shift180075%_
                  (lambda (_%ctx180101%_
                           _%delta180102%_
                           _%make-delta-context180103%_
                           _%phi180104%_
                           _%K180105%_)
                    (let ((_%$e180107%_
                           (##unchecked-structure-ref
                            _%ctx180101%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e180107%_
                          (let* ((_%super180112%_
                                  (_%K180105%_ _%$e180107%_ _%delta180102%_))
                                 (_%ctx+d180114%_
                                  (_%make-delta-context180103%_
                                   _%ctx180101%_
                                   _%super180112%_)))
                            (_%K180105%_
                             _%ctx+d180114%_
                             (fx- _%phi180104%_ _%delta180102%_)))
                          (error '"Bad context" _%ctx180101%_))))))
          (let _%K180077%_ ((_%ctx180079%_ _%ctx180069%_)
                            (_%phi180080%_ _%phi180070%_))
            (if (fxzero? _%phi180080%_)
                _%ctx180079%_
                (if (##structure-instance-of? _%ctx180079%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi180080%_)
                        (let ((_%$e180084%_
                               (##unchecked-structure-ref
                                _%ctx180079%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e180084%_
                              (_%K180077%_
                               _%$e180084%_
                               (##fx- _%phi180080%_ '1))
                              (_%shift180075%_
                               _%ctx180079%_
                               '1
                               _%make-phi/up180073%_
                               _%phi180080%_
                               _%K180077%_)))
                        (let ((_%$e180092%_
                               (##unchecked-structure-ref
                                _%ctx180079%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e180092%_
                              (_%K180077%_
                               _%$e180092%_
                               (##fx+ _%phi180080%_ '1))
                              (_%shift180075%_
                               _%ctx180079%_
                               '-1
                               _%make-phi/down180074%_
                               _%phi180080%_
                               _%K180077%_))))
                    _%ctx180079%_))))))
    (define gx#core-context-get
      (lambda (_%ctx180066%_ _%key180067%_)
        (hash-get
         (##unchecked-structure-ref _%ctx180066%_ '2 '#f '#f)
         _%key180067%_)))
    (define gx#core-context-put!
      (lambda (_%ctx180062%_ _%key180063%_ _%val180064%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx180062%_ '2 '#f '#f)
         _%key180063%_
         _%val180064%_)
        _%val180064%_))
    (define gx#core-context-resolve
      (lambda (_%ctx180048%_ _%key180049%_)
        (let _%lp180051%_ ((_%ctx180053%_ _%ctx180048%_))
          (let ((_%$e180055%_
                 (gx#core-context-get _%ctx180053%_ _%key180049%_)))
            (if _%$e180055%_
                _%$e180055%_
                (let ((_%$e180058%_
                       (if (##structure-instance-of?
                            _%ctx180053%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx180053%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e180058%_ (_%lp180051%_ _%$e180058%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx180037%_ _%key180038%_ _%val180039%_ _%rebind180040%_)
        (let ((_%$e180042%_ (gx#core-context-get _%ctx180037%_ _%key180038%_)))
          (if _%$e180042%_
              (gx#core-context-put!
               _%ctx180037%_
               _%key180038%_
               (_%rebind180040%_ _%$e180042%_))
              (gx#core-context-put!
               _%ctx180037%_
               _%key180038%_
               _%val180039%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx180012%_ _%stop?180013%_)
        (let _%lp180015%_ ((_%ctx180017%_ _%ctx180012%_))
          (if (_%stop?180013%_ _%ctx180017%_)
              _%ctx180017%_
              (if (##structure-instance-of? _%ctx180017%_ 'gx#phi-context::t)
                  (_%lp180015%_
                   (##unchecked-structure-ref _%ctx180017%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx180026%_ (gx#current-expander-context))
               (_%stop?180028%_ gx#top-context?))
          (gx#core-context-top__% _%ctx180026%_ _%stop?180028%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx180030%_)
        (let ((_%stop?180032%_ gx#top-context?))
          (gx#core-context-top__% _%ctx180030%_ _%stop?180032%_))))
    (define gx#core-context-top
      (lambda _g184057_
        (let ((_g184058_ (##length _g184057_)))
          (cond ((##fx= _g184058_ 0) (apply gx#core-context-top__0 _g184057_))
                ((##fx= _g184058_ 1) (apply gx#core-context-top__1 _g184057_))
                ((##fx= _g184058_ 2) (apply gx#core-context-top__% _g184057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g184057_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx179997%_)
        (let _%lp179999%_ ((_%ctx180001%_ _%ctx179997%_))
          (if (##structure-instance-of? _%ctx180001%_ 'gx#phi-context::t)
              (_%lp179999%_
               (##unchecked-structure-ref _%ctx180001%_ '3 '#f '#f))
              _%ctx180001%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx180007%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx180007%_))))
    (define gx#core-context-root
      (lambda _g184059_
        (let ((_g184060_ (##length _g184059_)))
          (cond ((##fx= _g184060_ 0) (apply gx#core-context-root__0 _g184059_))
                ((##fx= _g184060_ 1) (apply gx#core-context-root__% _g184059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g184059_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx179979%_ . _%ignore179980%_)
        (let ((_%$e179982%_ (gx#current-expander-allow-rebind?)))
          (if _%$e179982%_
              _%$e179982%_
              (if (##structure-instance-of? _%ctx179979%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx179979%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx179979%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx179989%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx179989%_))))
    (define gx#core-context-rebind?
      (lambda _g184061_
        (let ((_g184062_ (##length _g184061_)))
          (cond ((##fx= _g184062_ 0)
                 (apply gx#core-context-rebind?__0 _g184061_))
                ((##fx= _g184062_ 1)
                 (apply gx#core-context-rebind?__% _g184061_))
                ((##fx>= _g184062_ 1)
                 (apply gx#core-context-rebind?__% _g184061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g184061_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx179962%_)
        (let ((_%$e179964%_ (gx#core-context-top__1 _%ctx179962%_)))
          (if _%$e179964%_
              (if (##structure-instance-of? _%$e179964%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e179964%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx179974%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx179974%_))))
    (define gx#core-context-namespace
      (lambda _g184063_
        (let ((_g184064_ (##length _g184063_)))
          (cond ((##fx= _g184064_ 0)
                 (apply gx#core-context-namespace__0 _g184063_))
                ((##fx= _g184064_ 1)
                 (apply gx#core-context-namespace__% _g184063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g184063_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind179948%_ _%is?179949%_)
        (if (##structure-direct-instance-of?
             _%bind179948%_
             'gx#syntax-binding::t)
            (_%is?179949%_
             (##unchecked-structure-ref _%bind179948%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind179954%_)
        (let ((_%is?179956%_ gx#expander?))
          (gx#expander-binding?__% _%bind179954%_ _%is?179956%_))))
    (define gx#expander-binding?
      (lambda _g184065_
        (let ((_g184066_ (##length _g184065_)))
          (cond ((##fx= _g184066_ 1) (apply gx#expander-binding?__0 _g184065_))
                ((##fx= _g184066_ 2) (apply gx#expander-binding?__% _g184065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g184065_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind179945%_)
        (gx#expander-binding?__% _%bind179945%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind179943%_)
        (gx#expander-binding?__% _%bind179943%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind179937%_)
        (letrec ((_%direct-special-form?179939%_
                  (lambda (_%obj179941%_)
                    (##structure-direct-instance-of?
                     _%obj179941%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind179937%_
           _%direct-special-form?179939%_))))
    (define gx#special-form-binding?
      (lambda (_%bind179935%_)
        (gx#expander-binding?__% _%bind179935%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind179926%_)
        (letrec ((_%feature?179928%_
                  (lambda (_%e179930%_)
                    (let ((_%$e179932%_
                           (##structure-instance-of?
                            _%e179930%_
                            'gx#feature-expander::t)))
                      (if _%$e179932%_
                          _%$e179932%_
                          (##structure-instance-of?
                           _%e179930%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind179926%_ _%feature?179928%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind179924%_)
        (gx#expander-binding?__% _%bind179924%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id179911%_ _%bound?179912%_)
        (if (gx#identifier? _%id179911%_)
            (_%bound?179912%_ (gx#resolve-identifier__0 _%id179911%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id179917%_)
        (let ((_%bound?179919%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id179917%_ _%bound?179919%_))))
    (define gx#core-bound-identifier?
      (lambda _g184067_
        (let ((_g184068_ (##length _g184067_)))
          (cond ((##fx= _g184068_ 1)
                 (apply gx#core-bound-identifier?__0 _g184067_))
                ((##fx= _g184068_ 2)
                 (apply gx#core-bound-identifier?__% _g184067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g184067_))))))
    (define gx#core-identifier=?
      (lambda (_%x179901%_ _%y179902%_)
        (letrec ((_%y=?179904%_
                  (lambda (_%xid179908%_)
                    ((if (list? _%y179902%_) memq eq?)
                     _%xid179908%_
                     _%y179902%_))))
          (let ((_%bind179906%_ (gx#resolve-identifier__0 _%x179901%_)))
            (if (##structure-instance-of? _%bind179906%_ 'gx#binding::t)
                (_%y=?179904%_
                 (##unchecked-structure-ref _%bind179906%_ '1 '#f '#f))
                (_%y=?179904%_ (gx#stx-e _%x179901%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e179899%_)
        (if (interned-symbol? _%e179899%_)
            (string-index__0 (symbol->string _%e179899%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx179852%_ _%src179853%_ _%ctx179854%_ _%marks179855%_)
        (if (##structure? _%stx179852%_)
            (let ((_%$e179857%_ (gx#sealed-syntax-unwrap _%stx179852%_)))
              (if _%$e179857%_
                  _%$e179857%_
                  (if (gx#identifier? _%stx179852%_)
                      (let ((_%id179861%_
                             (gx#stx-unwrap__% _%stx179852%_ _%marks179855%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id179861%_ '1 '#f '#f)
                         (let ((_%$e179863%_
                                (##unchecked-structure-ref
                                 _%id179861%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e179863%_ _%$e179863%_ _%src179853%_))
                         _%ctx179854%_
                         (##unchecked-structure-ref _%id179861%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx179852%_)
                       (let ((_%$e179867%_ (gx#stx-source _%stx179852%_)))
                         (if _%$e179867%_ _%$e179867%_ _%src179853%_))
                       _%ctx179854%_
                       (reverse _%marks179855%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx179852%_
             _%src179853%_
             _%ctx179854%_
             (reverse _%marks179855%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx179873%_)
        (let* ((_%src179875%_ '#f)
               (_%ctx179877%_ (gx#current-expander-context))
               (_%marks179879%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx179873%_
           _%src179875%_
           _%ctx179877%_
           _%marks179879%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx179881%_ _%src179882%_)
        (let* ((_%ctx179884%_ (gx#current-expander-context))
               (_%marks179886%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx179881%_
           _%src179882%_
           _%ctx179884%_
           _%marks179886%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx179888%_ _%src179889%_ _%ctx179890%_)
        (let ((_%marks179892%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx179888%_
           _%src179889%_
           _%ctx179890%_
           _%marks179892%_))))
    (define gx#core-quote-syntax
      (lambda _g184069_
        (let ((_g184070_ (##length _g184069_)))
          (cond ((##fx= _g184070_ 1) (apply gx#core-quote-syntax__0 _g184069_))
                ((##fx= _g184070_ 2) (apply gx#core-quote-syntax__1 _g184069_))
                ((##fx= _g184070_ 3) (apply gx#core-quote-syntax__2 _g184069_))
                ((##fx= _g184070_ 4) (apply gx#core-quote-syntax__% _g184069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g184069_))))))
    (define gx#core-cons
      (lambda (_%hd179848%_ _%tl179849%_)
        (cons (gx#core-quote-syntax__0 _%hd179848%_) _%tl179849%_)))
    (define gx#core-list
      (lambda (_%hd179845%_ . _%rest179846%_)
        (cons (gx#core-quote-syntax__0 _%hd179845%_) _%rest179846%_)))
    (define gx#core-cons*
      (lambda (_%hd179842%_ . _%rest179843%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd179842%_) _%rest179843%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path179811%_ _%rel179812%_)
        (let ((_%path179829%_ (gx#stx-e _%stx-path179811%_))
              (_%reldir179830%_
               (let _%lp179814%_ ((_%relsrc179816%_
                                   (let ((_%$e179826%_
                                          (gx#stx-source _%stx-path179811%_)))
                                     (if _%$e179826%_
                                         _%$e179826%_
                                         _%rel179812%_))))
                 (if (##structure-instance-of? _%relsrc179816%_ 'gerbil#AST::t)
                     (_%lp179814%_
                      (let ((_%$e179819%_ (gx#stx-source _%relsrc179816%_)))
                        (if _%$e179819%_
                            _%$e179819%_
                            (gx#stx-e _%relsrc179816%_))))
                     (if (source-location-path? _%relsrc179816%_)
                         (path-directory
                          (source-location-path _%relsrc179816%_))
                         (if (string? _%relsrc179816%_)
                             (path-directory _%relsrc179816%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path179829%_ (path-normalize _%reldir179830%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path179835%_)
        (let ((_%rel179837%_ '#f))
          (gx#core-resolve-path__% _%stx-path179835%_ _%rel179837%_))))
    (define gx#core-resolve-path
      (lambda _g184071_
        (let ((_g184072_ (##length _g184071_)))
          (cond ((##fx= _g184072_ 1) (apply gx#core-resolve-path__0 _g184071_))
                ((##fx= _g184072_ 2) (apply gx#core-resolve-path__% _g184071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g184071_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr179767%_ _%ctx179768%_)
        (let* ((_%$%repr179769179776%_ _%repr179767%_)
               (_%$%E179771179780%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr179769179776%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K179772179788%_
                (lambda (_%subs179783%_ _%phi179784%_)
                  (let ((_%subst179786%_
                         (if (null? _%subs179783%_)
                             '#f
                             (list->hash-table-eq _%subs179783%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst179786%_
                     _%ctx179768%_
                     _%phi179784%_
                     '#f)))))
          (if (pair? _%$%repr179769179776%_)
              (let ((_%$%hd179773179791%_ (##car _%$%repr179769179776%_))
                    (_%$%tl179774179793%_ (##cdr _%$%repr179769179776%_)))
                (let* ((_%phi179796%_ _%$%hd179773179791%_)
                       (_%subs179798%_ _%$%tl179774179793%_))
                  (_%$%K179772179788%_ _%subs179798%_ _%phi179796%_)))
              (_%$%E179771179780%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr179803%_)
        (let ((_%ctx179805%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr179803%_ _%ctx179805%_))))
    (define gx#core-deserialize-mark
      (lambda _g184073_
        (let ((_g184074_ (##length _g184073_)))
          (cond ((##fx= _g184074_ 1)
                 (apply gx#core-deserialize-mark__0 _g184073_))
                ((##fx= _g184074_ 2)
                 (apply gx#core-deserialize-mark__% _g184073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g184073_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx179764%_)
        (gx#stx-rewrap _%stx179764%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx179762%_)
        (gx#stx-unwrap__% _%stx179762%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx179732%_)
        (let* ((_%$%g179733179741%_ (gx#current-expander-marks))
               (_%$%else179735179749%_ (lambda () _%stx179732%_))
               (_%$%K179737179754%_
                (lambda (_%hd179752%_)
                  (gx#stx-apply-mark _%stx179732%_ _%hd179752%_))))
          (if (pair? _%$%g179733179741%_)
              (let* ((_%$%hd179738179757%_ (##car _%$%g179733179741%_))
                     (_%hd179760%_ _%$%hd179738179757%_))
                (_%$%K179737179754%_ _%hd179760%_))
              (_%$%else179735179749%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym179730%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym179730%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx179715%_ _%E179716%_)
        (let ((_%bind179718%_ (gx#resolve-identifier__0 _%stx179715%_)))
          (if (##structure-direct-instance-of?
               _%bind179718%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind179718%_ '5 '#f '#f)
              (_%E179716%_ _%stx179715%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx179723%_)
        (let ((_%E179725%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx179723%_ _%E179725%_))))
    (define gx#syntax-local-e
      (lambda _g184075_
        (let ((_g184076_ (##length _g184075_)))
          (cond ((##fx= _g184076_ 1) (apply gx#syntax-local-e__0 _g184075_))
                ((##fx= _g184076_ 2) (apply gx#syntax-local-e__% _g184075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g184075_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx179699%_ _%E179700%_)
        (let ((_%e179702%_ (gx#syntax-local-e__% _%stx179699%_ _%E179700%_)))
          (if (##structure-instance-of? _%e179702%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e179702%_ '1 '#f '#f)
              _%e179702%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx179707%_)
        (let ((_%E179709%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx179707%_ _%E179709%_))))
    (define gx#syntax-local-value
      (lambda _g184077_
        (let ((_g184078_ (##length _g184077_)))
          (cond ((##fx= _g184078_ 1)
                 (apply gx#syntax-local-value__0 _g184077_))
                ((##fx= _g184078_ 2)
                 (apply gx#syntax-local-value__% _g184077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g184077_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx179696%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx179696%_)))))
