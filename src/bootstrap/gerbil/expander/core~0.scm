(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1755903076)
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
      (lambda _%$args125905%_
        (apply make-instance gx#expander-context::t _%$args125905%_)))
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
      (lambda _%$args125902%_
        (apply make-instance gx#root-context::t _%$args125902%_)))
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
      (lambda _%$args125899%_
        (apply make-instance gx#phi-context::t _%$args125899%_)))
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
      (lambda _%$args125896%_
        (apply make-instance gx#top-context::t _%$args125896%_)))
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
      (lambda _%$args125893%_
        (apply make-instance gx#module-context::t _%$args125893%_)))
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
      (lambda _%$args125890%_
        (apply make-instance gx#prelude-context::t _%$args125890%_)))
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
      (lambda _%$args125887%_
        (apply make-instance gx#local-context::t _%$args125887%_)))
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
      (lambda (_%self122793125858%_ _%id125860%_ _%super125861%_)
        (let* ((_%self125863%_ _%self122793125858%_)
               (_%self125865%_ _%self125863%_))
          (if (##fx< '3 (##structure-length _%self125865%_))
              (begin
                (##unchecked-structure-set!
                 _%self125865%_
                 _%id125860%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125865%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125865%_
                 _%super125861%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125865%_
                     '3
                     (##structure-length _%self125865%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self122793125878%_ _%id125879%_)
        (let ((_%super125881%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self122793125878%_
           _%id125879%_
           _%super125881%_))))
    (define gx#phi-context:::init!
      (lambda _g125947_
        (let ((_g125948_ (##length _g125947_)))
          (cond ((##fx= _g125948_ 2)
                 (apply gx#phi-context:::init!__0 _g125947_))
                ((##fx= _g125948_ 3)
                 (apply gx#phi-context:::init!__% _g125947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g125947_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self122794125709%_ _%super125711%_)
        (let* ((_%self125713%_ _%self122794125709%_)
               (_%self125715%_ _%self125713%_))
          (if (##fx< '3 (##structure-length _%self125715%_))
              (begin
                (##unchecked-structure-set!
                 _%self125715%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125715%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self125715%_
                 _%super125711%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self125715%_
                     '3
                     (##structure-length _%self125715%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self122794125728%_)
        (let ((_%super125730%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self122794125728%_ _%super125730%_))))
    (define gx#local-context:::init!
      (lambda _g125949_
        (let ((_g125950_ (##length _g125949_)))
          (cond ((##fx= _g125950_ 1)
                 (apply gx#local-context:::init!__0 _g125949_))
                ((##fx= _g125950_ 2)
                 (apply gx#local-context:::init!__% _g125949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g125949_))))))
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
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args125583%_
        (apply make-instance gx#binding::t _%$args125583%_)))
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
      (lambda _%$args125580%_
        (apply make-instance gx#runtime-binding::t _%$args125580%_)))
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
      (lambda _%$args125577%_
        (apply make-instance gx#local-binding::t _%$args125577%_)))
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
      (lambda _%$args125574%_
        (apply make-instance gx#top-binding::t _%$args125574%_)))
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
      (lambda _%$args125571%_
        (apply make-instance gx#module-binding::t _%$args125571%_)))
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
      (lambda _%$args125568%_
        (apply make-instance gx#extern-binding::t _%$args125568%_)))
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
      (lambda _%$args125565%_
        (apply make-instance gx#syntax-binding::t _%$args125565%_)))
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
      (lambda _%$args125562%_
        (apply make-instance gx#import-binding::t _%$args125562%_)))
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
      (lambda _%$args125559%_
        (apply make-instance gx#alias-binding::t _%$args125559%_)))
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
      (lambda _%$args125556%_
        (apply make-instance gx#expander::t _%$args125556%_)))
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
      (lambda _%$args125553%_
        (apply make-instance gx#core-expander::t _%$args125553%_)))
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
      (lambda _%$args125550%_
        (apply make-instance gx#expression-form::t _%$args125550%_)))
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
      (lambda _%$args125547%_
        (apply make-instance gx#special-form::t _%$args125547%_)))
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
      (lambda _%$args125544%_
        (apply make-instance gx#definition-form::t _%$args125544%_)))
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
      (lambda _%$args125541%_
        (apply make-instance gx#top-special-form::t _%$args125541%_)))
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
      (lambda _%$args125538%_
        (apply make-instance gx#module-special-form::t _%$args125538%_)))
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
      (lambda _%$args125535%_
        (apply make-instance gx#feature-expander::t _%$args125535%_)))
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
      (lambda _%$args125532%_
        (apply make-instance gx#private-feature-expander::t _%$args125532%_)))
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
      (lambda _%$args125529%_
        (apply make-instance gx#reserved-expander::t _%$args125529%_)))
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
      (lambda _%$args125526%_
        (apply make-instance gx#macro-expander::t _%$args125526%_)))
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
      (lambda _%$args125523%_
        (apply make-instance gx#rename-macro-expander::t _%$args125523%_)))
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
      (lambda _%$args125520%_
        (apply make-instance gx#user-expander::t _%$args125520%_)))
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
      (lambda _%$args125517%_
        (apply make-instance gx#expander-mark::t _%$args125517%_)))
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
      (lambda (_%ctx125501%_
               _%message125502%_
               _%stx125503%_
               .
               _%details125504%_)
        (let ((_%ctx125515%_
               (let ((_%$e125506%_ _%ctx125501%_))
                 (if _%$e125506%_
                     _%$e125506%_
                     (let ((_%$e125509%_ (gx#core-context-top__0)))
                       (if _%$e125509%_
                           ((lambda (_%ctx125512%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx125512%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e125509%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message125502%_
                  (cons _%stx125503%_ _%details125504%_)
                  _%ctx125515%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx125488%_ _%expression?125489%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx125488%_ _%expression?125489%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx125494%_)
        (let ((_%expression?125496%_ '#f))
          (gx#eval-syntax__% _%stx125494%_ _%expression?125496%_))))
    (define gx#eval-syntax
      (lambda _g125951_
        (let ((_g125952_ (##length _g125951_)))
          (cond ((##fx= _g125952_ 1) (apply gx#eval-syntax__0 _g125951_))
                ((##fx= _g125952_ 2) (apply gx#eval-syntax__% _g125951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g125951_))))))
    (define gx#eval-syntax*
      (lambda (_%stx125485%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx125485%_))))
    (define gx#core-expand__%
      (lambda (_%stx125472%_ _%expression?125473%_)
        (if _%expression?125473%_
            (gx#core-expand-expression _%stx125472%_)
            (gx#core-expand-top _%stx125472%_))))
    (define gx#core-expand__0
      (lambda (_%stx125478%_)
        (let ((_%expression?125480%_ '#f))
          (gx#core-expand__% _%stx125478%_ _%expression?125480%_))))
    (define gx#core-expand
      (lambda _g125953_
        (let ((_g125954_ (##length _g125953_)))
          (cond ((##fx= _g125954_ 1) (apply gx#core-expand__0 _g125953_))
                ((##fx= _g125954_ 2) (apply gx#core-expand__% _g125953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g125953_))))))
    (define gx#core-expand-top
      (lambda (_%stx125439%_)
        (let* ((_%stx125441%_ (gx#core-expand*__0 _%stx125439%_))
               (_%e125442125449%_ _%stx125441%_)
               (_%E125444125453%_
                (lambda () (gx#core-expand-expression _%stx125441%_)))
               (_%E125443125467%_
                (lambda ()
                  (if (gx#stx-pair? _%e125442125449%_)
                      (let ((_%e125445125457%_
                             (gx#syntax-e _%e125442125449%_)))
                        (let ((_%hd125446125460%_ (##car _%e125445125457%_))
                              (_%tl125447125462%_ (##cdr _%e125445125457%_)))
                          (let ((_%form125465%_ _%hd125446125460%_))
                            (if (gx#core-bound-identifier?__0 _%form125465%_)
                                _%stx125441%_
                                (_%E125444125453%_)))))
                      (_%E125444125453%_)))))
          (_%E125443125467%_))))
    (define gx#core-expand-expression
      (lambda (_%stx125371%_)
        (letrec ((_%sealed-expression?125373%_
                  (lambda (_%hd125409%_)
                    (if (gx#sealed-syntax? _%hd125409%_)
                        (let* ((_%e125410125417%_ _%hd125409%_)
                               (_%E125412125421%_ (lambda () '#f))
                               (_%E125411125435%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e125410125417%_)
                                      (let ((_%e125413125425%_
                                             (gx#syntax-e _%e125410125417%_)))
                                        (let ((_%hd125414125428%_
                                               (##car _%e125413125425%_))
                                              (_%tl125415125430%_
                                               (##cdr _%e125413125425%_)))
                                          (let ((_%form125433%_
                                                 _%hd125414125428%_))
                                            (gx#core-bound-identifier?__%
                                             _%form125433%_
                                             gx#expression-form-binding?))))
                                      (_%E125412125421%_)))))
                          (_%E125411125435%_))
                        '#f)))
                 (_%illegal-expression125374%_
                  (lambda (_%hd125406%_ . _%_125407%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx125371%_
                     _%hd125406%_)))
                 (_%expand-e125375%_
                  (lambda (_%form125398%_ _%hd125399%_)
                    (let ((_%bind125401%_
                           (if (##structure-instance-of?
                                _%form125398%_
                                'gx#binding::t)
                               _%form125398%_
                               (gx#resolve-identifier__0 _%form125398%_))))
                      (if (gx#core-expander-binding? _%bind125401%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind125401%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd125399%_
                            (gx#stx-source _%stx125371%_)))
                          (if (##structure-direct-instance-of?
                               _%bind125401%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind125401%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd125399%_
                                 (gx#stx-source _%stx125371%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx125371%_
                               _%form125398%_)))))))
          (let ((_%hd125377%_ (gx#core-expand-head _%stx125371%_)))
            (if (_%sealed-expression?125373%_ _%hd125377%_)
                _%hd125377%_
                (if (gx#stx-pair? _%hd125377%_)
                    (let* ((_%form125381%_ (gx#stx-car _%hd125377%_))
                           (_%bind125383%_
                            (if (gx#identifier? _%form125381%_)
                                (gx#resolve-identifier__0 _%form125381%_)
                                '#f)))
                      (if (or (not _%bind125383%_)
                              (not (gx#core-expander-binding? _%bind125383%_)))
                          (_%expand-e125375%_
                           '%%app
                           (cons '%%app _%hd125377%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind125383%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd125377%_
                               _%illegal-expression125374%_)
                              (if (gx#expression-form-binding? _%bind125383%_)
                                  (_%expand-e125375%_
                                   _%bind125383%_
                                   _%hd125377%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind125383%_)
                                      (gx#core-expand-expression
                                       (_%expand-e125375%_
                                        _%bind125383%_
                                        _%hd125377%_))
                                      (_%illegal-expression125374%_
                                       _%hd125377%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd125377%_)
                        (_%illegal-expression125374%_ _%hd125377%_)
                        (if (gx#identifier? _%hd125377%_)
                            (_%expand-e125375%_
                             '%%ref
                             (cons '%%ref (cons _%hd125377%_ '())))
                            (if (gx#stx-datum? _%hd125377%_)
                                (_%expand-e125375%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd125377%_ '())))
                                (_%illegal-expression125374%_
                                 _%hd125377%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx125366%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx125369%_ (gx#core-expand-expression _%stx125366%_)))
             (values _%stx125369%_ (gx#eval-syntax* _%stx125369%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx125347%_ _%stop?125348%_)
        (let _%lp125350%_ ((_%stx125352%_ _%stx125347%_))
          (if (_%stop?125348%_ _%stx125352%_)
              _%stx125352%_
              (let ((_%rstx125354%_ (gx#core-expand1 _%stx125352%_)))
                (if (eq? _%stx125352%_ _%rstx125354%_)
                    _%stx125352%_
                    (_%lp125350%_ _%rstx125354%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx125359%_)
        (let ((_%stop?125361%_ false))
          (gx#core-expand*__% _%stx125359%_ _%stop?125361%_))))
    (define gx#core-expand*
      (lambda _g125955_
        (let ((_g125956_ (##length _g125955_)))
          (cond ((##fx= _g125956_ 1) (apply gx#core-expand*__0 _g125955_))
                ((##fx= _g125956_ 2) (apply gx#core-expand*__% _g125955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g125955_))))))
    (define gx#core-expand1
      (lambda (_%stx125299%_)
        (letrec ((_%step125301%_
                  (lambda (_%hd125338%_)
                    (let ((_%bind125340%_
                           (gx#resolve-identifier__0 _%hd125338%_)))
                      (if (##structure-instance-of?
                           _%bind125340%_
                           'gx#runtime-binding::t)
                          _%stx125299%_
                          (if (##structure-direct-instance-of?
                               _%bind125340%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind125340%_
                                '4
                                '#f
                                '#f)
                               _%stx125299%_)
                              (if (not _%bind125340%_)
                                  _%stx125299%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx125299%_))))))))
          (let* ((_%e125302125310%_ _%stx125299%_)
                 (_%E125308125314%_ (lambda () _%stx125299%_))
                 (_%E125304125320%_
                  (lambda ()
                    (let ((_%hd125318%_ _%e125302125310%_))
                      (if (gx#identifier? _%hd125318%_)
                          (_%step125301%_ _%hd125318%_)
                          (_%E125308125314%_)))))
                 (_%E125303125334%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125302125310%_)
                        (let ((_%e125305125324%_
                               (gx#syntax-e _%e125302125310%_)))
                          (let ((_%hd125306125327%_ (##car _%e125305125324%_))
                                (_%tl125307125329%_ (##cdr _%e125305125324%_)))
                            (let ((_%hd125332%_ _%hd125306125327%_))
                              (if (gx#identifier? _%hd125332%_)
                                  (_%step125301%_ _%hd125332%_)
                                  (_%E125304125320%_)))))
                        (_%E125304125320%_)))))
            (_%E125303125334%_)))))
    (define gx#core-expand-head
      (lambda (_%stx125265%_)
        (letrec ((_%stop?125267%_
                  (lambda (_%stx125269%_)
                    (let* ((_%e125270125277%_ _%stx125269%_)
                           (_%E125272125281%_ (lambda () '#f))
                           (_%E125271125295%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125270125277%_)
                                  (let ((_%e125273125285%_
                                         (gx#syntax-e _%e125270125277%_)))
                                    (let ((_%hd125274125288%_
                                           (##car _%e125273125285%_))
                                          (_%tl125275125290%_
                                           (##cdr _%e125273125285%_)))
                                      (let ((_%hd125293%_ _%hd125274125288%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd125293%_))))
                                  (_%E125272125281%_)))))
                      (_%E125271125295%_)))))
          (gx#core-expand*__% _%stx125265%_ _%stop?125267%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx125071%_
               _%expand-special125072%_
               _%begin-form125073%_
               _%expand-e125074%_)
        (letrec ((_%expand-splice125076%_
                  (lambda (_%hd125239%_
                           _%body125240%_
                           _%rest125241%_
                           _%r125242%_)
                    (if (gx#stx-list? _%body125240%_)
                        (_%K125080%_
                         (gx#stx-foldr cons _%rest125241%_ _%body125240%_)
                         _%r125242%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx125071%_
                         _%hd125239%_))))
                 (_%expand-cond-expand125077%_
                  (lambda (_%hd125235%_ _%rest125236%_ _%r125237%_)
                    (_%K125080%_
                     (cons (gx#core-expand-cond-expand% _%hd125235%_)
                           _%rest125236%_)
                     _%r125237%_)))
                 (_%expand-include125078%_
                  (lambda (_%hd125184%_ _%rest125185%_ _%r125186%_)
                    (let* ((_%e125187125197%_ _%hd125184%_)
                           (_%E125189125201%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125187125197%_)))
                           (_%E125188125231%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125187125197%_)
                                  (let ((_%e125190125205%_
                                         (gx#syntax-e _%e125187125197%_)))
                                    (let ((_%hd125191125208%_
                                           (##car _%e125190125205%_))
                                          (_%tl125192125210%_
                                           (##cdr _%e125190125205%_)))
                                      (if (gx#stx-pair? _%tl125192125210%_)
                                          (let ((_%e125193125213%_
                                                 (gx#syntax-e
                                                  _%tl125192125210%_)))
                                            (let ((_%hd125194125216%_
                                                   (##car _%e125193125213%_))
                                                  (_%tl125195125218%_
                                                   (##cdr _%e125193125213%_)))
                                              (let ((_%path125221%_
                                                     _%hd125194125216%_))
                                                (if (gx#stx-null?
                                                     _%tl125195125218%_)
                                                    (if (gx#stx-string?
                                                         _%path125221%_)
                                                        (let* ((_%rpath125223%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path125221%_
                         (gx#stx-source _%hd125184%_)))
                       (_%block125225%_
                        (gx#core-expand-include%__%
                         _%hd125184%_
                         _%rpath125223%_))
                       (_%rbody125228%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block125225%_
                            _%expand-special125072%_
                            '#f
                            _%expand-e125074%_))
                         gx#current-expander-path
                         (cons _%rpath125223%_ (gx#current-expander-path)))))
                  (_%K125080%_
                   _%rest125185%_
                   (__foldr1 cons _%r125186%_ _%rbody125228%_)))
                (_%E125189125201%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E125189125201%_)))))
                                          (_%E125189125201%_))))
                                  (_%E125189125201%_)))))
                      (_%E125188125231%_))))
                 (_%expand-expression125079%_
                  (lambda (_%hd125180%_ _%rest125181%_ _%r125182%_)
                    (_%K125080%_
                     _%rest125181%_
                     (cons (_%expand-e125074%_ _%hd125180%_) _%r125182%_))))
                 (_%K125080%_
                  (lambda (_%rest125110%_ _%r125111%_)
                    (let* ((_%e125112125119%_ _%rest125110%_)
                           (_%E125114125123%_
                            (lambda ()
                              (if _%begin-form125073%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form125073%_
                                    (reverse _%r125111%_))
                                   (gx#stx-source _%stx125071%_))
                                  _%r125111%_)))
                           (_%E125113125176%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125112125119%_)
                                  (let ((_%e125115125127%_
                                         (gx#syntax-e _%e125112125119%_)))
                                    (let ((_%hd125116125130%_
                                           (##car _%e125115125127%_))
                                          (_%tl125117125132%_
                                           (##cdr _%e125115125127%_)))
                                      (let* ((_%hd125135%_ _%hd125116125130%_)
                                             (_%rest125137%_
                                              _%tl125117125132%_)
                                             (_%hd125139%_
                                              (gx#core-expand-head
                                               _%hd125135%_))
                                             (_%e125140125147%_ _%hd125139%_)
                                             (_%E125142125151%_
                                              (lambda ()
                                                (_%expand-expression125079%_
                                                 _%hd125139%_
                                                 _%rest125137%_
                                                 _%r125111%_)))
                                             (_%E125141125172%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e125140125147%_)
                                                    (let ((_%e125143125155%_
                                                           (gx#syntax-e
                                                            _%e125140125147%_)))
                                                      (let ((_%hd125144125158%_
                                                             (##car _%e125143125155%_))
                                                            (_%tl125145125160%_
                                                             (##cdr _%e125143125155%_)))
                                                        (let* ((_%form125163%_
                                                                _%hd125144125158%_)
                                                               (_%body125165%_
                                                                _%tl125145125160%_)
                                                               (_%bind125167%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form125163%_)
                            (gx#resolve-identifier__0 _%form125163%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind125167%_)
                      (let ((_%$e125169%_
                             (##unchecked-structure-ref
                              _%bind125167%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e125169%_)
                            (_%expand-splice125076%_
                             _%hd125139%_
                             _%body125165%_
                             _%rest125137%_
                             _%r125111%_)
                            (if (eq? '%#cond-expand _%$e125169%_)
                                (_%expand-cond-expand125077%_
                                 _%hd125139%_
                                 _%rest125137%_
                                 _%r125111%_)
                                (if (eq? '%#include _%$e125169%_)
                                    (_%expand-include125078%_
                                     _%hd125139%_
                                     _%rest125137%_
                                     _%r125111%_)
                                    (_%expand-special125072%_
                                     _%hd125139%_
                                     _%K125080%_
                                     _%rest125137%_
                                     _%r125111%_)))))
                      (_%expand-expression125079%_
                       _%hd125139%_
                       _%rest125137%_
                       _%r125111%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E125142125151%_)))))
                                        (_%E125141125172%_))))
                                  (_%E125114125123%_)))))
                      (_%E125113125176%_)))))
          (let* ((_%e125081125088%_ _%stx125071%_)
                 (_%E125083125092%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e125081125088%_)))
                 (_%E125082125106%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125081125088%_)
                        (let ((_%e125084125096%_
                               (gx#syntax-e _%e125081125088%_)))
                          (let ((_%hd125085125099%_ (##car _%e125084125096%_))
                                (_%tl125086125101%_ (##cdr _%e125084125096%_)))
                            (let ((_%body125104%_ _%tl125086125101%_))
                              (if (gx#stx-list? _%body125104%_)
                                  (_%K125080%_ _%body125104%_ '())
                                  (_%E125083125092%_)))))
                        (_%E125083125092%_)))))
            (_%E125082125106%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx125247%_ _%expand-special125248%_)
        (let* ((_%begin-form125250%_ '%#begin)
               (_%expand-e125252%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx125247%_
           _%expand-special125248%_
           _%begin-form125250%_
           _%expand-e125252%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx125254%_ _%expand-special125255%_ _%begin-form125256%_)
        (let ((_%expand-e125258%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx125254%_
           _%expand-special125255%_
           _%begin-form125256%_
           _%expand-e125258%_))))
    (define gx#core-expand-block
      (lambda _g125957_
        (let ((_g125958_ (##length _g125957_)))
          (cond ((##fx= _g125958_ 2) (apply gx#core-expand-block__0 _g125957_))
                ((##fx= _g125958_ 3) (apply gx#core-expand-block__1 _g125957_))
                ((##fx= _g125958_ 4) (apply gx#core-expand-block__% _g125957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g125957_))))))
    (define gx#core-expand-block*
      (lambda (_%stx125019%_ _%expand-special125020%_)
        (let* ((_%g125021125032%_
                (gx#core-expand-block__1
                 _%stx125019%_
                 _%expand-special125020%_
                 '#f))
               (_%E125025125036%_
                (lambda ()
                  (error '"No clause matching"
                         _%g125021125032%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K125030125067%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx125019%_)))
                (_%K125027125053%_ (lambda (_%expr125051%_) _%expr125051%_))
                (_%K125026125042%_
                 (lambda (_%body125040%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body125040%_))
                    (gx#stx-source _%stx125019%_)))))
            (let ((_%try-match125023125063%_
                   (lambda ()
                     (if (pair? _%g125021125032%_)
                         (let ((_%tl125029125058%_ (##cdr _%g125021125032%_))
                               (_%hd125028125056%_ (##car _%g125021125032%_)))
                           (if (null? _%tl125029125058%_)
                               (let ((_%expr125061%_ _%hd125028125056%_))
                                 (_%K125027125053%_ _%expr125061%_))
                               (let ((_%body125045%_ _%g125021125032%_))
                                 (_%K125026125042%_ _%body125045%_))))
                         (let ((_%body125045%_ _%g125021125032%_))
                           (_%K125026125042%_ _%body125045%_))))))
              (if (null? _%g125021125032%_)
                  (_%K125030125067%_)
                  (_%try-match125023125063%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx124844%_)
        (letrec ((_%satisfied?124846%_
                  (lambda (_%condition124947%_)
                    (let* ((_%e124948124963%_ _%condition124947%_)
                           (_%E124958124967%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124948124963%_)))
                           (_%E124951124986%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124948124963%_)
                                  (let ((_%e124959124971%_
                                         (gx#syntax-e _%e124948124963%_)))
                                    (let ((_%hd124960124974%_
                                           (##car _%e124959124971%_))
                                          (_%tl124961124976%_
                                           (##cdr _%e124959124971%_)))
                                      (let* ((_%combinator124979%_
                                              _%hd124960124974%_)
                                             (_%body124981%_
                                              _%tl124961124976%_))
                                        (if (gx#stx-list? _%body124981%_)
                                            (let ((_%$e124983%_
                                                   (gx#stx-e
                                                    _%combinator124979%_)))
                                              (if (eq? 'not _%$e124983%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?124846%_
                                                        _%body124981%_))
                                                  (if (eq? 'and _%$e124983%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?124846%_
                                                       _%body124981%_)
                                                      (if (eq? 'or
                                                               _%$e124983%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?124846%_
                                                           _%body124981%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e124983%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body124981%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx124844%_
                       _%combinator124979%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E124958124967%_)))))
                                  (_%E124958124967%_))))
                           (_%E124950125009%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124948124963%_)
                                  (let ((_%e124952124990%_
                                         (gx#syntax-e _%e124948124963%_)))
                                    (let ((_%hd124953124993%_
                                           (##car _%e124952124990%_))
                                          (_%tl124954124995%_
                                           (##cdr _%e124952124990%_)))
                                      (if (and (gx#identifier?
                                                _%hd124953124993%_)
                                               (gx#core-identifier=?
                                                _%hd124953124993%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl124954124995%_)
                                              (let ((_%e124955124998%_
                                                     (gx#syntax-e
                                                      _%tl124954124995%_)))
                                                (let ((_%hd124956125001%_
                                                       (##car _%e124955124998%_))
                                                      (_%tl124957125003%_
                                                       (##cdr _%e124955124998%_)))
                                                  (let ((_%expr125006%_
                                                         _%hd124956125001%_))
                                                    (if (gx#stx-null?
                                                         _%tl124957125003%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr125006%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E124951124986%_)))))
                                              (_%E124951124986%_))
                                          (_%E124951124986%_))))
                                  (_%E124951124986%_))))
                           (_%E124949125015%_
                            (lambda ()
                              (let ((_%id125013%_ _%e124948124963%_))
                                (if (gx#identifier? _%id125013%_)
                                    (gx#core-bound-identifier?__%
                                     _%id125013%_
                                     gx#feature-binding?)
                                    (_%E124950125009%_))))))
                      (_%E124949125015%_))))
                 (_%loop124847%_
                  (lambda (_%rest124877%_)
                    (let* ((_%e124878124886%_ _%rest124877%_)
                           (_%E124884124890%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124878124886%_)))
                           (_%E124880124894%_
                            (lambda ()
                              (if (gx#stx-null? _%e124878124886%_)
                                  '()
                                  (_%E124884124890%_))))
                           (_%E124879124943%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124878124886%_)
                                  (let ((_%e124881124898%_
                                         (gx#syntax-e _%e124878124886%_)))
                                    (let ((_%hd124882124901%_
                                           (##car _%e124881124898%_))
                                          (_%tl124883124903%_
                                           (##cdr _%e124881124898%_)))
                                      (let* ((_%hd124906%_ _%hd124882124901%_)
                                             (_%rest124908%_
                                              _%tl124883124903%_)
                                             (_%e124909124916%_ _%hd124906%_)
                                             (_%E124911124920%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e124909124916%_)))
                                             (_%E124910124939%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e124909124916%_)
                                                    (let ((_%e124912124924%_
                                                           (gx#syntax-e
                                                            _%e124909124916%_)))
                                                      (let ((_%hd124913124927%_
                                                             (##car _%e124912124924%_))
                                                            (_%tl124914124929%_
                                                             (##cdr _%e124912124924%_)))
                                                        (let* ((_%condition124932%_
                                                                _%hd124913124927%_)
                                                               (_%body124934%_
                                                                _%tl124914124929%_))
                                                          (if (gx#stx-eq?
                                                               _%condition124932%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest124908%_)
                          _%body124934%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx124844%_
                           _%hd124906%_))
                      (if (_%satisfied?124846%_ _%condition124932%_)
                          _%body124934%_
                          (_%loop124847%_ _%rest124908%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E124911124920%_)))))
                                        (_%E124910124939%_))))
                                  (_%E124880124894%_)))))
                      (_%E124879124943%_)))))
          (let* ((_%e124848124855%_ _%stx124844%_)
                 (_%E124850124859%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124848124855%_)))
                 (_%E124849124873%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124848124855%_)
                        (let ((_%e124851124863%_
                               (gx#syntax-e _%e124848124855%_)))
                          (let ((_%hd124852124866%_ (##car _%e124851124863%_))
                                (_%tl124853124868%_ (##cdr _%e124851124863%_)))
                            (let ((_%clauses124871%_ _%tl124853124868%_))
                              (if (gx#stx-list? _%clauses124871%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop124847%_ _%clauses124871%_))
                                  (_%E124850124859%_)))))
                        (_%E124850124859%_)))))
            (_%E124849124873%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx124787%_ _%rpath124788%_)
        (let* ((_%e124789124799%_ _%stx124787%_)
               (_%E124791124803%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124789124799%_)))
               (_%E124790124830%_
                (lambda ()
                  (if (gx#stx-pair? _%e124789124799%_)
                      (let ((_%e124792124807%_
                             (gx#syntax-e _%e124789124799%_)))
                        (let ((_%hd124793124810%_ (##car _%e124792124807%_))
                              (_%tl124794124812%_ (##cdr _%e124792124807%_)))
                          (if (gx#stx-pair? _%tl124794124812%_)
                              (let ((_%e124795124815%_
                                     (gx#syntax-e _%tl124794124812%_)))
                                (let ((_%hd124796124818%_
                                       (##car _%e124795124815%_))
                                      (_%tl124797124820%_
                                       (##cdr _%e124795124815%_)))
                                  (let ((_%path124823%_ _%hd124796124818%_))
                                    (if (gx#stx-null? _%tl124797124820%_)
                                        (if (gx#stx-string? _%path124823%_)
                                            (let ((_%rpath124828%_
                                                   (let ((_%$e124825%_
                                                          _%rpath124788%_))
                                                     (if _%$e124825%_
                                                         _%$e124825%_
                                                         (gx#core-resolve-path__%
                                                          _%path124823%_
                                                          (gx#stx-source
                                                           _%stx124787%_))))))
                                              (if (member _%rpath124828%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx124787%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath124828%_))
                                                    (gx#stx-source
                                                     _%stx124787%_)))))
                                            (_%E124791124803%_))
                                        (_%E124791124803%_)))))
                              (_%E124791124803%_))))
                      (_%E124791124803%_)))))
          (_%E124790124830%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx124837%_)
        (let ((_%rpath124839%_ '#f))
          (gx#core-expand-include%__% _%stx124837%_ _%rpath124839%_))))
    (define gx#core-expand-include%
      (lambda _g125959_
        (let ((_g125960_ (##length _g125959_)))
          (cond ((##fx= _g125960_ 1)
                 (apply gx#core-expand-include%__0 _g125959_))
                ((##fx= _g125960_ 2)
                 (apply gx#core-expand-include%__% _g125959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g125959_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K124753%_ _%stx124754%_ _%method124755%_)
        (if (procedure? _%K124753%_)
            (let ((_%$e124758%_ (gx#stx-source _%stx124754%_)))
              (if _%$e124758%_
                  ((lambda (_%g124760124762%_)
                     (gx#stx-wrap-source
                      (_%K124753%_ _%stx124754%_)
                      _%g124760124762%_))
                   _%$e124758%_)
                  (_%K124753%_ _%stx124754%_)))
            (let ((_%$e124766%_
                   (bound-method-ref _%K124753%_ _%method124755%_)))
              (if _%$e124766%_
                  ((lambda (_%g124768124770%_)
                     (gx#core-apply-expander__%
                      _%g124768124770%_
                      _%stx124754%_
                      _%method124755%_))
                   _%$e124766%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx124754%_
                   _%method124755%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K124777%_ _%stx124778%_)
        (let ((_%method124780%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K124777%_
           _%stx124778%_
           _%method124780%_))))
    (define gx#core-apply-expander
      (lambda _g125961_
        (let ((_g125962_ (##length _g125961_)))
          (cond ((##fx= _g125962_ 2)
                 (apply gx#core-apply-expander__0 _g125961_))
                ((##fx= _g125962_ 3)
                 (apply gx#core-apply-expander__% _g125961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g125961_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self122795124736%_ _%stx124738%_)
        (let* ((_%self124740%_ _%self122795124736%_)
               (_%self124742%_ _%self124740%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx124738%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self122796124576%_ _%stx124578%_)
        (let* ((_%self124580%_ _%self122796124576%_)
               (_%self124582%_ _%self124580%_)
               (_%self124591124597%_ _%self124582%_)
               (_%E124593124601%_
                (lambda ()
                  (error '"No clause matching"
                         _%self124591124597%_
                         '((macro-expander K)))
                  '#!void))
               (_%K124594124606%_
                (lambda (_%K124604%_)
                  (gx#core-apply-expander__0 _%K124604%_ _%stx124578%_)))
               (_%e124595124609%_
                (##unchecked-structure-ref _%self124591124597%_ '1 '#f '#f))
               (_%K124612%_ _%e124595124609%_))
          (_%K124594124606%_ _%K124612%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self122797124416%_ _%stx124418%_)
        (let* ((_%self124420%_ _%self122797124416%_)
               (_%self124422%_ _%self124420%_))
          (if (gx#sealed-syntax? _%stx124418%_)
              _%stx124418%_
              (let* ((_%self124431124437%_ _%self124422%_)
                     (_%E124433124441%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self124431124437%_
                               '((core-expander K)))
                        '#!void))
                     (_%K124434124446%_
                      (lambda (_%K124444%_)
                        (gx#core-apply-expander__0 _%K124444%_ _%stx124418%_)))
                     (_%e124435124449%_
                      (##unchecked-structure-ref
                       _%self124431124437%_
                       '1
                       '#f
                       '#f))
                     (_%K124452%_ _%e124435124449%_))
                (_%K124434124446%_ _%K124452%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self122798124265%_ _%stx124267%_ _%top?124268%_)
        (let* ((_%self124270%_ _%self122798124265%_)
               (_%self124272%_ _%self124270%_))
          (if (_%top?124268%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self124272%_
               _%stx124267%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx124267%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self122798124285%_ _%stx124286%_)
        (let ((_%top?124288%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self122798124285%_
           _%stx124286%_
           _%top?124288%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g125963_
        (let ((_g125964_ (##length _g125963_)))
          (cond ((##fx= _g125964_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g125963_))
                ((##fx= _g125964_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g125963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g125963_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self122799124126%_ _%stx124128%_)
        (let* ((_%self124130%_ _%self122799124126%_)
               (_%self124132%_ _%self124130%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self124132%_
           _%stx124128%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self122800123938%_ _%stx123940%_)
        (let* ((_%self123942%_ _%self122800123938%_)
               (_%self123944%_ _%self123942%_)
               (_%self123953123959%_ _%self123944%_)
               (_%E123955123963%_
                (lambda ()
                  (error '"No clause matching"
                         _%self123953123959%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K123956123996%_
                (lambda (_%id123966%_)
                  (let* ((_%e123967123974%_ _%stx123940%_)
                         (_%E123969123978%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e123967123974%_)))
                         (_%E123968123992%_
                          (lambda ()
                            (if (gx#stx-pair? _%e123967123974%_)
                                (let ((_%e123970123982%_
                                       (gx#syntax-e _%e123967123974%_)))
                                  (let ((_%hd123971123985%_
                                         (##car _%e123970123982%_))
                                        (_%tl123972123987%_
                                         (##cdr _%e123970123982%_)))
                                    (let ((_%body123990%_ _%tl123972123987%_))
                                      (gx#core-cons
                                       _%id123966%_
                                       _%body123990%_))))
                                (_%E123969123978%_)))))
                    (_%E123968123992%_))))
               (_%e123957123999%_
                (##unchecked-structure-ref _%self123953123959%_ '1 '#f '#f))
               (_%id124002%_ _%e123957123999%_))
          (_%K123956123996%_ _%id124002%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self123764%_ _%stx123765%_ _%method123766%_)
        (let* ((_%self123767123775%_ _%self123764%_)
               (_%E123769123779%_
                (lambda ()
                  (error '"No clause matching"
                         _%self123767123775%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K123770123786%_
                (lambda (_%phi123782%_ _%ctx123783%_ _%K123784%_)
                  (gx#core-apply-user-macro
                   _%K123784%_
                   _%stx123765%_
                   _%ctx123783%_
                   _%phi123782%_
                   _%method123766%_))))
          (if (##structure-instance-of?
               _%self123767123775%_
               'gx#user-expander::t)
              (let* ((_%e123771123789%_
                      (##unchecked-structure-ref
                       _%self123767123775%_
                       '1
                       '#f
                       '#f))
                     (_%K123792%_ _%e123771123789%_)
                     (_%e123772123794%_
                      (##unchecked-structure-ref
                       _%self123767123775%_
                       '2
                       '#f
                       '#f))
                     (_%ctx123797%_ _%e123772123794%_)
                     (_%e123773123799%_
                      (##unchecked-structure-ref
                       _%self123767123775%_
                       '3
                       '#f
                       '#f))
                     (_%phi123802%_ _%e123773123799%_))
                (_%K123770123786%_ _%phi123802%_ _%ctx123797%_ _%K123792%_))
              (_%E123769123779%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self123807%_ _%stx123808%_)
        (let ((_%method123810%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self123807%_
           _%stx123808%_
           _%method123810%_))))
    (define gx#core-apply-user-expander
      (lambda _g125965_
        (let ((_g125966_ (##length _g125965_)))
          (cond ((##fx= _g125966_ 2)
                 (apply gx#core-apply-user-expander__0 _g125965_))
                ((##fx= _g125966_ 3)
                 (apply gx#core-apply-user-expander__% _g125965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g125965_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K123754%_
               _%stx123755%_
               _%ctx123756%_
               _%phi123757%_
               _%method123758%_)
        (let ((_%mark123760%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx123756%_
                _%phi123757%_
                _%stx123755%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K123754%_
               (gx#stx-apply-mark _%stx123755%_ _%mark123760%_)
               _%method123758%_)
              _%mark123760%_))
           gx#current-expander-marks
           (cons _%mark123760%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx123602%_ _%phi123603%_ _%ctx123604%_)
        (let _%lp123606%_ ((_%bind123608%_
                            (gx#core-resolve-identifier__%
                             _%stx123602%_
                             _%phi123603%_
                             _%ctx123604%_)))
          (if (##structure-direct-instance-of?
               _%bind123608%_
               'gx#import-binding::t)
              (_%lp123606%_
               (##unchecked-structure-ref _%bind123608%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind123608%_
                   'gx#alias-binding::t)
                  (_%lp123606%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind123608%_ '4 '#f '#f)
                    _%phi123603%_
                    _%ctx123604%_))
                  _%bind123608%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx123616%_)
        (let* ((_%phi123618%_ (gx#current-expander-phi))
               (_%ctx123620%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx123616%_
           _%phi123618%_
           _%ctx123620%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx123622%_ _%phi123623%_)
        (let ((_%ctx123625%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx123622%_
           _%phi123623%_
           _%ctx123625%_))))
    (define gx#resolve-identifier
      (lambda _g125967_
        (let ((_g125968_ (##length _g125967_)))
          (cond ((##fx= _g125968_ 1)
                 (apply gx#resolve-identifier__0 _g125967_))
                ((##fx= _g125968_ 2)
                 (apply gx#resolve-identifier__1 _g125967_))
                ((##fx= _g125968_ 3)
                 (apply gx#resolve-identifier__% _g125967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g125967_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx123557%_
               _%val123558%_
               _%rebind?123559%_
               _%phi123560%_
               _%ctx123561%_)
        (let ((_%rebind?123566%_
               (if (not _%rebind?123559%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?123559%_)
                       _%rebind?123559%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx123557%_)
           _%val123558%_
           _%rebind?123566%_
           _%phi123560%_
           _%ctx123561%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx123571%_ _%val123572%_)
        (let* ((_%rebind?123574%_ '#f)
               (_%phi123576%_ (gx#current-expander-phi))
               (_%ctx123578%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx123571%_
           _%val123572%_
           _%rebind?123574%_
           _%phi123576%_
           _%ctx123578%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx123580%_ _%val123581%_ _%rebind?123582%_)
        (let* ((_%phi123584%_ (gx#current-expander-phi))
               (_%ctx123586%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx123580%_
           _%val123581%_
           _%rebind?123582%_
           _%phi123584%_
           _%ctx123586%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx123588%_ _%val123589%_ _%rebind?123590%_ _%phi123591%_)
        (let ((_%ctx123593%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx123588%_
           _%val123589%_
           _%rebind?123590%_
           _%phi123591%_
           _%ctx123593%_))))
    (define gx#bind-identifier!
      (lambda _g125969_
        (let ((_g125970_ (##length _g125969_)))
          (cond ((##fx= _g125970_ 2) (apply gx#bind-identifier!__0 _g125969_))
                ((##fx= _g125970_ 3) (apply gx#bind-identifier!__1 _g125969_))
                ((##fx= _g125970_ 4) (apply gx#bind-identifier!__2 _g125969_))
                ((##fx= _g125970_ 5) (apply gx#bind-identifier!__% _g125969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g125969_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx123523%_ _%phi123524%_ _%ctx123525%_)
        (let _%lp123527%_ ((_%e123529%_ _%stx123523%_)
                           (_%marks123530%_ (gx#current-expander-marks)))
          (if (symbol? _%e123529%_)
              (gx#core-resolve-binding
               _%e123529%_
               _%phi123524%_
               _%phi123524%_
               _%ctx123525%_
               (reverse _%marks123530%_))
              (if (gx#identifier-quote? _%e123529%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e123529%_ '1 '#f '#f)
                   _%phi123524%_
                   '0
                   (##unchecked-structure-ref _%e123529%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e123529%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e123529%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e123529%_ '1 '#f '#f)
                       _%phi123524%_
                       _%phi123524%_
                       _%ctx123525%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e123529%_ '3 '#f '#f)
                        _%marks123530%_))
                      (if (##structure-direct-instance-of?
                           _%e123529%_
                           'gx#syntax-wrap::t)
                          (_%lp123527%_
                           (##unchecked-structure-ref _%e123529%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e123529%_ '3 '#f '#f)
                            _%marks123530%_))
                          (if (##structure-instance-of?
                               _%e123529%_
                               'gerbil#AST::t)
                              (_%lp123527%_
                               (##unchecked-structure-ref
                                _%e123529%_
                                '1
                                '#f
                                '#f)
                               _%marks123530%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx123523%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx123541%_)
        (let* ((_%phi123543%_ (gx#current-expander-phi))
               (_%ctx123545%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx123541%_
           _%phi123543%_
           _%ctx123545%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx123547%_ _%phi123548%_)
        (let ((_%ctx123550%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx123547%_
           _%phi123548%_
           _%ctx123550%_))))
    (define gx#core-resolve-identifier
      (lambda _g125971_
        (let ((_g125972_ (##length _g125971_)))
          (cond ((##fx= _g125972_ 1)
                 (apply gx#core-resolve-identifier__0 _g125971_))
                ((##fx= _g125972_ 2)
                 (apply gx#core-resolve-identifier__1 _g125971_))
                ((##fx= _g125972_ 3)
                 (apply gx#core-resolve-identifier__% _g125971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g125971_))))))
    (define gx#core-resolve-binding
      (lambda (_%id123433%_
               _%phi123434%_
               _%src-phi123435%_
               _%ctx123436%_
               _%marks123437%_)
        (letrec ((_%resolve123439%_
                  (lambda (_%ctx123507%_ _%src-phi123508%_ _%key123509%_)
                    (let _%lp123511%_ ((_%ctx123513%_
                                        (gx#core-context-shift
                                         _%ctx123507%_
                                         _%phi123434%_))
                                       (_%dphi123514%_
                                        (fx- _%phi123434%_ _%src-phi123508%_)))
                      (let ((_%$e123516%_
                             (gx#core-context-resolve
                              _%ctx123513%_
                              _%key123509%_)))
                        (if _%$e123516%_
                            _%$e123516%_
                            (if (fxzero? _%dphi123514%_)
                                '#f
                                (if (fxpositive? _%dphi123514%_)
                                    (_%lp123511%_
                                     (gx#core-context-shift _%ctx123513%_ '-1)
                                     (##fx- _%dphi123514%_ '1))
                                    (_%lp123511%_
                                     (gx#core-context-shift _%ctx123513%_ '1)
                                     (##fx+ _%dphi123514%_ '1))))))))))
          (let _%lp123441%_ ((_%ctx123443%_ _%ctx123436%_)
                             (_%src-phi123444%_ _%src-phi123435%_)
                             (_%rest123445%_ _%marks123437%_))
            (let* ((_%rest123446123454%_ _%rest123445%_)
                   (_%else123448123462%_
                    (lambda ()
                      (_%resolve123439%_
                       _%ctx123443%_
                       _%src-phi123444%_
                       _%id123433%_)))
                   (_%K123450123495%_
                    (lambda (_%rest123465%_ _%hd123466%_)
                      (let* ((_%hd123467123473%_ _%hd123466%_)
                             (_%E123469123477%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd123467123473%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K123470123487%_
                              (lambda (_%subst123480%_)
                                (let ((_%$e123484%_
                                       (let ((_%key123482%_
                                              (if _%subst123480%_
                                                  (hash-get
                                                   _%subst123480%_
                                                   _%id123433%_)
                                                  '#f)))
                                         (if _%key123482%_
                                             (_%resolve123439%_
                                              _%ctx123443%_
                                              _%src-phi123444%_
                                              _%key123482%_)
                                             '#f))))
                                  (if _%$e123484%_
                                      _%$e123484%_
                                      (_%lp123441%_
                                       (##unchecked-structure-ref
                                        _%hd123466%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd123466%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest123465%_))))))
                        (if (##structure-instance-of?
                             _%hd123467123473%_
                             'gx#expander-mark::t)
                            (let* ((_%e123471123490%_
                                    (##unchecked-structure-ref
                                     _%hd123467123473%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst123493%_ _%e123471123490%_))
                              (_%K123470123487%_ _%subst123493%_))
                            (_%E123469123477%_))))))
              (if (pair? _%rest123446123454%_)
                  (let ((_%hd123451123498%_ (##car _%rest123446123454%_))
                        (_%tl123452123500%_ (##cdr _%rest123446123454%_)))
                    (let* ((_%hd123503%_ _%hd123451123498%_)
                           (_%rest123505%_ _%tl123452123500%_))
                      (_%K123450123495%_ _%rest123505%_ _%hd123503%_)))
                  (_%else123448123462%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key123303%_
               _%val123304%_
               _%rebind?123305%_
               _%phi123306%_
               _%ctx123307%_)
        (letrec ((_%update-binding123309%_
                  (lambda (_%xval123382%_)
                    (if (or (_%rebind?123305%_
                             _%ctx123307%_
                             _%xval123382%_
                             _%val123304%_)
                            (and (##structure-direct-instance-of?
                                  _%xval123382%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval123382%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val123304%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val123304%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval123382%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val123304%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val123304%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval123382%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val123304%_
                        (if (and (##structure-direct-instance-of?
                                  _%val123304%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val123304%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval123382%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val123304%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval123382%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval123382%_
                            (if (and (##structure-direct-instance-of?
                                      _%val123304%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval123382%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key123303%_
                                 (cons (##unchecked-structure-ref
                                        _%val123304%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val123304%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval123382%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval123382%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval123382%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval123382%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key123303%_
                                 _%val123304%_
                                 _%xval123382%_))))))
                 (_%gensubst123310%_
                  (lambda (_%subst123377%_ _%id123378%_)
                    (let ((_%eid123380%_
                           (gensym (if (uninterned-symbol? _%id123378%_)
                                       '%
                                       _%id123378%_))))
                      (hash-put! _%subst123377%_ _%id123378%_ _%eid123380%_)
                      _%eid123380%_)))
                 (_%subst!123311%_
                  (lambda (_%key123313%_)
                    (let* ((_%key123314123322%_ _%key123313%_)
                           (_%else123316123330%_ (lambda () _%key123313%_))
                           (_%K123318123365%_
                            (lambda (_%mark123333%_ _%id123334%_)
                              (let* ((_%mark123335123341%_ _%mark123333%_)
                                     (_%E123337123345%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123335123341%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123338123357%_
                                      (lambda (_%subst123348%_)
                                        (if (not _%subst123348%_)
                                            (let ((_%subst123351%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark123333%_
                                               _%subst123351%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst123310%_
                                               _%subst123351%_
                                               _%id123334%_))
                                            (let ((_%$e123353%_
                                                   (hash-get
                                                    _%subst123348%_
                                                    _%id123334%_)))
                                              (if _%$e123353%_
                                                  _%$e123353%_
                                                  (_%gensubst123310%_
                                                   _%subst123348%_
                                                   _%id123334%_)))))))
                                (if (##structure-instance-of?
                                     _%mark123335123341%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123339123360%_
                                            (##unchecked-structure-ref
                                             _%mark123335123341%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123363%_ _%e123339123360%_))
                                      (_%K123338123357%_ _%subst123363%_))
                                    (_%E123337123345%_))))))
                      (if (pair? _%key123314123322%_)
                          (let ((_%hd123319123368%_
                                 (##car _%key123314123322%_))
                                (_%tl123320123370%_
                                 (##cdr _%key123314123322%_)))
                            (let* ((_%id123373%_ _%hd123319123368%_)
                                   (_%mark123375%_ _%tl123320123370%_))
                              (_%K123318123365%_ _%mark123375%_ _%id123373%_)))
                          (_%else123316123330%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx123307%_ _%phi123306%_)
           (_%subst!123311%_ _%key123303%_)
           _%val123304%_
           _%update-binding123309%_))))
    (define gx#core-bind!__0
      (lambda (_%key123403%_ _%val123404%_)
        (let* ((_%rebind?123406%_ false)
               (_%phi123408%_ (gx#current-expander-phi))
               (_%ctx123410%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key123403%_
           _%val123404%_
           _%rebind?123406%_
           _%phi123408%_
           _%ctx123410%_))))
    (define gx#core-bind!__1
      (lambda (_%key123412%_ _%val123413%_ _%rebind?123414%_)
        (let* ((_%phi123416%_ (gx#current-expander-phi))
               (_%ctx123418%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key123412%_
           _%val123413%_
           _%rebind?123414%_
           _%phi123416%_
           _%ctx123418%_))))
    (define gx#core-bind!__2
      (lambda (_%key123420%_ _%val123421%_ _%rebind?123422%_ _%phi123423%_)
        (let ((_%ctx123425%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key123420%_
           _%val123421%_
           _%rebind?123422%_
           _%phi123423%_
           _%ctx123425%_))))
    (define gx#core-bind!
      (lambda _g125973_
        (let ((_g125974_ (##length _g125973_)))
          (cond ((##fx= _g125974_ 2) (apply gx#core-bind!__0 _g125973_))
                ((##fx= _g125974_ 3) (apply gx#core-bind!__1 _g125973_))
                ((##fx= _g125974_ 4) (apply gx#core-bind!__2 _g125973_))
                ((##fx= _g125974_ 5) (apply gx#core-bind!__% _g125973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g125973_))))))
    (define gx#core-identifier-key
      (lambda (_%stx123234%_)
        (if (symbol? _%stx123234%_)
            (let* ((_%g123236123244%_ (gx#current-expander-marks))
                   (_%else123238123252%_ (lambda () _%stx123234%_))
                   (_%K123240123257%_
                    (lambda (_%hd123255%_) (cons _%stx123234%_ _%hd123255%_))))
              (if (pair? _%g123236123244%_)
                  (let* ((_%hd123241123260%_ (##car _%g123236123244%_))
                         (_%hd123263%_ _%hd123241123260%_))
                    (_%K123240123257%_ _%hd123263%_))
                  (_%else123238123252%_)))
            (if (gx#identifier? _%stx123234%_)
                (let* ((_%id123266%_ (gx#syntax-local-unwrap _%stx123234%_))
                       (_%eid123268%_ (gx#stx-e _%id123266%_))
                       (_%marks123270%_
                        (gx#stx-identifier-marks* _%id123266%_))
                       (_%marks123272123280%_ _%marks123270%_)
                       (_%else123274123288%_ (lambda () _%eid123268%_))
                       (_%K123276123293%_
                        (lambda (_%hd123291%_)
                          (cons _%eid123268%_ _%hd123291%_))))
                  (if (pair? _%marks123272123280%_)
                      (let* ((_%hd123277123296%_ (##car _%marks123272123280%_))
                             (_%hd123299%_ _%hd123277123296%_))
                        (_%K123276123293%_ _%hd123299%_))
                      (_%else123274123288%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx123234%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx123173%_ _%phi123174%_)
        (letrec ((_%make-phi123176%_
                  (lambda (_%super123232%_)
                    (let ((__obj125946
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj125946
                       (##gensym 'phi)
                       _%super123232%_)
                      __obj125946)))
                 (_%make-phi/up123177%_
                  (lambda (_%ctx123227%_ _%super123228%_)
                    (let ((_%ctx+1123230%_
                           (_%make-phi123176%_ _%super123228%_)))
                      (##unchecked-structure-set!
                       _%ctx123227%_
                       _%ctx+1123230%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1123230%_
                       _%ctx123227%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1123230%_)))
                 (_%make-phi/down123178%_
                  (lambda (_%ctx123222%_ _%super123223%_)
                    (let ((_%ctx-1123225%_
                           (_%make-phi123176%_ _%super123223%_)))
                      (##unchecked-structure-set!
                       _%ctx-1123225%_
                       _%ctx123222%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx123222%_
                       _%ctx-1123225%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1123225%_)))
                 (_%shift123179%_
                  (lambda (_%ctx123205%_
                           _%delta123206%_
                           _%make-delta-context123207%_
                           _%phi123208%_
                           _%K123209%_)
                    (let ((_%$e123211%_
                           (##unchecked-structure-ref
                            _%ctx123205%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e123211%_
                          ((lambda (_%super123214%_)
                             (let* ((_%super123216%_
                                     (_%K123209%_
                                      _%super123214%_
                                      _%delta123206%_))
                                    (_%ctx+d123218%_
                                     (_%make-delta-context123207%_
                                      _%ctx123205%_
                                      _%super123216%_)))
                               (_%K123209%_
                                _%ctx+d123218%_
                                (fx- _%phi123208%_ _%delta123206%_))))
                           _%$e123211%_)
                          (error '"Bad context" _%ctx123205%_))))))
          (let _%K123181%_ ((_%ctx123183%_ _%ctx123173%_)
                            (_%phi123184%_ _%phi123174%_))
            (if (fxzero? _%phi123184%_)
                _%ctx123183%_
                (if (##structure-instance-of? _%ctx123183%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi123184%_)
                        (let ((_%$e123188%_
                               (##unchecked-structure-ref
                                _%ctx123183%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e123188%_
                              ((lambda (_%g123190123192%_)
                                 (_%K123181%_
                                  _%g123190123192%_
                                  (##fx- _%phi123184%_ '1)))
                               _%$e123188%_)
                              (_%shift123179%_
                               _%ctx123183%_
                               '1
                               _%make-phi/up123177%_
                               _%phi123184%_
                               _%K123181%_)))
                        (let ((_%$e123196%_
                               (##unchecked-structure-ref
                                _%ctx123183%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e123196%_
                              ((lambda (_%g123198123200%_)
                                 (_%K123181%_
                                  _%g123198123200%_
                                  (##fx+ _%phi123184%_ '1)))
                               _%$e123196%_)
                              (_%shift123179%_
                               _%ctx123183%_
                               '-1
                               _%make-phi/down123178%_
                               _%phi123184%_
                               _%K123181%_))))
                    _%ctx123183%_))))))
    (define gx#core-context-get
      (lambda (_%ctx123170%_ _%key123171%_)
        (hash-get
         (##unchecked-structure-ref _%ctx123170%_ '2 '#f '#f)
         _%key123171%_)))
    (define gx#core-context-put!
      (lambda (_%ctx123166%_ _%key123167%_ _%val123168%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx123166%_ '2 '#f '#f)
         _%key123167%_
         _%val123168%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx123152%_ _%key123153%_)
        (let _%lp123155%_ ((_%ctx123157%_ _%ctx123152%_))
          (let ((_%$e123159%_
                 (gx#core-context-get _%ctx123157%_ _%key123153%_)))
            (if _%$e123159%_
                _%$e123159%_
                (let ((_%$e123162%_
                       (if (##structure-instance-of?
                            _%ctx123157%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx123157%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e123162%_ (_%lp123155%_ _%$e123162%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx123141%_ _%key123142%_ _%val123143%_ _%rebind123144%_)
        (let ((_%$e123146%_ (gx#core-context-get _%ctx123141%_ _%key123142%_)))
          (if _%$e123146%_
              ((lambda (_%xval123149%_)
                 (gx#core-context-put!
                  _%ctx123141%_
                  _%key123142%_
                  (_%rebind123144%_ _%xval123149%_)))
               _%$e123146%_)
              (gx#core-context-put!
               _%ctx123141%_
               _%key123142%_
               _%val123143%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx123116%_ _%stop?123117%_)
        (let _%lp123119%_ ((_%ctx123121%_ _%ctx123116%_))
          (if (_%stop?123117%_ _%ctx123121%_)
              _%ctx123121%_
              (if (##structure-instance-of? _%ctx123121%_ 'gx#phi-context::t)
                  (_%lp123119%_
                   (##unchecked-structure-ref _%ctx123121%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx123130%_ (gx#current-expander-context))
               (_%stop?123132%_ gx#top-context?))
          (gx#core-context-top__% _%ctx123130%_ _%stop?123132%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx123134%_)
        (let ((_%stop?123136%_ gx#top-context?))
          (gx#core-context-top__% _%ctx123134%_ _%stop?123136%_))))
    (define gx#core-context-top
      (lambda _g125975_
        (let ((_g125976_ (##length _g125975_)))
          (cond ((##fx= _g125976_ 0) (apply gx#core-context-top__0 _g125975_))
                ((##fx= _g125976_ 1) (apply gx#core-context-top__1 _g125975_))
                ((##fx= _g125976_ 2) (apply gx#core-context-top__% _g125975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g125975_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx123101%_)
        (let _%lp123103%_ ((_%ctx123105%_ _%ctx123101%_))
          (if (##structure-instance-of? _%ctx123105%_ 'gx#phi-context::t)
              (_%lp123103%_
               (##unchecked-structure-ref _%ctx123105%_ '3 '#f '#f))
              _%ctx123105%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx123111%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx123111%_))))
    (define gx#core-context-root
      (lambda _g125977_
        (let ((_g125978_ (##length _g125977_)))
          (cond ((##fx= _g125978_ 0) (apply gx#core-context-root__0 _g125977_))
                ((##fx= _g125978_ 1) (apply gx#core-context-root__% _g125977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g125977_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx123083%_ . _%ignore123084%_)
        (let ((_%$e123086%_ (gx#current-expander-allow-rebind?)))
          (if _%$e123086%_
              _%$e123086%_
              (if (##structure-instance-of? _%ctx123083%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx123083%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx123083%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx123093%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx123093%_))))
    (define gx#core-context-rebind?
      (lambda _g125979_
        (let ((_g125980_ (##length _g125979_)))
          (cond ((##fx= _g125980_ 0)
                 (apply gx#core-context-rebind?__0 _g125979_))
                ((##fx= _g125980_ 1)
                 (apply gx#core-context-rebind?__% _g125979_))
                ((##fx>= _g125980_ 1)
                 (apply gx#core-context-rebind?__% _g125979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g125979_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx123066%_)
        (let ((_%$e123068%_ (gx#core-context-top__1 _%ctx123066%_)))
          (if _%$e123068%_
              ((lambda (_%ctx123071%_)
                 (if (##structure-instance-of?
                      _%ctx123071%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx123071%_ '6 '#f '#f)
                     '#f))
               _%$e123068%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx123078%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx123078%_))))
    (define gx#core-context-namespace
      (lambda _g125981_
        (let ((_g125982_ (##length _g125981_)))
          (cond ((##fx= _g125982_ 0)
                 (apply gx#core-context-namespace__0 _g125981_))
                ((##fx= _g125982_ 1)
                 (apply gx#core-context-namespace__% _g125981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g125981_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind123052%_ _%is?123053%_)
        (if (##structure-direct-instance-of?
             _%bind123052%_
             'gx#syntax-binding::t)
            (_%is?123053%_
             (##unchecked-structure-ref _%bind123052%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind123058%_)
        (let ((_%is?123060%_ gx#expander?))
          (gx#expander-binding?__% _%bind123058%_ _%is?123060%_))))
    (define gx#expander-binding?
      (lambda _g125983_
        (let ((_g125984_ (##length _g125983_)))
          (cond ((##fx= _g125984_ 1) (apply gx#expander-binding?__0 _g125983_))
                ((##fx= _g125984_ 2) (apply gx#expander-binding?__% _g125983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g125983_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind123049%_)
        (gx#expander-binding?__% _%bind123049%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind123047%_)
        (gx#expander-binding?__% _%bind123047%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind123041%_)
        (letrec ((_%direct-special-form?123043%_
                  (lambda (_%obj123045%_)
                    (##structure-direct-instance-of?
                     _%obj123045%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind123041%_
           _%direct-special-form?123043%_))))
    (define gx#special-form-binding?
      (lambda (_%bind123039%_)
        (gx#expander-binding?__% _%bind123039%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind123030%_)
        (letrec ((_%feature?123032%_
                  (lambda (_%e123034%_)
                    (let ((_%$e123036%_
                           (##structure-instance-of?
                            _%e123034%_
                            'gx#feature-expander::t)))
                      (if _%$e123036%_
                          _%$e123036%_
                          (##structure-instance-of?
                           _%e123034%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind123030%_ _%feature?123032%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind123028%_)
        (gx#expander-binding?__% _%bind123028%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id123015%_ _%bound?123016%_)
        (if (gx#identifier? _%id123015%_)
            (_%bound?123016%_ (gx#resolve-identifier__0 _%id123015%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id123021%_)
        (let ((_%bound?123023%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id123021%_ _%bound?123023%_))))
    (define gx#core-bound-identifier?
      (lambda _g125985_
        (let ((_g125986_ (##length _g125985_)))
          (cond ((##fx= _g125986_ 1)
                 (apply gx#core-bound-identifier?__0 _g125985_))
                ((##fx= _g125986_ 2)
                 (apply gx#core-bound-identifier?__% _g125985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g125985_))))))
    (define gx#core-identifier=?
      (lambda (_%x123005%_ _%y123006%_)
        (letrec ((_%y=?123008%_
                  (lambda (_%xid123012%_)
                    ((if (list? _%y123006%_) memq eq?)
                     _%xid123012%_
                     _%y123006%_))))
          (let ((_%bind123010%_ (gx#resolve-identifier__0 _%x123005%_)))
            (if (##structure-instance-of? _%bind123010%_ 'gx#binding::t)
                (_%y=?123008%_
                 (##unchecked-structure-ref _%bind123010%_ '1 '#f '#f))
                (_%y=?123008%_ (gx#stx-e _%x123005%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e123003%_)
        (if (interned-symbol? _%e123003%_)
            (string-index__0 (symbol->string _%e123003%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx122956%_ _%src122957%_ _%ctx122958%_ _%marks122959%_)
        (if (##structure? _%stx122956%_)
            (let ((_%$e122961%_ (gx#sealed-syntax-unwrap _%stx122956%_)))
              (if _%$e122961%_
                  _%$e122961%_
                  (if (gx#identifier? _%stx122956%_)
                      (let ((_%id122965%_
                             (gx#stx-unwrap__% _%stx122956%_ _%marks122959%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id122965%_ '1 '#f '#f)
                         (let ((_%$e122967%_
                                (##unchecked-structure-ref
                                 _%id122965%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e122967%_ _%$e122967%_ _%src122957%_))
                         _%ctx122958%_
                         (##unchecked-structure-ref _%id122965%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx122956%_)
                       (let ((_%$e122971%_ (gx#stx-source _%stx122956%_)))
                         (if _%$e122971%_ _%$e122971%_ _%src122957%_))
                       _%ctx122958%_
                       (reverse _%marks122959%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx122956%_
             _%src122957%_
             _%ctx122958%_
             (reverse _%marks122959%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx122977%_)
        (let* ((_%src122979%_ '#f)
               (_%ctx122981%_ (gx#current-expander-context))
               (_%marks122983%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx122977%_
           _%src122979%_
           _%ctx122981%_
           _%marks122983%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx122985%_ _%src122986%_)
        (let* ((_%ctx122988%_ (gx#current-expander-context))
               (_%marks122990%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx122985%_
           _%src122986%_
           _%ctx122988%_
           _%marks122990%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx122992%_ _%src122993%_ _%ctx122994%_)
        (let ((_%marks122996%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx122992%_
           _%src122993%_
           _%ctx122994%_
           _%marks122996%_))))
    (define gx#core-quote-syntax
      (lambda _g125987_
        (let ((_g125988_ (##length _g125987_)))
          (cond ((##fx= _g125988_ 1) (apply gx#core-quote-syntax__0 _g125987_))
                ((##fx= _g125988_ 2) (apply gx#core-quote-syntax__1 _g125987_))
                ((##fx= _g125988_ 3) (apply gx#core-quote-syntax__2 _g125987_))
                ((##fx= _g125988_ 4) (apply gx#core-quote-syntax__% _g125987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g125987_))))))
    (define gx#core-cons
      (lambda (_%hd122952%_ _%tl122953%_)
        (cons (gx#core-quote-syntax__0 _%hd122952%_) _%tl122953%_)))
    (define gx#core-list
      (lambda (_%hd122949%_ . _%rest122950%_)
        (cons (gx#core-quote-syntax__0 _%hd122949%_) _%rest122950%_)))
    (define gx#core-cons*
      (lambda (_%hd122946%_ . _%rest122947%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd122946%_) _%rest122947%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path122915%_ _%rel122916%_)
        (let ((_%path122933%_ (gx#stx-e _%stx-path122915%_))
              (_%reldir122934%_
               (let _%lp122918%_ ((_%relsrc122920%_
                                   (let ((_%$e122930%_
                                          (gx#stx-source _%stx-path122915%_)))
                                     (if _%$e122930%_
                                         _%$e122930%_
                                         _%rel122916%_))))
                 (if (##structure-instance-of? _%relsrc122920%_ 'gerbil#AST::t)
                     (_%lp122918%_
                      (let ((_%$e122923%_ (gx#stx-source _%relsrc122920%_)))
                        (if _%$e122923%_
                            _%$e122923%_
                            (gx#stx-e _%relsrc122920%_))))
                     (if (source-location-path? _%relsrc122920%_)
                         (path-directory
                          (source-location-path _%relsrc122920%_))
                         (if (string? _%relsrc122920%_)
                             (path-directory _%relsrc122920%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path122933%_ (path-normalize _%reldir122934%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path122939%_)
        (let ((_%rel122941%_ '#f))
          (gx#core-resolve-path__% _%stx-path122939%_ _%rel122941%_))))
    (define gx#core-resolve-path
      (lambda _g125989_
        (let ((_g125990_ (##length _g125989_)))
          (cond ((##fx= _g125990_ 1) (apply gx#core-resolve-path__0 _g125989_))
                ((##fx= _g125990_ 2) (apply gx#core-resolve-path__% _g125989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g125989_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr122871%_ _%ctx122872%_)
        (let* ((_%repr122873122880%_ _%repr122871%_)
               (_%E122875122884%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr122873122880%_
                         '([phi . subs]))
                  '#!void))
               (_%K122876122892%_
                (lambda (_%subs122887%_ _%phi122888%_)
                  (let ((_%subst122890%_
                         (if (null? _%subs122887%_)
                             '#f
                             (list->hash-table-eq _%subs122887%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst122890%_
                     _%ctx122872%_
                     _%phi122888%_
                     '#f)))))
          (if (pair? _%repr122873122880%_)
              (let ((_%hd122877122895%_ (##car _%repr122873122880%_))
                    (_%tl122878122897%_ (##cdr _%repr122873122880%_)))
                (let* ((_%phi122900%_ _%hd122877122895%_)
                       (_%subs122902%_ _%tl122878122897%_))
                  (_%K122876122892%_ _%subs122902%_ _%phi122900%_)))
              (_%E122875122884%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr122907%_)
        (let ((_%ctx122909%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr122907%_ _%ctx122909%_))))
    (define gx#core-deserialize-mark
      (lambda _g125991_
        (let ((_g125992_ (##length _g125991_)))
          (cond ((##fx= _g125992_ 1)
                 (apply gx#core-deserialize-mark__0 _g125991_))
                ((##fx= _g125992_ 2)
                 (apply gx#core-deserialize-mark__% _g125991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g125991_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx122868%_)
        (gx#stx-rewrap _%stx122868%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx122866%_)
        (gx#stx-unwrap__% _%stx122866%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx122836%_)
        (let* ((_%g122837122845%_ (gx#current-expander-marks))
               (_%else122839122853%_ (lambda () _%stx122836%_))
               (_%K122841122858%_
                (lambda (_%hd122856%_)
                  (gx#stx-apply-mark _%stx122836%_ _%hd122856%_))))
          (if (pair? _%g122837122845%_)
              (let* ((_%hd122842122861%_ (##car _%g122837122845%_))
                     (_%hd122864%_ _%hd122842122861%_))
                (_%K122841122858%_ _%hd122864%_))
              (_%else122839122853%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx122821%_ _%E122822%_)
        (let ((_%bind122824%_ (gx#resolve-identifier__0 _%stx122821%_)))
          (if (##structure-direct-instance-of?
               _%bind122824%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind122824%_ '4 '#f '#f)
              (_%E122822%_ _%stx122821%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx122829%_)
        (let ((_%E122831%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx122829%_ _%E122831%_))))
    (define gx#syntax-local-e
      (lambda _g125993_
        (let ((_g125994_ (##length _g125993_)))
          (cond ((##fx= _g125994_ 1) (apply gx#syntax-local-e__0 _g125993_))
                ((##fx= _g125994_ 2) (apply gx#syntax-local-e__% _g125993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g125993_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx122805%_ _%E122806%_)
        (let ((_%e122808%_ (gx#syntax-local-e__% _%stx122805%_ _%E122806%_)))
          (if (##structure-instance-of? _%e122808%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e122808%_ '1 '#f '#f)
              _%e122808%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx122813%_)
        (let ((_%E122815%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx122813%_ _%E122815%_))))
    (define gx#syntax-local-value
      (lambda _g125995_
        (let ((_g125996_ (##length _g125995_)))
          (cond ((##fx= _g125996_ 1)
                 (apply gx#syntax-local-value__0 _g125995_))
                ((##fx= _g125996_ 2)
                 (apply gx#syntax-local-value__% _g125995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g125995_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx122802%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx122802%_)))))
