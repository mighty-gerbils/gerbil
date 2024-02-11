(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707620170)
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
      (make-struct-type
       'gx#expander-context::t
       'expander-context
       '#f
       '(id table)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#expander-context?
      (make-struct-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _$args143570_
        (apply make-struct-instance gx#expander-context::t _$args143570_)))
    (define gx#expander-context-id
      (make-struct-slot-accessor gx#expander-context::t 'id))
    (define gx#expander-context-table
      (make-struct-slot-accessor gx#expander-context::t 'table))
    (define gx#expander-context-id-set!
      (make-struct-slot-mutator gx#expander-context::t 'id))
    (define gx#expander-context-table-set!
      (make-struct-slot-mutator gx#expander-context::t 'table))
    (define gx#&expander-context-id
      (make-struct-slot-unchecked-accessor gx#expander-context::t 'id))
    (define gx#&expander-context-table
      (make-struct-slot-unchecked-accessor gx#expander-context::t 'table))
    (define gx#&expander-context-id-set!
      (make-struct-slot-unchecked-mutator gx#expander-context::t 'id))
    (define gx#&expander-context-table-set!
      (make-struct-slot-unchecked-mutator gx#expander-context::t 'table))
    (define gx#root-context::t
      (make-struct-type
       'gx#root-context::t
       'root-context
       gx#expander-context::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (make-struct-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _$args143567_
        (apply make-struct-instance gx#root-context::t _$args143567_)))
    (define gx#root-context-id
      (make-struct-slot-accessor gx#root-context::t 'id))
    (define gx#root-context-table
      (make-struct-slot-accessor gx#root-context::t 'table))
    (define gx#root-context-id-set!
      (make-struct-slot-mutator gx#root-context::t 'id))
    (define gx#root-context-table-set!
      (make-struct-slot-mutator gx#root-context::t 'table))
    (define gx#&root-context-id
      (make-struct-slot-unchecked-accessor gx#root-context::t 'id))
    (define gx#&root-context-table
      (make-struct-slot-unchecked-accessor gx#root-context::t 'table))
    (define gx#&root-context-id-set!
      (make-struct-slot-unchecked-mutator gx#root-context::t 'id))
    (define gx#&root-context-table-set!
      (make-struct-slot-unchecked-mutator gx#root-context::t 'table))
    (define gx#phi-context::t
      (make-struct-type
       'gx#context-phi::t
       'phi-context
       gx#expander-context::t
       '(super up down)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#phi-context? (make-struct-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _$args143564_
        (apply make-struct-instance gx#phi-context::t _$args143564_)))
    (define gx#phi-context-super
      (make-struct-slot-accessor gx#phi-context::t 'super))
    (define gx#phi-context-up
      (make-struct-slot-accessor gx#phi-context::t 'up))
    (define gx#phi-context-down
      (make-struct-slot-accessor gx#phi-context::t 'down))
    (define gx#phi-context-id
      (make-struct-slot-accessor gx#phi-context::t 'id))
    (define gx#phi-context-table
      (make-struct-slot-accessor gx#phi-context::t 'table))
    (define gx#phi-context-super-set!
      (make-struct-slot-mutator gx#phi-context::t 'super))
    (define gx#phi-context-up-set!
      (make-struct-slot-mutator gx#phi-context::t 'up))
    (define gx#phi-context-down-set!
      (make-struct-slot-mutator gx#phi-context::t 'down))
    (define gx#phi-context-id-set!
      (make-struct-slot-mutator gx#phi-context::t 'id))
    (define gx#phi-context-table-set!
      (make-struct-slot-mutator gx#phi-context::t 'table))
    (define gx#&phi-context-super
      (make-struct-slot-unchecked-accessor gx#phi-context::t 'super))
    (define gx#&phi-context-up
      (make-struct-slot-unchecked-accessor gx#phi-context::t 'up))
    (define gx#&phi-context-down
      (make-struct-slot-unchecked-accessor gx#phi-context::t 'down))
    (define gx#&phi-context-id
      (make-struct-slot-unchecked-accessor gx#phi-context::t 'id))
    (define gx#&phi-context-table
      (make-struct-slot-unchecked-accessor gx#phi-context::t 'table))
    (define gx#&phi-context-super-set!
      (make-struct-slot-unchecked-mutator gx#phi-context::t 'super))
    (define gx#&phi-context-up-set!
      (make-struct-slot-unchecked-mutator gx#phi-context::t 'up))
    (define gx#&phi-context-down-set!
      (make-struct-slot-unchecked-mutator gx#phi-context::t 'down))
    (define gx#&phi-context-id-set!
      (make-struct-slot-unchecked-mutator gx#phi-context::t 'id))
    (define gx#&phi-context-table-set!
      (make-struct-slot-unchecked-mutator gx#phi-context::t 'table))
    (define gx#top-context::t
      (make-struct-type
       'gx#top-context::t
       'top-context
       gx#phi-context::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (make-struct-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _$args143561_
        (apply make-struct-instance gx#top-context::t _$args143561_)))
    (define gx#top-context-super
      (make-struct-slot-accessor gx#top-context::t 'super))
    (define gx#top-context-up
      (make-struct-slot-accessor gx#top-context::t 'up))
    (define gx#top-context-down
      (make-struct-slot-accessor gx#top-context::t 'down))
    (define gx#top-context-id
      (make-struct-slot-accessor gx#top-context::t 'id))
    (define gx#top-context-table
      (make-struct-slot-accessor gx#top-context::t 'table))
    (define gx#top-context-super-set!
      (make-struct-slot-mutator gx#top-context::t 'super))
    (define gx#top-context-up-set!
      (make-struct-slot-mutator gx#top-context::t 'up))
    (define gx#top-context-down-set!
      (make-struct-slot-mutator gx#top-context::t 'down))
    (define gx#top-context-id-set!
      (make-struct-slot-mutator gx#top-context::t 'id))
    (define gx#top-context-table-set!
      (make-struct-slot-mutator gx#top-context::t 'table))
    (define gx#&top-context-super
      (make-struct-slot-unchecked-accessor gx#top-context::t 'super))
    (define gx#&top-context-up
      (make-struct-slot-unchecked-accessor gx#top-context::t 'up))
    (define gx#&top-context-down
      (make-struct-slot-unchecked-accessor gx#top-context::t 'down))
    (define gx#&top-context-id
      (make-struct-slot-unchecked-accessor gx#top-context::t 'id))
    (define gx#&top-context-table
      (make-struct-slot-unchecked-accessor gx#top-context::t 'table))
    (define gx#&top-context-super-set!
      (make-struct-slot-unchecked-mutator gx#top-context::t 'super))
    (define gx#&top-context-up-set!
      (make-struct-slot-unchecked-mutator gx#top-context::t 'up))
    (define gx#&top-context-down-set!
      (make-struct-slot-unchecked-mutator gx#top-context::t 'down))
    (define gx#&top-context-id-set!
      (make-struct-slot-unchecked-mutator gx#top-context::t 'id))
    (define gx#&top-context-table-set!
      (make-struct-slot-unchecked-mutator gx#top-context::t 'table))
    (define gx#module-context::t
      (make-struct-type
       'gx#module-context::t
       'module-context
       gx#top-context::t
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-context? (make-struct-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _$args143558_
        (apply make-struct-instance gx#module-context::t _$args143558_)))
    (define gx#module-context-ns
      (make-struct-slot-accessor gx#module-context::t 'ns))
    (define gx#module-context-path
      (make-struct-slot-accessor gx#module-context::t 'path))
    (define gx#module-context-import
      (make-struct-slot-accessor gx#module-context::t 'import))
    (define gx#module-context-export
      (make-struct-slot-accessor gx#module-context::t 'export))
    (define gx#module-context-e
      (make-struct-slot-accessor gx#module-context::t 'e))
    (define gx#module-context-code
      (make-struct-slot-accessor gx#module-context::t 'code))
    (define gx#module-context-super
      (make-struct-slot-accessor gx#module-context::t 'super))
    (define gx#module-context-up
      (make-struct-slot-accessor gx#module-context::t 'up))
    (define gx#module-context-down
      (make-struct-slot-accessor gx#module-context::t 'down))
    (define gx#module-context-id
      (make-struct-slot-accessor gx#module-context::t 'id))
    (define gx#module-context-table
      (make-struct-slot-accessor gx#module-context::t 'table))
    (define gx#module-context-ns-set!
      (make-struct-slot-mutator gx#module-context::t 'ns))
    (define gx#module-context-path-set!
      (make-struct-slot-mutator gx#module-context::t 'path))
    (define gx#module-context-import-set!
      (make-struct-slot-mutator gx#module-context::t 'import))
    (define gx#module-context-export-set!
      (make-struct-slot-mutator gx#module-context::t 'export))
    (define gx#module-context-e-set!
      (make-struct-slot-mutator gx#module-context::t 'e))
    (define gx#module-context-code-set!
      (make-struct-slot-mutator gx#module-context::t 'code))
    (define gx#module-context-super-set!
      (make-struct-slot-mutator gx#module-context::t 'super))
    (define gx#module-context-up-set!
      (make-struct-slot-mutator gx#module-context::t 'up))
    (define gx#module-context-down-set!
      (make-struct-slot-mutator gx#module-context::t 'down))
    (define gx#module-context-id-set!
      (make-struct-slot-mutator gx#module-context::t 'id))
    (define gx#module-context-table-set!
      (make-struct-slot-mutator gx#module-context::t 'table))
    (define gx#&module-context-ns
      (make-struct-slot-unchecked-accessor gx#module-context::t 'ns))
    (define gx#&module-context-path
      (make-struct-slot-unchecked-accessor gx#module-context::t 'path))
    (define gx#&module-context-import
      (make-struct-slot-unchecked-accessor gx#module-context::t 'import))
    (define gx#&module-context-export
      (make-struct-slot-unchecked-accessor gx#module-context::t 'export))
    (define gx#&module-context-e
      (make-struct-slot-unchecked-accessor gx#module-context::t 'e))
    (define gx#&module-context-code
      (make-struct-slot-unchecked-accessor gx#module-context::t 'code))
    (define gx#&module-context-super
      (make-struct-slot-unchecked-accessor gx#module-context::t 'super))
    (define gx#&module-context-up
      (make-struct-slot-unchecked-accessor gx#module-context::t 'up))
    (define gx#&module-context-down
      (make-struct-slot-unchecked-accessor gx#module-context::t 'down))
    (define gx#&module-context-id
      (make-struct-slot-unchecked-accessor gx#module-context::t 'id))
    (define gx#&module-context-table
      (make-struct-slot-unchecked-accessor gx#module-context::t 'table))
    (define gx#&module-context-ns-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'ns))
    (define gx#&module-context-path-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'path))
    (define gx#&module-context-import-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'import))
    (define gx#&module-context-export-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'export))
    (define gx#&module-context-e-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'e))
    (define gx#&module-context-code-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'code))
    (define gx#&module-context-super-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'super))
    (define gx#&module-context-up-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'up))
    (define gx#&module-context-down-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'down))
    (define gx#&module-context-id-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'id))
    (define gx#&module-context-table-set!
      (make-struct-slot-unchecked-mutator gx#module-context::t 'table))
    (define gx#prelude-context::t
      (make-struct-type
       'gx#prelude-context::t
       'prelude-context
       gx#top-context::t
       '(path import e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#prelude-context? (make-struct-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _$args143555_
        (apply make-struct-instance gx#prelude-context::t _$args143555_)))
    (define gx#prelude-context-path
      (make-struct-slot-accessor gx#prelude-context::t 'path))
    (define gx#prelude-context-import
      (make-struct-slot-accessor gx#prelude-context::t 'import))
    (define gx#prelude-context-e
      (make-struct-slot-accessor gx#prelude-context::t 'e))
    (define gx#prelude-context-super
      (make-struct-slot-accessor gx#prelude-context::t 'super))
    (define gx#prelude-context-up
      (make-struct-slot-accessor gx#prelude-context::t 'up))
    (define gx#prelude-context-down
      (make-struct-slot-accessor gx#prelude-context::t 'down))
    (define gx#prelude-context-id
      (make-struct-slot-accessor gx#prelude-context::t 'id))
    (define gx#prelude-context-table
      (make-struct-slot-accessor gx#prelude-context::t 'table))
    (define gx#prelude-context-path-set!
      (make-struct-slot-mutator gx#prelude-context::t 'path))
    (define gx#prelude-context-import-set!
      (make-struct-slot-mutator gx#prelude-context::t 'import))
    (define gx#prelude-context-e-set!
      (make-struct-slot-mutator gx#prelude-context::t 'e))
    (define gx#prelude-context-super-set!
      (make-struct-slot-mutator gx#prelude-context::t 'super))
    (define gx#prelude-context-up-set!
      (make-struct-slot-mutator gx#prelude-context::t 'up))
    (define gx#prelude-context-down-set!
      (make-struct-slot-mutator gx#prelude-context::t 'down))
    (define gx#prelude-context-id-set!
      (make-struct-slot-mutator gx#prelude-context::t 'id))
    (define gx#prelude-context-table-set!
      (make-struct-slot-mutator gx#prelude-context::t 'table))
    (define gx#&prelude-context-path
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'path))
    (define gx#&prelude-context-import
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'import))
    (define gx#&prelude-context-e
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'e))
    (define gx#&prelude-context-super
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'super))
    (define gx#&prelude-context-up
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'up))
    (define gx#&prelude-context-down
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'down))
    (define gx#&prelude-context-id
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'id))
    (define gx#&prelude-context-table
      (make-struct-slot-unchecked-accessor gx#prelude-context::t 'table))
    (define gx#&prelude-context-path-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'path))
    (define gx#&prelude-context-import-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'import))
    (define gx#&prelude-context-e-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'e))
    (define gx#&prelude-context-super-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'super))
    (define gx#&prelude-context-up-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'up))
    (define gx#&prelude-context-down-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'down))
    (define gx#&prelude-context-id-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'id))
    (define gx#&prelude-context-table-set!
      (make-struct-slot-unchecked-mutator gx#prelude-context::t 'table))
    (define gx#local-context::t
      (make-struct-type
       'gx#local-context::t
       'local-context
       gx#phi-context::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (make-struct-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _$args143552_
        (apply make-struct-instance gx#local-context::t _$args143552_)))
    (define gx#local-context-super
      (make-struct-slot-accessor gx#local-context::t 'super))
    (define gx#local-context-up
      (make-struct-slot-accessor gx#local-context::t 'up))
    (define gx#local-context-down
      (make-struct-slot-accessor gx#local-context::t 'down))
    (define gx#local-context-id
      (make-struct-slot-accessor gx#local-context::t 'id))
    (define gx#local-context-table
      (make-struct-slot-accessor gx#local-context::t 'table))
    (define gx#local-context-super-set!
      (make-struct-slot-mutator gx#local-context::t 'super))
    (define gx#local-context-up-set!
      (make-struct-slot-mutator gx#local-context::t 'up))
    (define gx#local-context-down-set!
      (make-struct-slot-mutator gx#local-context::t 'down))
    (define gx#local-context-id-set!
      (make-struct-slot-mutator gx#local-context::t 'id))
    (define gx#local-context-table-set!
      (make-struct-slot-mutator gx#local-context::t 'table))
    (define gx#&local-context-super
      (make-struct-slot-unchecked-accessor gx#local-context::t 'super))
    (define gx#&local-context-up
      (make-struct-slot-unchecked-accessor gx#local-context::t 'up))
    (define gx#&local-context-down
      (make-struct-slot-unchecked-accessor gx#local-context::t 'down))
    (define gx#&local-context-id
      (make-struct-slot-unchecked-accessor gx#local-context::t 'id))
    (define gx#&local-context-table
      (make-struct-slot-unchecked-accessor gx#local-context::t 'table))
    (define gx#&local-context-super-set!
      (make-struct-slot-unchecked-mutator gx#local-context::t 'super))
    (define gx#&local-context-up-set!
      (make-struct-slot-unchecked-mutator gx#local-context::t 'up))
    (define gx#&local-context-down-set!
      (make-struct-slot-unchecked-mutator gx#local-context::t 'down))
    (define gx#&local-context-id-set!
      (make-struct-slot-unchecked-mutator gx#local-context::t 'id))
    (define gx#&local-context-table-set!
      (make-struct-slot-unchecked-mutator gx#local-context::t 'table))
    (define gx#phi-context:::init!__%
      (lambda (_self143536_ _id143537_ _super143538_)
        (if (##fx< '3 (##structure-length _self143536_))
            (begin
              (##unchecked-structure-set!
               _self143536_
               _id143537_
               '1
               (##structure-type _self143536_)
               '#f)
              (##unchecked-structure-set!
               _self143536_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143536_)
               '#f)
              (##unchecked-structure-set!
               _self143536_
               _super143538_
               '3
               (##structure-type _self143536_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143536_
                   '3
                   (##vector-length _self143536_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143543_ _id143544_)
        (let ((_super143546_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143543_ _id143544_ _super143546_))))
    (define gx#phi-context:::init!
      (lambda _g148081_
        (let ((_g148080_ (##length _g148081_)))
          (cond ((##fx= _g148080_ 2)
                 (apply (lambda (_self143543_ _id143544_)
                          (gx#phi-context:::init!__0 _self143543_ _id143544_))
                        _g148081_))
                ((##fx= _g148080_ 3)
                 (apply (lambda (_self143548_ _id143549_ _super143550_)
                          (gx#phi-context:::init!__%
                           _self143548_
                           _id143549_
                           _super143550_))
                        _g148081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g148081_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143400_ _super143401_)
        (if (##fx< '3 (##structure-length _self143400_))
            (begin
              (##unchecked-structure-set!
               _self143400_
               (gensym 'L)
               '1
               (##structure-type _self143400_)
               '#f)
              (##unchecked-structure-set!
               _self143400_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143400_)
               '#f)
              (##unchecked-structure-set!
               _self143400_
               _super143401_
               '3
               (##structure-type _self143400_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143400_
                   '3
                   (##vector-length _self143400_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143406_)
        (let ((_super143408_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143406_ _super143408_))))
    (define gx#local-context:::init!
      (lambda _g148083_
        (let ((_g148082_ (##length _g148083_)))
          (cond ((##fx= _g148082_ 1)
                 (apply (lambda (_self143406_)
                          (gx#local-context:::init!__0 _self143406_))
                        _g148083_))
                ((##fx= _g148082_ 2)
                 (apply (lambda (_self143410_ _super143411_)
                          (gx#local-context:::init!__%
                           _self143410_
                           _super143411_))
                        _g148083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g148083_))))))
    (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (make-struct-type
       'gx#binding::t
       'binding
       '#f
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (make-struct-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _$args143274_
        (apply make-struct-instance gx#binding::t _$args143274_)))
    (define gx#binding-id (make-struct-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (make-struct-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (make-struct-slot-accessor gx#binding::t 'phi))
    (define gx#binding-id-set! (make-struct-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (make-struct-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (make-struct-slot-mutator gx#binding::t 'phi))
    (define gx#&binding-id
      (make-struct-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (make-struct-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (make-struct-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-id-set!
      (make-struct-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (make-struct-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#runtime-binding::t
      (make-struct-type
       'gx#runtime-binding::t
       'runtime-binding
       gx#binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (make-struct-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _$args143271_
        (apply make-struct-instance gx#runtime-binding::t _$args143271_)))
    (define gx#runtime-binding-id
      (make-struct-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (make-struct-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (make-struct-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-id-set!
      (make-struct-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (make-struct-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (make-struct-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id
      (make-struct-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (make-struct-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (make-struct-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#local-binding::t
      (make-struct-type
       'gx#local-binding::t
       'local-binding
       gx#runtime-binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (make-struct-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _$args143268_
        (apply make-struct-instance gx#local-binding::t _$args143268_)))
    (define gx#local-binding-id
      (make-struct-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (make-struct-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (make-struct-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-id-set!
      (make-struct-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (make-struct-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (make-struct-slot-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-id
      (make-struct-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (make-struct-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (make-struct-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#top-binding::t
      (make-struct-type
       'gx#top-binding::t
       'top-binding
       gx#runtime-binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (make-struct-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _$args143265_
        (apply make-struct-instance gx#top-binding::t _$args143265_)))
    (define gx#top-binding-id
      (make-struct-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (make-struct-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (make-struct-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-id-set!
      (make-struct-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (make-struct-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (make-struct-slot-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-id
      (make-struct-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (make-struct-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (make-struct-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#module-binding::t
      (make-struct-type
       'gx#module-binding::t
       'module-binding
       gx#top-binding::t
       '(context)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (make-struct-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _$args143262_
        (apply make-struct-instance gx#module-binding::t _$args143262_)))
    (define gx#module-binding-context
      (make-struct-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-id
      (make-struct-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (make-struct-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (make-struct-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-context-set!
      (make-struct-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-id-set!
      (make-struct-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (make-struct-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (make-struct-slot-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-context
      (make-struct-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-id
      (make-struct-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (make-struct-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (make-struct-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-context-set!
      (make-struct-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#extern-binding::t
      (make-struct-type
       'gx#extern-binding::t
       'extern-binding
       gx#top-binding::t
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (make-struct-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _$args143259_
        (apply make-struct-instance gx#extern-binding::t _$args143259_)))
    (define gx#extern-binding-id
      (make-struct-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (make-struct-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (make-struct-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-id-set!
      (make-struct-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (make-struct-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (make-struct-slot-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id
      (make-struct-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (make-struct-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (make-struct-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#syntax-binding::t
      (make-struct-type
       'gx#syntax-binding::t
       'syntax-binding
       gx#binding::t
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (make-struct-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _$args143256_
        (apply make-struct-instance gx#syntax-binding::t _$args143256_)))
    (define gx#syntax-binding-e
      (make-struct-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (make-struct-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (make-struct-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (make-struct-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-e-set!
      (make-struct-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (make-struct-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (make-struct-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (make-struct-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e
      (make-struct-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (make-struct-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (make-struct-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (make-struct-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e-set!
      (make-struct-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#import-binding::t
      (make-struct-type
       'gx#import-binding::t
       'import-binding
       gx#binding::t
       '(e context weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (make-struct-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _$args143253_
        (apply make-struct-instance gx#import-binding::t _$args143253_)))
    (define gx#import-binding-e
      (make-struct-slot-accessor gx#import-binding::t 'e))
    (define gx#import-binding-context
      (make-struct-slot-accessor gx#import-binding::t 'context))
    (define gx#import-binding-weak?
      (make-struct-slot-accessor gx#import-binding::t 'weak?))
    (define gx#import-binding-id
      (make-struct-slot-accessor gx#import-binding::t 'id))
    (define gx#import-binding-key
      (make-struct-slot-accessor gx#import-binding::t 'key))
    (define gx#import-binding-phi
      (make-struct-slot-accessor gx#import-binding::t 'phi))
    (define gx#import-binding-e-set!
      (make-struct-slot-mutator gx#import-binding::t 'e))
    (define gx#import-binding-context-set!
      (make-struct-slot-mutator gx#import-binding::t 'context))
    (define gx#import-binding-weak?-set!
      (make-struct-slot-mutator gx#import-binding::t 'weak?))
    (define gx#import-binding-id-set!
      (make-struct-slot-mutator gx#import-binding::t 'id))
    (define gx#import-binding-key-set!
      (make-struct-slot-mutator gx#import-binding::t 'key))
    (define gx#import-binding-phi-set!
      (make-struct-slot-mutator gx#import-binding::t 'phi))
    (define gx#&import-binding-e
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'e))
    (define gx#&import-binding-context
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'context))
    (define gx#&import-binding-weak?
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'weak?))
    (define gx#&import-binding-id
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'id))
    (define gx#&import-binding-key
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'key))
    (define gx#&import-binding-phi
      (make-struct-slot-unchecked-accessor gx#import-binding::t 'phi))
    (define gx#&import-binding-e-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'e))
    (define gx#&import-binding-context-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'context))
    (define gx#&import-binding-weak?-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'weak?))
    (define gx#&import-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'id))
    (define gx#&import-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'key))
    (define gx#&import-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#import-binding::t 'phi))
    (define gx#alias-binding::t
      (make-struct-type
       'gx#alias-binding::t
       'alias-binding
       gx#binding::t
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (make-struct-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _$args143250_
        (apply make-struct-instance gx#alias-binding::t _$args143250_)))
    (define gx#alias-binding-e
      (make-struct-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (make-struct-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (make-struct-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (make-struct-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-e-set!
      (make-struct-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (make-struct-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (make-struct-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (make-struct-slot-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e
      (make-struct-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (make-struct-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (make-struct-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (make-struct-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e-set!
      (make-struct-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (make-struct-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (make-struct-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (make-struct-slot-unchecked-mutator gx#alias-binding::t 'phi))
    (define gx#expander::t
      (make-struct-type
       'gx#expander::t
       'expander
       '#f
       '(e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (make-struct-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _$args143247_
        (apply make-struct-instance gx#expander::t _$args143247_)))
    (define gx#expander-e (make-struct-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (make-struct-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (make-struct-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (make-struct-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (make-struct-type
       'gx#core-expander::t
       'core-expander
       gx#expander::t
       '(id compile-top)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#core-expander? (make-struct-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _$args143244_
        (apply make-struct-instance gx#core-expander::t _$args143244_)))
    (define gx#core-expander-id
      (make-struct-slot-accessor gx#core-expander::t 'id))
    (define gx#core-expander-compile-top
      (make-struct-slot-accessor gx#core-expander::t 'compile-top))
    (define gx#core-expander-e
      (make-struct-slot-accessor gx#core-expander::t 'e))
    (define gx#core-expander-id-set!
      (make-struct-slot-mutator gx#core-expander::t 'id))
    (define gx#core-expander-compile-top-set!
      (make-struct-slot-mutator gx#core-expander::t 'compile-top))
    (define gx#core-expander-e-set!
      (make-struct-slot-mutator gx#core-expander::t 'e))
    (define gx#&core-expander-id
      (make-struct-slot-unchecked-accessor gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top
      (make-struct-slot-unchecked-accessor gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e
      (make-struct-slot-unchecked-accessor gx#core-expander::t 'e))
    (define gx#&core-expander-id-set!
      (make-struct-slot-unchecked-mutator gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top-set!
      (make-struct-slot-unchecked-mutator gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#core-expander::t 'e))
    (define gx#expression-form::t
      (make-struct-type
       'gx#expression-form::t
       'expression-form
       gx#core-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (make-struct-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _$args143241_
        (apply make-struct-instance gx#expression-form::t _$args143241_)))
    (define gx#expression-form-id
      (make-struct-slot-accessor gx#expression-form::t 'id))
    (define gx#expression-form-compile-top
      (make-struct-slot-accessor gx#expression-form::t 'compile-top))
    (define gx#expression-form-e
      (make-struct-slot-accessor gx#expression-form::t 'e))
    (define gx#expression-form-id-set!
      (make-struct-slot-mutator gx#expression-form::t 'id))
    (define gx#expression-form-compile-top-set!
      (make-struct-slot-mutator gx#expression-form::t 'compile-top))
    (define gx#expression-form-e-set!
      (make-struct-slot-mutator gx#expression-form::t 'e))
    (define gx#&expression-form-id
      (make-struct-slot-unchecked-accessor gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top
      (make-struct-slot-unchecked-accessor gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e
      (make-struct-slot-unchecked-accessor gx#expression-form::t 'e))
    (define gx#&expression-form-id-set!
      (make-struct-slot-unchecked-mutator gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top-set!
      (make-struct-slot-unchecked-mutator gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e-set!
      (make-struct-slot-unchecked-mutator gx#expression-form::t 'e))
    (define gx#special-form::t
      (make-struct-type
       'gx#special-form::t
       'special-form
       gx#core-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (make-struct-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _$args143238_
        (apply make-struct-instance gx#special-form::t _$args143238_)))
    (define gx#special-form-id
      (make-struct-slot-accessor gx#special-form::t 'id))
    (define gx#special-form-compile-top
      (make-struct-slot-accessor gx#special-form::t 'compile-top))
    (define gx#special-form-e
      (make-struct-slot-accessor gx#special-form::t 'e))
    (define gx#special-form-id-set!
      (make-struct-slot-mutator gx#special-form::t 'id))
    (define gx#special-form-compile-top-set!
      (make-struct-slot-mutator gx#special-form::t 'compile-top))
    (define gx#special-form-e-set!
      (make-struct-slot-mutator gx#special-form::t 'e))
    (define gx#&special-form-id
      (make-struct-slot-unchecked-accessor gx#special-form::t 'id))
    (define gx#&special-form-compile-top
      (make-struct-slot-unchecked-accessor gx#special-form::t 'compile-top))
    (define gx#&special-form-e
      (make-struct-slot-unchecked-accessor gx#special-form::t 'e))
    (define gx#&special-form-id-set!
      (make-struct-slot-unchecked-mutator gx#special-form::t 'id))
    (define gx#&special-form-compile-top-set!
      (make-struct-slot-unchecked-mutator gx#special-form::t 'compile-top))
    (define gx#&special-form-e-set!
      (make-struct-slot-unchecked-mutator gx#special-form::t 'e))
    (define gx#definition-form::t
      (make-struct-type
       'gx#definition-form::t
       'definition-form
       gx#special-form::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (make-struct-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _$args143235_
        (apply make-struct-instance gx#definition-form::t _$args143235_)))
    (define gx#definition-form-id
      (make-struct-slot-accessor gx#definition-form::t 'id))
    (define gx#definition-form-compile-top
      (make-struct-slot-accessor gx#definition-form::t 'compile-top))
    (define gx#definition-form-e
      (make-struct-slot-accessor gx#definition-form::t 'e))
    (define gx#definition-form-id-set!
      (make-struct-slot-mutator gx#definition-form::t 'id))
    (define gx#definition-form-compile-top-set!
      (make-struct-slot-mutator gx#definition-form::t 'compile-top))
    (define gx#definition-form-e-set!
      (make-struct-slot-mutator gx#definition-form::t 'e))
    (define gx#&definition-form-id
      (make-struct-slot-unchecked-accessor gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top
      (make-struct-slot-unchecked-accessor gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e
      (make-struct-slot-unchecked-accessor gx#definition-form::t 'e))
    (define gx#&definition-form-id-set!
      (make-struct-slot-unchecked-mutator gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top-set!
      (make-struct-slot-unchecked-mutator gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e-set!
      (make-struct-slot-unchecked-mutator gx#definition-form::t 'e))
    (define gx#top-special-form::t
      (make-struct-type
       'gx#top-special-form::t
       'top-special-form
       gx#special-form::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form?
      (make-struct-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _$args143232_
        (apply make-struct-instance gx#top-special-form::t _$args143232_)))
    (define gx#top-special-form-id
      (make-struct-slot-accessor gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top
      (make-struct-slot-accessor gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e
      (make-struct-slot-accessor gx#top-special-form::t 'e))
    (define gx#top-special-form-id-set!
      (make-struct-slot-mutator gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top-set!
      (make-struct-slot-mutator gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e-set!
      (make-struct-slot-mutator gx#top-special-form::t 'e))
    (define gx#&top-special-form-id
      (make-struct-slot-unchecked-accessor gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top
      (make-struct-slot-unchecked-accessor
       gx#top-special-form::t
       'compile-top))
    (define gx#&top-special-form-e
      (make-struct-slot-unchecked-accessor gx#top-special-form::t 'e))
    (define gx#&top-special-form-id-set!
      (make-struct-slot-unchecked-mutator gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top-set!
      (make-struct-slot-unchecked-mutator gx#top-special-form::t 'compile-top))
    (define gx#&top-special-form-e-set!
      (make-struct-slot-unchecked-mutator gx#top-special-form::t 'e))
    (define gx#module-special-form::t
      (make-struct-type
       'gx#module-special-form::t
       'module-special-form
       gx#top-special-form::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (make-struct-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _$args143229_
        (apply make-struct-instance gx#module-special-form::t _$args143229_)))
    (define gx#module-special-form-id
      (make-struct-slot-accessor gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top
      (make-struct-slot-accessor gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e
      (make-struct-slot-accessor gx#module-special-form::t 'e))
    (define gx#module-special-form-id-set!
      (make-struct-slot-mutator gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top-set!
      (make-struct-slot-mutator gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e-set!
      (make-struct-slot-mutator gx#module-special-form::t 'e))
    (define gx#&module-special-form-id
      (make-struct-slot-unchecked-accessor gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top
      (make-struct-slot-unchecked-accessor
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e
      (make-struct-slot-unchecked-accessor gx#module-special-form::t 'e))
    (define gx#&module-special-form-id-set!
      (make-struct-slot-unchecked-mutator gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top-set!
      (make-struct-slot-unchecked-mutator
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e-set!
      (make-struct-slot-unchecked-mutator gx#module-special-form::t 'e))
    (define gx#feature-expander::t
      (make-struct-type
       'gx#feature-expander::t
       'feature-expander
       gx#expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander?
      (make-struct-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _$args143226_
        (apply make-struct-instance gx#feature-expander::t _$args143226_)))
    (define gx#feature-expander-e
      (make-struct-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (make-struct-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (make-struct-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (make-struct-type
       'gx#private-feature-expander::t
       'private-feature-expander
       gx#feature-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (make-struct-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _$args143223_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args143223_)))
    (define gx#private-feature-expander-e
      (make-struct-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (make-struct-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (make-struct-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (make-struct-type
       'gx#reserved-expander::t
       'reserved-expander
       gx#expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (make-struct-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _$args143220_
        (apply make-struct-instance gx#reserved-expander::t _$args143220_)))
    (define gx#reserved-expander-e
      (make-struct-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (make-struct-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (make-struct-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (make-struct-type
       'gx#core-macro::t
       'macro-expander
       gx#expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (make-struct-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _$args143217_
        (apply make-struct-instance gx#macro-expander::t _$args143217_)))
    (define gx#macro-expander-e
      (make-struct-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (make-struct-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (make-struct-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (make-struct-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       gx#macro-expander::t
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (make-struct-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _$args143214_
        (apply make-struct-instance
               gx#rename-macro-expander::t
               _$args143214_)))
    (define gx#rename-macro-expander-e
      (make-struct-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (make-struct-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (make-struct-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (make-struct-type
       'gx#macro-expander::t
       'user-expander
       gx#macro-expander::t
       '(context phi)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#user-expander? (make-struct-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _$args143211_
        (apply make-struct-instance gx#user-expander::t _$args143211_)))
    (define gx#user-expander-context
      (make-struct-slot-accessor gx#user-expander::t 'context))
    (define gx#user-expander-phi
      (make-struct-slot-accessor gx#user-expander::t 'phi))
    (define gx#user-expander-e
      (make-struct-slot-accessor gx#user-expander::t 'e))
    (define gx#user-expander-context-set!
      (make-struct-slot-mutator gx#user-expander::t 'context))
    (define gx#user-expander-phi-set!
      (make-struct-slot-mutator gx#user-expander::t 'phi))
    (define gx#user-expander-e-set!
      (make-struct-slot-mutator gx#user-expander::t 'e))
    (define gx#&user-expander-context
      (make-struct-slot-unchecked-accessor gx#user-expander::t 'context))
    (define gx#&user-expander-phi
      (make-struct-slot-unchecked-accessor gx#user-expander::t 'phi))
    (define gx#&user-expander-e
      (make-struct-slot-unchecked-accessor gx#user-expander::t 'e))
    (define gx#&user-expander-context-set!
      (make-struct-slot-unchecked-mutator gx#user-expander::t 'context))
    (define gx#&user-expander-phi-set!
      (make-struct-slot-unchecked-mutator gx#user-expander::t 'phi))
    (define gx#&user-expander-e-set!
      (make-struct-slot-unchecked-mutator gx#user-expander::t 'e))
    (define gx#expander-mark::t
      (make-struct-type
       'gx#expander-mark::t
       'expander-mark
       '#f
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander-mark? (make-struct-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _$args143208_
        (apply make-struct-instance gx#expander-mark::t _$args143208_)))
    (define gx#expander-mark-subst
      (make-struct-slot-accessor gx#expander-mark::t 'subst))
    (define gx#expander-mark-context
      (make-struct-slot-accessor gx#expander-mark::t 'context))
    (define gx#expander-mark-phi
      (make-struct-slot-accessor gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace
      (make-struct-slot-accessor gx#expander-mark::t 'trace))
    (define gx#expander-mark-subst-set!
      (make-struct-slot-mutator gx#expander-mark::t 'subst))
    (define gx#expander-mark-context-set!
      (make-struct-slot-mutator gx#expander-mark::t 'context))
    (define gx#expander-mark-phi-set!
      (make-struct-slot-mutator gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace-set!
      (make-struct-slot-mutator gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst
      (make-struct-slot-unchecked-accessor gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context
      (make-struct-slot-unchecked-accessor gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi
      (make-struct-slot-unchecked-accessor gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace
      (make-struct-slot-unchecked-accessor gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst-set!
      (make-struct-slot-unchecked-mutator gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context-set!
      (make-struct-slot-unchecked-mutator gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi-set!
      (make-struct-slot-unchecked-mutator gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace-set!
      (make-struct-slot-unchecked-mutator gx#expander-mark::t 'trace))
    (define gx#raise-syntax-error
      (lambda (_ctx143193_ _message143194_ _stx143195_ . _details143196_)
        (let ((_ctx143206_
               (let ((_$e143198_ _ctx143193_))
                 (if _$e143198_
                     _$e143198_
                     (let ((_$e143201_ (gx#core-context-top__0)))
                       (if _$e143201_
                           ((lambda (_ctx143204_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx143204_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e143201_)
                           '#f))))))
          (raise (make-syntax-error
                  _message143194_
                  (cons _stx143195_ _details143196_)
                  _ctx143206_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx143180_ _expression?143181_)
        (gx#eval-syntax* (gx#core-expand__% _stx143180_ _expression?143181_))))
    (define gx#eval-syntax__0
      (lambda (_stx143186_)
        (let ((_expression?143188_ '#f))
          (gx#eval-syntax__% _stx143186_ _expression?143188_))))
    (define gx#eval-syntax
      (lambda _g148085_
        (let ((_g148084_ (##length _g148085_)))
          (cond ((##fx= _g148084_ 1)
                 (apply (lambda (_stx143186_) (gx#eval-syntax__0 _stx143186_))
                        _g148085_))
                ((##fx= _g148084_ 2)
                 (apply (lambda (_stx143190_ _expression?143191_)
                          (gx#eval-syntax__% _stx143190_ _expression?143191_))
                        _g148085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g148085_))))))
    (define gx#eval-syntax*
      (lambda (_stx143177_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx143177_))))
    (define gx#core-expand__%
      (lambda (_stx143164_ _expression?143165_)
        (if _expression?143165_
            (gx#core-expand-expression _stx143164_)
            (gx#core-expand-top _stx143164_))))
    (define gx#core-expand__0
      (lambda (_stx143170_)
        (let ((_expression?143172_ '#f))
          (gx#core-expand__% _stx143170_ _expression?143172_))))
    (define gx#core-expand
      (lambda _g148087_
        (let ((_g148086_ (##length _g148087_)))
          (cond ((##fx= _g148086_ 1)
                 (apply (lambda (_stx143170_) (gx#core-expand__0 _stx143170_))
                        _g148087_))
                ((##fx= _g148086_ 2)
                 (apply (lambda (_stx143174_ _expression?143175_)
                          (gx#core-expand__% _stx143174_ _expression?143175_))
                        _g148087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g148087_))))))
    (define gx#core-expand-top
      (lambda (_stx143131_)
        (let* ((_stx143133_ (gx#core-expand*__0 _stx143131_))
               (_e143134143141_ _stx143133_)
               (_E143136143145_
                (lambda () (gx#core-expand-expression _stx143133_)))
               (_E143135143159_
                (lambda ()
                  (if (gx#stx-pair? _e143134143141_)
                      (let ((_e143137143149_ (gx#syntax-e _e143134143141_)))
                        (let ((_hd143138143152_ (##car _e143137143149_))
                              (_tl143139143154_ (##cdr _e143137143149_)))
                          (let ((_form143157_ _hd143138143152_))
                            (if (gx#core-bound-identifier?__0 _form143157_)
                                _stx143133_
                                (_E143136143145_)))))
                      (_E143136143145_)))))
          (_E143135143159_))))
    (define gx#core-expand-expression
      (lambda (_stx143078_)
        (letrec ((_sealed-expression?143080_
                  (lambda (_hd143101_)
                    (if (gx#sealed-syntax? _hd143101_)
                        (let* ((_e143102143109_ _hd143101_)
                               (_E143104143113_ (lambda () '#f))
                               (_E143103143127_
                                (lambda ()
                                  (if (gx#stx-pair? _e143102143109_)
                                      (let ((_e143105143117_
                                             (gx#syntax-e _e143102143109_)))
                                        (let ((_hd143106143120_
                                               (##car _e143105143117_))
                                              (_tl143107143122_
                                               (##cdr _e143105143117_)))
                                          (let ((_form143125_
                                                 _hd143106143120_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form143125_
                                                 gx#expression-form-binding?)
                                                (_E143104143113_)))))
                                      (_E143104143113_)))))
                          (_E143103143127_))
                        '#f)))
                 (_illegal-expression143081_
                  (lambda (_hd143099_ . _g148088_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx143078_
                     _hd143099_)))
                 (_expand-e143082_
                  (lambda (_form143094_ _hd143095_)
                    (let ((_bind143097_
                           (if (##structure-instance-of?
                                _form143094_
                                'gx#binding::t)
                               _form143094_
                               (gx#resolve-identifier__0 _form143094_))))
                      (if (gx#core-expander-binding? _bind143097_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind143097_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd143095_
                            (gx#stx-source _stx143078_)))
                          (if (##structure-direct-instance-of?
                               _bind143097_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind143097_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd143095_
                                 (gx#stx-source _stx143078_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx143078_
                               _form143094_)))))))
          (let ((_hd143084_ (gx#core-expand-head _stx143078_)))
            (if (_sealed-expression?143080_ _hd143084_)
                _hd143084_
                (if (gx#stx-pair? _hd143084_)
                    (let* ((_form143086_ (gx#stx-car _hd143084_))
                           (_bind143088_
                            (if (gx#identifier? _form143086_)
                                (gx#resolve-identifier__0 _form143086_)
                                '#f)))
                      (if (or (not _bind143088_)
                              (not (gx#core-expander-binding? _bind143088_)))
                          (_expand-e143082_ '%%app (cons '%%app _hd143084_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind143088_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd143084_
                               _illegal-expression143081_)
                              (if (gx#expression-form-binding? _bind143088_)
                                  (_expand-e143082_ _bind143088_ _hd143084_)
                                  (if (gx#direct-special-form-binding?
                                       _bind143088_)
                                      (gx#core-expand-expression
                                       (_expand-e143082_
                                        _bind143088_
                                        _hd143084_))
                                      (_illegal-expression143081_
                                       _hd143084_))))))
                    (if (gx#core-bound-identifier?__0 _hd143084_)
                        (_illegal-expression143081_ _hd143084_)
                        (if (gx#identifier? _hd143084_)
                            (_expand-e143082_
                             '%%ref
                             (cons '%%ref (cons _hd143084_ '())))
                            (if (gx#stx-datum? _hd143084_)
                                (_expand-e143082_
                                 '%#quote
                                 (cons '%#quote (cons _hd143084_ '())))
                                (_illegal-expression143081_
                                 _hd143084_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx143073_)
        (call-with-parameters
         (lambda ()
           (let ((_stx143076_ (gx#core-expand-expression _stx143073_)))
             (values _stx143076_ (gx#eval-syntax* _stx143076_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx143054_ _stop?143055_)
        (let _lp143057_ ((_stx143059_ _stx143054_))
          (if (_stop?143055_ _stx143059_)
              _stx143059_
              (let ((_rstx143061_ (gx#core-expand1 _stx143059_)))
                (if (eq? _stx143059_ _rstx143061_)
                    _stx143059_
                    (_lp143057_ _rstx143061_)))))))
    (define gx#core-expand*__0
      (lambda (_stx143066_)
        (let ((_stop?143068_ false))
          (gx#core-expand*__% _stx143066_ _stop?143068_))))
    (define gx#core-expand*
      (lambda _g148090_
        (let ((_g148089_ (##length _g148090_)))
          (cond ((##fx= _g148089_ 1)
                 (apply (lambda (_stx143066_) (gx#core-expand*__0 _stx143066_))
                        _g148090_))
                ((##fx= _g148089_ 2)
                 (apply (lambda (_stx143070_ _stop?143071_)
                          (gx#core-expand*__% _stx143070_ _stop?143071_))
                        _g148090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g148090_))))))
    (define gx#core-expand1
      (lambda (_stx143010_)
        (letrec ((_step143012_
                  (lambda (_hd143049_)
                    (let ((_bind143051_ (gx#resolve-identifier__0 _hd143049_)))
                      (if (##structure-instance-of?
                           _bind143051_
                           'gx#runtime-binding::t)
                          _stx143010_
                          (if (##structure-direct-instance-of?
                               _bind143051_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind143051_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx143010_)
                              (if (not _bind143051_)
                                  _stx143010_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx143010_))))))))
          (let* ((_e143013143021_ _stx143010_)
                 (_E143019143025_ (lambda () _stx143010_))
                 (_E143015143031_
                  (lambda ()
                    (let ((_hd143029_ _e143013143021_))
                      (if (gx#identifier? _hd143029_)
                          (_step143012_ _hd143029_)
                          (_E143019143025_)))))
                 (_E143014143045_
                  (lambda ()
                    (if (gx#stx-pair? _e143013143021_)
                        (let ((_e143016143035_ (gx#syntax-e _e143013143021_)))
                          (let ((_hd143017143038_ (##car _e143016143035_))
                                (_tl143018143040_ (##cdr _e143016143035_)))
                            (let ((_hd143043_ _hd143017143038_))
                              (if (gx#identifier? _hd143043_)
                                  (_step143012_ _hd143043_)
                                  (_E143015143031_)))))
                        (_E143015143031_)))))
            (_E143014143045_)))))
    (define gx#core-expand-head
      (lambda (_stx142976_)
        (letrec ((_stop?142978_
                  (lambda (_stx142980_)
                    (let* ((_e142981142988_ _stx142980_)
                           (_E142983142992_ (lambda () '#f))
                           (_E142982143006_
                            (lambda ()
                              (if (gx#stx-pair? _e142981142988_)
                                  (let ((_e142984142996_
                                         (gx#syntax-e _e142981142988_)))
                                    (let ((_hd142985142999_
                                           (##car _e142984142996_))
                                          (_tl142986143001_
                                           (##cdr _e142984142996_)))
                                      (let ((_hd143004_ _hd142985142999_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd143004_)
                                            (_E142983142992_)))))
                                  (_E142983142992_)))))
                      (_E142982143006_)))))
          (gx#core-expand*__% _stx142976_ _stop?142978_))))
    (define gx#core-expand-block__%
      (lambda (_stx142782_
               _expand-special142783_
               _begin-form142784_
               _expand-e142785_)
        (letrec ((_expand-splice142787_
                  (lambda (_hd142950_ _body142951_ _rest142952_ _r142953_)
                    (if (gx#stx-list? _body142951_)
                        (_K142791_
                         (gx#stx-foldr cons _rest142952_ _body142951_)
                         _r142953_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142782_
                         _hd142950_))))
                 (_expand-cond-expand142788_
                  (lambda (_hd142946_ _rest142947_ _r142948_)
                    (_K142791_
                     (cons (gx#core-expand-cond-expand% _hd142946_)
                           _rest142947_)
                     _r142948_)))
                 (_expand-include142789_
                  (lambda (_hd142895_ _rest142896_ _r142897_)
                    (let* ((_e142898142908_ _hd142895_)
                           (_E142900142912_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142898142908_)))
                           (_E142899142942_
                            (lambda ()
                              (if (gx#stx-pair? _e142898142908_)
                                  (let ((_e142901142916_
                                         (gx#syntax-e _e142898142908_)))
                                    (let ((_hd142902142919_
                                           (##car _e142901142916_))
                                          (_tl142903142921_
                                           (##cdr _e142901142916_)))
                                      (if (gx#stx-pair? _tl142903142921_)
                                          (let ((_e142904142924_
                                                 (gx#syntax-e
                                                  _tl142903142921_)))
                                            (let ((_hd142905142927_
                                                   (##car _e142904142924_))
                                                  (_tl142906142929_
                                                   (##cdr _e142904142924_)))
                                              (let ((_path142932_
                                                     _hd142905142927_))
                                                (if (gx#stx-null?
                                                     _tl142906142929_)
                                                    (if (gx#stx-string?
                                                         _path142932_)
                                                        (let* ((_rpath142934_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path142932_
                         (gx#stx-source _hd142895_)))
                       (_block142936_
                        (gx#core-expand-include%__% _hd142895_ _rpath142934_))
                       (_rbody142939_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block142936_
                            _expand-special142783_
                            '#f
                            _expand-e142785_))
                         gx#current-expander-path
                         (cons _rpath142934_ (gx#current-expander-path)))))
                  (_K142791_
                   _rest142896_
                   (foldr1 cons _r142897_ _rbody142939_)))
                (_E142900142912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E142900142912_)))))
                                          (_E142900142912_))))
                                  (_E142900142912_)))))
                      (_E142899142942_))))
                 (_expand-expression142790_
                  (lambda (_hd142891_ _rest142892_ _r142893_)
                    (_K142791_
                     _rest142892_
                     (cons (_expand-e142785_ _hd142891_) _r142893_))))
                 (_K142791_
                  (lambda (_rest142821_ _r142822_)
                    (let* ((_e142823142830_ _rest142821_)
                           (_E142825142834_
                            (lambda ()
                              (if _begin-form142784_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142784_
                                    (reverse _r142822_))
                                   (gx#stx-source _stx142782_))
                                  _r142822_)))
                           (_E142824142887_
                            (lambda ()
                              (if (gx#stx-pair? _e142823142830_)
                                  (let ((_e142826142838_
                                         (gx#syntax-e _e142823142830_)))
                                    (let ((_hd142827142841_
                                           (##car _e142826142838_))
                                          (_tl142828142843_
                                           (##cdr _e142826142838_)))
                                      (let* ((_hd142846_ _hd142827142841_)
                                             (_rest142848_ _tl142828142843_))
                                        (if '#t
                                            (let* ((_hd142850_
                                                    (gx#core-expand-head
                                                     _hd142846_))
                                                   (_e142851142858_ _hd142850_)
                                                   (_E142853142862_
                                                    (lambda ()
                                                      (_expand-expression142790_
                                                       _hd142850_
                                                       _rest142848_
                                                       _r142822_)))
                                                   (_E142852142883_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142851142858_)
                                                          (let ((_e142854142866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142851142858_)))
                    (let ((_hd142855142869_ (##car _e142854142866_))
                          (_tl142856142871_ (##cdr _e142854142866_)))
                      (let* ((_form142874_ _hd142855142869_)
                             (_body142876_ _tl142856142871_))
                        (if '#t
                            (let ((_bind142878_
                                   (if (gx#identifier? _form142874_)
                                       (gx#resolve-identifier__0 _form142874_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind142878_)
                                  (let ((_$e142880_
                                         (##unchecked-structure-ref
                                          _bind142878_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e142880_)
                                        (_expand-splice142787_
                                         _hd142850_
                                         _body142876_
                                         _rest142848_
                                         _r142822_)
                                        (if (eq? '%#cond-expand _$e142880_)
                                            (_expand-cond-expand142788_
                                             _hd142850_
                                             _rest142848_
                                             _r142822_)
                                            (if (eq? '%#include _$e142880_)
                                                (_expand-include142789_
                                                 _hd142850_
                                                 _rest142848_
                                                 _r142822_)
                                                (_expand-special142783_
                                                 _hd142850_
                                                 _K142791_
                                                 _rest142848_
                                                 _r142822_)))))
                                  (_expand-expression142790_
                                   _hd142850_
                                   _rest142848_
                                   _r142822_)))
                            (_E142853142862_)))))
                  (_E142853142862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142852142883_))
                                            (_E142825142834_)))))
                                  (_E142825142834_)))))
                      (_E142824142887_)))))
          (let* ((_e142792142799_ _stx142782_)
                 (_E142794142803_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142792142799_)))
                 (_E142793142817_
                  (lambda ()
                    (if (gx#stx-pair? _e142792142799_)
                        (let ((_e142795142807_ (gx#syntax-e _e142792142799_)))
                          (let ((_hd142796142810_ (##car _e142795142807_))
                                (_tl142797142812_ (##cdr _e142795142807_)))
                            (let ((_body142815_ _tl142797142812_))
                              (if (gx#stx-list? _body142815_)
                                  (_K142791_ _body142815_ '())
                                  (_E142794142803_)))))
                        (_E142794142803_)))))
            (_E142793142817_)))))
    (define gx#core-expand-block__0
      (lambda (_stx142958_ _expand-special142959_)
        (let* ((_begin-form142961_ '%#begin)
               (_expand-e142963_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142958_
           _expand-special142959_
           _begin-form142961_
           _expand-e142963_))))
    (define gx#core-expand-block__1
      (lambda (_stx142965_ _expand-special142966_ _begin-form142967_)
        (let ((_expand-e142969_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142965_
           _expand-special142966_
           _begin-form142967_
           _expand-e142969_))))
    (define gx#core-expand-block
      (lambda _g148092_
        (let ((_g148091_ (##length _g148092_)))
          (cond ((##fx= _g148091_ 2)
                 (apply (lambda (_stx142958_ _expand-special142959_)
                          (gx#core-expand-block__0
                           _stx142958_
                           _expand-special142959_))
                        _g148092_))
                ((##fx= _g148091_ 3)
                 (apply (lambda (_stx142965_
                                 _expand-special142966_
                                 _begin-form142967_)
                          (gx#core-expand-block__1
                           _stx142965_
                           _expand-special142966_
                           _begin-form142967_))
                        _g148092_))
                ((##fx= _g148091_ 4)
                 (apply (lambda (_stx142971_
                                 _expand-special142972_
                                 _begin-form142973_
                                 _expand-e142974_)
                          (gx#core-expand-block__%
                           _stx142971_
                           _expand-special142972_
                           _begin-form142973_
                           _expand-e142974_))
                        _g148092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g148092_))))))
    (define gx#core-expand-block*
      (lambda (_stx142730_ _expand-special142731_)
        (let* ((_g142732142743_
                (gx#core-expand-block__1
                 _stx142730_
                 _expand-special142731_
                 '#f))
               (_E142736142747_
                (lambda () (error '"No clause matching" _g142732142743_))))
          (let ((_K142741142778_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142730_)))
                (_K142738142764_ (lambda (_expr142762_) _expr142762_))
                (_K142737142753_
                 (lambda (_body142751_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142751_))
                    (gx#stx-source _stx142730_)))))
            (let ((_try-match142734142774_
                   (lambda ()
                     (if (##pair? _g142732142743_)
                         (let ((_tl142740142769_ (##cdr _g142732142743_))
                               (_hd142739142767_ (##car _g142732142743_)))
                           (if (##null? _tl142740142769_)
                               (let ((_expr142772_ _hd142739142767_))
                                 (_K142738142764_ _expr142772_))
                               (let ((_body142756_ _g142732142743_))
                                 (_K142737142753_ _body142756_))))
                         (let ((_body142756_ _g142732142743_))
                           (_K142737142753_ _body142756_))))))
              (if (##null? _g142732142743_)
                  (_K142741142778_)
                  (_try-match142734142774_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142558_)
        (letrec ((_satisfied?142560_
                  (lambda (_condition142658_)
                    (let* ((_e142659142674_ _condition142658_)
                           (_E142669142678_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142659142674_)))
                           (_E142662142697_
                            (lambda ()
                              (if (gx#stx-pair? _e142659142674_)
                                  (let ((_e142670142682_
                                         (gx#syntax-e _e142659142674_)))
                                    (let ((_hd142671142685_
                                           (##car _e142670142682_))
                                          (_tl142672142687_
                                           (##cdr _e142670142682_)))
                                      (let* ((_combinator142690_
                                              _hd142671142685_)
                                             (_body142692_ _tl142672142687_))
                                        (if (gx#stx-list? _body142692_)
                                            (let ((_$e142694_
                                                   (gx#stx-e
                                                    _combinator142690_)))
                                              (if (eq? 'not _$e142694_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142560_
                                                        _body142692_))
                                                  (if (eq? 'and _$e142694_)
                                                      (gx#stx-andmap
                                                       _satisfied?142560_
                                                       _body142692_)
                                                      (if (eq? 'or _$e142694_)
                                                          (gx#stx-ormap
                                                           _satisfied?142560_
                                                           _body142692_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142694_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142692_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142558_
                       _combinator142690_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142669142678_)))))
                                  (_E142669142678_))))
                           (_E142661142720_
                            (lambda ()
                              (if (gx#stx-pair? _e142659142674_)
                                  (let ((_e142663142701_
                                         (gx#syntax-e _e142659142674_)))
                                    (let ((_hd142664142704_
                                           (##car _e142663142701_))
                                          (_tl142665142706_
                                           (##cdr _e142663142701_)))
                                      (if (and (gx#identifier?
                                                _hd142664142704_)
                                               (gx#core-identifier=?
                                                _hd142664142704_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142665142706_)
                                              (let ((_e142666142709_
                                                     (gx#syntax-e
                                                      _tl142665142706_)))
                                                (let ((_hd142667142712_
                                                       (##car _e142666142709_))
                                                      (_tl142668142714_
                                                       (##cdr _e142666142709_)))
                                                  (let ((_expr142717_
                                                         _hd142667142712_))
                                                    (if (gx#stx-null?
                                                         _tl142668142714_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142717_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142662142697_))
                (_E142662142697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142662142697_))
                                          (_E142662142697_))))
                                  (_E142662142697_))))
                           (_E142660142726_
                            (lambda ()
                              (let ((_id142724_ _e142659142674_))
                                (if (gx#identifier? _id142724_)
                                    (gx#core-bound-identifier?__%
                                     _id142724_
                                     gx#feature-binding?)
                                    (_E142661142720_))))))
                      (_E142660142726_))))
                 (_loop142561_
                  (lambda (_rest142591_)
                    (let* ((_e142592142600_ _rest142591_)
                           (_E142598142604_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142592142600_)))
                           (_E142594142608_
                            (lambda ()
                              (if (gx#stx-null? _e142592142600_)
                                  (if '#t '() (_E142598142604_))
                                  (_E142598142604_))))
                           (_E142593142654_
                            (lambda ()
                              (if (gx#stx-pair? _e142592142600_)
                                  (let ((_e142595142612_
                                         (gx#syntax-e _e142592142600_)))
                                    (let ((_hd142596142615_
                                           (##car _e142595142612_))
                                          (_tl142597142617_
                                           (##cdr _e142595142612_)))
                                      (let* ((_hd142620_ _hd142596142615_)
                                             (_rest142622_ _tl142597142617_))
                                        (if '#t
                                            (let* ((_e142623142630_ _hd142620_)
                                                   (_E142625142634_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142623142630_)))
                                                   (_E142624142650_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142623142630_)
                                                          (let ((_e142626142638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142623142630_)))
                    (let ((_hd142627142641_ (##car _e142626142638_))
                          (_tl142628142643_ (##cdr _e142626142638_)))
                      (let* ((_condition142646_ _hd142627142641_)
                             (_body142648_ _tl142628142643_))
                        (if '#t
                            (if (gx#stx-eq? _condition142646_ 'else)
                                (if (gx#stx-null? _rest142622_)
                                    _body142648_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142558_
                                     _hd142620_))
                                (if (_satisfied?142560_ _condition142646_)
                                    _body142648_
                                    (_loop142561_ _rest142622_)))
                            (_E142625142634_)))))
                  (_E142625142634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142624142650_))
                                            (_E142594142608_)))))
                                  (_E142594142608_)))))
                      (_E142593142654_)))))
          (let* ((_e142562142569_ _stx142558_)
                 (_E142564142573_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142562142569_)))
                 (_E142563142587_
                  (lambda ()
                    (if (gx#stx-pair? _e142562142569_)
                        (let ((_e142565142577_ (gx#syntax-e _e142562142569_)))
                          (let ((_hd142566142580_ (##car _e142565142577_))
                                (_tl142567142582_ (##cdr _e142565142577_)))
                            (let ((_clauses142585_ _tl142567142582_))
                              (if (gx#stx-list? _clauses142585_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142561_ _clauses142585_))
                                  (_E142564142573_)))))
                        (_E142564142573_)))))
            (_E142563142587_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142501_ _rpath142502_)
        (let* ((_e142503142513_ _stx142501_)
               (_E142505142517_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142503142513_)))
               (_E142504142544_
                (lambda ()
                  (if (gx#stx-pair? _e142503142513_)
                      (let ((_e142506142521_ (gx#syntax-e _e142503142513_)))
                        (let ((_hd142507142524_ (##car _e142506142521_))
                              (_tl142508142526_ (##cdr _e142506142521_)))
                          (if (gx#stx-pair? _tl142508142526_)
                              (let ((_e142509142529_
                                     (gx#syntax-e _tl142508142526_)))
                                (let ((_hd142510142532_
                                       (##car _e142509142529_))
                                      (_tl142511142534_
                                       (##cdr _e142509142529_)))
                                  (let ((_path142537_ _hd142510142532_))
                                    (if (gx#stx-null? _tl142511142534_)
                                        (if (gx#stx-string? _path142537_)
                                            (let ((_rpath142542_
                                                   (let ((_$e142539_
                                                          _rpath142502_))
                                                     (if _$e142539_
                                                         _$e142539_
                                                         (gx#core-resolve-path__%
                                                          _path142537_
                                                          (gx#stx-source
                                                           _stx142501_))))))
                                              (if (member _rpath142542_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142501_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142542_))
                                                    (gx#stx-source
                                                     _stx142501_)))))
                                            (_E142505142517_))
                                        (_E142505142517_)))))
                              (_E142505142517_))))
                      (_E142505142517_)))))
          (_E142504142544_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142551_)
        (let ((_rpath142553_ '#f))
          (gx#core-expand-include%__% _stx142551_ _rpath142553_))))
    (define gx#core-expand-include%
      (lambda _g148094_
        (let ((_g148093_ (##length _g148094_)))
          (cond ((##fx= _g148093_ 1)
                 (apply (lambda (_stx142551_)
                          (gx#core-expand-include%__0 _stx142551_))
                        _g148094_))
                ((##fx= _g148093_ 2)
                 (apply (lambda (_stx142555_ _rpath142556_)
                          (gx#core-expand-include%__%
                           _stx142555_
                           _rpath142556_))
                        _g148094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g148094_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142470_ _stx142471_ _method142472_)
        (if (procedure? _K142470_)
            (let ((_$e142474_ (gx#stx-source _stx142471_)))
              (if _$e142474_
                  ((lambda (_g142476142478_)
                     (gx#stx-wrap-source
                      (_K142470_ _stx142471_)
                      _g142476142478_))
                   _$e142474_)
                  (_K142470_ _stx142471_)))
            (let ((_$e142481_ (bound-method-ref _K142470_ _method142472_)))
              (if _$e142481_
                  ((lambda (_g142483142485_)
                     (gx#core-apply-expander__%
                      _g142483142485_
                      _stx142471_
                      _method142472_))
                   _$e142481_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142471_
                   _method142472_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142491_ _stx142492_)
        (let ((_method142494_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142491_ _stx142492_ _method142494_))))
    (define gx#core-apply-expander
      (lambda _g148096_
        (let ((_g148095_ (##length _g148096_)))
          (cond ((##fx= _g148095_ 2)
                 (apply (lambda (_K142491_ _stx142492_)
                          (gx#core-apply-expander__0 _K142491_ _stx142492_))
                        _g148096_))
                ((##fx= _g148095_ 3)
                 (apply (lambda (_K142496_ _stx142497_ _method142498_)
                          (gx#core-apply-expander__%
                           _K142496_
                           _stx142497_
                           _method142498_))
                        _g148096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g148096_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142466_ _stx142467_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142467_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self142319_ _stx142320_)
        (let* ((_self142321142327_ _self142319_)
               (_E142323142331_
                (lambda () (error '"No clause matching" _self142321142327_)))
               (_K142324142336_
                (lambda (_K142334_)
                  (gx#core-apply-expander__0 _K142334_ _stx142320_))))
          (if (##structure-instance-of? _self142321142327_ 'gx#core-macro::t)
              (let* ((_e142325142339_
                      (##unchecked-structure-ref
                       _self142321142327_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142342_ _e142325142339_))
                (_K142324142336_ _K142342_))
              (_E142323142331_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self142172_ _stx142173_)
        (if (gx#sealed-syntax? _stx142173_)
            _stx142173_
            (let* ((_self142174142180_ _self142172_)
                   (_E142176142184_
                    (lambda ()
                      (error '"No clause matching" _self142174142180_)))
                   (_K142177142189_
                    (lambda (_K142187_)
                      (gx#core-apply-expander__0 _K142187_ _stx142173_))))
              (if (##structure-instance-of?
                   _self142174142180_
                   'gx#core-expander::t)
                  (let* ((_e142178142192_
                          (##unchecked-structure-ref
                           _self142174142180_
                           '1
                           gx#expander::t
                           '#f))
                         (_K142195_ _e142178142192_))
                    (_K142177142189_ _K142195_))
                  (_E142176142184_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self142034_ _stx142035_ _top?142036_)
        (if (_top?142036_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self142034_ _stx142035_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx142035_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self142041_ _stx142042_)
        (let ((_top?142044_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self142041_
           _stx142042_
           _top?142044_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g148098_
        (let ((_g148097_ (##length _g148098_)))
          (cond ((##fx= _g148097_ 2)
                 (apply (lambda (_self142041_ _stx142042_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self142041_
                           _stx142042_))
                        _g148098_))
                ((##fx= _g148097_ 3)
                 (apply (lambda (_self142046_ _stx142047_ _top?142048_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self142046_
                           _stx142047_
                           _top?142048_))
                        _g148098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g148098_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self141908_ _stx141909_)
        (gx#top-special-form::apply-macro-expander__%
         _self141908_
         _stx141909_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141733_ _stx141734_)
        (let* ((_self141735141741_ _self141733_)
               (_E141737141745_
                (lambda () (error '"No clause matching" _self141735141741_)))
               (_K141738141778_
                (lambda (_id141748_)
                  (let* ((_e141749141756_ _stx141734_)
                         (_E141751141760_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141749141756_)))
                         (_E141750141774_
                          (lambda ()
                            (if (gx#stx-pair? _e141749141756_)
                                (let ((_e141752141764_
                                       (gx#syntax-e _e141749141756_)))
                                  (let ((_hd141753141767_
                                         (##car _e141752141764_))
                                        (_tl141754141769_
                                         (##cdr _e141752141764_)))
                                    (let ((_body141772_ _tl141754141769_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141748_
                                           _body141772_)
                                          (_E141751141760_)))))
                                (_E141751141760_)))))
                    (_E141750141774_)))))
          (if (##structure-instance-of?
               _self141735141741_
               'gx#rename-macro-expander::t)
              (let* ((_e141739141781_
                      (##unchecked-structure-ref
                       _self141735141741_
                       '1
                       gx#expander::t
                       '#f))
                     (_id141784_ _e141739141781_))
                (_K141738141778_ _id141784_))
              (_E141737141745_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141559_ _stx141560_ _method141561_)
        (let* ((_self141562141570_ _self141559_)
               (_E141564141574_
                (lambda () (error '"No clause matching" _self141562141570_)))
               (_K141565141581_
                (lambda (_phi141577_ _ctx141578_ _K141579_)
                  (gx#core-apply-user-macro
                   _K141579_
                   _stx141560_
                   _ctx141578_
                   _phi141577_
                   _method141561_))))
          (if (##structure-instance-of?
               _self141562141570_
               'gx#macro-expander::t)
              (let* ((_e141566141584_
                      (##unchecked-structure-ref
                       _self141562141570_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141587_ _e141566141584_)
                     (_e141567141589_
                      (##unchecked-structure-ref
                       _self141562141570_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141592_ _e141567141589_)
                     (_e141568141594_
                      (##unchecked-structure-ref
                       _self141562141570_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141597_ _e141568141594_))
                (_K141565141581_ _phi141597_ _ctx141592_ _K141587_))
              (_E141564141574_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141602_ _stx141603_)
        (let ((_method141605_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141602_
           _stx141603_
           _method141605_))))
    (define gx#core-apply-user-expander
      (lambda _g148100_
        (let ((_g148099_ (##length _g148100_)))
          (cond ((##fx= _g148099_ 2)
                 (apply (lambda (_self141602_ _stx141603_)
                          (gx#core-apply-user-expander__0
                           _self141602_
                           _stx141603_))
                        _g148100_))
                ((##fx= _g148099_ 3)
                 (apply (lambda (_self141607_ _stx141608_ _method141609_)
                          (gx#core-apply-user-expander__%
                           _self141607_
                           _stx141608_
                           _method141609_))
                        _g148100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g148100_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141549_ _stx141550_ _ctx141551_ _phi141552_ _method141553_)
        (let ((_mark141555_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141551_
                _phi141552_
                _stx141550_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141549_
               (gx#stx-apply-mark _stx141550_ _mark141555_)
               _method141553_)
              _mark141555_))
           gx#current-expander-marks
           (cons _mark141555_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141401_ _phi141402_ _ctx141403_)
        (let _lp141405_ ((_bind141407_
                          (gx#core-resolve-identifier__%
                           _stx141401_
                           _phi141402_
                           _ctx141403_)))
          (if (##structure-direct-instance-of?
               _bind141407_
               'gx#import-binding::t)
              (_lp141405_
               (##unchecked-structure-ref
                _bind141407_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141407_
                   'gx#alias-binding::t)
                  (_lp141405_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141407_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141402_
                    _ctx141403_))
                  _bind141407_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141412_)
        (let* ((_phi141414_ (gx#current-expander-phi))
               (_ctx141416_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141412_ _phi141414_ _ctx141416_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141418_ _phi141419_)
        (let ((_ctx141421_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141418_ _phi141419_ _ctx141421_))))
    (define gx#resolve-identifier
      (lambda _g148102_
        (let ((_g148101_ (##length _g148102_)))
          (cond ((##fx= _g148101_ 1)
                 (apply (lambda (_stx141412_)
                          (gx#resolve-identifier__0 _stx141412_))
                        _g148102_))
                ((##fx= _g148101_ 2)
                 (apply (lambda (_stx141418_ _phi141419_)
                          (gx#resolve-identifier__1 _stx141418_ _phi141419_))
                        _g148102_))
                ((##fx= _g148101_ 3)
                 (apply (lambda (_stx141423_ _phi141424_ _ctx141425_)
                          (gx#resolve-identifier__%
                           _stx141423_
                           _phi141424_
                           _ctx141425_))
                        _g148102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g148102_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141359_ _val141360_ _rebind?141361_ _phi141362_ _ctx141363_)
        (let ((_rebind?141365_
               (if (not _rebind?141361_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141361_) _rebind?141361_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141359_)
           _val141360_
           _rebind?141365_
           _phi141362_
           _ctx141363_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141370_ _val141371_)
        (let* ((_rebind?141373_ '#f)
               (_phi141375_ (gx#current-expander-phi))
               (_ctx141377_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141370_
           _val141371_
           _rebind?141373_
           _phi141375_
           _ctx141377_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141379_ _val141380_ _rebind?141381_)
        (let* ((_phi141383_ (gx#current-expander-phi))
               (_ctx141385_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141379_
           _val141380_
           _rebind?141381_
           _phi141383_
           _ctx141385_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141387_ _val141388_ _rebind?141389_ _phi141390_)
        (let ((_ctx141392_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141387_
           _val141388_
           _rebind?141389_
           _phi141390_
           _ctx141392_))))
    (define gx#bind-identifier!
      (lambda _g148104_
        (let ((_g148103_ (##length _g148104_)))
          (cond ((##fx= _g148103_ 2)
                 (apply (lambda (_stx141370_ _val141371_)
                          (gx#bind-identifier!__0 _stx141370_ _val141371_))
                        _g148104_))
                ((##fx= _g148103_ 3)
                 (apply (lambda (_stx141379_ _val141380_ _rebind?141381_)
                          (gx#bind-identifier!__1
                           _stx141379_
                           _val141380_
                           _rebind?141381_))
                        _g148104_))
                ((##fx= _g148103_ 4)
                 (apply (lambda (_stx141387_
                                 _val141388_
                                 _rebind?141389_
                                 _phi141390_)
                          (gx#bind-identifier!__2
                           _stx141387_
                           _val141388_
                           _rebind?141389_
                           _phi141390_))
                        _g148104_))
                ((##fx= _g148103_ 5)
                 (apply (lambda (_stx141394_
                                 _val141395_
                                 _rebind?141396_
                                 _phi141397_
                                 _ctx141398_)
                          (gx#bind-identifier!__%
                           _stx141394_
                           _val141395_
                           _rebind?141396_
                           _phi141397_
                           _ctx141398_))
                        _g148104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g148104_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx141331_ _phi141332_ _ctx141333_)
        (let _lp141335_ ((_e141337_ _stx141331_)
                         (_marks141338_ (gx#current-expander-marks)))
          (if (symbol? _e141337_)
              (gx#core-resolve-binding
               _e141337_
               _phi141332_
               _phi141332_
               _ctx141333_
               (reverse _marks141338_))
              (if (gx#identifier-quote? _e141337_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e141337_ '1 gx#AST::t '#f)
                   _phi141332_
                   '0
                   (##unchecked-structure-ref
                    _e141337_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e141337_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e141337_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e141337_ '1 gx#AST::t '#f)
                       _phi141332_
                       _phi141332_
                       _ctx141333_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e141337_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks141338_))
                      (if (##structure-direct-instance-of?
                           _e141337_
                           'gx#syntax-wrap::t)
                          (_lp141335_
                           (##unchecked-structure-ref
                            _e141337_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e141337_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks141338_))
                          (if (##structure-instance-of?
                               _e141337_
                               'gerbil#AST::t)
                              (_lp141335_
                               (##unchecked-structure-ref
                                _e141337_
                                '1
                                gx#AST::t
                                '#f)
                               _marks141338_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx141331_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx141343_)
        (let* ((_phi141345_ (gx#current-expander-phi))
               (_ctx141347_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141343_
           _phi141345_
           _ctx141347_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx141349_ _phi141350_)
        (let ((_ctx141352_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141349_
           _phi141350_
           _ctx141352_))))
    (define gx#core-resolve-identifier
      (lambda _g148106_
        (let ((_g148105_ (##length _g148106_)))
          (cond ((##fx= _g148105_ 1)
                 (apply (lambda (_stx141343_)
                          (gx#core-resolve-identifier__0 _stx141343_))
                        _g148106_))
                ((##fx= _g148105_ 2)
                 (apply (lambda (_stx141349_ _phi141350_)
                          (gx#core-resolve-identifier__1
                           _stx141349_
                           _phi141350_))
                        _g148106_))
                ((##fx= _g148105_ 3)
                 (apply (lambda (_stx141354_ _phi141355_ _ctx141356_)
                          (gx#core-resolve-identifier__%
                           _stx141354_
                           _phi141355_
                           _ctx141356_))
                        _g148106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g148106_))))))
    (define gx#core-resolve-binding
      (lambda (_id141244_
               _phi141245_
               _src-phi141246_
               _ctx141247_
               _marks141248_)
        (letrec ((_resolve141250_
                  (lambda (_ctx141318_ _src-phi141319_ _key141320_)
                    (let _lp141322_ ((_ctx141324_
                                      (gx#core-context-shift
                                       _ctx141318_
                                       _phi141245_))
                                     (_dphi141325_
                                      (fx- _phi141245_ _src-phi141319_)))
                      (let ((_$e141327_
                             (gx#core-context-resolve
                              _ctx141324_
                              _key141320_)))
                        (if _$e141327_
                            (values _$e141327_)
                            (if (fxzero? _dphi141325_)
                                '#f
                                (if (fxpositive? _dphi141325_)
                                    (_lp141322_
                                     (gx#core-context-shift _ctx141324_ '-1)
                                     (fx- _dphi141325_ '1))
                                    (_lp141322_
                                     (gx#core-context-shift _ctx141324_ '1)
                                     (fx+ _dphi141325_ '1))))))))))
          (let _lp141252_ ((_ctx141254_ _ctx141247_)
                           (_src-phi141255_ _src-phi141246_)
                           (_rest141256_ _marks141248_))
            (let* ((_rest141257141265_ _rest141256_)
                   (_else141259141273_
                    (lambda ()
                      (_resolve141250_
                       _ctx141254_
                       _src-phi141255_
                       _id141244_)))
                   (_K141261141306_
                    (lambda (_rest141276_ _hd141277_)
                      (let* ((_hd141278141284_ _hd141277_)
                             (_E141280141288_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd141278141284_)))
                             (_K141281141298_
                              (lambda (_subst141291_)
                                (let ((_$e141295_
                                       (let ((_key141293_
                                              (if _subst141291_
                                                  (table-ref
                                                   _subst141291_
                                                   _id141244_
                                                   '#f)
                                                  '#f)))
                                         (if _key141293_
                                             (_resolve141250_
                                              _ctx141254_
                                              _src-phi141255_
                                              _key141293_)
                                             '#f))))
                                  (if _$e141295_
                                      _$e141295_
                                      (_lp141252_
                                       (##unchecked-structure-ref
                                        _hd141277_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd141277_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest141276_))))))
                        (if (##structure-instance-of?
                             _hd141278141284_
                             'gx#expander-mark::t)
                            (let* ((_e141282141301_
                                    (##unchecked-structure-ref
                                     _hd141278141284_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst141304_ _e141282141301_))
                              (_K141281141298_ _subst141304_))
                            (_E141280141288_))))))
              (if (##pair? _rest141257141265_)
                  (let ((_hd141262141309_ (##car _rest141257141265_))
                        (_tl141263141311_ (##cdr _rest141257141265_)))
                    (let* ((_hd141314_ _hd141262141309_)
                           (_rest141316_ _tl141263141311_))
                      (_K141261141306_ _rest141316_ _hd141314_)))
                  (_else141259141273_)))))))
    (define gx#core-bind!__%
      (lambda (_key141120_ _val141121_ _rebind?141122_ _phi141123_ _ctx141124_)
        (letrec ((_update-binding141126_
                  (lambda (_xval141197_)
                    (if (or (_rebind?141122_
                             _ctx141124_
                             _xval141197_
                             _val141121_)
                            (and (##structure-direct-instance-of?
                                  _xval141197_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval141197_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val141121_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val141121_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval141197_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val141121_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val141121_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval141197_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val141121_
                        (if (and (##structure-direct-instance-of?
                                  _val141121_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val141121_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval141197_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val141121_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval141197_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval141197_
                            (if (and (##structure-direct-instance-of?
                                      _val141121_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval141197_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key141120_
                                 (cons (##unchecked-structure-ref
                                        _val141121_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val141121_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval141197_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval141197_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval141197_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval141197_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key141120_
                                 _val141121_
                                 _xval141197_))))))
                 (_gensubst141127_
                  (lambda (_subst141192_ _id141193_)
                    (let ((_eid141195_
                           (gensym (if (uninterned-symbol? _id141193_)
                                       '%
                                       _id141193_))))
                      (table-set! _subst141192_ _id141193_ _eid141195_)
                      _eid141195_)))
                 (_subst!141128_
                  (lambda (_key141130_)
                    (let* ((_key141131141139_ _key141130_)
                           (_else141133141147_ (lambda () _key141130_))
                           (_K141135141180_
                            (lambda (_mark141150_ _id141151_)
                              (let* ((_mark141152141158_ _mark141150_)
                                     (_E141154141162_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark141152141158_)))
                                     (_K141155141172_
                                      (lambda (_subst141165_)
                                        (if (not _subst141165_)
                                            (let ((_subst141167_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark141150_
                                               _subst141167_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst141127_
                                               _subst141167_
                                               _id141151_))
                                            (let ((_$e141169_
                                                   (table-ref
                                                    _subst141165_
                                                    _id141151_
                                                    '#f)))
                                              (if _$e141169_
                                                  (values _$e141169_)
                                                  (_gensubst141127_
                                                   _subst141165_
                                                   _id141151_)))))))
                                (if (##structure-instance-of?
                                     _mark141152141158_
                                     'gx#expander-mark::t)
                                    (let* ((_e141156141175_
                                            (##unchecked-structure-ref
                                             _mark141152141158_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst141178_ _e141156141175_))
                                      (_K141155141172_ _subst141178_))
                                    (_E141154141162_))))))
                      (if (##pair? _key141131141139_)
                          (let ((_hd141136141183_ (##car _key141131141139_))
                                (_tl141137141185_ (##cdr _key141131141139_)))
                            (let* ((_id141188_ _hd141136141183_)
                                   (_mark141190_ _tl141137141185_))
                              (_K141135141180_ _mark141190_ _id141188_)))
                          (_else141133141147_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx141124_ _phi141123_)
           (_subst!141128_ _key141120_)
           _val141121_
           _update-binding141126_))))
    (define gx#core-bind!__0
      (lambda (_key141214_ _val141215_)
        (let* ((_rebind?141217_ false)
               (_phi141219_ (gx#current-expander-phi))
               (_ctx141221_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141214_
           _val141215_
           _rebind?141217_
           _phi141219_
           _ctx141221_))))
    (define gx#core-bind!__1
      (lambda (_key141223_ _val141224_ _rebind?141225_)
        (let* ((_phi141227_ (gx#current-expander-phi))
               (_ctx141229_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141223_
           _val141224_
           _rebind?141225_
           _phi141227_
           _ctx141229_))))
    (define gx#core-bind!__2
      (lambda (_key141231_ _val141232_ _rebind?141233_ _phi141234_)
        (let ((_ctx141236_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141231_
           _val141232_
           _rebind?141233_
           _phi141234_
           _ctx141236_))))
    (define gx#core-bind!
      (lambda _g148108_
        (let ((_g148107_ (##length _g148108_)))
          (cond ((##fx= _g148107_ 2)
                 (apply (lambda (_key141214_ _val141215_)
                          (gx#core-bind!__0 _key141214_ _val141215_))
                        _g148108_))
                ((##fx= _g148107_ 3)
                 (apply (lambda (_key141223_ _val141224_ _rebind?141225_)
                          (gx#core-bind!__1
                           _key141223_
                           _val141224_
                           _rebind?141225_))
                        _g148108_))
                ((##fx= _g148107_ 4)
                 (apply (lambda (_key141231_
                                 _val141232_
                                 _rebind?141233_
                                 _phi141234_)
                          (gx#core-bind!__2
                           _key141231_
                           _val141232_
                           _rebind?141233_
                           _phi141234_))
                        _g148108_))
                ((##fx= _g148107_ 5)
                 (apply (lambda (_key141238_
                                 _val141239_
                                 _rebind?141240_
                                 _phi141241_
                                 _ctx141242_)
                          (gx#core-bind!__%
                           _key141238_
                           _val141239_
                           _rebind?141240_
                           _phi141241_
                           _ctx141242_))
                        _g148108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g148108_))))))
    (define gx#core-identifier-key
      (lambda (_stx141054_)
        (if (symbol? _stx141054_)
            (let* ((_g141055141063_ (gx#current-expander-marks))
                   (_else141057141071_ (lambda () _stx141054_))
                   (_K141059141076_
                    (lambda (_hd141074_) (cons _stx141054_ _hd141074_))))
              (if (##pair? _g141055141063_)
                  (let* ((_hd141060141079_ (##car _g141055141063_))
                         (_hd141082_ _hd141060141079_))
                    (_K141059141076_ _hd141082_))
                  (_else141057141071_)))
            (if (gx#identifier? _stx141054_)
                (let* ((_id141084_ (gx#syntax-local-unwrap _stx141054_))
                       (_eid141086_ (gx#stx-e _id141084_))
                       (_marks141088_ (gx#stx-identifier-marks* _id141084_)))
                  (let* ((_marks141090141098_ _marks141088_)
                         (_else141092141106_ (lambda () _eid141086_))
                         (_K141094141111_
                          (lambda (_hd141109_) (cons _eid141086_ _hd141109_))))
                    (if (##pair? _marks141090141098_)
                        (let* ((_hd141095141114_ (##car _marks141090141098_))
                               (_hd141117_ _hd141095141114_))
                          (_K141094141111_ _hd141117_))
                        (_else141092141106_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx141054_)))))
    (define gx#core-context-shift
      (lambda (_ctx140999_ _phi141000_)
        (letrec ((_make-phi141002_
                  (lambda (_super141052_)
                    (let ((__obj148079
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj148079
                       (gensym 'phi)
                       _super141052_)
                      __obj148079)))
                 (_make-phi/up141003_
                  (lambda (_ctx141047_ _super141048_)
                    (let ((_ctx+1141050_ (_make-phi141002_ _super141048_)))
                      (##unchecked-structure-set!
                       _ctx141047_
                       _ctx+1141050_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1141050_
                       _ctx141047_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1141050_)))
                 (_make-phi/down141004_
                  (lambda (_ctx141042_ _super141043_)
                    (let ((_ctx-1141045_ (_make-phi141002_ _super141043_)))
                      (##unchecked-structure-set!
                       _ctx-1141045_
                       _ctx141042_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx141042_
                       _ctx-1141045_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1141045_)))
                 (_shift141005_
                  (lambda (_ctx141026_
                           _delta141027_
                           _make-delta-context141028_
                           _phi141029_
                           _K141030_)
                    (let ((_$e141032_
                           (##unchecked-structure-ref
                            _ctx141026_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e141032_
                          ((lambda (_super141035_)
                             (let* ((_super141037_
                                     (_K141030_ _super141035_ _delta141027_))
                                    (_ctx+d141039_
                                     (_make-delta-context141028_
                                      _ctx141026_
                                      _super141037_)))
                               (_K141030_
                                _ctx+d141039_
                                (fx- _phi141029_ _delta141027_))))
                           _$e141032_)
                          (error '"Bad context" _ctx141026_))))))
          (let _K141007_ ((_ctx141009_ _ctx140999_) (_phi141010_ _phi141000_))
            (if (fxzero? _phi141010_)
                _ctx141009_
                (if (fx> (##vector-length _ctx141009_) '3)
                    (if (fxpositive? _phi141010_)
                        (let ((_$e141012_
                               (##unchecked-structure-ref
                                _ctx141009_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e141012_
                              ((lambda (_g141014141016_)
                                 (_K141007_
                                  _g141014141016_
                                  (fx- _phi141010_ '1)))
                               _$e141012_)
                              (_shift141005_
                               _ctx141009_
                               '1
                               _make-phi/up141003_
                               _phi141010_
                               _K141007_)))
                        (let ((_$e141019_
                               (##unchecked-structure-ref
                                _ctx141009_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e141019_
                              ((lambda (_g141021141023_)
                                 (_K141007_
                                  _g141021141023_
                                  (fx+ _phi141010_ '1)))
                               _$e141019_)
                              (_shift141005_
                               _ctx141009_
                               '-1
                               _make-phi/down141004_
                               _phi141010_
                               _K141007_))))
                    _ctx141009_))))))
    (define gx#core-context-get
      (lambda (_ctx140996_ _key140997_)
        (table-ref
         (##unchecked-structure-ref _ctx140996_ '2 gx#expander-context::t '#f)
         _key140997_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx140992_ _key140993_ _val140994_)
        (table-set!
         (##unchecked-structure-ref _ctx140992_ '2 gx#expander-context::t '#f)
         _key140993_
         _val140994_)))
    (define gx#core-context-resolve
      (lambda (_ctx140979_ _key140980_)
        (let _lp140982_ ((_ctx140984_ _ctx140979_))
          (let ((_$e140986_ (gx#core-context-get _ctx140984_ _key140980_)))
            (if _$e140986_
                (values _$e140986_)
                (let ((_$e140989_
                       (if (fx> (##vector-length _ctx140984_) '3)
                           (##unchecked-structure-ref
                            _ctx140984_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e140989_ (_lp140982_ _$e140989_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx140969_ _key140970_ _val140971_ _rebind140972_)
        (let ((_$e140974_ (gx#core-context-get _ctx140969_ _key140970_)))
          (if _$e140974_
              ((lambda (_xval140977_)
                 (gx#core-context-put!
                  _ctx140969_
                  _key140970_
                  (_rebind140972_ _xval140977_)))
               _$e140974_)
              (gx#core-context-put! _ctx140969_ _key140970_ _val140971_)))))
    (define gx#core-context-top__%
      (lambda (_ctx140947_ _stop?140948_)
        (let _lp140950_ ((_ctx140952_ _ctx140947_))
          (if (_stop?140948_ _ctx140952_)
              _ctx140952_
              (if (##structure-instance-of? _ctx140952_ 'gx#context-phi::t)
                  (_lp140950_
                   (##unchecked-structure-ref
                    _ctx140952_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx140958_ (gx#current-expander-context))
               (_stop?140960_ gx#top-context?))
          (gx#core-context-top__% _ctx140958_ _stop?140960_))))
    (define gx#core-context-top__1
      (lambda (_ctx140962_)
        (let ((_stop?140964_ gx#top-context?))
          (gx#core-context-top__% _ctx140962_ _stop?140964_))))
    (define gx#core-context-top
      (lambda _g148110_
        (let ((_g148109_ (##length _g148110_)))
          (cond ((##fx= _g148109_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g148110_))
                ((##fx= _g148109_ 1)
                 (apply (lambda (_ctx140962_)
                          (gx#core-context-top__1 _ctx140962_))
                        _g148110_))
                ((##fx= _g148109_ 2)
                 (apply (lambda (_ctx140966_ _stop?140967_)
                          (gx#core-context-top__% _ctx140966_ _stop?140967_))
                        _g148110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g148110_))))))
    (define gx#core-context-root__%
      (lambda (_ctx140932_)
        (let _lp140934_ ((_ctx140936_ _ctx140932_))
          (if (##structure-instance-of? _ctx140936_ 'gx#context-phi::t)
              (_lp140934_
               (##unchecked-structure-ref
                _ctx140936_
                '3
                gx#phi-context::t
                '#f))
              _ctx140936_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx140942_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx140942_))))
    (define gx#core-context-root
      (lambda _g148112_
        (let ((_g148111_ (##length _g148112_)))
          (cond ((##fx= _g148111_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g148112_))
                ((##fx= _g148111_ 1)
                 (apply (lambda (_ctx140944_)
                          (gx#core-context-root__% _ctx140944_))
                        _g148112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g148112_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx140913_ . __140910140914_)
        (let ((_$e140917_ (gx#current-expander-allow-rebind?)))
          (if _$e140917_
              _$e140917_
              (if (##structure-instance-of? _ctx140913_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx140913_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx140913_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx140924_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx140924_))))
    (define gx#core-context-rebind?
      (lambda _g148114_
        (let ((_g148113_ (##length _g148114_)))
          (cond ((##fx= _g148113_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g148114_))
                ((##fx= _g148113_ 1)
                 (apply (lambda (_ctx140926_)
                          (gx#core-context-rebind?__% _ctx140926_))
                        _g148114_))
                ((##fx>= _g148113_ 1)
                 (apply gx#core-context-rebind?__% _g148114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g148114_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx140896_)
        (let ((_$e140898_ (gx#core-context-top__1 _ctx140896_)))
          (if _$e140898_
              ((lambda (_ctx140901_)
                 (if (##structure-instance-of?
                      _ctx140901_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx140901_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e140898_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx140907_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx140907_))))
    (define gx#core-context-namespace
      (lambda _g148116_
        (let ((_g148115_ (##length _g148116_)))
          (cond ((##fx= _g148115_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g148116_))
                ((##fx= _g148115_ 1)
                 (apply (lambda (_ctx140909_)
                          (gx#core-context-namespace__% _ctx140909_))
                        _g148116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g148116_))))))
    (define gx#expander-binding?__%
      (lambda (_bind140882_ _is?140883_)
        (if (##structure-direct-instance-of?
             _bind140882_
             'gx#syntax-binding::t)
            (_is?140883_
             (##unchecked-structure-ref
              _bind140882_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind140888_)
        (let ((_is?140890_ gx#expander?))
          (gx#expander-binding?__% _bind140888_ _is?140890_))))
    (define gx#expander-binding?
      (lambda _g148118_
        (let ((_g148117_ (##length _g148118_)))
          (cond ((##fx= _g148117_ 1)
                 (apply (lambda (_bind140888_)
                          (gx#expander-binding?__0 _bind140888_))
                        _g148118_))
                ((##fx= _g148117_ 2)
                 (apply (lambda (_bind140892_ _is?140893_)
                          (gx#expander-binding?__% _bind140892_ _is?140893_))
                        _g148118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g148118_))))))
    (define gx#core-expander-binding?
      (lambda (_bind140879_)
        (gx#expander-binding?__% _bind140879_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind140877_)
        (gx#expander-binding?__% _bind140877_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind140871_)
        (letrec ((_direct-special-form?140873_
                  (lambda (_obj140875_)
                    (##structure-direct-instance-of?
                     _obj140875_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind140871_
           _direct-special-form?140873_))))
    (define gx#special-form-binding?
      (lambda (_bind140869_)
        (gx#expander-binding?__% _bind140869_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind140860_)
        (letrec ((_feature?140862_
                  (lambda (_e140864_)
                    (let ((_$e140866_
                           (##structure-instance-of?
                            _e140864_
                            'gx#feature-expander::t)))
                      (if _$e140866_
                          _$e140866_
                          (##structure-instance-of?
                           _e140864_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind140860_ _feature?140862_))))
    (define gx#private-feature-binding?
      (lambda (_bind140858_)
        (gx#expander-binding?__% _bind140858_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id140845_ _bound?140846_)
        (if (gx#identifier? _id140845_)
            (_bound?140846_ (gx#resolve-identifier__0 _id140845_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id140851_)
        (let ((_bound?140853_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id140851_ _bound?140853_))))
    (define gx#core-bound-identifier?
      (lambda _g148120_
        (let ((_g148119_ (##length _g148120_)))
          (cond ((##fx= _g148119_ 1)
                 (apply (lambda (_id140851_)
                          (gx#core-bound-identifier?__0 _id140851_))
                        _g148120_))
                ((##fx= _g148119_ 2)
                 (apply (lambda (_id140855_ _bound?140856_)
                          (gx#core-bound-identifier?__%
                           _id140855_
                           _bound?140856_))
                        _g148120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g148120_))))))
    (define gx#core-identifier=?
      (lambda (_x140835_ _y140836_)
        (letrec ((_y=?140838_
                  (lambda (_xid140842_)
                    ((if (list? _y140836_) memq eq?) _xid140842_ _y140836_))))
          (let ((_bind140840_ (gx#resolve-identifier__0 _x140835_)))
            (if (##structure-instance-of? _bind140840_ 'gx#binding::t)
                (_y=?140838_
                 (##unchecked-structure-ref _bind140840_ '1 gx#binding::t '#f))
                (_y=?140838_ (gx#stx-e _x140835_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e140833_)
        (if (interned-symbol? _e140833_)
            (string-index (symbol->string _e140833_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140788_ _src140789_ _ctx140790_ _marks140791_)
        (if (##structure? _stx140788_)
            (let ((_$e140793_ (gx#sealed-syntax-unwrap _stx140788_)))
              (if _$e140793_
                  (values _$e140793_)
                  (if (gx#identifier? _stx140788_)
                      (let ((_id140796_
                             (gx#stx-unwrap__% _stx140788_ _marks140791_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id140796_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e140798_
                                (##unchecked-structure-ref
                                 _id140796_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e140798_ _$e140798_ _src140789_))
                         _ctx140790_
                         (##unchecked-structure-ref
                          _id140796_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx140788_)
                       (let ((_$e140801_ (gx#stx-source _stx140788_)))
                         (if _$e140801_ _$e140801_ _src140789_))
                       _ctx140790_
                       (reverse _marks140791_)))))
            (##structure
             gx#syntax-quote::t
             _stx140788_
             _src140789_
             _ctx140790_
             (reverse _marks140791_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx140807_)
        (let* ((_src140809_ '#f)
               (_ctx140811_ (gx#current-expander-context))
               (_marks140813_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140807_
           _src140809_
           _ctx140811_
           _marks140813_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx140815_ _src140816_)
        (let* ((_ctx140818_ (gx#current-expander-context))
               (_marks140820_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140815_
           _src140816_
           _ctx140818_
           _marks140820_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx140822_ _src140823_ _ctx140824_)
        (let ((_marks140826_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140822_
           _src140823_
           _ctx140824_
           _marks140826_))))
    (define gx#core-quote-syntax
      (lambda _g148122_
        (let ((_g148121_ (##length _g148122_)))
          (cond ((##fx= _g148121_ 1)
                 (apply (lambda (_stx140807_)
                          (gx#core-quote-syntax__0 _stx140807_))
                        _g148122_))
                ((##fx= _g148121_ 2)
                 (apply (lambda (_stx140815_ _src140816_)
                          (gx#core-quote-syntax__1 _stx140815_ _src140816_))
                        _g148122_))
                ((##fx= _g148121_ 3)
                 (apply (lambda (_stx140822_ _src140823_ _ctx140824_)
                          (gx#core-quote-syntax__2
                           _stx140822_
                           _src140823_
                           _ctx140824_))
                        _g148122_))
                ((##fx= _g148121_ 4)
                 (apply (lambda (_stx140828_
                                 _src140829_
                                 _ctx140830_
                                 _marks140831_)
                          (gx#core-quote-syntax__%
                           _stx140828_
                           _src140829_
                           _ctx140830_
                           _marks140831_))
                        _g148122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g148122_))))))
    (define gx#core-cons
      (lambda (_hd140784_ _tl140785_)
        (cons (gx#core-quote-syntax__0 _hd140784_) _tl140785_)))
    (define gx#core-list
      (lambda (_hd140781_ . _rest140782_)
        (cons (gx#core-quote-syntax__0 _hd140781_) _rest140782_)))
    (define gx#core-cons*
      (lambda (_hd140778_ . _rest140779_)
        (apply cons* (gx#core-quote-syntax__0 _hd140778_) _rest140779_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140752_ _rel140753_)
        (let ((_path140765_ (gx#stx-e _stx-path140752_))
              (_reldir140766_
               (let _lp140755_ ((_relsrc140757_
                                 (let ((_$e140762_
                                        (gx#stx-source _stx-path140752_)))
                                   (if _$e140762_ _$e140762_ _rel140753_))))
                 (if (##structure-instance-of? _relsrc140757_ 'gerbil#AST::t)
                     (_lp140755_
                      (let ((_$e140759_ (gx#stx-source _relsrc140757_)))
                        (if _$e140759_ _$e140759_ (gx#stx-e _relsrc140757_))))
                     (if (source-location-path? _relsrc140757_)
                         (path-directory (source-location-path _relsrc140757_))
                         (if (string? _relsrc140757_)
                             (path-directory _relsrc140757_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140765_ (path-normalize _reldir140766_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140771_)
        (let ((_rel140773_ '#f))
          (gx#core-resolve-path__% _stx-path140771_ _rel140773_))))
    (define gx#core-resolve-path
      (lambda _g148124_
        (let ((_g148123_ (##length _g148124_)))
          (cond ((##fx= _g148123_ 1)
                 (apply (lambda (_stx-path140771_)
                          (gx#core-resolve-path__0 _stx-path140771_))
                        _g148124_))
                ((##fx= _g148123_ 2)
                 (apply (lambda (_stx-path140775_ _rel140776_)
                          (gx#core-resolve-path__%
                           _stx-path140775_
                           _rel140776_))
                        _g148124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g148124_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140708_ _ctx140709_)
        (let* ((_repr140710140717_ _repr140708_)
               (_E140712140721_
                (lambda () (error '"No clause matching" _repr140710140717_)))
               (_K140713140729_
                (lambda (_subs140724_ _phi140725_)
                  (let ((_subst140727_
                         (if (not (null? _subs140724_))
                             (list->table _subs140724_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst140727_
                     _ctx140709_
                     _phi140725_
                     '#f)))))
          (if (##pair? _repr140710140717_)
              (let ((_hd140714140732_ (##car _repr140710140717_))
                    (_tl140715140734_ (##cdr _repr140710140717_)))
                (let* ((_phi140737_ _hd140714140732_)
                       (_subs140739_ _tl140715140734_))
                  (_K140713140729_ _subs140739_ _phi140737_)))
              (_E140712140721_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140744_)
        (let ((_ctx140746_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140744_ _ctx140746_))))
    (define gx#core-deserialize-mark
      (lambda _g148126_
        (let ((_g148125_ (##length _g148126_)))
          (cond ((##fx= _g148125_ 1)
                 (apply (lambda (_repr140744_)
                          (gx#core-deserialize-mark__0 _repr140744_))
                        _g148126_))
                ((##fx= _g148125_ 2)
                 (apply (lambda (_repr140748_ _ctx140749_)
                          (gx#core-deserialize-mark__%
                           _repr140748_
                           _ctx140749_))
                        _g148126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g148126_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140705_)
        (gx#stx-rewrap _stx140705_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140703_)
        (gx#stx-unwrap__% _stx140703_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140673_)
        (let* ((_g140674140682_ (gx#current-expander-marks))
               (_else140676140690_ (lambda () _stx140673_))
               (_K140678140695_
                (lambda (_hd140693_)
                  (gx#stx-apply-mark _stx140673_ _hd140693_))))
          (if (##pair? _g140674140682_)
              (let* ((_hd140679140698_ (##car _g140674140682_))
                     (_hd140701_ _hd140679140698_))
                (_K140678140695_ _hd140701_))
              (_else140676140690_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140658_ _E140659_)
        (let ((_bind140661_ (gx#resolve-identifier__0 _stx140658_)))
          (if (##structure-direct-instance-of?
               _bind140661_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140661_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140659_ _stx140658_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140666_)
        (let ((_E140668_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140666_ _E140668_))))
    (define gx#syntax-local-e
      (lambda _g148128_
        (let ((_g148127_ (##length _g148128_)))
          (cond ((##fx= _g148127_ 1)
                 (apply (lambda (_stx140666_)
                          (gx#syntax-local-e__0 _stx140666_))
                        _g148128_))
                ((##fx= _g148127_ 2)
                 (apply (lambda (_stx140670_ _E140671_)
                          (gx#syntax-local-e__% _stx140670_ _E140671_))
                        _g148128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g148128_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140642_ _E140643_)
        (let ((_e140645_ (gx#syntax-local-e__% _stx140642_ _E140643_)))
          (if (##structure-instance-of? _e140645_ 'gx#expander::t)
              (##structure-ref _e140645_ '1 gx#expander::t '#f)
              _e140645_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140650_)
        (let ((_E140652_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140650_ _E140652_))))
    (define gx#syntax-local-value
      (lambda _g148130_
        (let ((_g148129_ (##length _g148130_)))
          (cond ((##fx= _g148129_ 1)
                 (apply (lambda (_stx140650_)
                          (gx#syntax-local-value__0 _stx140650_))
                        _g148130_))
                ((##fx= _g148129_ 2)
                 (apply (lambda (_stx140654_ _E140655_)
                          (gx#syntax-local-value__% _stx140654_ _E140655_))
                        _g148130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g148130_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140639_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140639_)))))
