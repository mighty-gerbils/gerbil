(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707846529)
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
    (define gx#current-expander-module-registry (make-parameter '#f))
    (define gx#current-expander-module-library-path (make-parameter '#f))
    (define gx#current-expander-module-library-package-cache
      (make-parameter '#f))
    (define gx#current-expander-allow-rebind? (make-parameter '#f))
    (define gx#current-expander-compiling? (make-parameter '#f))
    (define gx#expander-context::t
      (make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#expander-context? (make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _$args146189_
        (apply make-instance gx#expander-context::t _$args146189_)))
    (define gx#expander-context-id
      (make-class-slot-accessor gx#expander-context::t 'id))
    (define gx#expander-context-table
      (make-class-slot-accessor gx#expander-context::t 'table))
    (define gx#expander-context-id-set!
      (make-class-slot-mutator gx#expander-context::t 'id))
    (define gx#expander-context-table-set!
      (make-class-slot-mutator gx#expander-context::t 'table))
    (define gx#&expander-context-id
      (make-class-slot-unchecked-accessor gx#expander-context::t 'id))
    (define gx#&expander-context-table
      (make-class-slot-unchecked-accessor gx#expander-context::t 'table))
    (define gx#&expander-context-id-set!
      (make-class-slot-unchecked-mutator gx#expander-context::t 'id))
    (define gx#&expander-context-table-set!
      (make-class-slot-unchecked-mutator gx#expander-context::t 'table))
    (define gx#root-context::t
      (make-class-type
       'gx#root-context::t
       'root-context
       (list gx#expander-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _$args146186_
        (apply make-instance gx#root-context::t _$args146186_)))
    (define gx#root-context-id
      (make-class-slot-accessor gx#root-context::t 'id))
    (define gx#root-context-table
      (make-class-slot-accessor gx#root-context::t 'table))
    (define gx#root-context-id-set!
      (make-class-slot-mutator gx#root-context::t 'id))
    (define gx#root-context-table-set!
      (make-class-slot-mutator gx#root-context::t 'table))
    (define gx#&root-context-id
      (make-class-slot-unchecked-accessor gx#root-context::t 'id))
    (define gx#&root-context-table
      (make-class-slot-unchecked-accessor gx#root-context::t 'table))
    (define gx#&root-context-id-set!
      (make-class-slot-unchecked-mutator gx#root-context::t 'id))
    (define gx#&root-context-table-set!
      (make-class-slot-unchecked-mutator gx#root-context::t 'table))
    (define gx#phi-context::t
      (make-class-type
       'gx#context-phi::t
       'phi-context
       (list gx#expander-context::t)
       '(super up down)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#phi-context? (make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _$args146183_
        (apply make-instance gx#phi-context::t _$args146183_)))
    (define gx#phi-context-super
      (make-class-slot-accessor gx#phi-context::t 'super))
    (define gx#phi-context-up (make-class-slot-accessor gx#phi-context::t 'up))
    (define gx#phi-context-down
      (make-class-slot-accessor gx#phi-context::t 'down))
    (define gx#phi-context-id (make-class-slot-accessor gx#phi-context::t 'id))
    (define gx#phi-context-table
      (make-class-slot-accessor gx#phi-context::t 'table))
    (define gx#phi-context-super-set!
      (make-class-slot-mutator gx#phi-context::t 'super))
    (define gx#phi-context-up-set!
      (make-class-slot-mutator gx#phi-context::t 'up))
    (define gx#phi-context-down-set!
      (make-class-slot-mutator gx#phi-context::t 'down))
    (define gx#phi-context-id-set!
      (make-class-slot-mutator gx#phi-context::t 'id))
    (define gx#phi-context-table-set!
      (make-class-slot-mutator gx#phi-context::t 'table))
    (define gx#&phi-context-super
      (make-class-slot-unchecked-accessor gx#phi-context::t 'super))
    (define gx#&phi-context-up
      (make-class-slot-unchecked-accessor gx#phi-context::t 'up))
    (define gx#&phi-context-down
      (make-class-slot-unchecked-accessor gx#phi-context::t 'down))
    (define gx#&phi-context-id
      (make-class-slot-unchecked-accessor gx#phi-context::t 'id))
    (define gx#&phi-context-table
      (make-class-slot-unchecked-accessor gx#phi-context::t 'table))
    (define gx#&phi-context-super-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'super))
    (define gx#&phi-context-up-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'up))
    (define gx#&phi-context-down-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'down))
    (define gx#&phi-context-id-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'id))
    (define gx#&phi-context-table-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'table))
    (define gx#top-context::t
      (make-class-type
       'gx#top-context::t
       'top-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _$args146180_
        (apply make-instance gx#top-context::t _$args146180_)))
    (define gx#top-context-super
      (make-class-slot-accessor gx#top-context::t 'super))
    (define gx#top-context-up (make-class-slot-accessor gx#top-context::t 'up))
    (define gx#top-context-down
      (make-class-slot-accessor gx#top-context::t 'down))
    (define gx#top-context-id (make-class-slot-accessor gx#top-context::t 'id))
    (define gx#top-context-table
      (make-class-slot-accessor gx#top-context::t 'table))
    (define gx#top-context-super-set!
      (make-class-slot-mutator gx#top-context::t 'super))
    (define gx#top-context-up-set!
      (make-class-slot-mutator gx#top-context::t 'up))
    (define gx#top-context-down-set!
      (make-class-slot-mutator gx#top-context::t 'down))
    (define gx#top-context-id-set!
      (make-class-slot-mutator gx#top-context::t 'id))
    (define gx#top-context-table-set!
      (make-class-slot-mutator gx#top-context::t 'table))
    (define gx#&top-context-super
      (make-class-slot-unchecked-accessor gx#top-context::t 'super))
    (define gx#&top-context-up
      (make-class-slot-unchecked-accessor gx#top-context::t 'up))
    (define gx#&top-context-down
      (make-class-slot-unchecked-accessor gx#top-context::t 'down))
    (define gx#&top-context-id
      (make-class-slot-unchecked-accessor gx#top-context::t 'id))
    (define gx#&top-context-table
      (make-class-slot-unchecked-accessor gx#top-context::t 'table))
    (define gx#&top-context-super-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'super))
    (define gx#&top-context-up-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'up))
    (define gx#&top-context-down-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'down))
    (define gx#&top-context-id-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'id))
    (define gx#&top-context-table-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'table))
    (define gx#module-context::t
      (make-class-type
       'gx#module-context::t
       'module-context
       (list gx#top-context::t)
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-context? (make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _$args146177_
        (apply make-instance gx#module-context::t _$args146177_)))
    (define gx#module-context-ns
      (make-class-slot-accessor gx#module-context::t 'ns))
    (define gx#module-context-path
      (make-class-slot-accessor gx#module-context::t 'path))
    (define gx#module-context-import
      (make-class-slot-accessor gx#module-context::t 'import))
    (define gx#module-context-export
      (make-class-slot-accessor gx#module-context::t 'export))
    (define gx#module-context-e
      (make-class-slot-accessor gx#module-context::t 'e))
    (define gx#module-context-code
      (make-class-slot-accessor gx#module-context::t 'code))
    (define gx#module-context-super
      (make-class-slot-accessor gx#module-context::t 'super))
    (define gx#module-context-up
      (make-class-slot-accessor gx#module-context::t 'up))
    (define gx#module-context-down
      (make-class-slot-accessor gx#module-context::t 'down))
    (define gx#module-context-id
      (make-class-slot-accessor gx#module-context::t 'id))
    (define gx#module-context-table
      (make-class-slot-accessor gx#module-context::t 'table))
    (define gx#module-context-ns-set!
      (make-class-slot-mutator gx#module-context::t 'ns))
    (define gx#module-context-path-set!
      (make-class-slot-mutator gx#module-context::t 'path))
    (define gx#module-context-import-set!
      (make-class-slot-mutator gx#module-context::t 'import))
    (define gx#module-context-export-set!
      (make-class-slot-mutator gx#module-context::t 'export))
    (define gx#module-context-e-set!
      (make-class-slot-mutator gx#module-context::t 'e))
    (define gx#module-context-code-set!
      (make-class-slot-mutator gx#module-context::t 'code))
    (define gx#module-context-super-set!
      (make-class-slot-mutator gx#module-context::t 'super))
    (define gx#module-context-up-set!
      (make-class-slot-mutator gx#module-context::t 'up))
    (define gx#module-context-down-set!
      (make-class-slot-mutator gx#module-context::t 'down))
    (define gx#module-context-id-set!
      (make-class-slot-mutator gx#module-context::t 'id))
    (define gx#module-context-table-set!
      (make-class-slot-mutator gx#module-context::t 'table))
    (define gx#&module-context-ns
      (make-class-slot-unchecked-accessor gx#module-context::t 'ns))
    (define gx#&module-context-path
      (make-class-slot-unchecked-accessor gx#module-context::t 'path))
    (define gx#&module-context-import
      (make-class-slot-unchecked-accessor gx#module-context::t 'import))
    (define gx#&module-context-export
      (make-class-slot-unchecked-accessor gx#module-context::t 'export))
    (define gx#&module-context-e
      (make-class-slot-unchecked-accessor gx#module-context::t 'e))
    (define gx#&module-context-code
      (make-class-slot-unchecked-accessor gx#module-context::t 'code))
    (define gx#&module-context-super
      (make-class-slot-unchecked-accessor gx#module-context::t 'super))
    (define gx#&module-context-up
      (make-class-slot-unchecked-accessor gx#module-context::t 'up))
    (define gx#&module-context-down
      (make-class-slot-unchecked-accessor gx#module-context::t 'down))
    (define gx#&module-context-id
      (make-class-slot-unchecked-accessor gx#module-context::t 'id))
    (define gx#&module-context-table
      (make-class-slot-unchecked-accessor gx#module-context::t 'table))
    (define gx#&module-context-ns-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'ns))
    (define gx#&module-context-path-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'path))
    (define gx#&module-context-import-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'import))
    (define gx#&module-context-export-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'export))
    (define gx#&module-context-e-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'e))
    (define gx#&module-context-code-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'code))
    (define gx#&module-context-super-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'super))
    (define gx#&module-context-up-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'up))
    (define gx#&module-context-down-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'down))
    (define gx#&module-context-id-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'id))
    (define gx#&module-context-table-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'table))
    (define gx#prelude-context::t
      (make-class-type
       'gx#prelude-context::t
       'prelude-context
       (list gx#top-context::t)
       '(path import e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#prelude-context? (make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _$args146174_
        (apply make-instance gx#prelude-context::t _$args146174_)))
    (define gx#prelude-context-path
      (make-class-slot-accessor gx#prelude-context::t 'path))
    (define gx#prelude-context-import
      (make-class-slot-accessor gx#prelude-context::t 'import))
    (define gx#prelude-context-e
      (make-class-slot-accessor gx#prelude-context::t 'e))
    (define gx#prelude-context-super
      (make-class-slot-accessor gx#prelude-context::t 'super))
    (define gx#prelude-context-up
      (make-class-slot-accessor gx#prelude-context::t 'up))
    (define gx#prelude-context-down
      (make-class-slot-accessor gx#prelude-context::t 'down))
    (define gx#prelude-context-id
      (make-class-slot-accessor gx#prelude-context::t 'id))
    (define gx#prelude-context-table
      (make-class-slot-accessor gx#prelude-context::t 'table))
    (define gx#prelude-context-path-set!
      (make-class-slot-mutator gx#prelude-context::t 'path))
    (define gx#prelude-context-import-set!
      (make-class-slot-mutator gx#prelude-context::t 'import))
    (define gx#prelude-context-e-set!
      (make-class-slot-mutator gx#prelude-context::t 'e))
    (define gx#prelude-context-super-set!
      (make-class-slot-mutator gx#prelude-context::t 'super))
    (define gx#prelude-context-up-set!
      (make-class-slot-mutator gx#prelude-context::t 'up))
    (define gx#prelude-context-down-set!
      (make-class-slot-mutator gx#prelude-context::t 'down))
    (define gx#prelude-context-id-set!
      (make-class-slot-mutator gx#prelude-context::t 'id))
    (define gx#prelude-context-table-set!
      (make-class-slot-mutator gx#prelude-context::t 'table))
    (define gx#&prelude-context-path
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'path))
    (define gx#&prelude-context-import
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'import))
    (define gx#&prelude-context-e
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'e))
    (define gx#&prelude-context-super
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'super))
    (define gx#&prelude-context-up
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'up))
    (define gx#&prelude-context-down
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'down))
    (define gx#&prelude-context-id
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'id))
    (define gx#&prelude-context-table
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'table))
    (define gx#&prelude-context-path-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'path))
    (define gx#&prelude-context-import-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'import))
    (define gx#&prelude-context-e-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'e))
    (define gx#&prelude-context-super-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'super))
    (define gx#&prelude-context-up-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'up))
    (define gx#&prelude-context-down-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'down))
    (define gx#&prelude-context-id-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'id))
    (define gx#&prelude-context-table-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'table))
    (define gx#local-context::t
      (make-class-type
       'gx#local-context::t
       'local-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _$args146171_
        (apply make-instance gx#local-context::t _$args146171_)))
    (define gx#local-context-super
      (make-class-slot-accessor gx#local-context::t 'super))
    (define gx#local-context-up
      (make-class-slot-accessor gx#local-context::t 'up))
    (define gx#local-context-down
      (make-class-slot-accessor gx#local-context::t 'down))
    (define gx#local-context-id
      (make-class-slot-accessor gx#local-context::t 'id))
    (define gx#local-context-table
      (make-class-slot-accessor gx#local-context::t 'table))
    (define gx#local-context-super-set!
      (make-class-slot-mutator gx#local-context::t 'super))
    (define gx#local-context-up-set!
      (make-class-slot-mutator gx#local-context::t 'up))
    (define gx#local-context-down-set!
      (make-class-slot-mutator gx#local-context::t 'down))
    (define gx#local-context-id-set!
      (make-class-slot-mutator gx#local-context::t 'id))
    (define gx#local-context-table-set!
      (make-class-slot-mutator gx#local-context::t 'table))
    (define gx#&local-context-super
      (make-class-slot-unchecked-accessor gx#local-context::t 'super))
    (define gx#&local-context-up
      (make-class-slot-unchecked-accessor gx#local-context::t 'up))
    (define gx#&local-context-down
      (make-class-slot-unchecked-accessor gx#local-context::t 'down))
    (define gx#&local-context-id
      (make-class-slot-unchecked-accessor gx#local-context::t 'id))
    (define gx#&local-context-table
      (make-class-slot-unchecked-accessor gx#local-context::t 'table))
    (define gx#&local-context-super-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'super))
    (define gx#&local-context-up-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'up))
    (define gx#&local-context-down-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'down))
    (define gx#&local-context-id-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'id))
    (define gx#&local-context-table-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'table))
    (define gx#phi-context:::init!__%
      (lambda (_self146155_ _id146156_ _super146157_)
        (if (##fx< '3 (##structure-length _self146155_))
            (begin
              (##unchecked-structure-set!
               _self146155_
               _id146156_
               '1
               (##structure-type _self146155_)
               '#f)
              (##unchecked-structure-set!
               _self146155_
               (make-table 'test: eq?)
               '2
               (##structure-type _self146155_)
               '#f)
              (##unchecked-structure-set!
               _self146155_
               _super146157_
               '3
               (##structure-type _self146155_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self146155_
                   '3
                   (##vector-length _self146155_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self146162_ _id146163_)
        (let ((_super146165_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self146162_ _id146163_ _super146165_))))
    (define gx#phi-context:::init!
      (lambda _g150800_
        (let ((_g150799_ (##length _g150800_)))
          (cond ((##fx= _g150799_ 2)
                 (apply (lambda (_self146162_ _id146163_)
                          (gx#phi-context:::init!__0 _self146162_ _id146163_))
                        _g150800_))
                ((##fx= _g150799_ 3)
                 (apply (lambda (_self146167_ _id146168_ _super146169_)
                          (gx#phi-context:::init!__%
                           _self146167_
                           _id146168_
                           _super146169_))
                        _g150800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g150800_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self146019_ _super146020_)
        (if (##fx< '3 (##structure-length _self146019_))
            (begin
              (##unchecked-structure-set!
               _self146019_
               (gensym 'L)
               '1
               (##structure-type _self146019_)
               '#f)
              (##unchecked-structure-set!
               _self146019_
               (make-table 'test: eq?)
               '2
               (##structure-type _self146019_)
               '#f)
              (##unchecked-structure-set!
               _self146019_
               _super146020_
               '3
               (##structure-type _self146019_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self146019_
                   '3
                   (##vector-length _self146019_)))))
    (define gx#local-context:::init!__0
      (lambda (_self146025_)
        (let ((_super146027_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self146025_ _super146027_))))
    (define gx#local-context:::init!
      (lambda _g150802_
        (let ((_g150801_ (##length _g150802_)))
          (cond ((##fx= _g150801_ 1)
                 (apply (lambda (_self146025_)
                          (gx#local-context:::init!__0 _self146025_))
                        _g150802_))
                ((##fx= _g150801_ 2)
                 (apply (lambda (_self146029_ _super146030_)
                          (gx#local-context:::init!__%
                           _self146029_
                           _super146030_))
                        _g150802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g150802_))))))
    (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _$args145893_ (apply make-instance gx#binding::t _$args145893_)))
    (define gx#binding-id (make-class-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (make-class-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (make-class-slot-accessor gx#binding::t 'phi))
    (define gx#binding-id-set! (make-class-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (make-class-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (make-class-slot-mutator gx#binding::t 'phi))
    (define gx#&binding-id
      (make-class-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (make-class-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (make-class-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-id-set!
      (make-class-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (make-class-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (make-class-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#runtime-binding::t
      (make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _$args145890_
        (apply make-instance gx#runtime-binding::t _$args145890_)))
    (define gx#runtime-binding-id
      (make-class-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (make-class-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (make-class-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-id-set!
      (make-class-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (make-class-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (make-class-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#local-binding::t
      (make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _$args145887_
        (apply make-instance gx#local-binding::t _$args145887_)))
    (define gx#local-binding-id
      (make-class-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (make-class-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (make-class-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-id-set!
      (make-class-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (make-class-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (make-class-slot-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-id
      (make-class-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (make-class-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (make-class-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-id-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#top-binding::t
      (make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _$args145884_
        (apply make-instance gx#top-binding::t _$args145884_)))
    (define gx#top-binding-id (make-class-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (make-class-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (make-class-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-id-set!
      (make-class-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (make-class-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (make-class-slot-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-id
      (make-class-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (make-class-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (make-class-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-id-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#module-binding::t
      (make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _$args145881_
        (apply make-instance gx#module-binding::t _$args145881_)))
    (define gx#module-binding-context
      (make-class-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-id
      (make-class-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (make-class-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (make-class-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-context-set!
      (make-class-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-id-set!
      (make-class-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (make-class-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (make-class-slot-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-context
      (make-class-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-id
      (make-class-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (make-class-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (make-class-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-context-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-id-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#extern-binding::t
      (make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _$args145878_
        (apply make-instance gx#extern-binding::t _$args145878_)))
    (define gx#extern-binding-id
      (make-class-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (make-class-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (make-class-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-id-set!
      (make-class-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (make-class-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (make-class-slot-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#syntax-binding::t
      (make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _$args145875_
        (apply make-instance gx#syntax-binding::t _$args145875_)))
    (define gx#syntax-binding-e
      (make-class-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (make-class-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (make-class-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (make-class-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-e-set!
      (make-class-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (make-class-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (make-class-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (make-class-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#import-binding::t
      (make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _$args145872_
        (apply make-instance gx#import-binding::t _$args145872_)))
    (define gx#import-binding-e
      (make-class-slot-accessor gx#import-binding::t 'e))
    (define gx#import-binding-context
      (make-class-slot-accessor gx#import-binding::t 'context))
    (define gx#import-binding-weak?
      (make-class-slot-accessor gx#import-binding::t 'weak?))
    (define gx#import-binding-id
      (make-class-slot-accessor gx#import-binding::t 'id))
    (define gx#import-binding-key
      (make-class-slot-accessor gx#import-binding::t 'key))
    (define gx#import-binding-phi
      (make-class-slot-accessor gx#import-binding::t 'phi))
    (define gx#import-binding-e-set!
      (make-class-slot-mutator gx#import-binding::t 'e))
    (define gx#import-binding-context-set!
      (make-class-slot-mutator gx#import-binding::t 'context))
    (define gx#import-binding-weak?-set!
      (make-class-slot-mutator gx#import-binding::t 'weak?))
    (define gx#import-binding-id-set!
      (make-class-slot-mutator gx#import-binding::t 'id))
    (define gx#import-binding-key-set!
      (make-class-slot-mutator gx#import-binding::t 'key))
    (define gx#import-binding-phi-set!
      (make-class-slot-mutator gx#import-binding::t 'phi))
    (define gx#&import-binding-e
      (make-class-slot-unchecked-accessor gx#import-binding::t 'e))
    (define gx#&import-binding-context
      (make-class-slot-unchecked-accessor gx#import-binding::t 'context))
    (define gx#&import-binding-weak?
      (make-class-slot-unchecked-accessor gx#import-binding::t 'weak?))
    (define gx#&import-binding-id
      (make-class-slot-unchecked-accessor gx#import-binding::t 'id))
    (define gx#&import-binding-key
      (make-class-slot-unchecked-accessor gx#import-binding::t 'key))
    (define gx#&import-binding-phi
      (make-class-slot-unchecked-accessor gx#import-binding::t 'phi))
    (define gx#&import-binding-e-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'e))
    (define gx#&import-binding-context-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'context))
    (define gx#&import-binding-weak?-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'weak?))
    (define gx#&import-binding-id-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'id))
    (define gx#&import-binding-key-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'key))
    (define gx#&import-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'phi))
    (define gx#alias-binding::t
      (make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _$args145869_
        (apply make-instance gx#alias-binding::t _$args145869_)))
    (define gx#alias-binding-e
      (make-class-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (make-class-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (make-class-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (make-class-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-e-set!
      (make-class-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (make-class-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (make-class-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (make-class-slot-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'phi))
    (define gx#expander::t
      (make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _$args145866_
        (apply make-instance gx#expander::t _$args145866_)))
    (define gx#expander-e (make-class-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (make-class-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (make-class-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (make-class-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (make-class-type
       'gx#core-expander::t
       'core-expander
       (list gx#expander::t)
       '(id compile-top)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#core-expander? (make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _$args145863_
        (apply make-instance gx#core-expander::t _$args145863_)))
    (define gx#core-expander-id
      (make-class-slot-accessor gx#core-expander::t 'id))
    (define gx#core-expander-compile-top
      (make-class-slot-accessor gx#core-expander::t 'compile-top))
    (define gx#core-expander-e
      (make-class-slot-accessor gx#core-expander::t 'e))
    (define gx#core-expander-id-set!
      (make-class-slot-mutator gx#core-expander::t 'id))
    (define gx#core-expander-compile-top-set!
      (make-class-slot-mutator gx#core-expander::t 'compile-top))
    (define gx#core-expander-e-set!
      (make-class-slot-mutator gx#core-expander::t 'e))
    (define gx#&core-expander-id
      (make-class-slot-unchecked-accessor gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top
      (make-class-slot-unchecked-accessor gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e
      (make-class-slot-unchecked-accessor gx#core-expander::t 'e))
    (define gx#&core-expander-id-set!
      (make-class-slot-unchecked-mutator gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top-set!
      (make-class-slot-unchecked-mutator gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e-set!
      (make-class-slot-unchecked-mutator gx#core-expander::t 'e))
    (define gx#expression-form::t
      (make-class-type
       'gx#expression-form::t
       'expression-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _$args145860_
        (apply make-instance gx#expression-form::t _$args145860_)))
    (define gx#expression-form-id
      (make-class-slot-accessor gx#expression-form::t 'id))
    (define gx#expression-form-compile-top
      (make-class-slot-accessor gx#expression-form::t 'compile-top))
    (define gx#expression-form-e
      (make-class-slot-accessor gx#expression-form::t 'e))
    (define gx#expression-form-id-set!
      (make-class-slot-mutator gx#expression-form::t 'id))
    (define gx#expression-form-compile-top-set!
      (make-class-slot-mutator gx#expression-form::t 'compile-top))
    (define gx#expression-form-e-set!
      (make-class-slot-mutator gx#expression-form::t 'e))
    (define gx#&expression-form-id
      (make-class-slot-unchecked-accessor gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top
      (make-class-slot-unchecked-accessor gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e
      (make-class-slot-unchecked-accessor gx#expression-form::t 'e))
    (define gx#&expression-form-id-set!
      (make-class-slot-unchecked-mutator gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e-set!
      (make-class-slot-unchecked-mutator gx#expression-form::t 'e))
    (define gx#special-form::t
      (make-class-type
       'gx#special-form::t
       'special-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _$args145857_
        (apply make-instance gx#special-form::t _$args145857_)))
    (define gx#special-form-id
      (make-class-slot-accessor gx#special-form::t 'id))
    (define gx#special-form-compile-top
      (make-class-slot-accessor gx#special-form::t 'compile-top))
    (define gx#special-form-e (make-class-slot-accessor gx#special-form::t 'e))
    (define gx#special-form-id-set!
      (make-class-slot-mutator gx#special-form::t 'id))
    (define gx#special-form-compile-top-set!
      (make-class-slot-mutator gx#special-form::t 'compile-top))
    (define gx#special-form-e-set!
      (make-class-slot-mutator gx#special-form::t 'e))
    (define gx#&special-form-id
      (make-class-slot-unchecked-accessor gx#special-form::t 'id))
    (define gx#&special-form-compile-top
      (make-class-slot-unchecked-accessor gx#special-form::t 'compile-top))
    (define gx#&special-form-e
      (make-class-slot-unchecked-accessor gx#special-form::t 'e))
    (define gx#&special-form-id-set!
      (make-class-slot-unchecked-mutator gx#special-form::t 'id))
    (define gx#&special-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#special-form::t 'compile-top))
    (define gx#&special-form-e-set!
      (make-class-slot-unchecked-mutator gx#special-form::t 'e))
    (define gx#definition-form::t
      (make-class-type
       'gx#definition-form::t
       'definition-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _$args145854_
        (apply make-instance gx#definition-form::t _$args145854_)))
    (define gx#definition-form-id
      (make-class-slot-accessor gx#definition-form::t 'id))
    (define gx#definition-form-compile-top
      (make-class-slot-accessor gx#definition-form::t 'compile-top))
    (define gx#definition-form-e
      (make-class-slot-accessor gx#definition-form::t 'e))
    (define gx#definition-form-id-set!
      (make-class-slot-mutator gx#definition-form::t 'id))
    (define gx#definition-form-compile-top-set!
      (make-class-slot-mutator gx#definition-form::t 'compile-top))
    (define gx#definition-form-e-set!
      (make-class-slot-mutator gx#definition-form::t 'e))
    (define gx#&definition-form-id
      (make-class-slot-unchecked-accessor gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top
      (make-class-slot-unchecked-accessor gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e
      (make-class-slot-unchecked-accessor gx#definition-form::t 'e))
    (define gx#&definition-form-id-set!
      (make-class-slot-unchecked-mutator gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e-set!
      (make-class-slot-unchecked-mutator gx#definition-form::t 'e))
    (define gx#top-special-form::t
      (make-class-type
       'gx#top-special-form::t
       'top-special-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form? (make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _$args145851_
        (apply make-instance gx#top-special-form::t _$args145851_)))
    (define gx#top-special-form-id
      (make-class-slot-accessor gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top
      (make-class-slot-accessor gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e
      (make-class-slot-accessor gx#top-special-form::t 'e))
    (define gx#top-special-form-id-set!
      (make-class-slot-mutator gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top-set!
      (make-class-slot-mutator gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e-set!
      (make-class-slot-mutator gx#top-special-form::t 'e))
    (define gx#&top-special-form-id
      (make-class-slot-unchecked-accessor gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top
      (make-class-slot-unchecked-accessor gx#top-special-form::t 'compile-top))
    (define gx#&top-special-form-e
      (make-class-slot-unchecked-accessor gx#top-special-form::t 'e))
    (define gx#&top-special-form-id-set!
      (make-class-slot-unchecked-mutator gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#top-special-form::t 'compile-top))
    (define gx#&top-special-form-e-set!
      (make-class-slot-unchecked-mutator gx#top-special-form::t 'e))
    (define gx#module-special-form::t
      (make-class-type
       'gx#module-special-form::t
       'module-special-form
       (list gx#top-special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _$args145848_
        (apply make-instance gx#module-special-form::t _$args145848_)))
    (define gx#module-special-form-id
      (make-class-slot-accessor gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top
      (make-class-slot-accessor gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e
      (make-class-slot-accessor gx#module-special-form::t 'e))
    (define gx#module-special-form-id-set!
      (make-class-slot-mutator gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top-set!
      (make-class-slot-mutator gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e-set!
      (make-class-slot-mutator gx#module-special-form::t 'e))
    (define gx#&module-special-form-id
      (make-class-slot-unchecked-accessor gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top
      (make-class-slot-unchecked-accessor
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e
      (make-class-slot-unchecked-accessor gx#module-special-form::t 'e))
    (define gx#&module-special-form-id-set!
      (make-class-slot-unchecked-mutator gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top-set!
      (make-class-slot-unchecked-mutator
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e-set!
      (make-class-slot-unchecked-mutator gx#module-special-form::t 'e))
    (define gx#feature-expander::t
      (make-class-type
       'gx#feature-expander::t
       'feature-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander? (make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _$args145845_
        (apply make-instance gx#feature-expander::t _$args145845_)))
    (define gx#feature-expander-e
      (make-class-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (make-class-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (make-class-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (make-class-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (make-class-type
       'gx#private-feature-expander::t
       'private-feature-expander
       (list gx#feature-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _$args145842_
        (apply make-instance gx#private-feature-expander::t _$args145842_)))
    (define gx#private-feature-expander-e
      (make-class-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (make-class-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (make-class-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (make-class-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (make-class-type
       'gx#reserved-expander::t
       'reserved-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _$args145839_
        (apply make-instance gx#reserved-expander::t _$args145839_)))
    (define gx#reserved-expander-e
      (make-class-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (make-class-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (make-class-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (make-class-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (make-class-type
       'gx#core-macro::t
       'macro-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _$args145836_
        (apply make-instance gx#macro-expander::t _$args145836_)))
    (define gx#macro-expander-e
      (make-class-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (make-class-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (make-class-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (make-class-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (make-class-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       (list gx#macro-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _$args145833_
        (apply make-instance gx#rename-macro-expander::t _$args145833_)))
    (define gx#rename-macro-expander-e
      (make-class-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (make-class-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (make-class-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (make-class-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (make-class-type
       'gx#macro-expander::t
       'user-expander
       (list gx#macro-expander::t)
       '(context phi)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#user-expander? (make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _$args145830_
        (apply make-instance gx#user-expander::t _$args145830_)))
    (define gx#user-expander-context
      (make-class-slot-accessor gx#user-expander::t 'context))
    (define gx#user-expander-phi
      (make-class-slot-accessor gx#user-expander::t 'phi))
    (define gx#user-expander-e
      (make-class-slot-accessor gx#user-expander::t 'e))
    (define gx#user-expander-context-set!
      (make-class-slot-mutator gx#user-expander::t 'context))
    (define gx#user-expander-phi-set!
      (make-class-slot-mutator gx#user-expander::t 'phi))
    (define gx#user-expander-e-set!
      (make-class-slot-mutator gx#user-expander::t 'e))
    (define gx#&user-expander-context
      (make-class-slot-unchecked-accessor gx#user-expander::t 'context))
    (define gx#&user-expander-phi
      (make-class-slot-unchecked-accessor gx#user-expander::t 'phi))
    (define gx#&user-expander-e
      (make-class-slot-unchecked-accessor gx#user-expander::t 'e))
    (define gx#&user-expander-context-set!
      (make-class-slot-unchecked-mutator gx#user-expander::t 'context))
    (define gx#&user-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#user-expander::t 'phi))
    (define gx#&user-expander-e-set!
      (make-class-slot-unchecked-mutator gx#user-expander::t 'e))
    (define gx#expander-mark::t
      (make-class-type
       'gx#expander-mark::t
       'expander-mark
       (list)
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander-mark? (make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _$args145827_
        (apply make-instance gx#expander-mark::t _$args145827_)))
    (define gx#expander-mark-subst
      (make-class-slot-accessor gx#expander-mark::t 'subst))
    (define gx#expander-mark-context
      (make-class-slot-accessor gx#expander-mark::t 'context))
    (define gx#expander-mark-phi
      (make-class-slot-accessor gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace
      (make-class-slot-accessor gx#expander-mark::t 'trace))
    (define gx#expander-mark-subst-set!
      (make-class-slot-mutator gx#expander-mark::t 'subst))
    (define gx#expander-mark-context-set!
      (make-class-slot-mutator gx#expander-mark::t 'context))
    (define gx#expander-mark-phi-set!
      (make-class-slot-mutator gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace-set!
      (make-class-slot-mutator gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'trace))
    (define gx#raise-syntax-error
      (lambda (_ctx145812_ _message145813_ _stx145814_ . _details145815_)
        (let ((_ctx145825_
               (let ((_$e145817_ _ctx145812_))
                 (if _$e145817_
                     _$e145817_
                     (let ((_$e145820_ (gx#core-context-top__0)))
                       (if _$e145820_
                           ((lambda (_ctx145823_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx145823_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e145820_)
                           '#f))))))
          (raise (make-syntax-error
                  _message145813_
                  (cons _stx145814_ _details145815_)
                  _ctx145825_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx145799_ _expression?145800_)
        (gx#eval-syntax* (gx#core-expand__% _stx145799_ _expression?145800_))))
    (define gx#eval-syntax__0
      (lambda (_stx145805_)
        (let ((_expression?145807_ '#f))
          (gx#eval-syntax__% _stx145805_ _expression?145807_))))
    (define gx#eval-syntax
      (lambda _g150804_
        (let ((_g150803_ (##length _g150804_)))
          (cond ((##fx= _g150803_ 1)
                 (apply (lambda (_stx145805_) (gx#eval-syntax__0 _stx145805_))
                        _g150804_))
                ((##fx= _g150803_ 2)
                 (apply (lambda (_stx145809_ _expression?145810_)
                          (gx#eval-syntax__% _stx145809_ _expression?145810_))
                        _g150804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g150804_))))))
    (define gx#eval-syntax*
      (lambda (_stx145796_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx145796_))))
    (define gx#core-expand__%
      (lambda (_stx145783_ _expression?145784_)
        (if _expression?145784_
            (gx#core-expand-expression _stx145783_)
            (gx#core-expand-top _stx145783_))))
    (define gx#core-expand__0
      (lambda (_stx145789_)
        (let ((_expression?145791_ '#f))
          (gx#core-expand__% _stx145789_ _expression?145791_))))
    (define gx#core-expand
      (lambda _g150806_
        (let ((_g150805_ (##length _g150806_)))
          (cond ((##fx= _g150805_ 1)
                 (apply (lambda (_stx145789_) (gx#core-expand__0 _stx145789_))
                        _g150806_))
                ((##fx= _g150805_ 2)
                 (apply (lambda (_stx145793_ _expression?145794_)
                          (gx#core-expand__% _stx145793_ _expression?145794_))
                        _g150806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g150806_))))))
    (define gx#core-expand-top
      (lambda (_stx145750_)
        (let* ((_stx145752_ (gx#core-expand*__0 _stx145750_))
               (_e145753145760_ _stx145752_)
               (_E145755145764_
                (lambda () (gx#core-expand-expression _stx145752_)))
               (_E145754145778_
                (lambda ()
                  (if (gx#stx-pair? _e145753145760_)
                      (let ((_e145756145768_ (gx#syntax-e _e145753145760_)))
                        (let ((_hd145757145771_ (##car _e145756145768_))
                              (_tl145758145773_ (##cdr _e145756145768_)))
                          (let ((_form145776_ _hd145757145771_))
                            (if (gx#core-bound-identifier?__0 _form145776_)
                                _stx145752_
                                (_E145755145764_)))))
                      (_E145755145764_)))))
          (_E145754145778_))))
    (define gx#core-expand-expression
      (lambda (_stx145697_)
        (letrec ((_sealed-expression?145699_
                  (lambda (_hd145720_)
                    (if (gx#sealed-syntax? _hd145720_)
                        (let* ((_e145721145728_ _hd145720_)
                               (_E145723145732_ (lambda () '#f))
                               (_E145722145746_
                                (lambda ()
                                  (if (gx#stx-pair? _e145721145728_)
                                      (let ((_e145724145736_
                                             (gx#syntax-e _e145721145728_)))
                                        (let ((_hd145725145739_
                                               (##car _e145724145736_))
                                              (_tl145726145741_
                                               (##cdr _e145724145736_)))
                                          (let ((_form145744_
                                                 _hd145725145739_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form145744_
                                                 gx#expression-form-binding?)
                                                (_E145723145732_)))))
                                      (_E145723145732_)))))
                          (_E145722145746_))
                        '#f)))
                 (_illegal-expression145700_
                  (lambda (_hd145718_ . _g150807_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx145697_
                     _hd145718_)))
                 (_expand-e145701_
                  (lambda (_form145713_ _hd145714_)
                    (let ((_bind145716_
                           (if (##structure-instance-of?
                                _form145713_
                                'gx#binding::t)
                               _form145713_
                               (gx#resolve-identifier__0 _form145713_))))
                      (if (gx#core-expander-binding? _bind145716_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind145716_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd145714_
                            (gx#stx-source _stx145697_)))
                          (if (##structure-direct-instance-of?
                               _bind145716_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind145716_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd145714_
                                 (gx#stx-source _stx145697_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx145697_
                               _form145713_)))))))
          (let ((_hd145703_ (gx#core-expand-head _stx145697_)))
            (if (_sealed-expression?145699_ _hd145703_)
                _hd145703_
                (if (gx#stx-pair? _hd145703_)
                    (let* ((_form145705_ (gx#stx-car _hd145703_))
                           (_bind145707_
                            (if (gx#identifier? _form145705_)
                                (gx#resolve-identifier__0 _form145705_)
                                '#f)))
                      (if (or (not _bind145707_)
                              (not (gx#core-expander-binding? _bind145707_)))
                          (_expand-e145701_ '%%app (cons '%%app _hd145703_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind145707_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd145703_
                               _illegal-expression145700_)
                              (if (gx#expression-form-binding? _bind145707_)
                                  (_expand-e145701_ _bind145707_ _hd145703_)
                                  (if (gx#direct-special-form-binding?
                                       _bind145707_)
                                      (gx#core-expand-expression
                                       (_expand-e145701_
                                        _bind145707_
                                        _hd145703_))
                                      (_illegal-expression145700_
                                       _hd145703_))))))
                    (if (gx#core-bound-identifier?__0 _hd145703_)
                        (_illegal-expression145700_ _hd145703_)
                        (if (gx#identifier? _hd145703_)
                            (_expand-e145701_
                             '%%ref
                             (cons '%%ref (cons _hd145703_ '())))
                            (if (gx#stx-datum? _hd145703_)
                                (_expand-e145701_
                                 '%#quote
                                 (cons '%#quote (cons _hd145703_ '())))
                                (_illegal-expression145700_
                                 _hd145703_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx145692_)
        (call-with-parameters
         (lambda ()
           (let ((_stx145695_ (gx#core-expand-expression _stx145692_)))
             (values _stx145695_ (gx#eval-syntax* _stx145695_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx145673_ _stop?145674_)
        (let _lp145676_ ((_stx145678_ _stx145673_))
          (if (_stop?145674_ _stx145678_)
              _stx145678_
              (let ((_rstx145680_ (gx#core-expand1 _stx145678_)))
                (if (eq? _stx145678_ _rstx145680_)
                    _stx145678_
                    (_lp145676_ _rstx145680_)))))))
    (define gx#core-expand*__0
      (lambda (_stx145685_)
        (let ((_stop?145687_ false))
          (gx#core-expand*__% _stx145685_ _stop?145687_))))
    (define gx#core-expand*
      (lambda _g150809_
        (let ((_g150808_ (##length _g150809_)))
          (cond ((##fx= _g150808_ 1)
                 (apply (lambda (_stx145685_) (gx#core-expand*__0 _stx145685_))
                        _g150809_))
                ((##fx= _g150808_ 2)
                 (apply (lambda (_stx145689_ _stop?145690_)
                          (gx#core-expand*__% _stx145689_ _stop?145690_))
                        _g150809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g150809_))))))
    (define gx#core-expand1
      (lambda (_stx145629_)
        (letrec ((_step145631_
                  (lambda (_hd145668_)
                    (let ((_bind145670_ (gx#resolve-identifier__0 _hd145668_)))
                      (if (##structure-instance-of?
                           _bind145670_
                           'gx#runtime-binding::t)
                          _stx145629_
                          (if (##structure-direct-instance-of?
                               _bind145670_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind145670_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx145629_)
                              (if (not _bind145670_)
                                  _stx145629_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx145629_))))))))
          (let* ((_e145632145640_ _stx145629_)
                 (_E145638145644_ (lambda () _stx145629_))
                 (_E145634145650_
                  (lambda ()
                    (let ((_hd145648_ _e145632145640_))
                      (if (gx#identifier? _hd145648_)
                          (_step145631_ _hd145648_)
                          (_E145638145644_)))))
                 (_E145633145664_
                  (lambda ()
                    (if (gx#stx-pair? _e145632145640_)
                        (let ((_e145635145654_ (gx#syntax-e _e145632145640_)))
                          (let ((_hd145636145657_ (##car _e145635145654_))
                                (_tl145637145659_ (##cdr _e145635145654_)))
                            (let ((_hd145662_ _hd145636145657_))
                              (if (gx#identifier? _hd145662_)
                                  (_step145631_ _hd145662_)
                                  (_E145634145650_)))))
                        (_E145634145650_)))))
            (_E145633145664_)))))
    (define gx#core-expand-head
      (lambda (_stx145595_)
        (letrec ((_stop?145597_
                  (lambda (_stx145599_)
                    (let* ((_e145600145607_ _stx145599_)
                           (_E145602145611_ (lambda () '#f))
                           (_E145601145625_
                            (lambda ()
                              (if (gx#stx-pair? _e145600145607_)
                                  (let ((_e145603145615_
                                         (gx#syntax-e _e145600145607_)))
                                    (let ((_hd145604145618_
                                           (##car _e145603145615_))
                                          (_tl145605145620_
                                           (##cdr _e145603145615_)))
                                      (let ((_hd145623_ _hd145604145618_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd145623_)
                                            (_E145602145611_)))))
                                  (_E145602145611_)))))
                      (_E145601145625_)))))
          (gx#core-expand*__% _stx145595_ _stop?145597_))))
    (define gx#core-expand-block__%
      (lambda (_stx145401_
               _expand-special145402_
               _begin-form145403_
               _expand-e145404_)
        (letrec ((_expand-splice145406_
                  (lambda (_hd145569_ _body145570_ _rest145571_ _r145572_)
                    (if (gx#stx-list? _body145570_)
                        (_K145410_
                         (gx#stx-foldr cons _rest145571_ _body145570_)
                         _r145572_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx145401_
                         _hd145569_))))
                 (_expand-cond-expand145407_
                  (lambda (_hd145565_ _rest145566_ _r145567_)
                    (_K145410_
                     (cons (gx#core-expand-cond-expand% _hd145565_)
                           _rest145566_)
                     _r145567_)))
                 (_expand-include145408_
                  (lambda (_hd145514_ _rest145515_ _r145516_)
                    (let* ((_e145517145527_ _hd145514_)
                           (_E145519145531_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145517145527_)))
                           (_E145518145561_
                            (lambda ()
                              (if (gx#stx-pair? _e145517145527_)
                                  (let ((_e145520145535_
                                         (gx#syntax-e _e145517145527_)))
                                    (let ((_hd145521145538_
                                           (##car _e145520145535_))
                                          (_tl145522145540_
                                           (##cdr _e145520145535_)))
                                      (if (gx#stx-pair? _tl145522145540_)
                                          (let ((_e145523145543_
                                                 (gx#syntax-e
                                                  _tl145522145540_)))
                                            (let ((_hd145524145546_
                                                   (##car _e145523145543_))
                                                  (_tl145525145548_
                                                   (##cdr _e145523145543_)))
                                              (let ((_path145551_
                                                     _hd145524145546_))
                                                (if (gx#stx-null?
                                                     _tl145525145548_)
                                                    (if (gx#stx-string?
                                                         _path145551_)
                                                        (let* ((_rpath145553_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path145551_
                         (gx#stx-source _hd145514_)))
                       (_block145555_
                        (gx#core-expand-include%__% _hd145514_ _rpath145553_))
                       (_rbody145558_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block145555_
                            _expand-special145402_
                            '#f
                            _expand-e145404_))
                         gx#current-expander-path
                         (cons _rpath145553_ (gx#current-expander-path)))))
                  (_K145410_
                   _rest145515_
                   (foldr1 cons _r145516_ _rbody145558_)))
                (_E145519145531_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E145519145531_)))))
                                          (_E145519145531_))))
                                  (_E145519145531_)))))
                      (_E145518145561_))))
                 (_expand-expression145409_
                  (lambda (_hd145510_ _rest145511_ _r145512_)
                    (_K145410_
                     _rest145511_
                     (cons (_expand-e145404_ _hd145510_) _r145512_))))
                 (_K145410_
                  (lambda (_rest145440_ _r145441_)
                    (let* ((_e145442145449_ _rest145440_)
                           (_E145444145453_
                            (lambda ()
                              (if _begin-form145403_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form145403_
                                    (reverse _r145441_))
                                   (gx#stx-source _stx145401_))
                                  _r145441_)))
                           (_E145443145506_
                            (lambda ()
                              (if (gx#stx-pair? _e145442145449_)
                                  (let ((_e145445145457_
                                         (gx#syntax-e _e145442145449_)))
                                    (let ((_hd145446145460_
                                           (##car _e145445145457_))
                                          (_tl145447145462_
                                           (##cdr _e145445145457_)))
                                      (let* ((_hd145465_ _hd145446145460_)
                                             (_rest145467_ _tl145447145462_))
                                        (if '#t
                                            (let* ((_hd145469_
                                                    (gx#core-expand-head
                                                     _hd145465_))
                                                   (_e145470145477_ _hd145469_)
                                                   (_E145472145481_
                                                    (lambda ()
                                                      (_expand-expression145409_
                                                       _hd145469_
                                                       _rest145467_
                                                       _r145441_)))
                                                   (_E145471145502_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e145470145477_)
                                                          (let ((_e145473145485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e145470145477_)))
                    (let ((_hd145474145488_ (##car _e145473145485_))
                          (_tl145475145490_ (##cdr _e145473145485_)))
                      (let* ((_form145493_ _hd145474145488_)
                             (_body145495_ _tl145475145490_))
                        (if '#t
                            (let ((_bind145497_
                                   (if (gx#identifier? _form145493_)
                                       (gx#resolve-identifier__0 _form145493_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind145497_)
                                  (let ((_$e145499_
                                         (##unchecked-structure-ref
                                          _bind145497_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e145499_)
                                        (_expand-splice145406_
                                         _hd145469_
                                         _body145495_
                                         _rest145467_
                                         _r145441_)
                                        (if (eq? '%#cond-expand _$e145499_)
                                            (_expand-cond-expand145407_
                                             _hd145469_
                                             _rest145467_
                                             _r145441_)
                                            (if (eq? '%#include _$e145499_)
                                                (_expand-include145408_
                                                 _hd145469_
                                                 _rest145467_
                                                 _r145441_)
                                                (_expand-special145402_
                                                 _hd145469_
                                                 _K145410_
                                                 _rest145467_
                                                 _r145441_)))))
                                  (_expand-expression145409_
                                   _hd145469_
                                   _rest145467_
                                   _r145441_)))
                            (_E145472145481_)))))
                  (_E145472145481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145471145502_))
                                            (_E145444145453_)))))
                                  (_E145444145453_)))))
                      (_E145443145506_)))))
          (let* ((_e145411145418_ _stx145401_)
                 (_E145413145422_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145411145418_)))
                 (_E145412145436_
                  (lambda ()
                    (if (gx#stx-pair? _e145411145418_)
                        (let ((_e145414145426_ (gx#syntax-e _e145411145418_)))
                          (let ((_hd145415145429_ (##car _e145414145426_))
                                (_tl145416145431_ (##cdr _e145414145426_)))
                            (let ((_body145434_ _tl145416145431_))
                              (if (gx#stx-list? _body145434_)
                                  (_K145410_ _body145434_ '())
                                  (_E145413145422_)))))
                        (_E145413145422_)))))
            (_E145412145436_)))))
    (define gx#core-expand-block__0
      (lambda (_stx145577_ _expand-special145578_)
        (let* ((_begin-form145580_ '%#begin)
               (_expand-e145582_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx145577_
           _expand-special145578_
           _begin-form145580_
           _expand-e145582_))))
    (define gx#core-expand-block__1
      (lambda (_stx145584_ _expand-special145585_ _begin-form145586_)
        (let ((_expand-e145588_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx145584_
           _expand-special145585_
           _begin-form145586_
           _expand-e145588_))))
    (define gx#core-expand-block
      (lambda _g150811_
        (let ((_g150810_ (##length _g150811_)))
          (cond ((##fx= _g150810_ 2)
                 (apply (lambda (_stx145577_ _expand-special145578_)
                          (gx#core-expand-block__0
                           _stx145577_
                           _expand-special145578_))
                        _g150811_))
                ((##fx= _g150810_ 3)
                 (apply (lambda (_stx145584_
                                 _expand-special145585_
                                 _begin-form145586_)
                          (gx#core-expand-block__1
                           _stx145584_
                           _expand-special145585_
                           _begin-form145586_))
                        _g150811_))
                ((##fx= _g150810_ 4)
                 (apply (lambda (_stx145590_
                                 _expand-special145591_
                                 _begin-form145592_
                                 _expand-e145593_)
                          (gx#core-expand-block__%
                           _stx145590_
                           _expand-special145591_
                           _begin-form145592_
                           _expand-e145593_))
                        _g150811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g150811_))))))
    (define gx#core-expand-block*
      (lambda (_stx145349_ _expand-special145350_)
        (let* ((_g145351145362_
                (gx#core-expand-block__1
                 _stx145349_
                 _expand-special145350_
                 '#f))
               (_E145355145366_
                (lambda () (error '"No clause matching" _g145351145362_))))
          (let ((_K145360145397_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx145349_)))
                (_K145357145383_ (lambda (_expr145381_) _expr145381_))
                (_K145356145372_
                 (lambda (_body145370_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body145370_))
                    (gx#stx-source _stx145349_)))))
            (let ((_try-match145353145393_
                   (lambda ()
                     (if (##pair? _g145351145362_)
                         (let ((_tl145359145388_ (##cdr _g145351145362_))
                               (_hd145358145386_ (##car _g145351145362_)))
                           (if (##null? _tl145359145388_)
                               (let ((_expr145391_ _hd145358145386_))
                                 (_K145357145383_ _expr145391_))
                               (let ((_body145375_ _g145351145362_))
                                 (_K145356145372_ _body145375_))))
                         (let ((_body145375_ _g145351145362_))
                           (_K145356145372_ _body145375_))))))
              (if (##null? _g145351145362_)
                  (_K145360145397_)
                  (_try-match145353145393_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx145177_)
        (letrec ((_satisfied?145179_
                  (lambda (_condition145277_)
                    (let* ((_e145278145293_ _condition145277_)
                           (_E145288145297_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145278145293_)))
                           (_E145281145316_
                            (lambda ()
                              (if (gx#stx-pair? _e145278145293_)
                                  (let ((_e145289145301_
                                         (gx#syntax-e _e145278145293_)))
                                    (let ((_hd145290145304_
                                           (##car _e145289145301_))
                                          (_tl145291145306_
                                           (##cdr _e145289145301_)))
                                      (let* ((_combinator145309_
                                              _hd145290145304_)
                                             (_body145311_ _tl145291145306_))
                                        (if (gx#stx-list? _body145311_)
                                            (let ((_$e145313_
                                                   (gx#stx-e
                                                    _combinator145309_)))
                                              (if (eq? 'not _$e145313_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?145179_
                                                        _body145311_))
                                                  (if (eq? 'and _$e145313_)
                                                      (gx#stx-andmap
                                                       _satisfied?145179_
                                                       _body145311_)
                                                      (if (eq? 'or _$e145313_)
                                                          (gx#stx-ormap
                                                           _satisfied?145179_
                                                           _body145311_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e145313_)
                      (gx#stx-andmap gx#core-resolve-identifier _body145311_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx145177_
                       _combinator145309_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E145288145297_)))))
                                  (_E145288145297_))))
                           (_E145280145339_
                            (lambda ()
                              (if (gx#stx-pair? _e145278145293_)
                                  (let ((_e145282145320_
                                         (gx#syntax-e _e145278145293_)))
                                    (let ((_hd145283145323_
                                           (##car _e145282145320_))
                                          (_tl145284145325_
                                           (##cdr _e145282145320_)))
                                      (if (and (gx#identifier?
                                                _hd145283145323_)
                                               (gx#core-identifier=?
                                                _hd145283145323_
                                                'unquote))
                                          (if (gx#stx-pair? _tl145284145325_)
                                              (let ((_e145285145328_
                                                     (gx#syntax-e
                                                      _tl145284145325_)))
                                                (let ((_hd145286145331_
                                                       (##car _e145285145328_))
                                                      (_tl145287145333_
                                                       (##cdr _e145285145328_)))
                                                  (let ((_expr145336_
                                                         _hd145286145331_))
                                                    (if (gx#stx-null?
                                                         _tl145287145333_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr145336_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E145281145316_))
                (_E145281145316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145281145316_))
                                          (_E145281145316_))))
                                  (_E145281145316_))))
                           (_E145279145345_
                            (lambda ()
                              (let ((_id145343_ _e145278145293_))
                                (if (gx#identifier? _id145343_)
                                    (gx#core-bound-identifier?__%
                                     _id145343_
                                     gx#feature-binding?)
                                    (_E145280145339_))))))
                      (_E145279145345_))))
                 (_loop145180_
                  (lambda (_rest145210_)
                    (let* ((_e145211145219_ _rest145210_)
                           (_E145217145223_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145211145219_)))
                           (_E145213145227_
                            (lambda ()
                              (if (gx#stx-null? _e145211145219_)
                                  (if '#t '() (_E145217145223_))
                                  (_E145217145223_))))
                           (_E145212145273_
                            (lambda ()
                              (if (gx#stx-pair? _e145211145219_)
                                  (let ((_e145214145231_
                                         (gx#syntax-e _e145211145219_)))
                                    (let ((_hd145215145234_
                                           (##car _e145214145231_))
                                          (_tl145216145236_
                                           (##cdr _e145214145231_)))
                                      (let* ((_hd145239_ _hd145215145234_)
                                             (_rest145241_ _tl145216145236_))
                                        (if '#t
                                            (let* ((_e145242145249_ _hd145239_)
                                                   (_E145244145253_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e145242145249_)))
                                                   (_E145243145269_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e145242145249_)
                                                          (let ((_e145245145257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e145242145249_)))
                    (let ((_hd145246145260_ (##car _e145245145257_))
                          (_tl145247145262_ (##cdr _e145245145257_)))
                      (let* ((_condition145265_ _hd145246145260_)
                             (_body145267_ _tl145247145262_))
                        (if '#t
                            (if (gx#stx-eq? _condition145265_ 'else)
                                (if (gx#stx-null? _rest145241_)
                                    _body145267_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx145177_
                                     _hd145239_))
                                (if (_satisfied?145179_ _condition145265_)
                                    _body145267_
                                    (_loop145180_ _rest145241_)))
                            (_E145244145253_)))))
                  (_E145244145253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145243145269_))
                                            (_E145213145227_)))))
                                  (_E145213145227_)))))
                      (_E145212145273_)))))
          (let* ((_e145181145188_ _stx145177_)
                 (_E145183145192_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145181145188_)))
                 (_E145182145206_
                  (lambda ()
                    (if (gx#stx-pair? _e145181145188_)
                        (let ((_e145184145196_ (gx#syntax-e _e145181145188_)))
                          (let ((_hd145185145199_ (##car _e145184145196_))
                                (_tl145186145201_ (##cdr _e145184145196_)))
                            (let ((_clauses145204_ _tl145186145201_))
                              (if (gx#stx-list? _clauses145204_)
                                  (gx#core-cons
                                   'begin
                                   (_loop145180_ _clauses145204_))
                                  (_E145183145192_)))))
                        (_E145183145192_)))))
            (_E145182145206_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx145120_ _rpath145121_)
        (let* ((_e145122145132_ _stx145120_)
               (_E145124145136_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145122145132_)))
               (_E145123145163_
                (lambda ()
                  (if (gx#stx-pair? _e145122145132_)
                      (let ((_e145125145140_ (gx#syntax-e _e145122145132_)))
                        (let ((_hd145126145143_ (##car _e145125145140_))
                              (_tl145127145145_ (##cdr _e145125145140_)))
                          (if (gx#stx-pair? _tl145127145145_)
                              (let ((_e145128145148_
                                     (gx#syntax-e _tl145127145145_)))
                                (let ((_hd145129145151_
                                       (##car _e145128145148_))
                                      (_tl145130145153_
                                       (##cdr _e145128145148_)))
                                  (let ((_path145156_ _hd145129145151_))
                                    (if (gx#stx-null? _tl145130145153_)
                                        (if (gx#stx-string? _path145156_)
                                            (let ((_rpath145161_
                                                   (let ((_$e145158_
                                                          _rpath145121_))
                                                     (if _$e145158_
                                                         _$e145158_
                                                         (gx#core-resolve-path__%
                                                          _path145156_
                                                          (gx#stx-source
                                                           _stx145120_))))))
                                              (if (member _rpath145161_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx145120_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath145161_))
                                                    (gx#stx-source
                                                     _stx145120_)))))
                                            (_E145124145136_))
                                        (_E145124145136_)))))
                              (_E145124145136_))))
                      (_E145124145136_)))))
          (_E145123145163_))))
    (define gx#core-expand-include%__0
      (lambda (_stx145170_)
        (let ((_rpath145172_ '#f))
          (gx#core-expand-include%__% _stx145170_ _rpath145172_))))
    (define gx#core-expand-include%
      (lambda _g150813_
        (let ((_g150812_ (##length _g150813_)))
          (cond ((##fx= _g150812_ 1)
                 (apply (lambda (_stx145170_)
                          (gx#core-expand-include%__0 _stx145170_))
                        _g150813_))
                ((##fx= _g150812_ 2)
                 (apply (lambda (_stx145174_ _rpath145175_)
                          (gx#core-expand-include%__%
                           _stx145174_
                           _rpath145175_))
                        _g150813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g150813_))))))
    (define gx#core-apply-expander__%
      (lambda (_K145089_ _stx145090_ _method145091_)
        (if (procedure? _K145089_)
            (let ((_$e145093_ (gx#stx-source _stx145090_)))
              (if _$e145093_
                  ((lambda (_g145095145097_)
                     (gx#stx-wrap-source
                      (_K145089_ _stx145090_)
                      _g145095145097_))
                   _$e145093_)
                  (_K145089_ _stx145090_)))
            (let ((_$e145100_ (bound-method-ref _K145089_ _method145091_)))
              (if _$e145100_
                  ((lambda (_g145102145104_)
                     (gx#core-apply-expander__%
                      _g145102145104_
                      _stx145090_
                      _method145091_))
                   _$e145100_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx145090_
                   _method145091_))))))
    (define gx#core-apply-expander__0
      (lambda (_K145110_ _stx145111_)
        (let ((_method145113_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K145110_ _stx145111_ _method145113_))))
    (define gx#core-apply-expander
      (lambda _g150815_
        (let ((_g150814_ (##length _g150815_)))
          (cond ((##fx= _g150814_ 2)
                 (apply (lambda (_K145110_ _stx145111_)
                          (gx#core-apply-expander__0 _K145110_ _stx145111_))
                        _g150815_))
                ((##fx= _g150814_ 3)
                 (apply (lambda (_K145115_ _stx145116_ _method145117_)
                          (gx#core-apply-expander__%
                           _K145115_
                           _stx145116_
                           _method145117_))
                        _g150815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g150815_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self145085_ _stx145086_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx145086_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self144938_ _stx144939_)
        (let* ((_self144940144946_ _self144938_)
               (_E144942144950_
                (lambda () (error '"No clause matching" _self144940144946_)))
               (_K144943144955_
                (lambda (_K144953_)
                  (gx#core-apply-expander__0 _K144953_ _stx144939_))))
          (if (##structure-instance-of? _self144940144946_ 'gx#core-macro::t)
              (let* ((_e144944144958_
                      (##unchecked-structure-ref
                       _self144940144946_
                       '1
                       gx#expander::t
                       '#f))
                     (_K144961_ _e144944144958_))
                (_K144943144955_ _K144961_))
              (_E144942144950_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self144791_ _stx144792_)
        (if (gx#sealed-syntax? _stx144792_)
            _stx144792_
            (let* ((_self144793144799_ _self144791_)
                   (_E144795144803_
                    (lambda ()
                      (error '"No clause matching" _self144793144799_)))
                   (_K144796144808_
                    (lambda (_K144806_)
                      (gx#core-apply-expander__0 _K144806_ _stx144792_))))
              (if (##structure-instance-of?
                   _self144793144799_
                   'gx#core-expander::t)
                  (let* ((_e144797144811_
                          (##unchecked-structure-ref
                           _self144793144799_
                           '1
                           gx#expander::t
                           '#f))
                         (_K144814_ _e144797144811_))
                    (_K144796144808_ _K144814_))
                  (_E144795144803_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self144653_ _stx144654_ _top?144655_)
        (if (_top?144655_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self144653_ _stx144654_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx144654_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self144660_ _stx144661_)
        (let ((_top?144663_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self144660_
           _stx144661_
           _top?144663_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g150817_
        (let ((_g150816_ (##length _g150817_)))
          (cond ((##fx= _g150816_ 2)
                 (apply (lambda (_self144660_ _stx144661_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self144660_
                           _stx144661_))
                        _g150817_))
                ((##fx= _g150816_ 3)
                 (apply (lambda (_self144665_ _stx144666_ _top?144667_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self144665_
                           _stx144666_
                           _top?144667_))
                        _g150817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g150817_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self144527_ _stx144528_)
        (gx#top-special-form::apply-macro-expander__%
         _self144527_
         _stx144528_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self144352_ _stx144353_)
        (let* ((_self144354144360_ _self144352_)
               (_E144356144364_
                (lambda () (error '"No clause matching" _self144354144360_)))
               (_K144357144397_
                (lambda (_id144367_)
                  (let* ((_e144368144375_ _stx144353_)
                         (_E144370144379_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e144368144375_)))
                         (_E144369144393_
                          (lambda ()
                            (if (gx#stx-pair? _e144368144375_)
                                (let ((_e144371144383_
                                       (gx#syntax-e _e144368144375_)))
                                  (let ((_hd144372144386_
                                         (##car _e144371144383_))
                                        (_tl144373144388_
                                         (##cdr _e144371144383_)))
                                    (let ((_body144391_ _tl144373144388_))
                                      (if '#t
                                          (gx#core-cons
                                           _id144367_
                                           _body144391_)
                                          (_E144370144379_)))))
                                (_E144370144379_)))))
                    (_E144369144393_)))))
          (if (##structure-instance-of?
               _self144354144360_
               'gx#rename-macro-expander::t)
              (let* ((_e144358144400_
                      (##unchecked-structure-ref
                       _self144354144360_
                       '1
                       gx#expander::t
                       '#f))
                     (_id144403_ _e144358144400_))
                (_K144357144397_ _id144403_))
              (_E144356144364_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self144178_ _stx144179_ _method144180_)
        (let* ((_self144181144189_ _self144178_)
               (_E144183144193_
                (lambda () (error '"No clause matching" _self144181144189_)))
               (_K144184144200_
                (lambda (_phi144196_ _ctx144197_ _K144198_)
                  (gx#core-apply-user-macro
                   _K144198_
                   _stx144179_
                   _ctx144197_
                   _phi144196_
                   _method144180_))))
          (if (##structure-instance-of?
               _self144181144189_
               'gx#macro-expander::t)
              (let* ((_e144185144203_
                      (##unchecked-structure-ref
                       _self144181144189_
                       '1
                       gx#expander::t
                       '#f))
                     (_K144206_ _e144185144203_)
                     (_e144186144208_
                      (##unchecked-structure-ref
                       _self144181144189_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx144211_ _e144186144208_)
                     (_e144187144213_
                      (##unchecked-structure-ref
                       _self144181144189_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi144216_ _e144187144213_))
                (_K144184144200_ _phi144216_ _ctx144211_ _K144206_))
              (_E144183144193_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self144221_ _stx144222_)
        (let ((_method144224_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self144221_
           _stx144222_
           _method144224_))))
    (define gx#core-apply-user-expander
      (lambda _g150819_
        (let ((_g150818_ (##length _g150819_)))
          (cond ((##fx= _g150818_ 2)
                 (apply (lambda (_self144221_ _stx144222_)
                          (gx#core-apply-user-expander__0
                           _self144221_
                           _stx144222_))
                        _g150819_))
                ((##fx= _g150818_ 3)
                 (apply (lambda (_self144226_ _stx144227_ _method144228_)
                          (gx#core-apply-user-expander__%
                           _self144226_
                           _stx144227_
                           _method144228_))
                        _g150819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g150819_))))))
    (define gx#core-apply-user-macro
      (lambda (_K144168_ _stx144169_ _ctx144170_ _phi144171_ _method144172_)
        (let ((_mark144174_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx144170_
                _phi144171_
                _stx144169_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K144168_
               (gx#stx-apply-mark _stx144169_ _mark144174_)
               _method144172_)
              _mark144174_))
           gx#current-expander-marks
           (cons _mark144174_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx144020_ _phi144021_ _ctx144022_)
        (let _lp144024_ ((_bind144026_
                          (gx#core-resolve-identifier__%
                           _stx144020_
                           _phi144021_
                           _ctx144022_)))
          (if (##structure-direct-instance-of?
               _bind144026_
               'gx#import-binding::t)
              (_lp144024_
               (##unchecked-structure-ref
                _bind144026_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind144026_
                   'gx#alias-binding::t)
                  (_lp144024_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind144026_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi144021_
                    _ctx144022_))
                  _bind144026_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx144031_)
        (let* ((_phi144033_ (gx#current-expander-phi))
               (_ctx144035_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx144031_ _phi144033_ _ctx144035_))))
    (define gx#resolve-identifier__1
      (lambda (_stx144037_ _phi144038_)
        (let ((_ctx144040_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx144037_ _phi144038_ _ctx144040_))))
    (define gx#resolve-identifier
      (lambda _g150821_
        (let ((_g150820_ (##length _g150821_)))
          (cond ((##fx= _g150820_ 1)
                 (apply (lambda (_stx144031_)
                          (gx#resolve-identifier__0 _stx144031_))
                        _g150821_))
                ((##fx= _g150820_ 2)
                 (apply (lambda (_stx144037_ _phi144038_)
                          (gx#resolve-identifier__1 _stx144037_ _phi144038_))
                        _g150821_))
                ((##fx= _g150820_ 3)
                 (apply (lambda (_stx144042_ _phi144043_ _ctx144044_)
                          (gx#resolve-identifier__%
                           _stx144042_
                           _phi144043_
                           _ctx144044_))
                        _g150821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g150821_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx143978_ _val143979_ _rebind?143980_ _phi143981_ _ctx143982_)
        (let ((_rebind?143984_
               (if (not _rebind?143980_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?143980_) _rebind?143980_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx143978_)
           _val143979_
           _rebind?143984_
           _phi143981_
           _ctx143982_))))
    (define gx#bind-identifier!__0
      (lambda (_stx143989_ _val143990_)
        (let* ((_rebind?143992_ '#f)
               (_phi143994_ (gx#current-expander-phi))
               (_ctx143996_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx143989_
           _val143990_
           _rebind?143992_
           _phi143994_
           _ctx143996_))))
    (define gx#bind-identifier!__1
      (lambda (_stx143998_ _val143999_ _rebind?144000_)
        (let* ((_phi144002_ (gx#current-expander-phi))
               (_ctx144004_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx143998_
           _val143999_
           _rebind?144000_
           _phi144002_
           _ctx144004_))))
    (define gx#bind-identifier!__2
      (lambda (_stx144006_ _val144007_ _rebind?144008_ _phi144009_)
        (let ((_ctx144011_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx144006_
           _val144007_
           _rebind?144008_
           _phi144009_
           _ctx144011_))))
    (define gx#bind-identifier!
      (lambda _g150823_
        (let ((_g150822_ (##length _g150823_)))
          (cond ((##fx= _g150822_ 2)
                 (apply (lambda (_stx143989_ _val143990_)
                          (gx#bind-identifier!__0 _stx143989_ _val143990_))
                        _g150823_))
                ((##fx= _g150822_ 3)
                 (apply (lambda (_stx143998_ _val143999_ _rebind?144000_)
                          (gx#bind-identifier!__1
                           _stx143998_
                           _val143999_
                           _rebind?144000_))
                        _g150823_))
                ((##fx= _g150822_ 4)
                 (apply (lambda (_stx144006_
                                 _val144007_
                                 _rebind?144008_
                                 _phi144009_)
                          (gx#bind-identifier!__2
                           _stx144006_
                           _val144007_
                           _rebind?144008_
                           _phi144009_))
                        _g150823_))
                ((##fx= _g150822_ 5)
                 (apply (lambda (_stx144013_
                                 _val144014_
                                 _rebind?144015_
                                 _phi144016_
                                 _ctx144017_)
                          (gx#bind-identifier!__%
                           _stx144013_
                           _val144014_
                           _rebind?144015_
                           _phi144016_
                           _ctx144017_))
                        _g150823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g150823_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx143950_ _phi143951_ _ctx143952_)
        (let _lp143954_ ((_e143956_ _stx143950_)
                         (_marks143957_ (gx#current-expander-marks)))
          (if (symbol? _e143956_)
              (gx#core-resolve-binding
               _e143956_
               _phi143951_
               _phi143951_
               _ctx143952_
               (reverse _marks143957_))
              (if (gx#identifier-quote? _e143956_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e143956_ '1 gx#AST::t '#f)
                   _phi143951_
                   '0
                   (##unchecked-structure-ref
                    _e143956_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e143956_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e143956_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e143956_ '1 gx#AST::t '#f)
                       _phi143951_
                       _phi143951_
                       _ctx143952_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e143956_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks143957_))
                      (if (##structure-direct-instance-of?
                           _e143956_
                           'gx#syntax-wrap::t)
                          (_lp143954_
                           (##unchecked-structure-ref
                            _e143956_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e143956_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks143957_))
                          (if (##structure-instance-of?
                               _e143956_
                               'gerbil#AST::t)
                              (_lp143954_
                               (##unchecked-structure-ref
                                _e143956_
                                '1
                                gx#AST::t
                                '#f)
                               _marks143957_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx143950_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx143962_)
        (let* ((_phi143964_ (gx#current-expander-phi))
               (_ctx143966_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx143962_
           _phi143964_
           _ctx143966_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx143968_ _phi143969_)
        (let ((_ctx143971_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx143968_
           _phi143969_
           _ctx143971_))))
    (define gx#core-resolve-identifier
      (lambda _g150825_
        (let ((_g150824_ (##length _g150825_)))
          (cond ((##fx= _g150824_ 1)
                 (apply (lambda (_stx143962_)
                          (gx#core-resolve-identifier__0 _stx143962_))
                        _g150825_))
                ((##fx= _g150824_ 2)
                 (apply (lambda (_stx143968_ _phi143969_)
                          (gx#core-resolve-identifier__1
                           _stx143968_
                           _phi143969_))
                        _g150825_))
                ((##fx= _g150824_ 3)
                 (apply (lambda (_stx143973_ _phi143974_ _ctx143975_)
                          (gx#core-resolve-identifier__%
                           _stx143973_
                           _phi143974_
                           _ctx143975_))
                        _g150825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g150825_))))))
    (define gx#core-resolve-binding
      (lambda (_id143863_
               _phi143864_
               _src-phi143865_
               _ctx143866_
               _marks143867_)
        (letrec ((_resolve143869_
                  (lambda (_ctx143937_ _src-phi143938_ _key143939_)
                    (let _lp143941_ ((_ctx143943_
                                      (gx#core-context-shift
                                       _ctx143937_
                                       _phi143864_))
                                     (_dphi143944_
                                      (fx- _phi143864_ _src-phi143938_)))
                      (let ((_$e143946_
                             (gx#core-context-resolve
                              _ctx143943_
                              _key143939_)))
                        (if _$e143946_
                            (values _$e143946_)
                            (if (fxzero? _dphi143944_)
                                '#f
                                (if (fxpositive? _dphi143944_)
                                    (_lp143941_
                                     (gx#core-context-shift _ctx143943_ '-1)
                                     (fx- _dphi143944_ '1))
                                    (_lp143941_
                                     (gx#core-context-shift _ctx143943_ '1)
                                     (fx+ _dphi143944_ '1))))))))))
          (let _lp143871_ ((_ctx143873_ _ctx143866_)
                           (_src-phi143874_ _src-phi143865_)
                           (_rest143875_ _marks143867_))
            (let* ((_rest143876143884_ _rest143875_)
                   (_else143878143892_
                    (lambda ()
                      (_resolve143869_
                       _ctx143873_
                       _src-phi143874_
                       _id143863_)))
                   (_K143880143925_
                    (lambda (_rest143895_ _hd143896_)
                      (let* ((_hd143897143903_ _hd143896_)
                             (_E143899143907_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd143897143903_)))
                             (_K143900143917_
                              (lambda (_subst143910_)
                                (let ((_$e143914_
                                       (let ((_key143912_
                                              (if _subst143910_
                                                  (table-ref
                                                   _subst143910_
                                                   _id143863_
                                                   '#f)
                                                  '#f)))
                                         (if _key143912_
                                             (_resolve143869_
                                              _ctx143873_
                                              _src-phi143874_
                                              _key143912_)
                                             '#f))))
                                  (if _$e143914_
                                      _$e143914_
                                      (_lp143871_
                                       (##unchecked-structure-ref
                                        _hd143896_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd143896_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest143895_))))))
                        (if (##structure-instance-of?
                             _hd143897143903_
                             'gx#expander-mark::t)
                            (let* ((_e143901143920_
                                    (##unchecked-structure-ref
                                     _hd143897143903_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst143923_ _e143901143920_))
                              (_K143900143917_ _subst143923_))
                            (_E143899143907_))))))
              (if (##pair? _rest143876143884_)
                  (let ((_hd143881143928_ (##car _rest143876143884_))
                        (_tl143882143930_ (##cdr _rest143876143884_)))
                    (let* ((_hd143933_ _hd143881143928_)
                           (_rest143935_ _tl143882143930_))
                      (_K143880143925_ _rest143935_ _hd143933_)))
                  (_else143878143892_)))))))
    (define gx#core-bind!__%
      (lambda (_key143739_ _val143740_ _rebind?143741_ _phi143742_ _ctx143743_)
        (letrec ((_update-binding143745_
                  (lambda (_xval143816_)
                    (if (or (_rebind?143741_
                             _ctx143743_
                             _xval143816_
                             _val143740_)
                            (and (##structure-direct-instance-of?
                                  _xval143816_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval143816_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val143740_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val143740_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval143816_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val143740_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val143740_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval143816_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val143740_
                        (if (and (##structure-direct-instance-of?
                                  _val143740_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val143740_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval143816_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val143740_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval143816_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval143816_
                            (if (and (##structure-direct-instance-of?
                                      _val143740_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval143816_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key143739_
                                 (cons (##unchecked-structure-ref
                                        _val143740_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val143740_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval143816_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval143816_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval143816_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval143816_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key143739_
                                 _val143740_
                                 _xval143816_))))))
                 (_gensubst143746_
                  (lambda (_subst143811_ _id143812_)
                    (let ((_eid143814_
                           (gensym (if (uninterned-symbol? _id143812_)
                                       '%
                                       _id143812_))))
                      (table-set! _subst143811_ _id143812_ _eid143814_)
                      _eid143814_)))
                 (_subst!143747_
                  (lambda (_key143749_)
                    (let* ((_key143750143758_ _key143749_)
                           (_else143752143766_ (lambda () _key143749_))
                           (_K143754143799_
                            (lambda (_mark143769_ _id143770_)
                              (let* ((_mark143771143777_ _mark143769_)
                                     (_E143773143781_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark143771143777_)))
                                     (_K143774143791_
                                      (lambda (_subst143784_)
                                        (if (not _subst143784_)
                                            (let ((_subst143786_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark143769_
                                               _subst143786_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst143746_
                                               _subst143786_
                                               _id143770_))
                                            (let ((_$e143788_
                                                   (table-ref
                                                    _subst143784_
                                                    _id143770_
                                                    '#f)))
                                              (if _$e143788_
                                                  (values _$e143788_)
                                                  (_gensubst143746_
                                                   _subst143784_
                                                   _id143770_)))))))
                                (if (##structure-instance-of?
                                     _mark143771143777_
                                     'gx#expander-mark::t)
                                    (let* ((_e143775143794_
                                            (##unchecked-structure-ref
                                             _mark143771143777_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst143797_ _e143775143794_))
                                      (_K143774143791_ _subst143797_))
                                    (_E143773143781_))))))
                      (if (##pair? _key143750143758_)
                          (let ((_hd143755143802_ (##car _key143750143758_))
                                (_tl143756143804_ (##cdr _key143750143758_)))
                            (let* ((_id143807_ _hd143755143802_)
                                   (_mark143809_ _tl143756143804_))
                              (_K143754143799_ _mark143809_ _id143807_)))
                          (_else143752143766_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx143743_ _phi143742_)
           (_subst!143747_ _key143739_)
           _val143740_
           _update-binding143745_))))
    (define gx#core-bind!__0
      (lambda (_key143833_ _val143834_)
        (let* ((_rebind?143836_ false)
               (_phi143838_ (gx#current-expander-phi))
               (_ctx143840_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143833_
           _val143834_
           _rebind?143836_
           _phi143838_
           _ctx143840_))))
    (define gx#core-bind!__1
      (lambda (_key143842_ _val143843_ _rebind?143844_)
        (let* ((_phi143846_ (gx#current-expander-phi))
               (_ctx143848_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143842_
           _val143843_
           _rebind?143844_
           _phi143846_
           _ctx143848_))))
    (define gx#core-bind!__2
      (lambda (_key143850_ _val143851_ _rebind?143852_ _phi143853_)
        (let ((_ctx143855_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143850_
           _val143851_
           _rebind?143852_
           _phi143853_
           _ctx143855_))))
    (define gx#core-bind!
      (lambda _g150827_
        (let ((_g150826_ (##length _g150827_)))
          (cond ((##fx= _g150826_ 2)
                 (apply (lambda (_key143833_ _val143834_)
                          (gx#core-bind!__0 _key143833_ _val143834_))
                        _g150827_))
                ((##fx= _g150826_ 3)
                 (apply (lambda (_key143842_ _val143843_ _rebind?143844_)
                          (gx#core-bind!__1
                           _key143842_
                           _val143843_
                           _rebind?143844_))
                        _g150827_))
                ((##fx= _g150826_ 4)
                 (apply (lambda (_key143850_
                                 _val143851_
                                 _rebind?143852_
                                 _phi143853_)
                          (gx#core-bind!__2
                           _key143850_
                           _val143851_
                           _rebind?143852_
                           _phi143853_))
                        _g150827_))
                ((##fx= _g150826_ 5)
                 (apply (lambda (_key143857_
                                 _val143858_
                                 _rebind?143859_
                                 _phi143860_
                                 _ctx143861_)
                          (gx#core-bind!__%
                           _key143857_
                           _val143858_
                           _rebind?143859_
                           _phi143860_
                           _ctx143861_))
                        _g150827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g150827_))))))
    (define gx#core-identifier-key
      (lambda (_stx143673_)
        (if (symbol? _stx143673_)
            (let* ((_g143674143682_ (gx#current-expander-marks))
                   (_else143676143690_ (lambda () _stx143673_))
                   (_K143678143695_
                    (lambda (_hd143693_) (cons _stx143673_ _hd143693_))))
              (if (##pair? _g143674143682_)
                  (let* ((_hd143679143698_ (##car _g143674143682_))
                         (_hd143701_ _hd143679143698_))
                    (_K143678143695_ _hd143701_))
                  (_else143676143690_)))
            (if (gx#identifier? _stx143673_)
                (let* ((_id143703_ (gx#syntax-local-unwrap _stx143673_))
                       (_eid143705_ (gx#stx-e _id143703_))
                       (_marks143707_ (gx#stx-identifier-marks* _id143703_)))
                  (let* ((_marks143709143717_ _marks143707_)
                         (_else143711143725_ (lambda () _eid143705_))
                         (_K143713143730_
                          (lambda (_hd143728_) (cons _eid143705_ _hd143728_))))
                    (if (##pair? _marks143709143717_)
                        (let* ((_hd143714143733_ (##car _marks143709143717_))
                               (_hd143736_ _hd143714143733_))
                          (_K143713143730_ _hd143736_))
                        (_else143711143725_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx143673_)))))
    (define gx#core-context-shift
      (lambda (_ctx143618_ _phi143619_)
        (letrec ((_make-phi143621_
                  (lambda (_super143671_)
                    (let ((__obj150798
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj150798
                       (gensym 'phi)
                       _super143671_)
                      __obj150798)))
                 (_make-phi/up143622_
                  (lambda (_ctx143666_ _super143667_)
                    (let ((_ctx+1143669_ (_make-phi143621_ _super143667_)))
                      (##unchecked-structure-set!
                       _ctx143666_
                       _ctx+1143669_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1143669_
                       _ctx143666_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1143669_)))
                 (_make-phi/down143623_
                  (lambda (_ctx143661_ _super143662_)
                    (let ((_ctx-1143664_ (_make-phi143621_ _super143662_)))
                      (##unchecked-structure-set!
                       _ctx-1143664_
                       _ctx143661_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx143661_
                       _ctx-1143664_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1143664_)))
                 (_shift143624_
                  (lambda (_ctx143645_
                           _delta143646_
                           _make-delta-context143647_
                           _phi143648_
                           _K143649_)
                    (let ((_$e143651_
                           (##unchecked-structure-ref
                            _ctx143645_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e143651_
                          ((lambda (_super143654_)
                             (let* ((_super143656_
                                     (_K143649_ _super143654_ _delta143646_))
                                    (_ctx+d143658_
                                     (_make-delta-context143647_
                                      _ctx143645_
                                      _super143656_)))
                               (_K143649_
                                _ctx+d143658_
                                (fx- _phi143648_ _delta143646_))))
                           _$e143651_)
                          (error '"Bad context" _ctx143645_))))))
          (let _K143626_ ((_ctx143628_ _ctx143618_) (_phi143629_ _phi143619_))
            (if (fxzero? _phi143629_)
                _ctx143628_
                (if (fx> (##vector-length _ctx143628_) '3)
                    (if (fxpositive? _phi143629_)
                        (let ((_$e143631_
                               (##unchecked-structure-ref
                                _ctx143628_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e143631_
                              ((lambda (_g143633143635_)
                                 (_K143626_
                                  _g143633143635_
                                  (fx- _phi143629_ '1)))
                               _$e143631_)
                              (_shift143624_
                               _ctx143628_
                               '1
                               _make-phi/up143622_
                               _phi143629_
                               _K143626_)))
                        (let ((_$e143638_
                               (##unchecked-structure-ref
                                _ctx143628_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e143638_
                              ((lambda (_g143640143642_)
                                 (_K143626_
                                  _g143640143642_
                                  (fx+ _phi143629_ '1)))
                               _$e143638_)
                              (_shift143624_
                               _ctx143628_
                               '-1
                               _make-phi/down143623_
                               _phi143629_
                               _K143626_))))
                    _ctx143628_))))))
    (define gx#core-context-get
      (lambda (_ctx143615_ _key143616_)
        (table-ref
         (##unchecked-structure-ref _ctx143615_ '2 gx#expander-context::t '#f)
         _key143616_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx143611_ _key143612_ _val143613_)
        (table-set!
         (##unchecked-structure-ref _ctx143611_ '2 gx#expander-context::t '#f)
         _key143612_
         _val143613_)))
    (define gx#core-context-resolve
      (lambda (_ctx143598_ _key143599_)
        (let _lp143601_ ((_ctx143603_ _ctx143598_))
          (let ((_$e143605_ (gx#core-context-get _ctx143603_ _key143599_)))
            (if _$e143605_
                (values _$e143605_)
                (let ((_$e143608_
                       (if (fx> (##vector-length _ctx143603_) '3)
                           (##unchecked-structure-ref
                            _ctx143603_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e143608_ (_lp143601_ _$e143608_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx143588_ _key143589_ _val143590_ _rebind143591_)
        (let ((_$e143593_ (gx#core-context-get _ctx143588_ _key143589_)))
          (if _$e143593_
              ((lambda (_xval143596_)
                 (gx#core-context-put!
                  _ctx143588_
                  _key143589_
                  (_rebind143591_ _xval143596_)))
               _$e143593_)
              (gx#core-context-put! _ctx143588_ _key143589_ _val143590_)))))
    (define gx#core-context-top__%
      (lambda (_ctx143566_ _stop?143567_)
        (let _lp143569_ ((_ctx143571_ _ctx143566_))
          (if (_stop?143567_ _ctx143571_)
              _ctx143571_
              (if (##structure-instance-of? _ctx143571_ 'gx#context-phi::t)
                  (_lp143569_
                   (##unchecked-structure-ref
                    _ctx143571_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx143577_ (gx#current-expander-context))
               (_stop?143579_ gx#top-context?))
          (gx#core-context-top__% _ctx143577_ _stop?143579_))))
    (define gx#core-context-top__1
      (lambda (_ctx143581_)
        (let ((_stop?143583_ gx#top-context?))
          (gx#core-context-top__% _ctx143581_ _stop?143583_))))
    (define gx#core-context-top
      (lambda _g150829_
        (let ((_g150828_ (##length _g150829_)))
          (cond ((##fx= _g150828_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g150829_))
                ((##fx= _g150828_ 1)
                 (apply (lambda (_ctx143581_)
                          (gx#core-context-top__1 _ctx143581_))
                        _g150829_))
                ((##fx= _g150828_ 2)
                 (apply (lambda (_ctx143585_ _stop?143586_)
                          (gx#core-context-top__% _ctx143585_ _stop?143586_))
                        _g150829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g150829_))))))
    (define gx#core-context-root__%
      (lambda (_ctx143551_)
        (let _lp143553_ ((_ctx143555_ _ctx143551_))
          (if (##structure-instance-of? _ctx143555_ 'gx#context-phi::t)
              (_lp143553_
               (##unchecked-structure-ref
                _ctx143555_
                '3
                gx#phi-context::t
                '#f))
              _ctx143555_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx143561_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx143561_))))
    (define gx#core-context-root
      (lambda _g150831_
        (let ((_g150830_ (##length _g150831_)))
          (cond ((##fx= _g150830_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g150831_))
                ((##fx= _g150830_ 1)
                 (apply (lambda (_ctx143563_)
                          (gx#core-context-root__% _ctx143563_))
                        _g150831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g150831_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx143532_ . __143529143533_)
        (let ((_$e143536_ (gx#current-expander-allow-rebind?)))
          (if _$e143536_
              _$e143536_
              (if (##structure-instance-of? _ctx143532_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx143532_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx143532_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx143543_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx143543_))))
    (define gx#core-context-rebind?
      (lambda _g150833_
        (let ((_g150832_ (##length _g150833_)))
          (cond ((##fx= _g150832_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g150833_))
                ((##fx= _g150832_ 1)
                 (apply (lambda (_ctx143545_)
                          (gx#core-context-rebind?__% _ctx143545_))
                        _g150833_))
                ((##fx>= _g150832_ 1)
                 (apply gx#core-context-rebind?__% _g150833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g150833_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx143515_)
        (let ((_$e143517_ (gx#core-context-top__1 _ctx143515_)))
          (if _$e143517_
              ((lambda (_ctx143520_)
                 (if (##structure-instance-of?
                      _ctx143520_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx143520_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e143517_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx143526_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx143526_))))
    (define gx#core-context-namespace
      (lambda _g150835_
        (let ((_g150834_ (##length _g150835_)))
          (cond ((##fx= _g150834_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g150835_))
                ((##fx= _g150834_ 1)
                 (apply (lambda (_ctx143528_)
                          (gx#core-context-namespace__% _ctx143528_))
                        _g150835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g150835_))))))
    (define gx#expander-binding?__%
      (lambda (_bind143501_ _is?143502_)
        (if (##structure-direct-instance-of?
             _bind143501_
             'gx#syntax-binding::t)
            (_is?143502_
             (##unchecked-structure-ref
              _bind143501_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind143507_)
        (let ((_is?143509_ gx#expander?))
          (gx#expander-binding?__% _bind143507_ _is?143509_))))
    (define gx#expander-binding?
      (lambda _g150837_
        (let ((_g150836_ (##length _g150837_)))
          (cond ((##fx= _g150836_ 1)
                 (apply (lambda (_bind143507_)
                          (gx#expander-binding?__0 _bind143507_))
                        _g150837_))
                ((##fx= _g150836_ 2)
                 (apply (lambda (_bind143511_ _is?143512_)
                          (gx#expander-binding?__% _bind143511_ _is?143512_))
                        _g150837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g150837_))))))
    (define gx#core-expander-binding?
      (lambda (_bind143498_)
        (gx#expander-binding?__% _bind143498_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind143496_)
        (gx#expander-binding?__% _bind143496_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind143490_)
        (letrec ((_direct-special-form?143492_
                  (lambda (_obj143494_)
                    (##structure-direct-instance-of?
                     _obj143494_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind143490_
           _direct-special-form?143492_))))
    (define gx#special-form-binding?
      (lambda (_bind143488_)
        (gx#expander-binding?__% _bind143488_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind143479_)
        (letrec ((_feature?143481_
                  (lambda (_e143483_)
                    (let ((_$e143485_
                           (##structure-instance-of?
                            _e143483_
                            'gx#feature-expander::t)))
                      (if _$e143485_
                          _$e143485_
                          (##structure-instance-of?
                           _e143483_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind143479_ _feature?143481_))))
    (define gx#private-feature-binding?
      (lambda (_bind143477_)
        (gx#expander-binding?__% _bind143477_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id143464_ _bound?143465_)
        (if (gx#identifier? _id143464_)
            (_bound?143465_ (gx#resolve-identifier__0 _id143464_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id143470_)
        (let ((_bound?143472_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id143470_ _bound?143472_))))
    (define gx#core-bound-identifier?
      (lambda _g150839_
        (let ((_g150838_ (##length _g150839_)))
          (cond ((##fx= _g150838_ 1)
                 (apply (lambda (_id143470_)
                          (gx#core-bound-identifier?__0 _id143470_))
                        _g150839_))
                ((##fx= _g150838_ 2)
                 (apply (lambda (_id143474_ _bound?143475_)
                          (gx#core-bound-identifier?__%
                           _id143474_
                           _bound?143475_))
                        _g150839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g150839_))))))
    (define gx#core-identifier=?
      (lambda (_x143454_ _y143455_)
        (letrec ((_y=?143457_
                  (lambda (_xid143461_)
                    ((if (list? _y143455_) memq eq?) _xid143461_ _y143455_))))
          (let ((_bind143459_ (gx#resolve-identifier__0 _x143454_)))
            (if (##structure-instance-of? _bind143459_ 'gx#binding::t)
                (_y=?143457_
                 (##unchecked-structure-ref _bind143459_ '1 gx#binding::t '#f))
                (_y=?143457_ (gx#stx-e _x143454_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e143452_)
        (if (interned-symbol? _e143452_)
            (string-index (symbol->string _e143452_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx143407_ _src143408_ _ctx143409_ _marks143410_)
        (if (##structure? _stx143407_)
            (let ((_$e143412_ (gx#sealed-syntax-unwrap _stx143407_)))
              (if _$e143412_
                  (values _$e143412_)
                  (if (gx#identifier? _stx143407_)
                      (let ((_id143415_
                             (gx#stx-unwrap__% _stx143407_ _marks143410_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id143415_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e143417_
                                (##unchecked-structure-ref
                                 _id143415_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e143417_ _$e143417_ _src143408_))
                         _ctx143409_
                         (##unchecked-structure-ref
                          _id143415_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx143407_)
                       (let ((_$e143420_ (gx#stx-source _stx143407_)))
                         (if _$e143420_ _$e143420_ _src143408_))
                       _ctx143409_
                       (reverse _marks143410_)))))
            (##structure
             gx#syntax-quote::t
             _stx143407_
             _src143408_
             _ctx143409_
             (reverse _marks143410_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx143426_)
        (let* ((_src143428_ '#f)
               (_ctx143430_ (gx#current-expander-context))
               (_marks143432_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143426_
           _src143428_
           _ctx143430_
           _marks143432_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx143434_ _src143435_)
        (let* ((_ctx143437_ (gx#current-expander-context))
               (_marks143439_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143434_
           _src143435_
           _ctx143437_
           _marks143439_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx143441_ _src143442_ _ctx143443_)
        (let ((_marks143445_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143441_
           _src143442_
           _ctx143443_
           _marks143445_))))
    (define gx#core-quote-syntax
      (lambda _g150841_
        (let ((_g150840_ (##length _g150841_)))
          (cond ((##fx= _g150840_ 1)
                 (apply (lambda (_stx143426_)
                          (gx#core-quote-syntax__0 _stx143426_))
                        _g150841_))
                ((##fx= _g150840_ 2)
                 (apply (lambda (_stx143434_ _src143435_)
                          (gx#core-quote-syntax__1 _stx143434_ _src143435_))
                        _g150841_))
                ((##fx= _g150840_ 3)
                 (apply (lambda (_stx143441_ _src143442_ _ctx143443_)
                          (gx#core-quote-syntax__2
                           _stx143441_
                           _src143442_
                           _ctx143443_))
                        _g150841_))
                ((##fx= _g150840_ 4)
                 (apply (lambda (_stx143447_
                                 _src143448_
                                 _ctx143449_
                                 _marks143450_)
                          (gx#core-quote-syntax__%
                           _stx143447_
                           _src143448_
                           _ctx143449_
                           _marks143450_))
                        _g150841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g150841_))))))
    (define gx#core-cons
      (lambda (_hd143403_ _tl143404_)
        (cons (gx#core-quote-syntax__0 _hd143403_) _tl143404_)))
    (define gx#core-list
      (lambda (_hd143400_ . _rest143401_)
        (cons (gx#core-quote-syntax__0 _hd143400_) _rest143401_)))
    (define gx#core-cons*
      (lambda (_hd143397_ . _rest143398_)
        (apply cons* (gx#core-quote-syntax__0 _hd143397_) _rest143398_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path143371_ _rel143372_)
        (let ((_path143384_ (gx#stx-e _stx-path143371_))
              (_reldir143385_
               (let _lp143374_ ((_relsrc143376_
                                 (let ((_$e143381_
                                        (gx#stx-source _stx-path143371_)))
                                   (if _$e143381_ _$e143381_ _rel143372_))))
                 (if (##structure-instance-of? _relsrc143376_ 'gerbil#AST::t)
                     (_lp143374_
                      (let ((_$e143378_ (gx#stx-source _relsrc143376_)))
                        (if _$e143378_ _$e143378_ (gx#stx-e _relsrc143376_))))
                     (if (source-location-path? _relsrc143376_)
                         (path-directory (source-location-path _relsrc143376_))
                         (if (string? _relsrc143376_)
                             (path-directory _relsrc143376_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path143384_ (path-normalize _reldir143385_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path143390_)
        (let ((_rel143392_ '#f))
          (gx#core-resolve-path__% _stx-path143390_ _rel143392_))))
    (define gx#core-resolve-path
      (lambda _g150843_
        (let ((_g150842_ (##length _g150843_)))
          (cond ((##fx= _g150842_ 1)
                 (apply (lambda (_stx-path143390_)
                          (gx#core-resolve-path__0 _stx-path143390_))
                        _g150843_))
                ((##fx= _g150842_ 2)
                 (apply (lambda (_stx-path143394_ _rel143395_)
                          (gx#core-resolve-path__%
                           _stx-path143394_
                           _rel143395_))
                        _g150843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g150843_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr143327_ _ctx143328_)
        (let* ((_repr143329143336_ _repr143327_)
               (_E143331143340_
                (lambda () (error '"No clause matching" _repr143329143336_)))
               (_K143332143348_
                (lambda (_subs143343_ _phi143344_)
                  (let ((_subst143346_
                         (if (not (null? _subs143343_))
                             (list->table _subs143343_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst143346_
                     _ctx143328_
                     _phi143344_
                     '#f)))))
          (if (##pair? _repr143329143336_)
              (let ((_hd143333143351_ (##car _repr143329143336_))
                    (_tl143334143353_ (##cdr _repr143329143336_)))
                (let* ((_phi143356_ _hd143333143351_)
                       (_subs143358_ _tl143334143353_))
                  (_K143332143348_ _subs143358_ _phi143356_)))
              (_E143331143340_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr143363_)
        (let ((_ctx143365_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr143363_ _ctx143365_))))
    (define gx#core-deserialize-mark
      (lambda _g150845_
        (let ((_g150844_ (##length _g150845_)))
          (cond ((##fx= _g150844_ 1)
                 (apply (lambda (_repr143363_)
                          (gx#core-deserialize-mark__0 _repr143363_))
                        _g150845_))
                ((##fx= _g150844_ 2)
                 (apply (lambda (_repr143367_ _ctx143368_)
                          (gx#core-deserialize-mark__%
                           _repr143367_
                           _ctx143368_))
                        _g150845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g150845_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx143324_)
        (gx#stx-rewrap _stx143324_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx143322_)
        (gx#stx-unwrap__% _stx143322_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx143292_)
        (let* ((_g143293143301_ (gx#current-expander-marks))
               (_else143295143309_ (lambda () _stx143292_))
               (_K143297143314_
                (lambda (_hd143312_)
                  (gx#stx-apply-mark _stx143292_ _hd143312_))))
          (if (##pair? _g143293143301_)
              (let* ((_hd143298143317_ (##car _g143293143301_))
                     (_hd143320_ _hd143298143317_))
                (_K143297143314_ _hd143320_))
              (_else143295143309_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx143277_ _E143278_)
        (let ((_bind143280_ (gx#resolve-identifier__0 _stx143277_)))
          (if (##structure-direct-instance-of?
               _bind143280_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind143280_
               '4
               gx#syntax-binding::t
               '#f)
              (_E143278_ _stx143277_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx143285_)
        (let ((_E143287_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx143285_ _E143287_))))
    (define gx#syntax-local-e
      (lambda _g150847_
        (let ((_g150846_ (##length _g150847_)))
          (cond ((##fx= _g150846_ 1)
                 (apply (lambda (_stx143285_)
                          (gx#syntax-local-e__0 _stx143285_))
                        _g150847_))
                ((##fx= _g150846_ 2)
                 (apply (lambda (_stx143289_ _E143290_)
                          (gx#syntax-local-e__% _stx143289_ _E143290_))
                        _g150847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g150847_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx143261_ _E143262_)
        (let ((_e143264_ (gx#syntax-local-e__% _stx143261_ _E143262_)))
          (if (##structure-instance-of? _e143264_ 'gx#expander::t)
              (##structure-ref _e143264_ '1 gx#expander::t '#f)
              _e143264_))))
    (define gx#syntax-local-value__0
      (lambda (_stx143269_)
        (let ((_E143271_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx143269_ _E143271_))))
    (define gx#syntax-local-value
      (lambda _g150849_
        (let ((_g150848_ (##length _g150849_)))
          (cond ((##fx= _g150848_ 1)
                 (apply (lambda (_stx143269_)
                          (gx#syntax-local-value__0 _stx143269_))
                        _g150849_))
                ((##fx= _g150848_ 2)
                 (apply (lambda (_stx143273_ _E143274_)
                          (gx#syntax-local-value__% _stx143273_ _E143274_))
                        _g150849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g150849_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx143258_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx143258_)))))
