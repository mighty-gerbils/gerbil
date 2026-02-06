(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1770405373)
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
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#expander-context?
      (__make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _%$args174660%_
        (apply make-instance gx#expander-context::t _%$args174660%_)))
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
      (lambda _%$args174657%_
        (apply make-instance gx#root-context::t _%$args174657%_)))
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
      (lambda _%$args174654%_
        (apply make-instance gx#phi-context::t _%$args174654%_)))
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
      (lambda _%$args174651%_
        (apply make-instance gx#top-context::t _%$args174651%_)))
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
      (lambda _%$args174648%_
        (apply make-instance gx#module-context::t _%$args174648%_)))
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
      (lambda _%$args174645%_
        (apply make-instance gx#prelude-context::t _%$args174645%_)))
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
      (lambda _%$args174642%_
        (apply make-instance gx#local-context::t _%$args174642%_)))
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
      (lambda (_%self174615%_ _%id174616%_ _%super174617%_)
        (let ((_%self174620%_ _%self174615%_))
          (if (##fx< '3 (##structure-length _%self174620%_))
              (begin
                (##unchecked-structure-set!
                 _%self174620%_
                 _%id174616%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174620%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174620%_
                 _%super174617%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self174620%_
                     '3
                     (##structure-length _%self174620%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self174633%_ _%id174634%_)
        (let ((_%super174636%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self174633%_
           _%id174634%_
           _%super174636%_))))
    (define gx#phi-context:::init!
      (lambda _g174702_
        (let ((_g174703_ (##length _g174702_)))
          (cond ((##fx= _g174703_ 2)
                 (apply gx#phi-context:::init!__0 _g174702_))
                ((##fx= _g174703_ 3)
                 (apply gx#phi-context:::init!__% _g174702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g174702_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self174468%_ _%super174469%_)
        (let ((_%self174472%_ _%self174468%_))
          (if (##fx< '3 (##structure-length _%self174472%_))
              (begin
                (##unchecked-structure-set!
                 _%self174472%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174472%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174472%_
                 _%super174469%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self174472%_
                     '3
                     (##structure-length _%self174472%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self174485%_)
        (let ((_%super174487%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self174485%_ _%super174487%_))))
    (define gx#local-context:::init!
      (lambda _g174704_
        (let ((_g174705_ (##length _g174704_)))
          (cond ((##fx= _g174705_ 1)
                 (apply gx#local-context:::init!__0 _g174704_))
                ((##fx= _g174705_ 2)
                 (apply gx#local-context:::init!__% _g174704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g174704_))))))
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
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args174342%_
        (apply make-instance gx#binding::t _%$args174342%_)))
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
      (lambda (_%self174325%_ _%id174326%_ _%key174327%_ _%phi174328%_)
        (let ((_%self174331%_ _%self174325%_))
          (##unchecked-structure-set! _%self174331%_ _%id174326%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self174331%_ _%key174327%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self174331%_
           _%phi174328%_
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args174200%_
        (apply make-instance gx#runtime-binding::t _%$args174200%_)))
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
      (lambda _%$args174197%_
        (apply make-instance gx#local-binding::t _%$args174197%_)))
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
      (lambda _%$args174194%_
        (apply make-instance gx#top-binding::t _%$args174194%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args174191%_
        (apply make-instance gx#module-binding::t _%$args174191%_)))
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
      (lambda _%$args174188%_
        (apply make-instance gx#extern-binding::t _%$args174188%_)))
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
      (lambda (_%self173804%_
               _%id173805%_
               _%key173806%_
               _%phi173807%_
               _%ctx173808%_)
        (let ((_%self173811%_ _%self173804%_))
          (gx#binding:::init!
           _%self173811%_
           _%id173805%_
           _%key173806%_
           _%phi173807%_)
          (##unchecked-structure-set!
           _%self173811%_
           _%ctx173808%_
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args173557%_
        (apply make-instance gx#syntax-binding::t _%$args173557%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args173554%_
        (apply make-instance gx#import-binding::t _%$args173554%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args173551%_
        (apply make-instance gx#alias-binding::t _%$args173551%_)))
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
      (lambda (_%self173533%_
               _%id173534%_
               _%key173535%_
               _%phi173536%_
               _%e173537%_)
        (let ((_%self173540%_ _%self173533%_))
          (gx#binding:::init!
           _%self173540%_
           _%id173534%_
           _%key173535%_
           _%phi173536%_)
          (##unchecked-structure-set! _%self173540%_ _%e173537%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self173391%_
               _%id173392%_
               _%key173393%_
               _%phi173394%_
               _%e173395%_
               _%ctx173396%_
               _%weak?173397%_)
        (let ((_%self173400%_ _%self173391%_))
          (gx#binding:::init!
           _%self173400%_
           _%id173392%_
           _%key173393%_
           _%phi173394%_)
          (##unchecked-structure-set! _%self173400%_ _%e173395%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self173400%_ _%ctx173396%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self173400%_
           _%weak?173397%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self173251%_
               _%id173252%_
               _%key173253%_
               _%phi173254%_
               _%e173255%_)
        (let ((_%self173258%_ _%self173251%_))
          (gx#binding:::init!
           _%self173258%_
           _%id173252%_
           _%key173253%_
           _%phi173254%_)
          (##unchecked-structure-set! _%self173258%_ _%e173255%_ '5 '#f '#f))))
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
      (lambda _%$args173126%_
        (apply make-instance gx#expander::t _%$args173126%_)))
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
      (lambda _%$args173123%_
        (apply make-instance gx#core-expander::t _%$args173123%_)))
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
      (lambda _%$args173120%_
        (apply make-instance gx#expression-form::t _%$args173120%_)))
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
      (lambda _%$args173117%_
        (apply make-instance gx#special-form::t _%$args173117%_)))
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
      (lambda _%$args173114%_
        (apply make-instance gx#definition-form::t _%$args173114%_)))
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
      (lambda _%$args173111%_
        (apply make-instance gx#top-special-form::t _%$args173111%_)))
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
      (lambda _%$args173108%_
        (apply make-instance gx#module-special-form::t _%$args173108%_)))
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
      (lambda _%$args173105%_
        (apply make-instance gx#feature-expander::t _%$args173105%_)))
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
      (lambda _%$args173102%_
        (apply make-instance gx#private-feature-expander::t _%$args173102%_)))
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
      (lambda _%$args173099%_
        (apply make-instance gx#reserved-expander::t _%$args173099%_)))
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
      (lambda _%$args173096%_
        (apply make-instance gx#macro-expander::t _%$args173096%_)))
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
      (lambda _%$args173093%_
        (apply make-instance gx#rename-macro-expander::t _%$args173093%_)))
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
      (lambda _%$args173090%_
        (apply make-instance gx#user-expander::t _%$args173090%_)))
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
      (lambda _%$args173087%_
        (apply make-instance gx#expander-mark::t _%$args173087%_)))
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
      (lambda (_%ctx173071%_
               _%message173072%_
               _%stx173073%_
               .
               _%details173074%_)
        (let ((_%ctx173085%_
               (let ((_%$e173076%_ _%ctx173071%_))
                 (if _%$e173076%_
                     _%$e173076%_
                     (let ((_%$e173079%_ (gx#core-context-top__0)))
                       (if _%$e173079%_
                           ((lambda (_%ctx173082%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx173082%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e173079%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message173072%_
                  (cons _%stx173073%_ _%details173074%_)
                  _%ctx173085%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx173058%_ _%expression?173059%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx173058%_ _%expression?173059%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx173064%_)
        (let ((_%expression?173066%_ '#f))
          (gx#eval-syntax__% _%stx173064%_ _%expression?173066%_))))
    (define gx#eval-syntax
      (lambda _g174706_
        (let ((_g174707_ (##length _g174706_)))
          (cond ((##fx= _g174707_ 1) (apply gx#eval-syntax__0 _g174706_))
                ((##fx= _g174707_ 2) (apply gx#eval-syntax__% _g174706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g174706_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx173043%_ _%expression?173044%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx173043%_ _%expression?173044%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx173050%_)
        (let ((_%expression?173052%_ '#f))
          (gx#eval-syntax+1__% _%stx173050%_ _%expression?173052%_))))
    (define gx#eval-syntax+1
      (lambda _g174708_
        (let ((_g174709_ (##length _g174708_)))
          (cond ((##fx= _g174709_ 1) (apply gx#eval-syntax+1__0 _g174708_))
                ((##fx= _g174709_ 2) (apply gx#eval-syntax+1__% _g174708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g174708_))))))
    (define gx#eval-expression+1
      (lambda (_%stx173040%_) (gx#eval-syntax+1__% _%stx173040%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx173038%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx173038%_))))
    (define gx#core-expand__%
      (lambda (_%stx173025%_ _%expression?173026%_)
        (if _%expression?173026%_
            (gx#core-expand-expression _%stx173025%_)
            (gx#core-expand-top _%stx173025%_))))
    (define gx#core-expand__0
      (lambda (_%stx173031%_)
        (let ((_%expression?173033%_ '#f))
          (gx#core-expand__% _%stx173031%_ _%expression?173033%_))))
    (define gx#core-expand
      (lambda _g174710_
        (let ((_g174711_ (##length _g174710_)))
          (cond ((##fx= _g174711_ 1) (apply gx#core-expand__0 _g174710_))
                ((##fx= _g174711_ 2) (apply gx#core-expand__% _g174710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g174710_))))))
    (define gx#core-expand-top
      (lambda (_%stx172992%_)
        (let* ((_%stx172994%_ (gx#core-expand*__0 _%stx172992%_))
               (_%e172995173002%_ _%stx172994%_)
               (_%E172997173006%_
                (lambda () (gx#core-expand-expression _%stx172994%_)))
               (_%E172996173020%_
                (lambda ()
                  (if (gx#stx-pair? _%e172995173002%_)
                      (let ((_%e172998173010%_
                             (gx#syntax-e _%e172995173002%_)))
                        (let ((_%hd172999173013%_ (##car _%e172998173010%_))
                              (_%tl173000173015%_ (##cdr _%e172998173010%_)))
                          (let ((_%form173018%_ _%hd172999173013%_))
                            (if (gx#core-bound-identifier?__0 _%form173018%_)
                                _%stx172994%_
                                (_%E172997173006%_)))))
                      (_%E172997173006%_)))))
          (_%E172996173020%_))))
    (define gx#core-expand-expression
      (lambda (_%stx172924%_)
        (letrec ((_%sealed-expression?172926%_
                  (lambda (_%hd172962%_)
                    (if (gx#sealed-syntax? _%hd172962%_)
                        (let* ((_%e172963172970%_ _%hd172962%_)
                               (_%E172965172974%_ (lambda () '#f))
                               (_%E172964172988%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e172963172970%_)
                                      (let ((_%e172966172978%_
                                             (gx#syntax-e _%e172963172970%_)))
                                        (let ((_%hd172967172981%_
                                               (##car _%e172966172978%_))
                                              (_%tl172968172983%_
                                               (##cdr _%e172966172978%_)))
                                          (let ((_%form172986%_
                                                 _%hd172967172981%_))
                                            (gx#core-bound-identifier?__%
                                             _%form172986%_
                                             gx#expression-form-binding?))))
                                      (_%E172965172974%_)))))
                          (_%E172964172988%_))
                        '#f)))
                 (_%illegal-expression172927%_
                  (lambda (_%hd172959%_ . _%_172960%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx172924%_
                     _%hd172959%_)))
                 (_%expand-e172928%_
                  (lambda (_%form172951%_ _%hd172952%_)
                    (let ((_%bind172954%_
                           (if (##structure-instance-of?
                                _%form172951%_
                                'gx#binding::t)
                               _%form172951%_
                               (gx#resolve-identifier__0 _%form172951%_))))
                      (if (gx#core-expander-binding? _%bind172954%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind172954%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd172952%_
                            (gx#stx-source _%stx172924%_)))
                          (if (##structure-direct-instance-of?
                               _%bind172954%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind172954%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd172952%_
                                 (gx#stx-source _%stx172924%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx172924%_
                               _%form172951%_)))))))
          (let ((_%hd172930%_ (gx#core-expand-head _%stx172924%_)))
            (if (_%sealed-expression?172926%_ _%hd172930%_)
                _%hd172930%_
                (if (gx#stx-pair? _%hd172930%_)
                    (let* ((_%form172934%_ (gx#stx-car _%hd172930%_))
                           (_%bind172936%_
                            (if (gx#identifier? _%form172934%_)
                                (gx#resolve-identifier__0 _%form172934%_)
                                '#f)))
                      (if (or (not _%bind172936%_)
                              (not (gx#core-expander-binding? _%bind172936%_)))
                          (_%expand-e172928%_
                           '%%app
                           (cons '%%app _%hd172930%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind172936%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd172930%_
                               _%illegal-expression172927%_)
                              (if (gx#expression-form-binding? _%bind172936%_)
                                  (_%expand-e172928%_
                                   _%bind172936%_
                                   _%hd172930%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind172936%_)
                                      (gx#core-expand-expression
                                       (_%expand-e172928%_
                                        _%bind172936%_
                                        _%hd172930%_))
                                      (_%illegal-expression172927%_
                                       _%hd172930%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd172930%_)
                        (_%illegal-expression172927%_ _%hd172930%_)
                        (if (gx#identifier? _%hd172930%_)
                            (_%expand-e172928%_
                             '%%ref
                             (cons '%%ref (cons _%hd172930%_ '())))
                            (if (gx#stx-datum? _%hd172930%_)
                                (_%expand-e172928%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd172930%_ '())))
                                (_%illegal-expression172927%_
                                 _%hd172930%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx172919%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx172922%_ (gx#core-expand-expression _%stx172919%_)))
             (values _%stx172922%_ (gx#eval-syntax* _%stx172922%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx172900%_ _%stop?172901%_)
        (let _%lp172903%_ ((_%stx172905%_ _%stx172900%_))
          (if (_%stop?172901%_ _%stx172905%_)
              _%stx172905%_
              (let ((_%rstx172907%_ (gx#core-expand1 _%stx172905%_)))
                (if (eq? _%stx172905%_ _%rstx172907%_)
                    _%stx172905%_
                    (_%lp172903%_ _%rstx172907%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx172912%_)
        (let ((_%stop?172914%_ false))
          (gx#core-expand*__% _%stx172912%_ _%stop?172914%_))))
    (define gx#core-expand*
      (lambda _g174712_
        (let ((_g174713_ (##length _g174712_)))
          (cond ((##fx= _g174713_ 1) (apply gx#core-expand*__0 _g174712_))
                ((##fx= _g174713_ 2) (apply gx#core-expand*__% _g174712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g174712_))))))
    (define gx#core-expand1
      (lambda (_%stx172852%_)
        (letrec ((_%step172854%_
                  (lambda (_%hd172891%_)
                    (let ((_%bind172893%_
                           (gx#resolve-identifier__0 _%hd172891%_)))
                      (if (##structure-instance-of?
                           _%bind172893%_
                           'gx#runtime-binding::t)
                          _%stx172852%_
                          (if (##structure-direct-instance-of?
                               _%bind172893%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind172893%_
                                '5
                                '#f
                                '#f)
                               _%stx172852%_)
                              (if (not _%bind172893%_)
                                  _%stx172852%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx172852%_))))))))
          (let* ((_%e172855172863%_ _%stx172852%_)
                 (_%E172861172867%_ (lambda () _%stx172852%_))
                 (_%E172857172873%_
                  (lambda ()
                    (let ((_%hd172871%_ _%e172855172863%_))
                      (if (gx#identifier? _%hd172871%_)
                          (_%step172854%_ _%hd172871%_)
                          (_%E172861172867%_)))))
                 (_%E172856172887%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172855172863%_)
                        (let ((_%e172858172877%_
                               (gx#syntax-e _%e172855172863%_)))
                          (let ((_%hd172859172880%_ (##car _%e172858172877%_))
                                (_%tl172860172882%_ (##cdr _%e172858172877%_)))
                            (let ((_%hd172885%_ _%hd172859172880%_))
                              (if (gx#identifier? _%hd172885%_)
                                  (_%step172854%_ _%hd172885%_)
                                  (_%E172857172873%_)))))
                        (_%E172857172873%_)))))
            (_%E172856172887%_)))))
    (define gx#core-expand-head
      (lambda (_%stx172818%_)
        (letrec ((_%stop?172820%_
                  (lambda (_%stx172822%_)
                    (let* ((_%e172823172830%_ _%stx172822%_)
                           (_%E172825172834%_ (lambda () '#f))
                           (_%E172824172848%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172823172830%_)
                                  (let ((_%e172826172838%_
                                         (gx#syntax-e _%e172823172830%_)))
                                    (let ((_%hd172827172841%_
                                           (##car _%e172826172838%_))
                                          (_%tl172828172843%_
                                           (##cdr _%e172826172838%_)))
                                      (let ((_%hd172846%_ _%hd172827172841%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd172846%_))))
                                  (_%E172825172834%_)))))
                      (_%E172824172848%_)))))
          (gx#core-expand*__% _%stx172818%_ _%stop?172820%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx172624%_
               _%expand-special172625%_
               _%begin-form172626%_
               _%expand-e172627%_)
        (letrec ((_%expand-splice172629%_
                  (lambda (_%hd172792%_
                           _%body172793%_
                           _%rest172794%_
                           _%r172795%_)
                    (if (gx#stx-list? _%body172793%_)
                        (_%K172633%_
                         (gx#stx-foldr cons _%rest172794%_ _%body172793%_)
                         _%r172795%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx172624%_
                         _%hd172792%_))))
                 (_%expand-cond-expand172630%_
                  (lambda (_%hd172788%_ _%rest172789%_ _%r172790%_)
                    (_%K172633%_
                     (cons (gx#core-expand-cond-expand% _%hd172788%_)
                           _%rest172789%_)
                     _%r172790%_)))
                 (_%expand-include172631%_
                  (lambda (_%hd172737%_ _%rest172738%_ _%r172739%_)
                    (let* ((_%e172740172750%_ _%hd172737%_)
                           (_%E172742172754%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172740172750%_)))
                           (_%E172741172784%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172740172750%_)
                                  (let ((_%e172743172758%_
                                         (gx#syntax-e _%e172740172750%_)))
                                    (let ((_%hd172744172761%_
                                           (##car _%e172743172758%_))
                                          (_%tl172745172763%_
                                           (##cdr _%e172743172758%_)))
                                      (if (gx#stx-pair? _%tl172745172763%_)
                                          (let ((_%e172746172766%_
                                                 (gx#syntax-e
                                                  _%tl172745172763%_)))
                                            (let ((_%hd172747172769%_
                                                   (##car _%e172746172766%_))
                                                  (_%tl172748172771%_
                                                   (##cdr _%e172746172766%_)))
                                              (let ((_%path172774%_
                                                     _%hd172747172769%_))
                                                (if (gx#stx-null?
                                                     _%tl172748172771%_)
                                                    (if (gx#stx-string?
                                                         _%path172774%_)
                                                        (let* ((_%rpath172776%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path172774%_
                         (gx#stx-source _%hd172737%_)))
                       (_%block172778%_
                        (gx#core-expand-include%__%
                         _%hd172737%_
                         _%rpath172776%_))
                       (_%rbody172781%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block172778%_
                            _%expand-special172625%_
                            '#f
                            _%expand-e172627%_))
                         gx#current-expander-path
                         (cons _%rpath172776%_ (gx#current-expander-path)))))
                  (_%K172633%_
                   _%rest172738%_
                   (foldr__0 cons _%r172739%_ _%rbody172781%_)))
                (_%E172742172754%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E172742172754%_)))))
                                          (_%E172742172754%_))))
                                  (_%E172742172754%_)))))
                      (_%E172741172784%_))))
                 (_%expand-expression172632%_
                  (lambda (_%hd172733%_ _%rest172734%_ _%r172735%_)
                    (_%K172633%_
                     _%rest172734%_
                     (cons (_%expand-e172627%_ _%hd172733%_) _%r172735%_))))
                 (_%K172633%_
                  (lambda (_%rest172663%_ _%r172664%_)
                    (let* ((_%e172665172672%_ _%rest172663%_)
                           (_%E172667172676%_
                            (lambda ()
                              (if _%begin-form172626%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form172626%_
                                    (reverse _%r172664%_))
                                   (gx#stx-source _%stx172624%_))
                                  _%r172664%_)))
                           (_%E172666172729%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172665172672%_)
                                  (let ((_%e172668172680%_
                                         (gx#syntax-e _%e172665172672%_)))
                                    (let ((_%hd172669172683%_
                                           (##car _%e172668172680%_))
                                          (_%tl172670172685%_
                                           (##cdr _%e172668172680%_)))
                                      (let* ((_%hd172688%_ _%hd172669172683%_)
                                             (_%rest172690%_
                                              _%tl172670172685%_)
                                             (_%hd172692%_
                                              (gx#core-expand-head
                                               _%hd172688%_))
                                             (_%e172693172700%_ _%hd172692%_)
                                             (_%E172695172704%_
                                              (lambda ()
                                                (_%expand-expression172632%_
                                                 _%hd172692%_
                                                 _%rest172690%_
                                                 _%r172664%_)))
                                             (_%E172694172725%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e172693172700%_)
                                                    (let ((_%e172696172708%_
                                                           (gx#syntax-e
                                                            _%e172693172700%_)))
                                                      (let ((_%hd172697172711%_
                                                             (##car _%e172696172708%_))
                                                            (_%tl172698172713%_
                                                             (##cdr _%e172696172708%_)))
                                                        (let* ((_%form172716%_
                                                                _%hd172697172711%_)
                                                               (_%body172718%_
                                                                _%tl172698172713%_)
                                                               (_%bind172720%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form172716%_)
                            (gx#resolve-identifier__0 _%form172716%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind172720%_)
                      (let ((_%$e172722%_
                             (##unchecked-structure-ref
                              _%bind172720%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e172722%_)
                            (_%expand-splice172629%_
                             _%hd172692%_
                             _%body172718%_
                             _%rest172690%_
                             _%r172664%_)
                            (if (eq? '%#cond-expand _%$e172722%_)
                                (_%expand-cond-expand172630%_
                                 _%hd172692%_
                                 _%rest172690%_
                                 _%r172664%_)
                                (if (eq? '%#include _%$e172722%_)
                                    (_%expand-include172631%_
                                     _%hd172692%_
                                     _%rest172690%_
                                     _%r172664%_)
                                    (_%expand-special172625%_
                                     _%hd172692%_
                                     _%K172633%_
                                     _%rest172690%_
                                     _%r172664%_)))))
                      (_%expand-expression172632%_
                       _%hd172692%_
                       _%rest172690%_
                       _%r172664%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E172695172704%_)))))
                                        (_%E172694172725%_))))
                                  (_%E172667172676%_)))))
                      (_%E172666172729%_)))))
          (let* ((_%e172634172641%_ _%stx172624%_)
                 (_%E172636172645%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e172634172641%_)))
                 (_%E172635172659%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172634172641%_)
                        (let ((_%e172637172649%_
                               (gx#syntax-e _%e172634172641%_)))
                          (let ((_%hd172638172652%_ (##car _%e172637172649%_))
                                (_%tl172639172654%_ (##cdr _%e172637172649%_)))
                            (let ((_%body172657%_ _%tl172639172654%_))
                              (if (gx#stx-list? _%body172657%_)
                                  (_%K172633%_ _%body172657%_ '())
                                  (_%E172636172645%_)))))
                        (_%E172636172645%_)))))
            (_%E172635172659%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx172800%_ _%expand-special172801%_)
        (let* ((_%begin-form172803%_ '%#begin)
               (_%expand-e172805%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx172800%_
           _%expand-special172801%_
           _%begin-form172803%_
           _%expand-e172805%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx172807%_ _%expand-special172808%_ _%begin-form172809%_)
        (let ((_%expand-e172811%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx172807%_
           _%expand-special172808%_
           _%begin-form172809%_
           _%expand-e172811%_))))
    (define gx#core-expand-block
      (lambda _g174714_
        (let ((_g174715_ (##length _g174714_)))
          (cond ((##fx= _g174715_ 2) (apply gx#core-expand-block__0 _g174714_))
                ((##fx= _g174715_ 3) (apply gx#core-expand-block__1 _g174714_))
                ((##fx= _g174715_ 4) (apply gx#core-expand-block__% _g174714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g174714_))))))
    (define gx#core-expand-block*
      (lambda (_%stx172572%_ _%expand-special172573%_)
        (let* ((_%g172574172585%_
                (gx#core-expand-block__1
                 _%stx172572%_
                 _%expand-special172573%_
                 '#f))
               (_%E172578172589%_
                (lambda ()
                  (error '"No clause matching"
                         _%g172574172585%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K172583172620%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx172572%_)))
                (_%K172580172606%_ (lambda (_%expr172604%_) _%expr172604%_))
                (_%K172579172595%_
                 (lambda (_%body172593%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body172593%_))
                    (gx#stx-source _%stx172572%_)))))
            (let ((_%try-match172576172616%_
                   (lambda ()
                     (if (pair? _%g172574172585%_)
                         (let ((_%tl172582172611%_ (##cdr _%g172574172585%_))
                               (_%hd172581172609%_ (##car _%g172574172585%_)))
                           (if (null? _%tl172582172611%_)
                               (let ((_%expr172614%_ _%hd172581172609%_))
                                 (_%K172580172606%_ _%expr172614%_))
                               (let ((_%body172598%_ _%g172574172585%_))
                                 (_%K172579172595%_ _%body172598%_))))
                         (let ((_%body172598%_ _%g172574172585%_))
                           (_%K172579172595%_ _%body172598%_))))))
              (if (null? _%g172574172585%_)
                  (_%K172583172620%_)
                  (_%try-match172576172616%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx172398%_)
        (letrec ((_%satisfied?172400%_
                  (lambda (_%condition172501%_)
                    (let* ((_%e172502172517%_ _%condition172501%_)
                           (_%E172512172521%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172502172517%_)))
                           (_%E172505172540%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172502172517%_)
                                  (let ((_%e172513172525%_
                                         (gx#syntax-e _%e172502172517%_)))
                                    (let ((_%hd172514172528%_
                                           (##car _%e172513172525%_))
                                          (_%tl172515172530%_
                                           (##cdr _%e172513172525%_)))
                                      (let* ((_%combinator172533%_
                                              _%hd172514172528%_)
                                             (_%body172535%_
                                              _%tl172515172530%_))
                                        (if (gx#stx-list? _%body172535%_)
                                            (let ((_%$e172537%_
                                                   (gx#stx-e
                                                    _%combinator172533%_)))
                                              (if (eq? 'not _%$e172537%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?172400%_
                                                        _%body172535%_))
                                                  (if (eq? 'and _%$e172537%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?172400%_
                                                       _%body172535%_)
                                                      (if (eq? 'or
                                                               _%$e172537%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?172400%_
                                                           _%body172535%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e172537%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body172535%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx172398%_
                       _%combinator172533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E172512172521%_)))))
                                  (_%E172512172521%_))))
                           (_%E172504172562%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172502172517%_)
                                  (let ((_%e172506172544%_
                                         (gx#syntax-e _%e172502172517%_)))
                                    (let ((_%hd172507172547%_
                                           (##car _%e172506172544%_))
                                          (_%tl172508172549%_
                                           (##cdr _%e172506172544%_)))
                                      (if (and (gx#identifier?
                                                _%hd172507172547%_)
                                               (gx#core-identifier=?
                                                _%hd172507172547%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl172508172549%_)
                                              (let ((_%e172509172552%_
                                                     (gx#syntax-e
                                                      _%tl172508172549%_)))
                                                (let ((_%hd172510172555%_
                                                       (##car _%e172509172552%_))
                                                      (_%tl172511172557%_
                                                       (##cdr _%e172509172552%_)))
                                                  (let ((_%expr172560%_
                                                         _%hd172510172555%_))
                                                    (if (gx#stx-null?
                                                         _%tl172511172557%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr172560%_)
                                                        (_%E172505172540%_)))))
                                              (_%E172505172540%_))
                                          (_%E172505172540%_))))
                                  (_%E172505172540%_))))
                           (_%E172503172568%_
                            (lambda ()
                              (let ((_%id172566%_ _%e172502172517%_))
                                (if (gx#identifier? _%id172566%_)
                                    (gx#core-bound-identifier?__%
                                     _%id172566%_
                                     gx#feature-binding?)
                                    (_%E172504172562%_))))))
                      (_%E172503172568%_))))
                 (_%loop172401%_
                  (lambda (_%rest172431%_)
                    (let* ((_%e172432172440%_ _%rest172431%_)
                           (_%E172438172444%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172432172440%_)))
                           (_%E172434172448%_
                            (lambda ()
                              (if (gx#stx-null? _%e172432172440%_)
                                  '()
                                  (_%E172438172444%_))))
                           (_%E172433172497%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172432172440%_)
                                  (let ((_%e172435172452%_
                                         (gx#syntax-e _%e172432172440%_)))
                                    (let ((_%hd172436172455%_
                                           (##car _%e172435172452%_))
                                          (_%tl172437172457%_
                                           (##cdr _%e172435172452%_)))
                                      (let* ((_%hd172460%_ _%hd172436172455%_)
                                             (_%rest172462%_
                                              _%tl172437172457%_)
                                             (_%e172463172470%_ _%hd172460%_)
                                             (_%E172465172474%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e172463172470%_)))
                                             (_%E172464172493%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e172463172470%_)
                                                    (let ((_%e172466172478%_
                                                           (gx#syntax-e
                                                            _%e172463172470%_)))
                                                      (let ((_%hd172467172481%_
                                                             (##car _%e172466172478%_))
                                                            (_%tl172468172483%_
                                                             (##cdr _%e172466172478%_)))
                                                        (let* ((_%condition172486%_
                                                                _%hd172467172481%_)
                                                               (_%body172488%_
                                                                _%tl172468172483%_))
                                                          (if (gx#stx-eq?
                                                               _%condition172486%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest172462%_)
                          _%body172488%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx172398%_
                           _%hd172460%_))
                      (if (_%satisfied?172400%_ _%condition172486%_)
                          _%body172488%_
                          (_%loop172401%_ _%rest172462%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E172465172474%_)))))
                                        (_%E172464172493%_))))
                                  (_%E172434172448%_)))))
                      (_%E172433172497%_)))))
          (let* ((_%e172402172409%_ _%stx172398%_)
                 (_%E172404172413%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e172402172409%_)))
                 (_%E172403172427%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172402172409%_)
                        (let ((_%e172405172417%_
                               (gx#syntax-e _%e172402172409%_)))
                          (let ((_%hd172406172420%_ (##car _%e172405172417%_))
                                (_%tl172407172422%_ (##cdr _%e172405172417%_)))
                            (let ((_%clauses172425%_ _%tl172407172422%_))
                              (if (gx#stx-list? _%clauses172425%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop172401%_ _%clauses172425%_))
                                  (_%E172404172413%_)))))
                        (_%E172404172413%_)))))
            (_%E172403172427%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx172341%_ _%rpath172342%_)
        (let* ((_%e172343172353%_ _%stx172341%_)
               (_%E172345172357%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e172343172353%_)))
               (_%E172344172384%_
                (lambda ()
                  (if (gx#stx-pair? _%e172343172353%_)
                      (let ((_%e172346172361%_
                             (gx#syntax-e _%e172343172353%_)))
                        (let ((_%hd172347172364%_ (##car _%e172346172361%_))
                              (_%tl172348172366%_ (##cdr _%e172346172361%_)))
                          (if (gx#stx-pair? _%tl172348172366%_)
                              (let ((_%e172349172369%_
                                     (gx#syntax-e _%tl172348172366%_)))
                                (let ((_%hd172350172372%_
                                       (##car _%e172349172369%_))
                                      (_%tl172351172374%_
                                       (##cdr _%e172349172369%_)))
                                  (let ((_%path172377%_ _%hd172350172372%_))
                                    (if (gx#stx-null? _%tl172351172374%_)
                                        (if (gx#stx-string? _%path172377%_)
                                            (let ((_%rpath172382%_
                                                   (let ((_%$e172379%_
                                                          _%rpath172342%_))
                                                     (if _%$e172379%_
                                                         _%$e172379%_
                                                         (gx#core-resolve-path__%
                                                          _%path172377%_
                                                          (gx#stx-source
                                                           _%stx172341%_))))))
                                              (if (member _%rpath172382%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx172341%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath172382%_))
                                                    (gx#stx-source
                                                     _%stx172341%_)))))
                                            (_%E172345172357%_))
                                        (_%E172345172357%_)))))
                              (_%E172345172357%_))))
                      (_%E172345172357%_)))))
          (_%E172344172384%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx172391%_)
        (let ((_%rpath172393%_ '#f))
          (gx#core-expand-include%__% _%stx172391%_ _%rpath172393%_))))
    (define gx#core-expand-include%
      (lambda _g174716_
        (let ((_g174717_ (##length _g174716_)))
          (cond ((##fx= _g174717_ 1)
                 (apply gx#core-expand-include%__0 _g174716_))
                ((##fx= _g174717_ 2)
                 (apply gx#core-expand-include%__% _g174716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g174716_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K172307%_ _%stx172308%_ _%method172309%_)
        (if (procedure? _%K172307%_)
            (let ((_%$e172312%_ (gx#stx-source _%stx172308%_)))
              (if _%$e172312%_
                  ((lambda (_%g172314172316%_)
                     (gx#stx-wrap-source
                      (_%K172307%_ _%stx172308%_)
                      _%g172314172316%_))
                   _%$e172312%_)
                  (_%K172307%_ _%stx172308%_)))
            (let ((_%$e172320%_
                   (bound-method-ref _%K172307%_ _%method172309%_)))
              (if _%$e172320%_
                  ((lambda (_%g172322172324%_)
                     (gx#core-apply-expander__%
                      _%g172322172324%_
                      _%stx172308%_
                      _%method172309%_))
                   _%$e172320%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx172308%_
                   _%method172309%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K172331%_ _%stx172332%_)
        (let ((_%method172334%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K172331%_
           _%stx172332%_
           _%method172334%_))))
    (define gx#core-apply-expander
      (lambda _g174718_
        (let ((_g174719_ (##length _g174718_)))
          (cond ((##fx= _g174719_ 2)
                 (apply gx#core-apply-expander__0 _g174718_))
                ((##fx= _g174719_ 3)
                 (apply gx#core-apply-expander__% _g174718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g174718_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self172292%_ _%stx172293%_)
        (let ((_%self172296%_ _%self172292%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx172293%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self172135%_ _%stx172136%_)
        (let* ((_%self172139%_ _%self172135%_)
               (_%self172148172154%_ _%self172139%_)
               (_%E172150172157%_
                (lambda ()
                  (error '"No clause matching"
                         _%self172148172154%_
                         '((macro-expander K)))
                  '#!void))
               (_%K172151172162%_
                (lambda (_%K172160%_)
                  (gx#core-apply-expander__0 _%K172160%_ _%stx172136%_)))
               (_%e172152172165%_
                (##unchecked-structure-ref _%self172148172154%_ '1 '#f '#f))
               (_%K172168%_ _%e172152172165%_))
          (_%K172151172162%_ _%K172168%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self171978%_ _%stx171979%_)
        (let ((_%self171982%_ _%self171978%_))
          (if (gx#sealed-syntax? _%stx171979%_)
              _%stx171979%_
              (let* ((_%self171991171997%_ _%self171982%_)
                     (_%E171993172000%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self171991171997%_
                               '((core-expander K)))
                        '#!void))
                     (_%K171994172005%_
                      (lambda (_%K172003%_)
                        (gx#core-apply-expander__0 _%K172003%_ _%stx171979%_)))
                     (_%e171995172008%_
                      (##unchecked-structure-ref
                       _%self171991171997%_
                       '1
                       '#f
                       '#f))
                     (_%K172011%_ _%e171995172008%_))
                (_%K171994172005%_ _%K172011%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self171829%_ _%stx171830%_ _%top?171831%_)
        (let ((_%self171834%_ _%self171829%_))
          (if (_%top?171831%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self171834%_
               _%stx171830%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx171830%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self171847%_ _%stx171848%_)
        (let ((_%top?171850%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self171847%_
           _%stx171848%_
           _%top?171850%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g174720_
        (let ((_g174721_ (##length _g174720_)))
          (cond ((##fx= _g174721_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g174720_))
                ((##fx= _g174721_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g174720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g174720_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self171692%_ _%stx171693%_)
        (let ((_%self171696%_ _%self171692%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self171696%_
           _%stx171693%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self171507%_ _%stx171508%_)
        (let* ((_%self171511%_ _%self171507%_)
               (_%self171520171526%_ _%self171511%_)
               (_%E171522171529%_
                (lambda ()
                  (error '"No clause matching"
                         _%self171520171526%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K171523171562%_
                (lambda (_%id171532%_)
                  (let* ((_%e171533171540%_ _%stx171508%_)
                         (_%E171535171544%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e171533171540%_)))
                         (_%E171534171558%_
                          (lambda ()
                            (if (gx#stx-pair? _%e171533171540%_)
                                (let ((_%e171536171548%_
                                       (gx#syntax-e _%e171533171540%_)))
                                  (let ((_%hd171537171551%_
                                         (##car _%e171536171548%_))
                                        (_%tl171538171553%_
                                         (##cdr _%e171536171548%_)))
                                    (let ((_%body171556%_ _%tl171538171553%_))
                                      (gx#core-cons
                                       _%id171532%_
                                       _%body171556%_))))
                                (_%E171535171544%_)))))
                    (_%E171534171558%_))))
               (_%e171524171565%_
                (##unchecked-structure-ref _%self171520171526%_ '1 '#f '#f))
               (_%id171568%_ _%e171524171565%_))
          (_%K171523171562%_ _%id171568%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self171334%_ _%stx171335%_ _%method171336%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx171335%_))
              (force-output))
            '#!void)
        (let* ((_%self171337171345%_ _%self171334%_)
               (_%E171339171348%_
                (lambda ()
                  (error '"No clause matching"
                         _%self171337171345%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K171340171355%_
                (lambda (_%phi171351%_ _%ctx171352%_ _%K171353%_)
                  (gx#core-apply-user-macro
                   _%K171353%_
                   _%stx171335%_
                   _%ctx171352%_
                   _%phi171351%_
                   _%method171336%_))))
          (if (##structure-instance-of?
               _%self171337171345%_
               'gx#user-expander::t)
              (let* ((_%e171341171358%_
                      (##unchecked-structure-ref
                       _%self171337171345%_
                       '1
                       '#f
                       '#f))
                     (_%K171361%_ _%e171341171358%_)
                     (_%e171342171363%_
                      (##unchecked-structure-ref
                       _%self171337171345%_
                       '2
                       '#f
                       '#f))
                     (_%ctx171366%_ _%e171342171363%_)
                     (_%e171343171368%_
                      (##unchecked-structure-ref
                       _%self171337171345%_
                       '3
                       '#f
                       '#f))
                     (_%phi171371%_ _%e171343171368%_))
                (_%K171340171355%_ _%phi171371%_ _%ctx171366%_ _%K171361%_))
              (_%E171339171348%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self171376%_ _%stx171377%_)
        (let ((_%method171379%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self171376%_
           _%stx171377%_
           _%method171379%_))))
    (define gx#core-apply-user-expander
      (lambda _g174722_
        (let ((_g174723_ (##length _g174722_)))
          (cond ((##fx= _g174723_ 2)
                 (apply gx#core-apply-user-expander__0 _g174722_))
                ((##fx= _g174723_ 3)
                 (apply gx#core-apply-user-expander__% _g174722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g174722_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K171324%_
               _%stx171325%_
               _%ctx171326%_
               _%phi171327%_
               _%method171328%_)
        (let ((_%mark171330%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx171326%_
                _%phi171327%_
                _%stx171325%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K171324%_
               (gx#stx-apply-mark _%stx171325%_ _%mark171330%_)
               _%method171328%_)
              _%mark171330%_))
           gx#current-expander-marks
           (cons _%mark171330%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx171172%_ _%phi171173%_ _%ctx171174%_)
        (let _%lp171176%_ ((_%bind171178%_
                            (gx#core-resolve-identifier__%
                             _%stx171172%_
                             _%phi171173%_
                             _%ctx171174%_)))
          (if (##structure-direct-instance-of?
               _%bind171178%_
               'gx#import-binding::t)
              (_%lp171176%_
               (##unchecked-structure-ref _%bind171178%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind171178%_
                   'gx#alias-binding::t)
                  (_%lp171176%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind171178%_ '5 '#f '#f)
                    _%phi171173%_
                    _%ctx171174%_))
                  _%bind171178%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx171186%_)
        (let* ((_%phi171188%_ (gx#current-expander-phi))
               (_%ctx171190%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx171186%_
           _%phi171188%_
           _%ctx171190%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx171192%_ _%phi171193%_)
        (let ((_%ctx171195%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx171192%_
           _%phi171193%_
           _%ctx171195%_))))
    (define gx#resolve-identifier
      (lambda _g174724_
        (let ((_g174725_ (##length _g174724_)))
          (cond ((##fx= _g174725_ 1)
                 (apply gx#resolve-identifier__0 _g174724_))
                ((##fx= _g174725_ 2)
                 (apply gx#resolve-identifier__1 _g174724_))
                ((##fx= _g174725_ 3)
                 (apply gx#resolve-identifier__% _g174724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g174724_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx171127%_
               _%val171128%_
               _%rebind?171129%_
               _%phi171130%_
               _%ctx171131%_)
        (let ((_%rebind?171136%_
               (if (not _%rebind?171129%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?171129%_)
                       _%rebind?171129%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx171127%_)
           _%val171128%_
           _%rebind?171136%_
           _%phi171130%_
           _%ctx171131%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx171141%_ _%val171142%_)
        (let* ((_%rebind?171144%_ '#f)
               (_%phi171146%_ (gx#current-expander-phi))
               (_%ctx171148%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx171141%_
           _%val171142%_
           _%rebind?171144%_
           _%phi171146%_
           _%ctx171148%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx171150%_ _%val171151%_ _%rebind?171152%_)
        (let* ((_%phi171154%_ (gx#current-expander-phi))
               (_%ctx171156%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx171150%_
           _%val171151%_
           _%rebind?171152%_
           _%phi171154%_
           _%ctx171156%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx171158%_ _%val171159%_ _%rebind?171160%_ _%phi171161%_)
        (let ((_%ctx171163%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx171158%_
           _%val171159%_
           _%rebind?171160%_
           _%phi171161%_
           _%ctx171163%_))))
    (define gx#bind-identifier!
      (lambda _g174726_
        (let ((_g174727_ (##length _g174726_)))
          (cond ((##fx= _g174727_ 2) (apply gx#bind-identifier!__0 _g174726_))
                ((##fx= _g174727_ 3) (apply gx#bind-identifier!__1 _g174726_))
                ((##fx= _g174727_ 4) (apply gx#bind-identifier!__2 _g174726_))
                ((##fx= _g174727_ 5) (apply gx#bind-identifier!__% _g174726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g174726_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx171093%_ _%phi171094%_ _%ctx171095%_)
        (let _%lp171097%_ ((_%e171099%_ _%stx171093%_)
                           (_%marks171100%_ (gx#current-expander-marks)))
          (if (symbol? _%e171099%_)
              (gx#core-resolve-binding
               _%e171099%_
               _%phi171094%_
               _%phi171094%_
               _%ctx171095%_
               (reverse _%marks171100%_))
              (if (gx#identifier-quote? _%e171099%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e171099%_ '1 '#f '#f)
                   _%phi171094%_
                   '0
                   (##unchecked-structure-ref _%e171099%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e171099%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e171099%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e171099%_ '1 '#f '#f)
                       _%phi171094%_
                       _%phi171094%_
                       _%ctx171095%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e171099%_ '3 '#f '#f)
                        _%marks171100%_))
                      (if (##structure-direct-instance-of?
                           _%e171099%_
                           'gx#syntax-wrap::t)
                          (_%lp171097%_
                           (##unchecked-structure-ref _%e171099%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e171099%_ '3 '#f '#f)
                            _%marks171100%_))
                          (if (##structure-instance-of?
                               _%e171099%_
                               'gerbil#AST::t)
                              (_%lp171097%_
                               (##unchecked-structure-ref
                                _%e171099%_
                                '1
                                '#f
                                '#f)
                               _%marks171100%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx171093%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx171111%_)
        (let* ((_%phi171113%_ (gx#current-expander-phi))
               (_%ctx171115%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx171111%_
           _%phi171113%_
           _%ctx171115%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx171117%_ _%phi171118%_)
        (let ((_%ctx171120%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx171117%_
           _%phi171118%_
           _%ctx171120%_))))
    (define gx#core-resolve-identifier
      (lambda _g174728_
        (let ((_g174729_ (##length _g174728_)))
          (cond ((##fx= _g174729_ 1)
                 (apply gx#core-resolve-identifier__0 _g174728_))
                ((##fx= _g174729_ 2)
                 (apply gx#core-resolve-identifier__1 _g174728_))
                ((##fx= _g174729_ 3)
                 (apply gx#core-resolve-identifier__% _g174728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g174728_))))))
    (define gx#core-resolve-binding
      (lambda (_%id171004%_
               _%phi171005%_
               _%src-phi171006%_
               _%ctx171007%_
               _%marks171008%_)
        (letrec ((_%resolve171010%_
                  (lambda (_%ctx171077%_ _%src-phi171078%_ _%key171079%_)
                    (let _%lp171081%_ ((_%ctx171083%_
                                        (gx#core-context-shift
                                         _%ctx171077%_
                                         _%phi171005%_))
                                       (_%dphi171084%_
                                        (fx- _%phi171005%_ _%src-phi171078%_)))
                      (let ((_%$e171086%_
                             (gx#core-context-resolve
                              _%ctx171083%_
                              _%key171079%_)))
                        (if _%$e171086%_
                            _%$e171086%_
                            (if (fxzero? _%dphi171084%_)
                                '#f
                                (if (fxpositive? _%dphi171084%_)
                                    (_%lp171081%_
                                     (gx#core-context-shift _%ctx171083%_ '-1)
                                     (##fx- _%dphi171084%_ '1))
                                    (_%lp171081%_
                                     (gx#core-context-shift _%ctx171083%_ '1)
                                     (##fx+ _%dphi171084%_ '1))))))))))
          (let _%lp171012%_ ((_%ctx171014%_ _%ctx171007%_)
                             (_%src-phi171015%_ _%src-phi171006%_)
                             (_%rest171016%_ _%marks171008%_))
            (let* ((_%rest171017171025%_ _%rest171016%_)
                   (_%else171019171033%_
                    (lambda ()
                      (_%resolve171010%_
                       _%ctx171014%_
                       _%src-phi171015%_
                       _%id171004%_)))
                   (_%K171021171065%_
                    (lambda (_%rest171036%_ _%hd171037%_)
                      (let* ((_%hd171038171044%_ _%hd171037%_)
                             (_%E171040171047%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd171038171044%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K171041171057%_
                              (lambda (_%subst171050%_)
                                (let ((_%$e171054%_
                                       (let ((_%key171052%_
                                              (if _%subst171050%_
                                                  (hash-get
                                                   _%subst171050%_
                                                   _%id171004%_)
                                                  '#f)))
                                         (if _%key171052%_
                                             (_%resolve171010%_
                                              _%ctx171014%_
                                              _%src-phi171015%_
                                              _%key171052%_)
                                             '#f))))
                                  (if _%$e171054%_
                                      _%$e171054%_
                                      (_%lp171012%_
                                       (##unchecked-structure-ref
                                        _%hd171037%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd171037%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest171036%_))))))
                        (if (##structure-instance-of?
                             _%hd171038171044%_
                             'gx#expander-mark::t)
                            (let* ((_%e171042171060%_
                                    (##unchecked-structure-ref
                                     _%hd171038171044%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst171063%_ _%e171042171060%_))
                              (_%K171041171057%_ _%subst171063%_))
                            (_%E171040171047%_))))))
              (if (pair? _%rest171017171025%_)
                  (let ((_%hd171022171068%_ (##car _%rest171017171025%_))
                        (_%tl171023171070%_ (##cdr _%rest171017171025%_)))
                    (let* ((_%hd171073%_ _%hd171022171068%_)
                           (_%rest171075%_ _%tl171023171070%_))
                      (_%K171021171065%_ _%rest171075%_ _%hd171073%_)))
                  (_%else171019171033%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key170875%_
               _%val170876%_
               _%rebind?170877%_
               _%phi170878%_
               _%ctx170879%_)
        (letrec ((_%update-binding170881%_
                  (lambda (_%xval170953%_)
                    (if (or (_%rebind?170877%_
                             _%ctx170879%_
                             _%xval170953%_
                             _%val170876%_)
                            (and (##structure-direct-instance-of?
                                  _%xval170953%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval170953%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val170876%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val170876%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval170953%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val170876%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val170876%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval170953%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val170876%_
                        (if (and (##structure-direct-instance-of?
                                  _%val170876%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val170876%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval170953%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val170876%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval170953%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval170953%_
                            (if (and (##structure-direct-instance-of?
                                      _%val170876%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval170953%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key170875%_
                                 (cons (##unchecked-structure-ref
                                        _%val170876%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val170876%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval170953%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval170953%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval170953%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval170953%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key170875%_
                                 _%val170876%_
                                 _%xval170953%_))))))
                 (_%gensubst170882%_
                  (lambda (_%subst170948%_ _%id170949%_)
                    (let ((_%eid170951%_
                           (gensym (if (uninterned-symbol? _%id170949%_)
                                       '%
                                       _%id170949%_))))
                      (hash-put! _%subst170948%_ _%id170949%_ _%eid170951%_)
                      _%eid170951%_)))
                 (_%subst!170883%_
                  (lambda (_%key170885%_)
                    (let* ((_%key170886170894%_ _%key170885%_)
                           (_%else170888170902%_ (lambda () _%key170885%_))
                           (_%K170890170936%_
                            (lambda (_%mark170905%_ _%id170906%_)
                              (let* ((_%mark170907170913%_ _%mark170905%_)
                                     (_%E170909170916%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark170907170913%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K170910170928%_
                                      (lambda (_%subst170919%_)
                                        (if (not _%subst170919%_)
                                            (let ((_%subst170922%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark170905%_
                                               _%subst170922%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst170882%_
                                               _%subst170922%_
                                               _%id170906%_))
                                            (let ((_%$e170924%_
                                                   (hash-get
                                                    _%subst170919%_
                                                    _%id170906%_)))
                                              (if _%$e170924%_
                                                  _%$e170924%_
                                                  (_%gensubst170882%_
                                                   _%subst170919%_
                                                   _%id170906%_)))))))
                                (if (##structure-instance-of?
                                     _%mark170907170913%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e170911170931%_
                                            (##unchecked-structure-ref
                                             _%mark170907170913%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst170934%_ _%e170911170931%_))
                                      (_%K170910170928%_ _%subst170934%_))
                                    (_%E170909170916%_))))))
                      (if (pair? _%key170886170894%_)
                          (let ((_%hd170891170939%_
                                 (##car _%key170886170894%_))
                                (_%tl170892170941%_
                                 (##cdr _%key170886170894%_)))
                            (let* ((_%id170944%_ _%hd170891170939%_)
                                   (_%mark170946%_ _%tl170892170941%_))
                              (_%K170890170936%_ _%mark170946%_ _%id170944%_)))
                          (_%else170888170902%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx170879%_ _%phi170878%_)
           (_%subst!170883%_ _%key170875%_)
           _%val170876%_
           _%update-binding170881%_))))
    (define gx#core-bind!__0
      (lambda (_%key170974%_ _%val170975%_)
        (let* ((_%rebind?170977%_ false)
               (_%phi170979%_ (gx#current-expander-phi))
               (_%ctx170981%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key170974%_
           _%val170975%_
           _%rebind?170977%_
           _%phi170979%_
           _%ctx170981%_))))
    (define gx#core-bind!__1
      (lambda (_%key170983%_ _%val170984%_ _%rebind?170985%_)
        (let* ((_%phi170987%_ (gx#current-expander-phi))
               (_%ctx170989%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key170983%_
           _%val170984%_
           _%rebind?170985%_
           _%phi170987%_
           _%ctx170989%_))))
    (define gx#core-bind!__2
      (lambda (_%key170991%_ _%val170992%_ _%rebind?170993%_ _%phi170994%_)
        (let ((_%ctx170996%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key170991%_
           _%val170992%_
           _%rebind?170993%_
           _%phi170994%_
           _%ctx170996%_))))
    (define gx#core-bind!
      (lambda _g174730_
        (let ((_g174731_ (##length _g174730_)))
          (cond ((##fx= _g174731_ 2) (apply gx#core-bind!__0 _g174730_))
                ((##fx= _g174731_ 3) (apply gx#core-bind!__1 _g174730_))
                ((##fx= _g174731_ 4) (apply gx#core-bind!__2 _g174730_))
                ((##fx= _g174731_ 5) (apply gx#core-bind!__% _g174730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g174730_))))))
    (define gx#core-identifier-key
      (lambda (_%stx170806%_)
        (if (symbol? _%stx170806%_)
            (let* ((_%g170808170816%_ (gx#current-expander-marks))
                   (_%else170810170824%_ (lambda () _%stx170806%_))
                   (_%K170812170829%_
                    (lambda (_%hd170827%_) (cons _%stx170806%_ _%hd170827%_))))
              (if (pair? _%g170808170816%_)
                  (let* ((_%hd170813170832%_ (##car _%g170808170816%_))
                         (_%hd170835%_ _%hd170813170832%_))
                    (_%K170812170829%_ _%hd170835%_))
                  (_%else170810170824%_)))
            (if (gx#identifier? _%stx170806%_)
                (let* ((_%id170838%_ (gx#syntax-local-unwrap _%stx170806%_))
                       (_%eid170840%_ (gx#stx-e _%id170838%_))
                       (_%marks170842%_
                        (gx#stx-identifier-marks* _%id170838%_))
                       (_%marks170844170852%_ _%marks170842%_)
                       (_%else170846170860%_ (lambda () _%eid170840%_))
                       (_%K170848170865%_
                        (lambda (_%hd170863%_)
                          (cons _%eid170840%_ _%hd170863%_))))
                  (if (pair? _%marks170844170852%_)
                      (let* ((_%hd170849170868%_ (##car _%marks170844170852%_))
                             (_%hd170871%_ _%hd170849170868%_))
                        (_%K170848170865%_ _%hd170871%_))
                      (_%else170846170860%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx170806%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx170745%_ _%phi170746%_)
        (letrec ((_%make-phi170748%_
                  (lambda (_%super170804%_)
                    (let ((__obj174701
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj174701
                       (##gensym 'phi)
                       _%super170804%_)
                      __obj174701)))
                 (_%make-phi/up170749%_
                  (lambda (_%ctx170799%_ _%super170800%_)
                    (let ((_%ctx+1170802%_
                           (_%make-phi170748%_ _%super170800%_)))
                      (##unchecked-structure-set!
                       _%ctx170799%_
                       _%ctx+1170802%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1170802%_
                       _%ctx170799%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1170802%_)))
                 (_%make-phi/down170750%_
                  (lambda (_%ctx170794%_ _%super170795%_)
                    (let ((_%ctx-1170797%_
                           (_%make-phi170748%_ _%super170795%_)))
                      (##unchecked-structure-set!
                       _%ctx-1170797%_
                       _%ctx170794%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx170794%_
                       _%ctx-1170797%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1170797%_)))
                 (_%shift170751%_
                  (lambda (_%ctx170777%_
                           _%delta170778%_
                           _%make-delta-context170779%_
                           _%phi170780%_
                           _%K170781%_)
                    (let ((_%$e170783%_
                           (##unchecked-structure-ref
                            _%ctx170777%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e170783%_
                          ((lambda (_%super170786%_)
                             (let* ((_%super170788%_
                                     (_%K170781%_
                                      _%super170786%_
                                      _%delta170778%_))
                                    (_%ctx+d170790%_
                                     (_%make-delta-context170779%_
                                      _%ctx170777%_
                                      _%super170788%_)))
                               (_%K170781%_
                                _%ctx+d170790%_
                                (fx- _%phi170780%_ _%delta170778%_))))
                           _%$e170783%_)
                          (error '"Bad context" _%ctx170777%_))))))
          (let _%K170753%_ ((_%ctx170755%_ _%ctx170745%_)
                            (_%phi170756%_ _%phi170746%_))
            (if (fxzero? _%phi170756%_)
                _%ctx170755%_
                (if (##structure-instance-of? _%ctx170755%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi170756%_)
                        (let ((_%$e170760%_
                               (##unchecked-structure-ref
                                _%ctx170755%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e170760%_
                              ((lambda (_%g170762170764%_)
                                 (_%K170753%_
                                  _%g170762170764%_
                                  (##fx- _%phi170756%_ '1)))
                               _%$e170760%_)
                              (_%shift170751%_
                               _%ctx170755%_
                               '1
                               _%make-phi/up170749%_
                               _%phi170756%_
                               _%K170753%_)))
                        (let ((_%$e170768%_
                               (##unchecked-structure-ref
                                _%ctx170755%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e170768%_
                              ((lambda (_%g170770170772%_)
                                 (_%K170753%_
                                  _%g170770170772%_
                                  (##fx+ _%phi170756%_ '1)))
                               _%$e170768%_)
                              (_%shift170751%_
                               _%ctx170755%_
                               '-1
                               _%make-phi/down170750%_
                               _%phi170756%_
                               _%K170753%_))))
                    _%ctx170755%_))))))
    (define gx#core-context-get
      (lambda (_%ctx170742%_ _%key170743%_)
        (hash-get
         (##unchecked-structure-ref _%ctx170742%_ '2 '#f '#f)
         _%key170743%_)))
    (define gx#core-context-put!
      (lambda (_%ctx170738%_ _%key170739%_ _%val170740%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx170738%_ '2 '#f '#f)
         _%key170739%_
         _%val170740%_)
        _%val170740%_))
    (define gx#core-context-resolve
      (lambda (_%ctx170724%_ _%key170725%_)
        (let _%lp170727%_ ((_%ctx170729%_ _%ctx170724%_))
          (let ((_%$e170731%_
                 (gx#core-context-get _%ctx170729%_ _%key170725%_)))
            (if _%$e170731%_
                _%$e170731%_
                (let ((_%$e170734%_
                       (if (##structure-instance-of?
                            _%ctx170729%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx170729%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e170734%_ (_%lp170727%_ _%$e170734%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx170713%_ _%key170714%_ _%val170715%_ _%rebind170716%_)
        (let ((_%$e170718%_ (gx#core-context-get _%ctx170713%_ _%key170714%_)))
          (if _%$e170718%_
              ((lambda (_%xval170721%_)
                 (gx#core-context-put!
                  _%ctx170713%_
                  _%key170714%_
                  (_%rebind170716%_ _%xval170721%_)))
               _%$e170718%_)
              (gx#core-context-put!
               _%ctx170713%_
               _%key170714%_
               _%val170715%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx170688%_ _%stop?170689%_)
        (let _%lp170691%_ ((_%ctx170693%_ _%ctx170688%_))
          (if (_%stop?170689%_ _%ctx170693%_)
              _%ctx170693%_
              (if (##structure-instance-of? _%ctx170693%_ 'gx#phi-context::t)
                  (_%lp170691%_
                   (##unchecked-structure-ref _%ctx170693%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx170702%_ (gx#current-expander-context))
               (_%stop?170704%_ gx#top-context?))
          (gx#core-context-top__% _%ctx170702%_ _%stop?170704%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx170706%_)
        (let ((_%stop?170708%_ gx#top-context?))
          (gx#core-context-top__% _%ctx170706%_ _%stop?170708%_))))
    (define gx#core-context-top
      (lambda _g174732_
        (let ((_g174733_ (##length _g174732_)))
          (cond ((##fx= _g174733_ 0) (apply gx#core-context-top__0 _g174732_))
                ((##fx= _g174733_ 1) (apply gx#core-context-top__1 _g174732_))
                ((##fx= _g174733_ 2) (apply gx#core-context-top__% _g174732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g174732_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx170673%_)
        (let _%lp170675%_ ((_%ctx170677%_ _%ctx170673%_))
          (if (##structure-instance-of? _%ctx170677%_ 'gx#phi-context::t)
              (_%lp170675%_
               (##unchecked-structure-ref _%ctx170677%_ '3 '#f '#f))
              _%ctx170677%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx170683%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx170683%_))))
    (define gx#core-context-root
      (lambda _g174734_
        (let ((_g174735_ (##length _g174734_)))
          (cond ((##fx= _g174735_ 0) (apply gx#core-context-root__0 _g174734_))
                ((##fx= _g174735_ 1) (apply gx#core-context-root__% _g174734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g174734_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx170655%_ . _%ignore170656%_)
        (let ((_%$e170658%_ (gx#current-expander-allow-rebind?)))
          (if _%$e170658%_
              _%$e170658%_
              (if (##structure-instance-of? _%ctx170655%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx170655%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx170655%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx170665%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx170665%_))))
    (define gx#core-context-rebind?
      (lambda _g174736_
        (let ((_g174737_ (##length _g174736_)))
          (cond ((##fx= _g174737_ 0)
                 (apply gx#core-context-rebind?__0 _g174736_))
                ((##fx= _g174737_ 1)
                 (apply gx#core-context-rebind?__% _g174736_))
                ((##fx>= _g174737_ 1)
                 (apply gx#core-context-rebind?__% _g174736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g174736_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx170638%_)
        (let ((_%$e170640%_ (gx#core-context-top__1 _%ctx170638%_)))
          (if _%$e170640%_
              ((lambda (_%ctx170643%_)
                 (if (##structure-instance-of?
                      _%ctx170643%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx170643%_ '6 '#f '#f)
                     '#f))
               _%$e170640%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx170650%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx170650%_))))
    (define gx#core-context-namespace
      (lambda _g174738_
        (let ((_g174739_ (##length _g174738_)))
          (cond ((##fx= _g174739_ 0)
                 (apply gx#core-context-namespace__0 _g174738_))
                ((##fx= _g174739_ 1)
                 (apply gx#core-context-namespace__% _g174738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g174738_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind170624%_ _%is?170625%_)
        (if (##structure-direct-instance-of?
             _%bind170624%_
             'gx#syntax-binding::t)
            (_%is?170625%_
             (##unchecked-structure-ref _%bind170624%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind170630%_)
        (let ((_%is?170632%_ gx#expander?))
          (gx#expander-binding?__% _%bind170630%_ _%is?170632%_))))
    (define gx#expander-binding?
      (lambda _g174740_
        (let ((_g174741_ (##length _g174740_)))
          (cond ((##fx= _g174741_ 1) (apply gx#expander-binding?__0 _g174740_))
                ((##fx= _g174741_ 2) (apply gx#expander-binding?__% _g174740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g174740_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind170621%_)
        (gx#expander-binding?__% _%bind170621%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind170619%_)
        (gx#expander-binding?__% _%bind170619%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind170613%_)
        (letrec ((_%direct-special-form?170615%_
                  (lambda (_%obj170617%_)
                    (##structure-direct-instance-of?
                     _%obj170617%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind170613%_
           _%direct-special-form?170615%_))))
    (define gx#special-form-binding?
      (lambda (_%bind170611%_)
        (gx#expander-binding?__% _%bind170611%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind170602%_)
        (letrec ((_%feature?170604%_
                  (lambda (_%e170606%_)
                    (let ((_%$e170608%_
                           (##structure-instance-of?
                            _%e170606%_
                            'gx#feature-expander::t)))
                      (if _%$e170608%_
                          _%$e170608%_
                          (##structure-instance-of?
                           _%e170606%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind170602%_ _%feature?170604%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind170600%_)
        (gx#expander-binding?__% _%bind170600%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id170587%_ _%bound?170588%_)
        (if (gx#identifier? _%id170587%_)
            (_%bound?170588%_ (gx#resolve-identifier__0 _%id170587%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id170593%_)
        (let ((_%bound?170595%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id170593%_ _%bound?170595%_))))
    (define gx#core-bound-identifier?
      (lambda _g174742_
        (let ((_g174743_ (##length _g174742_)))
          (cond ((##fx= _g174743_ 1)
                 (apply gx#core-bound-identifier?__0 _g174742_))
                ((##fx= _g174743_ 2)
                 (apply gx#core-bound-identifier?__% _g174742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g174742_))))))
    (define gx#core-identifier=?
      (lambda (_%x170577%_ _%y170578%_)
        (letrec ((_%y=?170580%_
                  (lambda (_%xid170584%_)
                    ((if (list? _%y170578%_) memq eq?)
                     _%xid170584%_
                     _%y170578%_))))
          (let ((_%bind170582%_ (gx#resolve-identifier__0 _%x170577%_)))
            (if (##structure-instance-of? _%bind170582%_ 'gx#binding::t)
                (_%y=?170580%_
                 (##unchecked-structure-ref _%bind170582%_ '1 '#f '#f))
                (_%y=?170580%_ (gx#stx-e _%x170577%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e170575%_)
        (if (interned-symbol? _%e170575%_)
            (string-index__0 (symbol->string _%e170575%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx170528%_ _%src170529%_ _%ctx170530%_ _%marks170531%_)
        (if (##structure? _%stx170528%_)
            (let ((_%$e170533%_ (gx#sealed-syntax-unwrap _%stx170528%_)))
              (if _%$e170533%_
                  _%$e170533%_
                  (if (gx#identifier? _%stx170528%_)
                      (let ((_%id170537%_
                             (gx#stx-unwrap__% _%stx170528%_ _%marks170531%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id170537%_ '1 '#f '#f)
                         (let ((_%$e170539%_
                                (##unchecked-structure-ref
                                 _%id170537%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e170539%_ _%$e170539%_ _%src170529%_))
                         _%ctx170530%_
                         (##unchecked-structure-ref _%id170537%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx170528%_)
                       (let ((_%$e170543%_ (gx#stx-source _%stx170528%_)))
                         (if _%$e170543%_ _%$e170543%_ _%src170529%_))
                       _%ctx170530%_
                       (reverse _%marks170531%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx170528%_
             _%src170529%_
             _%ctx170530%_
             (reverse _%marks170531%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx170549%_)
        (let* ((_%src170551%_ '#f)
               (_%ctx170553%_ (gx#current-expander-context))
               (_%marks170555%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx170549%_
           _%src170551%_
           _%ctx170553%_
           _%marks170555%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx170557%_ _%src170558%_)
        (let* ((_%ctx170560%_ (gx#current-expander-context))
               (_%marks170562%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx170557%_
           _%src170558%_
           _%ctx170560%_
           _%marks170562%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx170564%_ _%src170565%_ _%ctx170566%_)
        (let ((_%marks170568%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx170564%_
           _%src170565%_
           _%ctx170566%_
           _%marks170568%_))))
    (define gx#core-quote-syntax
      (lambda _g174744_
        (let ((_g174745_ (##length _g174744_)))
          (cond ((##fx= _g174745_ 1) (apply gx#core-quote-syntax__0 _g174744_))
                ((##fx= _g174745_ 2) (apply gx#core-quote-syntax__1 _g174744_))
                ((##fx= _g174745_ 3) (apply gx#core-quote-syntax__2 _g174744_))
                ((##fx= _g174745_ 4) (apply gx#core-quote-syntax__% _g174744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g174744_))))))
    (define gx#core-cons
      (lambda (_%hd170524%_ _%tl170525%_)
        (cons (gx#core-quote-syntax__0 _%hd170524%_) _%tl170525%_)))
    (define gx#core-list
      (lambda (_%hd170521%_ . _%rest170522%_)
        (cons (gx#core-quote-syntax__0 _%hd170521%_) _%rest170522%_)))
    (define gx#core-cons*
      (lambda (_%hd170518%_ . _%rest170519%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd170518%_) _%rest170519%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path170487%_ _%rel170488%_)
        (let ((_%path170505%_ (gx#stx-e _%stx-path170487%_))
              (_%reldir170506%_
               (let _%lp170490%_ ((_%relsrc170492%_
                                   (let ((_%$e170502%_
                                          (gx#stx-source _%stx-path170487%_)))
                                     (if _%$e170502%_
                                         _%$e170502%_
                                         _%rel170488%_))))
                 (if (##structure-instance-of? _%relsrc170492%_ 'gerbil#AST::t)
                     (_%lp170490%_
                      (let ((_%$e170495%_ (gx#stx-source _%relsrc170492%_)))
                        (if _%$e170495%_
                            _%$e170495%_
                            (gx#stx-e _%relsrc170492%_))))
                     (if (source-location-path? _%relsrc170492%_)
                         (path-directory
                          (source-location-path _%relsrc170492%_))
                         (if (string? _%relsrc170492%_)
                             (path-directory _%relsrc170492%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path170505%_ (path-normalize _%reldir170506%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path170511%_)
        (let ((_%rel170513%_ '#f))
          (gx#core-resolve-path__% _%stx-path170511%_ _%rel170513%_))))
    (define gx#core-resolve-path
      (lambda _g174746_
        (let ((_g174747_ (##length _g174746_)))
          (cond ((##fx= _g174747_ 1) (apply gx#core-resolve-path__0 _g174746_))
                ((##fx= _g174747_ 2) (apply gx#core-resolve-path__% _g174746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g174746_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr170443%_ _%ctx170444%_)
        (let* ((_%repr170445170452%_ _%repr170443%_)
               (_%E170447170456%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr170445170452%_
                         '([phi . subs]))
                  '#!void))
               (_%K170448170464%_
                (lambda (_%subs170459%_ _%phi170460%_)
                  (let ((_%subst170462%_
                         (if (null? _%subs170459%_)
                             '#f
                             (list->hash-table-eq _%subs170459%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst170462%_
                     _%ctx170444%_
                     _%phi170460%_
                     '#f)))))
          (if (pair? _%repr170445170452%_)
              (let ((_%hd170449170467%_ (##car _%repr170445170452%_))
                    (_%tl170450170469%_ (##cdr _%repr170445170452%_)))
                (let* ((_%phi170472%_ _%hd170449170467%_)
                       (_%subs170474%_ _%tl170450170469%_))
                  (_%K170448170464%_ _%subs170474%_ _%phi170472%_)))
              (_%E170447170456%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr170479%_)
        (let ((_%ctx170481%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr170479%_ _%ctx170481%_))))
    (define gx#core-deserialize-mark
      (lambda _g174748_
        (let ((_g174749_ (##length _g174748_)))
          (cond ((##fx= _g174749_ 1)
                 (apply gx#core-deserialize-mark__0 _g174748_))
                ((##fx= _g174749_ 2)
                 (apply gx#core-deserialize-mark__% _g174748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g174748_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx170440%_)
        (gx#stx-rewrap _%stx170440%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx170438%_)
        (gx#stx-unwrap__% _%stx170438%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx170408%_)
        (let* ((_%g170409170417%_ (gx#current-expander-marks))
               (_%else170411170425%_ (lambda () _%stx170408%_))
               (_%K170413170430%_
                (lambda (_%hd170428%_)
                  (gx#stx-apply-mark _%stx170408%_ _%hd170428%_))))
          (if (pair? _%g170409170417%_)
              (let* ((_%hd170414170433%_ (##car _%g170409170417%_))
                     (_%hd170436%_ _%hd170414170433%_))
                (_%K170413170430%_ _%hd170436%_))
              (_%else170411170425%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym170406%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym170406%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx170391%_ _%E170392%_)
        (let ((_%bind170394%_ (gx#resolve-identifier__0 _%stx170391%_)))
          (if (##structure-direct-instance-of?
               _%bind170394%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind170394%_ '5 '#f '#f)
              (_%E170392%_ _%stx170391%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx170399%_)
        (let ((_%E170401%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx170399%_ _%E170401%_))))
    (define gx#syntax-local-e
      (lambda _g174750_
        (let ((_g174751_ (##length _g174750_)))
          (cond ((##fx= _g174751_ 1) (apply gx#syntax-local-e__0 _g174750_))
                ((##fx= _g174751_ 2) (apply gx#syntax-local-e__% _g174750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g174750_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx170375%_ _%E170376%_)
        (let ((_%e170378%_ (gx#syntax-local-e__% _%stx170375%_ _%E170376%_)))
          (if (##structure-instance-of? _%e170378%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e170378%_ '1 '#f '#f)
              _%e170378%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx170383%_)
        (let ((_%E170385%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx170383%_ _%E170385%_))))
    (define gx#syntax-local-value
      (lambda _g174752_
        (let ((_g174753_ (##length _g174752_)))
          (cond ((##fx= _g174753_ 1)
                 (apply gx#syntax-local-value__0 _g174752_))
                ((##fx= _g174753_ 2)
                 (apply gx#syntax-local-value__% _g174752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g174752_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx170372%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx170372%_)))))
