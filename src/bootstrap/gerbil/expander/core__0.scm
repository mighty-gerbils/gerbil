(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710064747)
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
      (lambda _$args81635_
        (apply make-instance gx#expander-context::t _$args81635_)))
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
      (lambda _$args81632_
        (apply make-instance gx#root-context::t _$args81632_)))
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
      (lambda _$args81629_
        (apply make-instance gx#phi-context::t _$args81629_)))
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
      (lambda _$args81626_
        (apply make-instance gx#top-context::t _$args81626_)))
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
      (lambda _$args81623_
        (apply make-instance gx#module-context::t _$args81623_)))
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
      (lambda _$args81620_
        (apply make-instance gx#prelude-context::t _$args81620_)))
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
      (lambda _$args81617_
        (apply make-instance gx#local-context::t _$args81617_)))
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
      (lambda (_self81601_ _id81602_ _super81603_)
        (if (##fx< '3 (##structure-length _self81601_))
            (begin
              (##unchecked-structure-set!
               _self81601_
               _id81602_
               '1
               (##structure-type _self81601_)
               '#f)
              (##unchecked-structure-set!
               _self81601_
               (make-hash-table-eq)
               '2
               (##structure-type _self81601_)
               '#f)
              (##unchecked-structure-set!
               _self81601_
               _super81603_
               '3
               (##structure-type _self81601_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self81601_
                   '3
                   (##vector-length _self81601_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self81608_ _id81609_)
        (let ((_super81611_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self81608_ _id81609_ _super81611_))))
    (define gx#phi-context:::init!
      (lambda _g81678_
        (let ((_g81677_ (##length _g81678_)))
          (cond ((##fx= _g81677_ 2)
                 (apply (lambda (_self81608_ _id81609_)
                          (gx#phi-context:::init!__0 _self81608_ _id81609_))
                        _g81678_))
                ((##fx= _g81677_ 3)
                 (apply (lambda (_self81613_ _id81614_ _super81615_)
                          (gx#phi-context:::init!__%
                           _self81613_
                           _id81614_
                           _super81615_))
                        _g81678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g81678_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self81465_ _super81466_)
        (if (##fx< '3 (##structure-length _self81465_))
            (begin
              (##unchecked-structure-set!
               _self81465_
               (gensym 'L)
               '1
               (##structure-type _self81465_)
               '#f)
              (##unchecked-structure-set!
               _self81465_
               (make-hash-table-eq)
               '2
               (##structure-type _self81465_)
               '#f)
              (##unchecked-structure-set!
               _self81465_
               _super81466_
               '3
               (##structure-type _self81465_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self81465_
                   '3
                   (##vector-length _self81465_)))))
    (define gx#local-context:::init!__0
      (lambda (_self81471_)
        (let ((_super81473_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self81471_ _super81473_))))
    (define gx#local-context:::init!
      (lambda _g81680_
        (let ((_g81679_ (##length _g81680_)))
          (cond ((##fx= _g81679_ 1)
                 (apply (lambda (_self81471_)
                          (gx#local-context:::init!__0 _self81471_))
                        _g81680_))
                ((##fx= _g81679_ 2)
                 (apply (lambda (_self81475_ _super81476_)
                          (gx#local-context:::init!__%
                           _self81475_
                           _super81476_))
                        _g81680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g81680_))))))
    (bind-method!__% gx#local-context::t ':init! gx#local-context:::init! '#f)
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
      (lambda _$args81339_ (apply make-instance gx#binding::t _$args81339_)))
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
      (lambda _$args81336_
        (apply make-instance gx#runtime-binding::t _$args81336_)))
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
      (lambda _$args81333_
        (apply make-instance gx#local-binding::t _$args81333_)))
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
      (lambda _$args81330_
        (apply make-instance gx#top-binding::t _$args81330_)))
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
      (lambda _$args81327_
        (apply make-instance gx#module-binding::t _$args81327_)))
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
      (lambda _$args81324_
        (apply make-instance gx#extern-binding::t _$args81324_)))
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
      (lambda _$args81321_
        (apply make-instance gx#syntax-binding::t _$args81321_)))
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
      (lambda _$args81318_
        (apply make-instance gx#import-binding::t _$args81318_)))
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
      (lambda _$args81315_
        (apply make-instance gx#alias-binding::t _$args81315_)))
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
      (lambda _$args81312_ (apply make-instance gx#expander::t _$args81312_)))
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
      (lambda _$args81309_
        (apply make-instance gx#core-expander::t _$args81309_)))
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
      (lambda _$args81306_
        (apply make-instance gx#expression-form::t _$args81306_)))
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
      (lambda _$args81303_
        (apply make-instance gx#special-form::t _$args81303_)))
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
      (lambda _$args81300_
        (apply make-instance gx#definition-form::t _$args81300_)))
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
      (lambda _$args81297_
        (apply make-instance gx#top-special-form::t _$args81297_)))
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
      (lambda _$args81294_
        (apply make-instance gx#module-special-form::t _$args81294_)))
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
      (lambda _$args81291_
        (apply make-instance gx#feature-expander::t _$args81291_)))
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
      (lambda _$args81288_
        (apply make-instance gx#private-feature-expander::t _$args81288_)))
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
      (lambda _$args81285_
        (apply make-instance gx#reserved-expander::t _$args81285_)))
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
      (lambda _$args81282_
        (apply make-instance gx#macro-expander::t _$args81282_)))
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
      (lambda _$args81279_
        (apply make-instance gx#rename-macro-expander::t _$args81279_)))
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
      (lambda _$args81276_
        (apply make-instance gx#user-expander::t _$args81276_)))
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
      (lambda _$args81273_
        (apply make-instance gx#expander-mark::t _$args81273_)))
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
      (lambda (_ctx81258_ _message81259_ _stx81260_ . _details81261_)
        (let ((_ctx81271_
               (let ((_$e81263_ _ctx81258_))
                 (if _$e81263_
                     _$e81263_
                     (let ((_$e81266_ (gx#core-context-top__0)))
                       (if _$e81266_
                           ((lambda (_ctx81269_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx81269_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e81266_)
                           '#f))))))
          (raise (make-syntax-error
                  _message81259_
                  (cons _stx81260_ _details81261_)
                  _ctx81271_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx81245_ _expression?81246_)
        (gx#eval-syntax* (gx#core-expand__% _stx81245_ _expression?81246_))))
    (define gx#eval-syntax__0
      (lambda (_stx81251_)
        (let ((_expression?81253_ '#f))
          (gx#eval-syntax__% _stx81251_ _expression?81253_))))
    (define gx#eval-syntax
      (lambda _g81682_
        (let ((_g81681_ (##length _g81682_)))
          (cond ((##fx= _g81681_ 1)
                 (apply (lambda (_stx81251_) (gx#eval-syntax__0 _stx81251_))
                        _g81682_))
                ((##fx= _g81681_ 2)
                 (apply (lambda (_stx81255_ _expression?81256_)
                          (gx#eval-syntax__% _stx81255_ _expression?81256_))
                        _g81682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g81682_))))))
    (define gx#eval-syntax*
      (lambda (_stx81242_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx81242_))))
    (define gx#core-expand__%
      (lambda (_stx81229_ _expression?81230_)
        (if _expression?81230_
            (gx#core-expand-expression _stx81229_)
            (gx#core-expand-top _stx81229_))))
    (define gx#core-expand__0
      (lambda (_stx81235_)
        (let ((_expression?81237_ '#f))
          (gx#core-expand__% _stx81235_ _expression?81237_))))
    (define gx#core-expand
      (lambda _g81684_
        (let ((_g81683_ (##length _g81684_)))
          (cond ((##fx= _g81683_ 1)
                 (apply (lambda (_stx81235_) (gx#core-expand__0 _stx81235_))
                        _g81684_))
                ((##fx= _g81683_ 2)
                 (apply (lambda (_stx81239_ _expression?81240_)
                          (gx#core-expand__% _stx81239_ _expression?81240_))
                        _g81684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g81684_))))))
    (define gx#core-expand-top
      (lambda (_stx81196_)
        (let* ((_stx81198_ (gx#core-expand*__0 _stx81196_))
               (_e8119981206_ _stx81198_)
               (_E8120181210_
                (lambda () (gx#core-expand-expression _stx81198_)))
               (_E8120081224_
                (lambda ()
                  (if (gx#stx-pair? _e8119981206_)
                      (let ((_e8120281214_ (gx#syntax-e _e8119981206_)))
                        (let ((_hd8120381217_ (##car _e8120281214_))
                              (_tl8120481219_ (##cdr _e8120281214_)))
                          (let ((_form81222_ _hd8120381217_))
                            (if (gx#core-bound-identifier?__0 _form81222_)
                                _stx81198_
                                (_E8120181210_)))))
                      (_E8120181210_)))))
          (_E8120081224_))))
    (define gx#core-expand-expression
      (lambda (_stx81143_)
        (letrec ((_sealed-expression?81145_
                  (lambda (_hd81166_)
                    (if (gx#sealed-syntax? _hd81166_)
                        (let* ((_e8116781174_ _hd81166_)
                               (_E8116981178_ (lambda () '#f))
                               (_E8116881192_
                                (lambda ()
                                  (if (gx#stx-pair? _e8116781174_)
                                      (let ((_e8117081182_
                                             (gx#syntax-e _e8116781174_)))
                                        (let ((_hd8117181185_
                                               (##car _e8117081182_))
                                              (_tl8117281187_
                                               (##cdr _e8117081182_)))
                                          (let ((_form81190_ _hd8117181185_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form81190_
                                                 gx#expression-form-binding?)
                                                (_E8116981178_)))))
                                      (_E8116981178_)))))
                          (_E8116881192_))
                        '#f)))
                 (_illegal-expression81146_
                  (lambda (_hd81164_ . _g81685_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx81143_
                     _hd81164_)))
                 (_expand-e81147_
                  (lambda (_form81159_ _hd81160_)
                    (let ((_bind81162_
                           (if (##structure-instance-of?
                                _form81159_
                                'gx#binding::t)
                               _form81159_
                               (gx#resolve-identifier__0 _form81159_))))
                      (if (gx#core-expander-binding? _bind81162_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind81162_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd81160_
                            (gx#stx-source _stx81143_)))
                          (if (##structure-direct-instance-of?
                               _bind81162_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind81162_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd81160_
                                 (gx#stx-source _stx81143_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx81143_
                               _form81159_)))))))
          (let ((_hd81149_ (gx#core-expand-head _stx81143_)))
            (if (_sealed-expression?81145_ _hd81149_)
                _hd81149_
                (if (gx#stx-pair? _hd81149_)
                    (let* ((_form81151_ (gx#stx-car _hd81149_))
                           (_bind81153_
                            (if (gx#identifier? _form81151_)
                                (gx#resolve-identifier__0 _form81151_)
                                '#f)))
                      (if (or (not _bind81153_)
                              (not (gx#core-expander-binding? _bind81153_)))
                          (_expand-e81147_ '%%app (cons '%%app _hd81149_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind81153_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd81149_
                               _illegal-expression81146_)
                              (if (gx#expression-form-binding? _bind81153_)
                                  (_expand-e81147_ _bind81153_ _hd81149_)
                                  (if (gx#direct-special-form-binding?
                                       _bind81153_)
                                      (gx#core-expand-expression
                                       (_expand-e81147_ _bind81153_ _hd81149_))
                                      (_illegal-expression81146_
                                       _hd81149_))))))
                    (if (gx#core-bound-identifier?__0 _hd81149_)
                        (_illegal-expression81146_ _hd81149_)
                        (if (gx#identifier? _hd81149_)
                            (_expand-e81147_
                             '%%ref
                             (cons '%%ref (cons _hd81149_ '())))
                            (if (gx#stx-datum? _hd81149_)
                                (_expand-e81147_
                                 '%#quote
                                 (cons '%#quote (cons _hd81149_ '())))
                                (_illegal-expression81146_ _hd81149_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx81138_)
        (call-with-parameters
         (lambda ()
           (let ((_stx81141_ (gx#core-expand-expression _stx81138_)))
             (values _stx81141_ (gx#eval-syntax* _stx81141_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx81119_ _stop?81120_)
        (let _lp81122_ ((_stx81124_ _stx81119_))
          (if (_stop?81120_ _stx81124_)
              _stx81124_
              (let ((_rstx81126_ (gx#core-expand1 _stx81124_)))
                (if (eq? _stx81124_ _rstx81126_)
                    _stx81124_
                    (_lp81122_ _rstx81126_)))))))
    (define gx#core-expand*__0
      (lambda (_stx81131_)
        (let ((_stop?81133_ false))
          (gx#core-expand*__% _stx81131_ _stop?81133_))))
    (define gx#core-expand*
      (lambda _g81687_
        (let ((_g81686_ (##length _g81687_)))
          (cond ((##fx= _g81686_ 1)
                 (apply (lambda (_stx81131_) (gx#core-expand*__0 _stx81131_))
                        _g81687_))
                ((##fx= _g81686_ 2)
                 (apply (lambda (_stx81135_ _stop?81136_)
                          (gx#core-expand*__% _stx81135_ _stop?81136_))
                        _g81687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g81687_))))))
    (define gx#core-expand1
      (lambda (_stx81075_)
        (letrec ((_step81077_
                  (lambda (_hd81114_)
                    (let ((_bind81116_ (gx#resolve-identifier__0 _hd81114_)))
                      (if (##structure-instance-of?
                           _bind81116_
                           'gx#runtime-binding::t)
                          _stx81075_
                          (if (##structure-direct-instance-of?
                               _bind81116_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind81116_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx81075_)
                              (if (not _bind81116_)
                                  _stx81075_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx81075_))))))))
          (let* ((_e8107881086_ _stx81075_)
                 (_E8108481090_ (lambda () _stx81075_))
                 (_E8108081096_
                  (lambda ()
                    (let ((_hd81094_ _e8107881086_))
                      (if (gx#identifier? _hd81094_)
                          (_step81077_ _hd81094_)
                          (_E8108481090_)))))
                 (_E8107981110_
                  (lambda ()
                    (if (gx#stx-pair? _e8107881086_)
                        (let ((_e8108181100_ (gx#syntax-e _e8107881086_)))
                          (let ((_hd8108281103_ (##car _e8108181100_))
                                (_tl8108381105_ (##cdr _e8108181100_)))
                            (let ((_hd81108_ _hd8108281103_))
                              (if (gx#identifier? _hd81108_)
                                  (_step81077_ _hd81108_)
                                  (_E8108081096_)))))
                        (_E8108081096_)))))
            (_E8107981110_)))))
    (define gx#core-expand-head
      (lambda (_stx81041_)
        (letrec ((_stop?81043_
                  (lambda (_stx81045_)
                    (let* ((_e8104681053_ _stx81045_)
                           (_E8104881057_ (lambda () '#f))
                           (_E8104781071_
                            (lambda ()
                              (if (gx#stx-pair? _e8104681053_)
                                  (let ((_e8104981061_
                                         (gx#syntax-e _e8104681053_)))
                                    (let ((_hd8105081064_
                                           (##car _e8104981061_))
                                          (_tl8105181066_
                                           (##cdr _e8104981061_)))
                                      (let ((_hd81069_ _hd8105081064_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd81069_)
                                            (_E8104881057_)))))
                                  (_E8104881057_)))))
                      (_E8104781071_)))))
          (gx#core-expand*__% _stx81041_ _stop?81043_))))
    (define gx#core-expand-block__%
      (lambda (_stx80847_
               _expand-special80848_
               _begin-form80849_
               _expand-e80850_)
        (letrec ((_expand-splice80852_
                  (lambda (_hd81015_ _body81016_ _rest81017_ _r81018_)
                    (if (gx#stx-list? _body81016_)
                        (_K80856_
                         (gx#stx-foldr cons _rest81017_ _body81016_)
                         _r81018_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx80847_
                         _hd81015_))))
                 (_expand-cond-expand80853_
                  (lambda (_hd81011_ _rest81012_ _r81013_)
                    (_K80856_
                     (cons (gx#core-expand-cond-expand% _hd81011_) _rest81012_)
                     _r81013_)))
                 (_expand-include80854_
                  (lambda (_hd80960_ _rest80961_ _r80962_)
                    (let* ((_e8096380973_ _hd80960_)
                           (_E8096580977_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8096380973_)))
                           (_E8096481007_
                            (lambda ()
                              (if (gx#stx-pair? _e8096380973_)
                                  (let ((_e8096680981_
                                         (gx#syntax-e _e8096380973_)))
                                    (let ((_hd8096780984_
                                           (##car _e8096680981_))
                                          (_tl8096880986_
                                           (##cdr _e8096680981_)))
                                      (if (gx#stx-pair? _tl8096880986_)
                                          (let ((_e8096980989_
                                                 (gx#syntax-e _tl8096880986_)))
                                            (let ((_hd8097080992_
                                                   (##car _e8096980989_))
                                                  (_tl8097180994_
                                                   (##cdr _e8096980989_)))
                                              (let ((_path80997_
                                                     _hd8097080992_))
                                                (if (gx#stx-null?
                                                     _tl8097180994_)
                                                    (if (gx#stx-string?
                                                         _path80997_)
                                                        (let* ((_rpath80999_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path80997_
                         (gx#stx-source _hd80960_)))
                       (_block81001_
                        (gx#core-expand-include%__% _hd80960_ _rpath80999_))
                       (_rbody81004_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block81001_
                            _expand-special80848_
                            '#f
                            _expand-e80850_))
                         gx#current-expander-path
                         (cons _rpath80999_ (gx#current-expander-path)))))
                  (_K80856_ _rest80961_ (foldr1 cons _r80962_ _rbody81004_)))
                (_E8096580977_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8096580977_)))))
                                          (_E8096580977_))))
                                  (_E8096580977_)))))
                      (_E8096481007_))))
                 (_expand-expression80855_
                  (lambda (_hd80956_ _rest80957_ _r80958_)
                    (_K80856_
                     _rest80957_
                     (cons (_expand-e80850_ _hd80956_) _r80958_))))
                 (_K80856_
                  (lambda (_rest80886_ _r80887_)
                    (let* ((_e8088880895_ _rest80886_)
                           (_E8089080899_
                            (lambda ()
                              (if _begin-form80849_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form80849_
                                    (reverse _r80887_))
                                   (gx#stx-source _stx80847_))
                                  _r80887_)))
                           (_E8088980952_
                            (lambda ()
                              (if (gx#stx-pair? _e8088880895_)
                                  (let ((_e8089180903_
                                         (gx#syntax-e _e8088880895_)))
                                    (let ((_hd8089280906_
                                           (##car _e8089180903_))
                                          (_tl8089380908_
                                           (##cdr _e8089180903_)))
                                      (let* ((_hd80911_ _hd8089280906_)
                                             (_rest80913_ _tl8089380908_))
                                        (if '#t
                                            (let* ((_hd80915_
                                                    (gx#core-expand-head
                                                     _hd80911_))
                                                   (_e8091680923_ _hd80915_)
                                                   (_E8091880927_
                                                    (lambda ()
                                                      (_expand-expression80855_
                                                       _hd80915_
                                                       _rest80913_
                                                       _r80887_)))
                                                   (_E8091780948_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8091680923_)
                                                          (let ((_e8091980931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8091680923_)))
                    (let ((_hd8092080934_ (##car _e8091980931_))
                          (_tl8092180936_ (##cdr _e8091980931_)))
                      (let* ((_form80939_ _hd8092080934_)
                             (_body80941_ _tl8092180936_))
                        (if '#t
                            (let ((_bind80943_
                                   (if (gx#identifier? _form80939_)
                                       (gx#resolve-identifier__0 _form80939_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind80943_)
                                  (let ((_$e80945_
                                         (##unchecked-structure-ref
                                          _bind80943_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e80945_)
                                        (_expand-splice80852_
                                         _hd80915_
                                         _body80941_
                                         _rest80913_
                                         _r80887_)
                                        (if (eq? '%#cond-expand _$e80945_)
                                            (_expand-cond-expand80853_
                                             _hd80915_
                                             _rest80913_
                                             _r80887_)
                                            (if (eq? '%#include _$e80945_)
                                                (_expand-include80854_
                                                 _hd80915_
                                                 _rest80913_
                                                 _r80887_)
                                                (_expand-special80848_
                                                 _hd80915_
                                                 _K80856_
                                                 _rest80913_
                                                 _r80887_)))))
                                  (_expand-expression80855_
                                   _hd80915_
                                   _rest80913_
                                   _r80887_)))
                            (_E8091880927_)))))
                  (_E8091880927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8091780948_))
                                            (_E8089080899_)))))
                                  (_E8089080899_)))))
                      (_E8088980952_)))))
          (let* ((_e8085780864_ _stx80847_)
                 (_E8085980868_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8085780864_)))
                 (_E8085880882_
                  (lambda ()
                    (if (gx#stx-pair? _e8085780864_)
                        (let ((_e8086080872_ (gx#syntax-e _e8085780864_)))
                          (let ((_hd8086180875_ (##car _e8086080872_))
                                (_tl8086280877_ (##cdr _e8086080872_)))
                            (let ((_body80880_ _tl8086280877_))
                              (if (gx#stx-list? _body80880_)
                                  (_K80856_ _body80880_ '())
                                  (_E8085980868_)))))
                        (_E8085980868_)))))
            (_E8085880882_)))))
    (define gx#core-expand-block__0
      (lambda (_stx81023_ _expand-special81024_)
        (let* ((_begin-form81026_ '%#begin)
               (_expand-e81028_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx81023_
           _expand-special81024_
           _begin-form81026_
           _expand-e81028_))))
    (define gx#core-expand-block__1
      (lambda (_stx81030_ _expand-special81031_ _begin-form81032_)
        (let ((_expand-e81034_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx81030_
           _expand-special81031_
           _begin-form81032_
           _expand-e81034_))))
    (define gx#core-expand-block
      (lambda _g81689_
        (let ((_g81688_ (##length _g81689_)))
          (cond ((##fx= _g81688_ 2)
                 (apply (lambda (_stx81023_ _expand-special81024_)
                          (gx#core-expand-block__0
                           _stx81023_
                           _expand-special81024_))
                        _g81689_))
                ((##fx= _g81688_ 3)
                 (apply (lambda (_stx81030_
                                 _expand-special81031_
                                 _begin-form81032_)
                          (gx#core-expand-block__1
                           _stx81030_
                           _expand-special81031_
                           _begin-form81032_))
                        _g81689_))
                ((##fx= _g81688_ 4)
                 (apply (lambda (_stx81036_
                                 _expand-special81037_
                                 _begin-form81038_
                                 _expand-e81039_)
                          (gx#core-expand-block__%
                           _stx81036_
                           _expand-special81037_
                           _begin-form81038_
                           _expand-e81039_))
                        _g81689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g81689_))))))
    (define gx#core-expand-block*
      (lambda (_stx80795_ _expand-special80796_)
        (let* ((_g8079780808_
                (gx#core-expand-block__1 _stx80795_ _expand-special80796_ '#f))
               (_E8080180812_
                (lambda () (error '"No clause matching" _g8079780808_))))
          (let ((_K8080680843_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx80795_)))
                (_K8080380829_ (lambda (_expr80827_) _expr80827_))
                (_K8080280818_
                 (lambda (_body80816_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body80816_))
                    (gx#stx-source _stx80795_)))))
            (let ((_try-match8079980839_
                   (lambda ()
                     (if (##pair? _g8079780808_)
                         (let ((_tl8080580834_ (##cdr _g8079780808_))
                               (_hd8080480832_ (##car _g8079780808_)))
                           (if (##null? _tl8080580834_)
                               (let ((_expr80837_ _hd8080480832_))
                                 (_K8080380829_ _expr80837_))
                               (let ((_body80821_ _g8079780808_))
                                 (_K8080280818_ _body80821_))))
                         (let ((_body80821_ _g8079780808_))
                           (_K8080280818_ _body80821_))))))
              (if (##null? _g8079780808_)
                  (_K8080680843_)
                  (_try-match8079980839_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx80623_)
        (letrec ((_satisfied?80625_
                  (lambda (_condition80723_)
                    (let* ((_e8072480739_ _condition80723_)
                           (_E8073480743_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8072480739_)))
                           (_E8072780762_
                            (lambda ()
                              (if (gx#stx-pair? _e8072480739_)
                                  (let ((_e8073580747_
                                         (gx#syntax-e _e8072480739_)))
                                    (let ((_hd8073680750_
                                           (##car _e8073580747_))
                                          (_tl8073780752_
                                           (##cdr _e8073580747_)))
                                      (let* ((_combinator80755_ _hd8073680750_)
                                             (_body80757_ _tl8073780752_))
                                        (if (gx#stx-list? _body80757_)
                                            (let ((_$e80759_
                                                   (gx#stx-e
                                                    _combinator80755_)))
                                              (if (eq? 'not _$e80759_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?80625_
                                                        _body80757_))
                                                  (if (eq? 'and _$e80759_)
                                                      (gx#stx-andmap
                                                       _satisfied?80625_
                                                       _body80757_)
                                                      (if (eq? 'or _$e80759_)
                                                          (gx#stx-ormap
                                                           _satisfied?80625_
                                                           _body80757_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e80759_)
                      (gx#stx-andmap gx#core-resolve-identifier _body80757_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx80623_
                       _combinator80755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8073480743_)))))
                                  (_E8073480743_))))
                           (_E8072680785_
                            (lambda ()
                              (if (gx#stx-pair? _e8072480739_)
                                  (let ((_e8072880766_
                                         (gx#syntax-e _e8072480739_)))
                                    (let ((_hd8072980769_
                                           (##car _e8072880766_))
                                          (_tl8073080771_
                                           (##cdr _e8072880766_)))
                                      (if (and (gx#identifier? _hd8072980769_)
                                               (gx#core-identifier=?
                                                _hd8072980769_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8073080771_)
                                              (let ((_e8073180774_
                                                     (gx#syntax-e
                                                      _tl8073080771_)))
                                                (let ((_hd8073280777_
                                                       (##car _e8073180774_))
                                                      (_tl8073380779_
                                                       (##cdr _e8073180774_)))
                                                  (let ((_expr80782_
                                                         _hd8073280777_))
                                                    (if (gx#stx-null?
                                                         _tl8073380779_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr80782_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8072780762_))
                (_E8072780762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8072780762_))
                                          (_E8072780762_))))
                                  (_E8072780762_))))
                           (_E8072580791_
                            (lambda ()
                              (let ((_id80789_ _e8072480739_))
                                (if (gx#identifier? _id80789_)
                                    (gx#core-bound-identifier?__%
                                     _id80789_
                                     gx#feature-binding?)
                                    (_E8072680785_))))))
                      (_E8072580791_))))
                 (_loop80626_
                  (lambda (_rest80656_)
                    (let* ((_e8065780665_ _rest80656_)
                           (_E8066380669_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8065780665_)))
                           (_E8065980673_
                            (lambda ()
                              (if (gx#stx-null? _e8065780665_)
                                  (if '#t '() (_E8066380669_))
                                  (_E8066380669_))))
                           (_E8065880719_
                            (lambda ()
                              (if (gx#stx-pair? _e8065780665_)
                                  (let ((_e8066080677_
                                         (gx#syntax-e _e8065780665_)))
                                    (let ((_hd8066180680_
                                           (##car _e8066080677_))
                                          (_tl8066280682_
                                           (##cdr _e8066080677_)))
                                      (let* ((_hd80685_ _hd8066180680_)
                                             (_rest80687_ _tl8066280682_))
                                        (if '#t
                                            (let* ((_e8068880695_ _hd80685_)
                                                   (_E8069080699_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8068880695_)))
                                                   (_E8068980715_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8068880695_)
                                                          (let ((_e8069180703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8068880695_)))
                    (let ((_hd8069280706_ (##car _e8069180703_))
                          (_tl8069380708_ (##cdr _e8069180703_)))
                      (let* ((_condition80711_ _hd8069280706_)
                             (_body80713_ _tl8069380708_))
                        (if '#t
                            (if (gx#stx-eq? _condition80711_ 'else)
                                (if (gx#stx-null? _rest80687_)
                                    _body80713_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx80623_
                                     _hd80685_))
                                (if (_satisfied?80625_ _condition80711_)
                                    _body80713_
                                    (_loop80626_ _rest80687_)))
                            (_E8069080699_)))))
                  (_E8069080699_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8068980715_))
                                            (_E8065980673_)))))
                                  (_E8065980673_)))))
                      (_E8065880719_)))))
          (let* ((_e8062780634_ _stx80623_)
                 (_E8062980638_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8062780634_)))
                 (_E8062880652_
                  (lambda ()
                    (if (gx#stx-pair? _e8062780634_)
                        (let ((_e8063080642_ (gx#syntax-e _e8062780634_)))
                          (let ((_hd8063180645_ (##car _e8063080642_))
                                (_tl8063280647_ (##cdr _e8063080642_)))
                            (let ((_clauses80650_ _tl8063280647_))
                              (if (gx#stx-list? _clauses80650_)
                                  (gx#core-cons
                                   'begin
                                   (_loop80626_ _clauses80650_))
                                  (_E8062980638_)))))
                        (_E8062980638_)))))
            (_E8062880652_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx80566_ _rpath80567_)
        (let* ((_e8056880578_ _stx80566_)
               (_E8057080582_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8056880578_)))
               (_E8056980609_
                (lambda ()
                  (if (gx#stx-pair? _e8056880578_)
                      (let ((_e8057180586_ (gx#syntax-e _e8056880578_)))
                        (let ((_hd8057280589_ (##car _e8057180586_))
                              (_tl8057380591_ (##cdr _e8057180586_)))
                          (if (gx#stx-pair? _tl8057380591_)
                              (let ((_e8057480594_
                                     (gx#syntax-e _tl8057380591_)))
                                (let ((_hd8057580597_ (##car _e8057480594_))
                                      (_tl8057680599_ (##cdr _e8057480594_)))
                                  (let ((_path80602_ _hd8057580597_))
                                    (if (gx#stx-null? _tl8057680599_)
                                        (if (gx#stx-string? _path80602_)
                                            (let ((_rpath80607_
                                                   (let ((_$e80604_
                                                          _rpath80567_))
                                                     (if _$e80604_
                                                         _$e80604_
                                                         (gx#core-resolve-path__%
                                                          _path80602_
                                                          (gx#stx-source
                                                           _stx80566_))))))
                                              (if (member _rpath80607_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx80566_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath80607_))
                                                    (gx#stx-source
                                                     _stx80566_)))))
                                            (_E8057080582_))
                                        (_E8057080582_)))))
                              (_E8057080582_))))
                      (_E8057080582_)))))
          (_E8056980609_))))
    (define gx#core-expand-include%__0
      (lambda (_stx80616_)
        (let ((_rpath80618_ '#f))
          (gx#core-expand-include%__% _stx80616_ _rpath80618_))))
    (define gx#core-expand-include%
      (lambda _g81691_
        (let ((_g81690_ (##length _g81691_)))
          (cond ((##fx= _g81690_ 1)
                 (apply (lambda (_stx80616_)
                          (gx#core-expand-include%__0 _stx80616_))
                        _g81691_))
                ((##fx= _g81690_ 2)
                 (apply (lambda (_stx80620_ _rpath80621_)
                          (gx#core-expand-include%__% _stx80620_ _rpath80621_))
                        _g81691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g81691_))))))
    (define gx#core-apply-expander__%
      (lambda (_K80535_ _stx80536_ _method80537_)
        (if (procedure? _K80535_)
            (let ((_$e80539_ (gx#stx-source _stx80536_)))
              (if _$e80539_
                  ((lambda (_g8054180543_)
                     (gx#stx-wrap-source (_K80535_ _stx80536_) _g8054180543_))
                   _$e80539_)
                  (_K80535_ _stx80536_)))
            (let ((_$e80546_ (bound-method-ref _K80535_ _method80537_)))
              (if _$e80546_
                  ((lambda (_g8054880550_)
                     (gx#core-apply-expander__%
                      _g8054880550_
                      _stx80536_
                      _method80537_))
                   _$e80546_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx80536_
                   _method80537_))))))
    (define gx#core-apply-expander__0
      (lambda (_K80556_ _stx80557_)
        (let ((_method80559_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K80556_ _stx80557_ _method80559_))))
    (define gx#core-apply-expander
      (lambda _g81693_
        (let ((_g81692_ (##length _g81693_)))
          (cond ((##fx= _g81692_ 2)
                 (apply (lambda (_K80556_ _stx80557_)
                          (gx#core-apply-expander__0 _K80556_ _stx80557_))
                        _g81693_))
                ((##fx= _g81692_ 3)
                 (apply (lambda (_K80561_ _stx80562_ _method80563_)
                          (gx#core-apply-expander__%
                           _K80561_
                           _stx80562_
                           _method80563_))
                        _g81693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g81693_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self80531_ _stx80532_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx80532_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self80384_ _stx80385_)
        (let* ((_self8038680392_ _self80384_)
               (_E8038880396_
                (lambda () (error '"No clause matching" _self8038680392_)))
               (_K8038980401_
                (lambda (_K80399_)
                  (gx#core-apply-expander__0 _K80399_ _stx80385_))))
          (if (##structure-instance-of? _self8038680392_ 'gx#core-macro::t)
              (let* ((_e8039080404_
                      (##unchecked-structure-ref
                       _self8038680392_
                       '1
                       gx#expander::t
                       '#f))
                     (_K80407_ _e8039080404_))
                (_K8038980401_ _K80407_))
              (_E8038880396_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self80237_ _stx80238_)
        (if (gx#sealed-syntax? _stx80238_)
            _stx80238_
            (let* ((_self8023980245_ _self80237_)
                   (_E8024180249_
                    (lambda () (error '"No clause matching" _self8023980245_)))
                   (_K8024280254_
                    (lambda (_K80252_)
                      (gx#core-apply-expander__0 _K80252_ _stx80238_))))
              (if (##structure-instance-of?
                   _self8023980245_
                   'gx#core-expander::t)
                  (let* ((_e8024380257_
                          (##unchecked-structure-ref
                           _self8023980245_
                           '1
                           gx#expander::t
                           '#f))
                         (_K80260_ _e8024380257_))
                    (_K8024280254_ _K80260_))
                  (_E8024180249_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self80099_ _stx80100_ _top?80101_)
        (if (_top?80101_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self80099_ _stx80100_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx80100_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self80106_ _stx80107_)
        (let ((_top?80109_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self80106_
           _stx80107_
           _top?80109_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g81695_
        (let ((_g81694_ (##length _g81695_)))
          (cond ((##fx= _g81694_ 2)
                 (apply (lambda (_self80106_ _stx80107_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self80106_
                           _stx80107_))
                        _g81695_))
                ((##fx= _g81694_ 3)
                 (apply (lambda (_self80111_ _stx80112_ _top?80113_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self80111_
                           _stx80112_
                           _top?80113_))
                        _g81695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g81695_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self79973_ _stx79974_)
        (gx#top-special-form::apply-macro-expander__%
         _self79973_
         _stx79974_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self79798_ _stx79799_)
        (let* ((_self7980079806_ _self79798_)
               (_E7980279810_
                (lambda () (error '"No clause matching" _self7980079806_)))
               (_K7980379843_
                (lambda (_id79813_)
                  (let* ((_e7981479821_ _stx79799_)
                         (_E7981679825_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e7981479821_)))
                         (_E7981579839_
                          (lambda ()
                            (if (gx#stx-pair? _e7981479821_)
                                (let ((_e7981779829_
                                       (gx#syntax-e _e7981479821_)))
                                  (let ((_hd7981879832_ (##car _e7981779829_))
                                        (_tl7981979834_ (##cdr _e7981779829_)))
                                    (let ((_body79837_ _tl7981979834_))
                                      (if '#t
                                          (gx#core-cons _id79813_ _body79837_)
                                          (_E7981679825_)))))
                                (_E7981679825_)))))
                    (_E7981579839_)))))
          (if (##structure-instance-of?
               _self7980079806_
               'gx#rename-macro-expander::t)
              (let* ((_e7980479846_
                      (##unchecked-structure-ref
                       _self7980079806_
                       '1
                       gx#expander::t
                       '#f))
                     (_id79849_ _e7980479846_))
                (_K7980379843_ _id79849_))
              (_E7980279810_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self79624_ _stx79625_ _method79626_)
        (let* ((_self7962779635_ _self79624_)
               (_E7962979639_
                (lambda () (error '"No clause matching" _self7962779635_)))
               (_K7963079646_
                (lambda (_phi79642_ _ctx79643_ _K79644_)
                  (gx#core-apply-user-macro
                   _K79644_
                   _stx79625_
                   _ctx79643_
                   _phi79642_
                   _method79626_))))
          (if (##structure-instance-of? _self7962779635_ 'gx#macro-expander::t)
              (let* ((_e7963179649_
                      (##unchecked-structure-ref
                       _self7962779635_
                       '1
                       gx#expander::t
                       '#f))
                     (_K79652_ _e7963179649_)
                     (_e7963279654_
                      (##unchecked-structure-ref
                       _self7962779635_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx79657_ _e7963279654_)
                     (_e7963379659_
                      (##unchecked-structure-ref
                       _self7962779635_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi79662_ _e7963379659_))
                (_K7963079646_ _phi79662_ _ctx79657_ _K79652_))
              (_E7962979639_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self79667_ _stx79668_)
        (let ((_method79670_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self79667_
           _stx79668_
           _method79670_))))
    (define gx#core-apply-user-expander
      (lambda _g81697_
        (let ((_g81696_ (##length _g81697_)))
          (cond ((##fx= _g81696_ 2)
                 (apply (lambda (_self79667_ _stx79668_)
                          (gx#core-apply-user-expander__0
                           _self79667_
                           _stx79668_))
                        _g81697_))
                ((##fx= _g81696_ 3)
                 (apply (lambda (_self79672_ _stx79673_ _method79674_)
                          (gx#core-apply-user-expander__%
                           _self79672_
                           _stx79673_
                           _method79674_))
                        _g81697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g81697_))))))
    (define gx#core-apply-user-macro
      (lambda (_K79614_ _stx79615_ _ctx79616_ _phi79617_ _method79618_)
        (let ((_mark79620_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx79616_
                _phi79617_
                _stx79615_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K79614_
               (gx#stx-apply-mark _stx79615_ _mark79620_)
               _method79618_)
              _mark79620_))
           gx#current-expander-marks
           (cons _mark79620_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx79465_ _phi79466_ _ctx79467_)
        (let _lp79469_ ((_bind79471_
                         (gx#core-resolve-identifier__%
                          _stx79465_
                          _phi79466_
                          _ctx79467_)))
          (if (##structure-direct-instance-of?
               _bind79471_
               'gx#import-binding::t)
              (_lp79469_
               (##unchecked-structure-ref
                _bind79471_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind79471_
                   'gx#alias-binding::t)
                  (_lp79469_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind79471_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi79466_
                    _ctx79467_))
                  _bind79471_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx79476_)
        (let* ((_phi79478_ (gx#current-expander-phi))
               (_ctx79480_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx79476_ _phi79478_ _ctx79480_))))
    (define gx#resolve-identifier__1
      (lambda (_stx79482_ _phi79483_)
        (let ((_ctx79485_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx79482_ _phi79483_ _ctx79485_))))
    (define gx#resolve-identifier
      (lambda _g81699_
        (let ((_g81698_ (##length _g81699_)))
          (cond ((##fx= _g81698_ 1)
                 (apply (lambda (_stx79476_)
                          (gx#resolve-identifier__0 _stx79476_))
                        _g81699_))
                ((##fx= _g81698_ 2)
                 (apply (lambda (_stx79482_ _phi79483_)
                          (gx#resolve-identifier__1 _stx79482_ _phi79483_))
                        _g81699_))
                ((##fx= _g81698_ 3)
                 (apply (lambda (_stx79487_ _phi79488_ _ctx79489_)
                          (gx#resolve-identifier__%
                           _stx79487_
                           _phi79488_
                           _ctx79489_))
                        _g81699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g81699_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx79423_ _val79424_ _rebind?79425_ _phi79426_ _ctx79427_)
        (let ((_rebind?79429_
               (if (not _rebind?79425_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?79425_) _rebind?79425_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx79423_)
           _val79424_
           _rebind?79429_
           _phi79426_
           _ctx79427_))))
    (define gx#bind-identifier!__0
      (lambda (_stx79434_ _val79435_)
        (let* ((_rebind?79437_ '#f)
               (_phi79439_ (gx#current-expander-phi))
               (_ctx79441_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx79434_
           _val79435_
           _rebind?79437_
           _phi79439_
           _ctx79441_))))
    (define gx#bind-identifier!__1
      (lambda (_stx79443_ _val79444_ _rebind?79445_)
        (let* ((_phi79447_ (gx#current-expander-phi))
               (_ctx79449_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx79443_
           _val79444_
           _rebind?79445_
           _phi79447_
           _ctx79449_))))
    (define gx#bind-identifier!__2
      (lambda (_stx79451_ _val79452_ _rebind?79453_ _phi79454_)
        (let ((_ctx79456_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx79451_
           _val79452_
           _rebind?79453_
           _phi79454_
           _ctx79456_))))
    (define gx#bind-identifier!
      (lambda _g81701_
        (let ((_g81700_ (##length _g81701_)))
          (cond ((##fx= _g81700_ 2)
                 (apply (lambda (_stx79434_ _val79435_)
                          (gx#bind-identifier!__0 _stx79434_ _val79435_))
                        _g81701_))
                ((##fx= _g81700_ 3)
                 (apply (lambda (_stx79443_ _val79444_ _rebind?79445_)
                          (gx#bind-identifier!__1
                           _stx79443_
                           _val79444_
                           _rebind?79445_))
                        _g81701_))
                ((##fx= _g81700_ 4)
                 (apply (lambda (_stx79451_
                                 _val79452_
                                 _rebind?79453_
                                 _phi79454_)
                          (gx#bind-identifier!__2
                           _stx79451_
                           _val79452_
                           _rebind?79453_
                           _phi79454_))
                        _g81701_))
                ((##fx= _g81700_ 5)
                 (apply (lambda (_stx79458_
                                 _val79459_
                                 _rebind?79460_
                                 _phi79461_
                                 _ctx79462_)
                          (gx#bind-identifier!__%
                           _stx79458_
                           _val79459_
                           _rebind?79460_
                           _phi79461_
                           _ctx79462_))
                        _g81701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g81701_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx79395_ _phi79396_ _ctx79397_)
        (let _lp79399_ ((_e79401_ _stx79395_)
                        (_marks79402_ (gx#current-expander-marks)))
          (if (symbol? _e79401_)
              (gx#core-resolve-binding
               _e79401_
               _phi79396_
               _phi79396_
               _ctx79397_
               (reverse _marks79402_))
              (if (gx#identifier-quote? _e79401_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e79401_ '1 gx#AST::t '#f)
                   _phi79396_
                   '0
                   (##unchecked-structure-ref
                    _e79401_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e79401_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e79401_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e79401_ '1 gx#AST::t '#f)
                       _phi79396_
                       _phi79396_
                       _ctx79397_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e79401_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks79402_))
                      (if (##structure-direct-instance-of?
                           _e79401_
                           'gx#syntax-wrap::t)
                          (_lp79399_
                           (##unchecked-structure-ref
                            _e79401_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e79401_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks79402_))
                          (if (##structure-instance-of?
                               _e79401_
                               'gerbil#AST::t)
                              (_lp79399_
                               (##unchecked-structure-ref
                                _e79401_
                                '1
                                gx#AST::t
                                '#f)
                               _marks79402_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx79395_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx79407_)
        (let* ((_phi79409_ (gx#current-expander-phi))
               (_ctx79411_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx79407_ _phi79409_ _ctx79411_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx79413_ _phi79414_)
        (let ((_ctx79416_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx79413_ _phi79414_ _ctx79416_))))
    (define gx#core-resolve-identifier
      (lambda _g81703_
        (let ((_g81702_ (##length _g81703_)))
          (cond ((##fx= _g81702_ 1)
                 (apply (lambda (_stx79407_)
                          (gx#core-resolve-identifier__0 _stx79407_))
                        _g81703_))
                ((##fx= _g81702_ 2)
                 (apply (lambda (_stx79413_ _phi79414_)
                          (gx#core-resolve-identifier__1
                           _stx79413_
                           _phi79414_))
                        _g81703_))
                ((##fx= _g81702_ 3)
                 (apply (lambda (_stx79418_ _phi79419_ _ctx79420_)
                          (gx#core-resolve-identifier__%
                           _stx79418_
                           _phi79419_
                           _ctx79420_))
                        _g81703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g81703_))))))
    (define gx#core-resolve-binding
      (lambda (_id79308_ _phi79309_ _src-phi79310_ _ctx79311_ _marks79312_)
        (letrec ((_resolve79314_
                  (lambda (_ctx79382_ _src-phi79383_ _key79384_)
                    (let _lp79386_ ((_ctx79388_
                                     (gx#core-context-shift
                                      _ctx79382_
                                      _phi79309_))
                                    (_dphi79389_
                                     (fx- _phi79309_ _src-phi79383_)))
                      (let ((_$e79391_
                             (gx#core-context-resolve _ctx79388_ _key79384_)))
                        (if _$e79391_
                            (values _$e79391_)
                            (if (fxzero? _dphi79389_)
                                '#f
                                (if (fxpositive? _dphi79389_)
                                    (_lp79386_
                                     (gx#core-context-shift _ctx79388_ '-1)
                                     (fx- _dphi79389_ '1))
                                    (_lp79386_
                                     (gx#core-context-shift _ctx79388_ '1)
                                     (fx+ _dphi79389_ '1))))))))))
          (let _lp79316_ ((_ctx79318_ _ctx79311_)
                          (_src-phi79319_ _src-phi79310_)
                          (_rest79320_ _marks79312_))
            (let* ((_rest7932179329_ _rest79320_)
                   (_else7932379337_
                    (lambda ()
                      (_resolve79314_ _ctx79318_ _src-phi79319_ _id79308_)))
                   (_K7932579370_
                    (lambda (_rest79340_ _hd79341_)
                      (let* ((_hd7934279348_ _hd79341_)
                             (_E7934479352_
                              (lambda ()
                                (error '"No clause matching" _hd7934279348_)))
                             (_K7934579362_
                              (lambda (_subst79355_)
                                (let ((_$e79359_
                                       (let ((_key79357_
                                              (if _subst79355_
                                                  (hash-get
                                                   _subst79355_
                                                   _id79308_)
                                                  '#f)))
                                         (if _key79357_
                                             (_resolve79314_
                                              _ctx79318_
                                              _src-phi79319_
                                              _key79357_)
                                             '#f))))
                                  (if _$e79359_
                                      _$e79359_
                                      (_lp79316_
                                       (##unchecked-structure-ref
                                        _hd79341_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd79341_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest79340_))))))
                        (if (##structure-instance-of?
                             _hd7934279348_
                             'gx#expander-mark::t)
                            (let* ((_e7934679365_
                                    (##unchecked-structure-ref
                                     _hd7934279348_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst79368_ _e7934679365_))
                              (_K7934579362_ _subst79368_))
                            (_E7934479352_))))))
              (if (##pair? _rest7932179329_)
                  (let ((_hd7932679373_ (##car _rest7932179329_))
                        (_tl7932779375_ (##cdr _rest7932179329_)))
                    (let* ((_hd79378_ _hd7932679373_)
                           (_rest79380_ _tl7932779375_))
                      (_K7932579370_ _rest79380_ _hd79378_)))
                  (_else7932379337_)))))))
    (define gx#core-bind!__%
      (lambda (_key79184_ _val79185_ _rebind?79186_ _phi79187_ _ctx79188_)
        (letrec ((_update-binding79190_
                  (lambda (_xval79261_)
                    (if (or (_rebind?79186_ _ctx79188_ _xval79261_ _val79185_)
                            (and (##structure-direct-instance-of?
                                  _xval79261_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval79261_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val79185_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val79185_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval79261_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val79185_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val79185_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval79261_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val79185_
                        (if (and (##structure-direct-instance-of?
                                  _val79185_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val79185_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval79261_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val79185_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval79261_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval79261_
                            (if (and (##structure-direct-instance-of?
                                      _val79185_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval79261_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key79184_
                                 (cons (##unchecked-structure-ref
                                        _val79185_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val79185_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval79261_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval79261_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval79261_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval79261_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key79184_
                                 _val79185_
                                 _xval79261_))))))
                 (_gensubst79191_
                  (lambda (_subst79256_ _id79257_)
                    (let ((_eid79259_
                           (gensym (if (uninterned-symbol? _id79257_)
                                       '%
                                       _id79257_))))
                      (hash-put! _subst79256_ _id79257_ _eid79259_)
                      _eid79259_)))
                 (_subst!79192_
                  (lambda (_key79194_)
                    (let* ((_key7919579203_ _key79194_)
                           (_else7919779211_ (lambda () _key79194_))
                           (_K7919979244_
                            (lambda (_mark79214_ _id79215_)
                              (let* ((_mark7921679222_ _mark79214_)
                                     (_E7921879226_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark7921679222_)))
                                     (_K7921979236_
                                      (lambda (_subst79229_)
                                        (if (not _subst79229_)
                                            (let ((_subst79231_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark79214_
                                               _subst79231_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst79191_
                                               _subst79231_
                                               _id79215_))
                                            (let ((_$e79233_
                                                   (hash-get
                                                    _subst79229_
                                                    _id79215_)))
                                              (if _$e79233_
                                                  (values _$e79233_)
                                                  (_gensubst79191_
                                                   _subst79229_
                                                   _id79215_)))))))
                                (if (##structure-instance-of?
                                     _mark7921679222_
                                     'gx#expander-mark::t)
                                    (let* ((_e7922079239_
                                            (##unchecked-structure-ref
                                             _mark7921679222_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst79242_ _e7922079239_))
                                      (_K7921979236_ _subst79242_))
                                    (_E7921879226_))))))
                      (if (##pair? _key7919579203_)
                          (let ((_hd7920079247_ (##car _key7919579203_))
                                (_tl7920179249_ (##cdr _key7919579203_)))
                            (let* ((_id79252_ _hd7920079247_)
                                   (_mark79254_ _tl7920179249_))
                              (_K7919979244_ _mark79254_ _id79252_)))
                          (_else7919779211_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx79188_ _phi79187_)
           (_subst!79192_ _key79184_)
           _val79185_
           _update-binding79190_))))
    (define gx#core-bind!__0
      (lambda (_key79278_ _val79279_)
        (let* ((_rebind?79281_ false)
               (_phi79283_ (gx#current-expander-phi))
               (_ctx79285_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key79278_
           _val79279_
           _rebind?79281_
           _phi79283_
           _ctx79285_))))
    (define gx#core-bind!__1
      (lambda (_key79287_ _val79288_ _rebind?79289_)
        (let* ((_phi79291_ (gx#current-expander-phi))
               (_ctx79293_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key79287_
           _val79288_
           _rebind?79289_
           _phi79291_
           _ctx79293_))))
    (define gx#core-bind!__2
      (lambda (_key79295_ _val79296_ _rebind?79297_ _phi79298_)
        (let ((_ctx79300_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key79295_
           _val79296_
           _rebind?79297_
           _phi79298_
           _ctx79300_))))
    (define gx#core-bind!
      (lambda _g81705_
        (let ((_g81704_ (##length _g81705_)))
          (cond ((##fx= _g81704_ 2)
                 (apply (lambda (_key79278_ _val79279_)
                          (gx#core-bind!__0 _key79278_ _val79279_))
                        _g81705_))
                ((##fx= _g81704_ 3)
                 (apply (lambda (_key79287_ _val79288_ _rebind?79289_)
                          (gx#core-bind!__1
                           _key79287_
                           _val79288_
                           _rebind?79289_))
                        _g81705_))
                ((##fx= _g81704_ 4)
                 (apply (lambda (_key79295_
                                 _val79296_
                                 _rebind?79297_
                                 _phi79298_)
                          (gx#core-bind!__2
                           _key79295_
                           _val79296_
                           _rebind?79297_
                           _phi79298_))
                        _g81705_))
                ((##fx= _g81704_ 5)
                 (apply (lambda (_key79302_
                                 _val79303_
                                 _rebind?79304_
                                 _phi79305_
                                 _ctx79306_)
                          (gx#core-bind!__%
                           _key79302_
                           _val79303_
                           _rebind?79304_
                           _phi79305_
                           _ctx79306_))
                        _g81705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g81705_))))))
    (define gx#core-identifier-key
      (lambda (_stx79118_)
        (if (symbol? _stx79118_)
            (let* ((_g7911979127_ (gx#current-expander-marks))
                   (_else7912179135_ (lambda () _stx79118_))
                   (_K7912379140_
                    (lambda (_hd79138_) (cons _stx79118_ _hd79138_))))
              (if (##pair? _g7911979127_)
                  (let* ((_hd7912479143_ (##car _g7911979127_))
                         (_hd79146_ _hd7912479143_))
                    (_K7912379140_ _hd79146_))
                  (_else7912179135_)))
            (if (gx#identifier? _stx79118_)
                (let* ((_id79148_ (gx#syntax-local-unwrap _stx79118_))
                       (_eid79150_ (gx#stx-e _id79148_))
                       (_marks79152_ (gx#stx-identifier-marks* _id79148_)))
                  (let* ((_marks7915479162_ _marks79152_)
                         (_else7915679170_ (lambda () _eid79150_))
                         (_K7915879175_
                          (lambda (_hd79173_) (cons _eid79150_ _hd79173_))))
                    (if (##pair? _marks7915479162_)
                        (let* ((_hd7915979178_ (##car _marks7915479162_))
                               (_hd79181_ _hd7915979178_))
                          (_K7915879175_ _hd79181_))
                        (_else7915679170_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx79118_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx79063_ _phi79064_)
        (letrec ((_make-phi79066_
                  (lambda (_super79116_)
                    (let ((__obj81676
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj81676
                       (gensym 'phi)
                       _super79116_)
                      __obj81676)))
                 (_make-phi/up79067_
                  (lambda (_ctx79111_ _super79112_)
                    (let ((_ctx+179114_ (_make-phi79066_ _super79112_)))
                      (##unchecked-structure-set!
                       _ctx79111_
                       _ctx+179114_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+179114_
                       _ctx79111_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+179114_)))
                 (_make-phi/down79068_
                  (lambda (_ctx79106_ _super79107_)
                    (let ((_ctx-179109_ (_make-phi79066_ _super79107_)))
                      (##unchecked-structure-set!
                       _ctx-179109_
                       _ctx79106_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx79106_
                       _ctx-179109_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-179109_)))
                 (_shift79069_
                  (lambda (_ctx79090_
                           _delta79091_
                           _make-delta-context79092_
                           _phi79093_
                           _K79094_)
                    (let ((_$e79096_
                           (##unchecked-structure-ref
                            _ctx79090_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e79096_
                          ((lambda (_super79099_)
                             (let* ((_super79101_
                                     (_K79094_ _super79099_ _delta79091_))
                                    (_ctx+d79103_
                                     (_make-delta-context79092_
                                      _ctx79090_
                                      _super79101_)))
                               (_K79094_
                                _ctx+d79103_
                                (fx- _phi79093_ _delta79091_))))
                           _$e79096_)
                          (error '"Bad context" _ctx79090_))))))
          (let _K79071_ ((_ctx79073_ _ctx79063_) (_phi79074_ _phi79064_))
            (if (fxzero? _phi79074_)
                _ctx79073_
                (if (##structure-instance-of? _ctx79073_ 'gx#context-phi::t)
                    (if (fxpositive? _phi79074_)
                        (let ((_$e79076_
                               (##unchecked-structure-ref
                                _ctx79073_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e79076_
                              ((lambda (_g7907879080_)
                                 (_K79071_ _g7907879080_ (fx- _phi79074_ '1)))
                               _$e79076_)
                              (_shift79069_
                               _ctx79073_
                               '1
                               _make-phi/up79067_
                               _phi79074_
                               _K79071_)))
                        (let ((_$e79083_
                               (##unchecked-structure-ref
                                _ctx79073_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e79083_
                              ((lambda (_g7908579087_)
                                 (_K79071_ _g7908579087_ (fx+ _phi79074_ '1)))
                               _$e79083_)
                              (_shift79069_
                               _ctx79073_
                               '-1
                               _make-phi/down79068_
                               _phi79074_
                               _K79071_))))
                    _ctx79073_))))))
    (define gx#core-context-get
      (lambda (_ctx79060_ _key79061_)
        (hash-get
         (##unchecked-structure-ref _ctx79060_ '2 gx#expander-context::t '#f)
         _key79061_)))
    (define gx#core-context-put!
      (lambda (_ctx79056_ _key79057_ _val79058_)
        (hash-put!
         (##unchecked-structure-ref _ctx79056_ '2 gx#expander-context::t '#f)
         _key79057_
         _val79058_)))
    (define gx#core-context-resolve
      (lambda (_ctx79043_ _key79044_)
        (let _lp79046_ ((_ctx79048_ _ctx79043_))
          (let ((_$e79050_ (gx#core-context-get _ctx79048_ _key79044_)))
            (if _$e79050_
                (values _$e79050_)
                (let ((_$e79053_
                       (if (##structure-instance-of?
                            _ctx79048_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx79048_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e79053_ (_lp79046_ _$e79053_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx79033_ _key79034_ _val79035_ _rebind79036_)
        (let ((_$e79038_ (gx#core-context-get _ctx79033_ _key79034_)))
          (if _$e79038_
              ((lambda (_xval79041_)
                 (gx#core-context-put!
                  _ctx79033_
                  _key79034_
                  (_rebind79036_ _xval79041_)))
               _$e79038_)
              (gx#core-context-put! _ctx79033_ _key79034_ _val79035_)))))
    (define gx#core-context-top__%
      (lambda (_ctx79011_ _stop?79012_)
        (let _lp79014_ ((_ctx79016_ _ctx79011_))
          (if (_stop?79012_ _ctx79016_)
              _ctx79016_
              (if (##structure-instance-of? _ctx79016_ 'gx#context-phi::t)
                  (_lp79014_
                   (##unchecked-structure-ref
                    _ctx79016_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx79022_ (gx#current-expander-context))
               (_stop?79024_ gx#top-context?))
          (gx#core-context-top__% _ctx79022_ _stop?79024_))))
    (define gx#core-context-top__1
      (lambda (_ctx79026_)
        (let ((_stop?79028_ gx#top-context?))
          (gx#core-context-top__% _ctx79026_ _stop?79028_))))
    (define gx#core-context-top
      (lambda _g81707_
        (let ((_g81706_ (##length _g81707_)))
          (cond ((##fx= _g81706_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g81707_))
                ((##fx= _g81706_ 1)
                 (apply (lambda (_ctx79026_)
                          (gx#core-context-top__1 _ctx79026_))
                        _g81707_))
                ((##fx= _g81706_ 2)
                 (apply (lambda (_ctx79030_ _stop?79031_)
                          (gx#core-context-top__% _ctx79030_ _stop?79031_))
                        _g81707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g81707_))))))
    (define gx#core-context-root__%
      (lambda (_ctx78996_)
        (let _lp78998_ ((_ctx79000_ _ctx78996_))
          (if (##structure-instance-of? _ctx79000_ 'gx#context-phi::t)
              (_lp78998_
               (##unchecked-structure-ref _ctx79000_ '3 gx#phi-context::t '#f))
              _ctx79000_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx79006_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx79006_))))
    (define gx#core-context-root
      (lambda _g81709_
        (let ((_g81708_ (##length _g81709_)))
          (cond ((##fx= _g81708_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g81709_))
                ((##fx= _g81708_ 1)
                 (apply (lambda (_ctx79008_)
                          (gx#core-context-root__% _ctx79008_))
                        _g81709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g81709_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx78977_ . __7897478978_)
        (let ((_$e78981_ (gx#current-expander-allow-rebind?)))
          (if _$e78981_
              _$e78981_
              (if (##structure-instance-of? _ctx78977_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx78977_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx78977_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx78988_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx78988_))))
    (define gx#core-context-rebind?
      (lambda _g81711_
        (let ((_g81710_ (##length _g81711_)))
          (cond ((##fx= _g81710_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g81711_))
                ((##fx= _g81710_ 1)
                 (apply (lambda (_ctx78990_)
                          (gx#core-context-rebind?__% _ctx78990_))
                        _g81711_))
                ((##fx>= _g81710_ 1)
                 (apply gx#core-context-rebind?__% _g81711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g81711_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx78960_)
        (let ((_$e78962_ (gx#core-context-top__1 _ctx78960_)))
          (if _$e78962_
              ((lambda (_ctx78965_)
                 (if (##structure-instance-of?
                      _ctx78965_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx78965_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e78962_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx78971_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx78971_))))
    (define gx#core-context-namespace
      (lambda _g81713_
        (let ((_g81712_ (##length _g81713_)))
          (cond ((##fx= _g81712_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g81713_))
                ((##fx= _g81712_ 1)
                 (apply (lambda (_ctx78973_)
                          (gx#core-context-namespace__% _ctx78973_))
                        _g81713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g81713_))))))
    (define gx#expander-binding?__%
      (lambda (_bind78946_ _is?78947_)
        (if (##structure-direct-instance-of? _bind78946_ 'gx#syntax-binding::t)
            (_is?78947_
             (##unchecked-structure-ref
              _bind78946_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind78952_)
        (let ((_is?78954_ gx#expander?))
          (gx#expander-binding?__% _bind78952_ _is?78954_))))
    (define gx#expander-binding?
      (lambda _g81715_
        (let ((_g81714_ (##length _g81715_)))
          (cond ((##fx= _g81714_ 1)
                 (apply (lambda (_bind78952_)
                          (gx#expander-binding?__0 _bind78952_))
                        _g81715_))
                ((##fx= _g81714_ 2)
                 (apply (lambda (_bind78956_ _is?78957_)
                          (gx#expander-binding?__% _bind78956_ _is?78957_))
                        _g81715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g81715_))))))
    (define gx#core-expander-binding?
      (lambda (_bind78943_)
        (gx#expander-binding?__% _bind78943_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind78941_)
        (gx#expander-binding?__% _bind78941_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind78935_)
        (letrec ((_direct-special-form?78937_
                  (lambda (_obj78939_)
                    (##structure-direct-instance-of?
                     _obj78939_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind78935_ _direct-special-form?78937_))))
    (define gx#special-form-binding?
      (lambda (_bind78933_)
        (gx#expander-binding?__% _bind78933_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind78924_)
        (letrec ((_feature?78926_
                  (lambda (_e78928_)
                    (let ((_$e78930_
                           (##structure-instance-of?
                            _e78928_
                            'gx#feature-expander::t)))
                      (if _$e78930_
                          _$e78930_
                          (##structure-instance-of?
                           _e78928_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind78924_ _feature?78926_))))
    (define gx#private-feature-binding?
      (lambda (_bind78922_)
        (gx#expander-binding?__% _bind78922_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id78909_ _bound?78910_)
        (if (gx#identifier? _id78909_)
            (_bound?78910_ (gx#resolve-identifier__0 _id78909_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id78915_)
        (let ((_bound?78917_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id78915_ _bound?78917_))))
    (define gx#core-bound-identifier?
      (lambda _g81717_
        (let ((_g81716_ (##length _g81717_)))
          (cond ((##fx= _g81716_ 1)
                 (apply (lambda (_id78915_)
                          (gx#core-bound-identifier?__0 _id78915_))
                        _g81717_))
                ((##fx= _g81716_ 2)
                 (apply (lambda (_id78919_ _bound?78920_)
                          (gx#core-bound-identifier?__%
                           _id78919_
                           _bound?78920_))
                        _g81717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g81717_))))))
    (define gx#core-identifier=?
      (lambda (_x78899_ _y78900_)
        (letrec ((_y=?78902_
                  (lambda (_xid78906_)
                    ((if (list? _y78900_) memq eq?) _xid78906_ _y78900_))))
          (let ((_bind78904_ (gx#resolve-identifier__0 _x78899_)))
            (if (##structure-instance-of? _bind78904_ 'gx#binding::t)
                (_y=?78902_
                 (##unchecked-structure-ref _bind78904_ '1 gx#binding::t '#f))
                (_y=?78902_ (gx#stx-e _x78899_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e78897_)
        (if (interned-symbol? _e78897_)
            (string-index__0 (symbol->string _e78897_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx78852_ _src78853_ _ctx78854_ _marks78855_)
        (if (##structure? _stx78852_)
            (let ((_$e78857_ (gx#sealed-syntax-unwrap _stx78852_)))
              (if _$e78857_
                  (values _$e78857_)
                  (if (gx#identifier? _stx78852_)
                      (let ((_id78860_
                             (gx#stx-unwrap__% _stx78852_ _marks78855_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id78860_ '1 gx#AST::t '#f)
                         (let ((_$e78862_
                                (##unchecked-structure-ref
                                 _id78860_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e78862_ _$e78862_ _src78853_))
                         _ctx78854_
                         (##unchecked-structure-ref
                          _id78860_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx78852_)
                       (let ((_$e78865_ (gx#stx-source _stx78852_)))
                         (if _$e78865_ _$e78865_ _src78853_))
                       _ctx78854_
                       (reverse _marks78855_)))))
            (##structure
             gx#syntax-quote::t
             _stx78852_
             _src78853_
             _ctx78854_
             (reverse _marks78855_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx78871_)
        (let* ((_src78873_ '#f)
               (_ctx78875_ (gx#current-expander-context))
               (_marks78877_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx78871_
           _src78873_
           _ctx78875_
           _marks78877_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx78879_ _src78880_)
        (let* ((_ctx78882_ (gx#current-expander-context))
               (_marks78884_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx78879_
           _src78880_
           _ctx78882_
           _marks78884_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx78886_ _src78887_ _ctx78888_)
        (let ((_marks78890_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx78886_
           _src78887_
           _ctx78888_
           _marks78890_))))
    (define gx#core-quote-syntax
      (lambda _g81719_
        (let ((_g81718_ (##length _g81719_)))
          (cond ((##fx= _g81718_ 1)
                 (apply (lambda (_stx78871_)
                          (gx#core-quote-syntax__0 _stx78871_))
                        _g81719_))
                ((##fx= _g81718_ 2)
                 (apply (lambda (_stx78879_ _src78880_)
                          (gx#core-quote-syntax__1 _stx78879_ _src78880_))
                        _g81719_))
                ((##fx= _g81718_ 3)
                 (apply (lambda (_stx78886_ _src78887_ _ctx78888_)
                          (gx#core-quote-syntax__2
                           _stx78886_
                           _src78887_
                           _ctx78888_))
                        _g81719_))
                ((##fx= _g81718_ 4)
                 (apply (lambda (_stx78892_ _src78893_ _ctx78894_ _marks78895_)
                          (gx#core-quote-syntax__%
                           _stx78892_
                           _src78893_
                           _ctx78894_
                           _marks78895_))
                        _g81719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g81719_))))))
    (define gx#core-cons
      (lambda (_hd78848_ _tl78849_)
        (cons (gx#core-quote-syntax__0 _hd78848_) _tl78849_)))
    (define gx#core-list
      (lambda (_hd78845_ . _rest78846_)
        (cons (gx#core-quote-syntax__0 _hd78845_) _rest78846_)))
    (define gx#core-cons*
      (lambda (_hd78842_ . _rest78843_)
        (apply cons* (gx#core-quote-syntax__0 _hd78842_) _rest78843_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path78816_ _rel78817_)
        (let ((_path78829_ (gx#stx-e _stx-path78816_))
              (_reldir78830_
               (let _lp78819_ ((_relsrc78821_
                                (let ((_$e78826_
                                       (gx#stx-source _stx-path78816_)))
                                  (if _$e78826_ _$e78826_ _rel78817_))))
                 (if (##structure-instance-of? _relsrc78821_ 'gerbil#AST::t)
                     (_lp78819_
                      (let ((_$e78823_ (gx#stx-source _relsrc78821_)))
                        (if _$e78823_ _$e78823_ (gx#stx-e _relsrc78821_))))
                     (if (source-location-path? _relsrc78821_)
                         (path-directory (source-location-path _relsrc78821_))
                         (if (string? _relsrc78821_)
                             (path-directory _relsrc78821_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path78829_ (path-normalize _reldir78830_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path78835_)
        (let ((_rel78837_ '#f))
          (gx#core-resolve-path__% _stx-path78835_ _rel78837_))))
    (define gx#core-resolve-path
      (lambda _g81721_
        (let ((_g81720_ (##length _g81721_)))
          (cond ((##fx= _g81720_ 1)
                 (apply (lambda (_stx-path78835_)
                          (gx#core-resolve-path__0 _stx-path78835_))
                        _g81721_))
                ((##fx= _g81720_ 2)
                 (apply (lambda (_stx-path78839_ _rel78840_)
                          (gx#core-resolve-path__% _stx-path78839_ _rel78840_))
                        _g81721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g81721_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr78772_ _ctx78773_)
        (let* ((_repr7877478781_ _repr78772_)
               (_E7877678785_
                (lambda () (error '"No clause matching" _repr7877478781_)))
               (_K7877778793_
                (lambda (_subs78788_ _phi78789_)
                  (let ((_subst78791_
                         (if (not (null? _subs78788_))
                             (list->hash-table-eq _subs78788_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst78791_
                     _ctx78773_
                     _phi78789_
                     '#f)))))
          (if (##pair? _repr7877478781_)
              (let ((_hd7877878796_ (##car _repr7877478781_))
                    (_tl7877978798_ (##cdr _repr7877478781_)))
                (let* ((_phi78801_ _hd7877878796_)
                       (_subs78803_ _tl7877978798_))
                  (_K7877778793_ _subs78803_ _phi78801_)))
              (_E7877678785_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr78808_)
        (let ((_ctx78810_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr78808_ _ctx78810_))))
    (define gx#core-deserialize-mark
      (lambda _g81723_
        (let ((_g81722_ (##length _g81723_)))
          (cond ((##fx= _g81722_ 1)
                 (apply (lambda (_repr78808_)
                          (gx#core-deserialize-mark__0 _repr78808_))
                        _g81723_))
                ((##fx= _g81722_ 2)
                 (apply (lambda (_repr78812_ _ctx78813_)
                          (gx#core-deserialize-mark__% _repr78812_ _ctx78813_))
                        _g81723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g81723_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx78769_)
        (gx#stx-rewrap _stx78769_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx78767_)
        (gx#stx-unwrap__% _stx78767_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx78737_)
        (let* ((_g7873878746_ (gx#current-expander-marks))
               (_else7874078754_ (lambda () _stx78737_))
               (_K7874278759_
                (lambda (_hd78757_) (gx#stx-apply-mark _stx78737_ _hd78757_))))
          (if (##pair? _g7873878746_)
              (let* ((_hd7874378762_ (##car _g7873878746_))
                     (_hd78765_ _hd7874378762_))
                (_K7874278759_ _hd78765_))
              (_else7874078754_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx78722_ _E78723_)
        (let ((_bind78725_ (gx#resolve-identifier__0 _stx78722_)))
          (if (##structure-direct-instance-of?
               _bind78725_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind78725_
               '4
               gx#syntax-binding::t
               '#f)
              (_E78723_ _stx78722_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx78730_)
        (let ((_E78732_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx78730_ _E78732_))))
    (define gx#syntax-local-e
      (lambda _g81725_
        (let ((_g81724_ (##length _g81725_)))
          (cond ((##fx= _g81724_ 1)
                 (apply (lambda (_stx78730_) (gx#syntax-local-e__0 _stx78730_))
                        _g81725_))
                ((##fx= _g81724_ 2)
                 (apply (lambda (_stx78734_ _E78735_)
                          (gx#syntax-local-e__% _stx78734_ _E78735_))
                        _g81725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g81725_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx78706_ _E78707_)
        (let ((_e78709_ (gx#syntax-local-e__% _stx78706_ _E78707_)))
          (if (##structure-instance-of? _e78709_ 'gx#expander::t)
              (##structure-ref _e78709_ '1 gx#expander::t '#f)
              _e78709_))))
    (define gx#syntax-local-value__0
      (lambda (_stx78714_)
        (let ((_E78716_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx78714_ _E78716_))))
    (define gx#syntax-local-value
      (lambda _g81727_
        (let ((_g81726_ (##length _g81727_)))
          (cond ((##fx= _g81726_ 1)
                 (apply (lambda (_stx78714_)
                          (gx#syntax-local-value__0 _stx78714_))
                        _g81727_))
                ((##fx= _g81726_ 2)
                 (apply (lambda (_stx78718_ _E78719_)
                          (gx#syntax-local-value__% _stx78718_ _E78719_))
                        _g81727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g81727_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx78703_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx78703_)))))
