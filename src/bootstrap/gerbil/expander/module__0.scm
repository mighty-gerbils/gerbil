(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710488240)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args92769_
        (apply make-instance gx#module-import::t _$args92769_)))
    (define gx#module-import-source
      (make-class-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (make-class-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (make-class-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (make-class-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (make-class-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (make-class-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (make-class-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (make-class-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (make-class-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (make-class-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (make-class-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (make-class-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (make-class-type
       'gx#module-export::t
       'module-export
       (list)
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args92766_
        (apply make-instance gx#module-export::t _$args92766_)))
    (define gx#module-export-context
      (make-class-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (make-class-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (make-class-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (make-class-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (make-class-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (make-class-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (make-class-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (make-class-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (make-class-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (make-class-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (make-class-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (make-class-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (make-class-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (make-class-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (make-class-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (make-class-type
       'gx#import-set::t
       'import-set
       (list)
       '(source phi imports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args92763_
        (apply make-instance gx#import-set::t _$args92763_)))
    (define gx#import-set-source
      (make-class-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi (make-class-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (make-class-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (make-class-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (make-class-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (make-class-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (make-class-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (make-class-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (make-class-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (make-class-type
       'gx#export-set::t
       'export-set
       (list)
       '(source phi exports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args92760_
        (apply make-instance gx#export-set::t _$args92760_)))
    (define gx#export-set-source
      (make-class-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi (make-class-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (make-class-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (make-class-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (make-class-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (make-class-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (make-class-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (make-class-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (make-class-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'exports))
    (define gx#import-expander::t
      (make-class-type
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _$args92757_
        (apply make-instance gx#import-expander::t _$args92757_)))
    (define gx#import-expander-context
      (make-class-slot-accessor gx#import-expander::t 'context))
    (define gx#import-expander-phi
      (make-class-slot-accessor gx#import-expander::t 'phi))
    (define gx#import-expander-e
      (make-class-slot-accessor gx#import-expander::t 'e))
    (define gx#import-expander-context-set!
      (make-class-slot-mutator gx#import-expander::t 'context))
    (define gx#import-expander-phi-set!
      (make-class-slot-mutator gx#import-expander::t 'phi))
    (define gx#import-expander-e-set!
      (make-class-slot-mutator gx#import-expander::t 'e))
    (define gx#&import-expander-context
      (make-class-slot-unchecked-accessor gx#import-expander::t 'context))
    (define gx#&import-expander-phi
      (make-class-slot-unchecked-accessor gx#import-expander::t 'phi))
    (define gx#&import-expander-e
      (make-class-slot-unchecked-accessor gx#import-expander::t 'e))
    (define gx#&import-expander-context-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'context))
    (define gx#&import-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'phi))
    (define gx#&import-expander-e-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'e))
    (define gx#export-expander::t
      (make-class-type
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _$args92754_
        (apply make-instance gx#export-expander::t _$args92754_)))
    (define gx#export-expander-context
      (make-class-slot-accessor gx#export-expander::t 'context))
    (define gx#export-expander-phi
      (make-class-slot-accessor gx#export-expander::t 'phi))
    (define gx#export-expander-e
      (make-class-slot-accessor gx#export-expander::t 'e))
    (define gx#export-expander-context-set!
      (make-class-slot-mutator gx#export-expander::t 'context))
    (define gx#export-expander-phi-set!
      (make-class-slot-mutator gx#export-expander::t 'phi))
    (define gx#export-expander-e-set!
      (make-class-slot-mutator gx#export-expander::t 'e))
    (define gx#&export-expander-context
      (make-class-slot-unchecked-accessor gx#export-expander::t 'context))
    (define gx#&export-expander-phi
      (make-class-slot-unchecked-accessor gx#export-expander::t 'phi))
    (define gx#&export-expander-e
      (make-class-slot-unchecked-accessor gx#export-expander::t 'e))
    (define gx#&export-expander-context-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'context))
    (define gx#&export-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'phi))
    (define gx#&export-expander-e-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'e))
    (define gx#import-export-expander::t
      (make-class-type
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _$args92751_
        (apply make-instance gx#import-export-expander::t _$args92751_)))
    (define gx#import-export-expander-context
      (make-class-slot-accessor gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi
      (make-class-slot-accessor gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e
      (make-class-slot-accessor gx#import-export-expander::t 'e))
    (define gx#import-export-expander-context-set!
      (make-class-slot-mutator gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi-set!
      (make-class-slot-mutator gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e-set!
      (make-class-slot-mutator gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context
      (make-class-slot-unchecked-accessor
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi
      (make-class-slot-unchecked-accessor gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e
      (make-class-slot-unchecked-accessor gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context-set!
      (make-class-slot-unchecked-mutator
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e-set!
      (make-class-slot-unchecked-mutator gx#import-export-expander::t 'e))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_path92748_ _fun92749_)
        (call-with-input-file
         (cons 'path: (cons _path92748_ gx#source-file-settings))
         _fun92749_)))
    (define gx#module-context:::init!
      (lambda (_self92742_ _id92743_ _super92744_ _ns92745_ _path92746_)
        (if (##fx< '11 (##structure-length _self92742_))
            (begin
              (##unchecked-structure-set!
               _self92742_
               _id92743_
               '1
               (##structure-type _self92742_)
               '#f)
              (##unchecked-structure-set!
               _self92742_
               (make-hash-table-eq)
               '2
               (##structure-type _self92742_)
               '#f)
              (##unchecked-structure-set!
               _self92742_
               _super92744_
               '3
               (##structure-type _self92742_)
               '#f)
              (##unchecked-structure-set!
               _self92742_
               '#f
               '4
               (##structure-type _self92742_)
               '#f)
              (##unchecked-structure-set!
               _self92742_
               '#f
               '5
               (##structure-type _self92742_)
               '#f)
              (##unchecked-structure-set!
               _self92742_
               _ns92745_
               '6
               (##structure-type _self92742_)
               '#f)
              (##unchecked-structure-set!
               _self92742_
               _path92746_
               '7
               (##structure-type _self92742_)
               '#f)
              (##unchecked-structure-set!
               _self92742_
               '()
               '8
               (##structure-type _self92742_)
               '#f)
              (##unchecked-structure-set!
               _self92742_
               '()
               '9
               (##structure-type _self92742_)
               '#f)
              (##unchecked-structure-set!
               _self92742_
               '#f
               '10
               (##structure-type _self92742_)
               '#f)
              (##unchecked-structure-set!
               _self92742_
               '#f
               '11
               (##structure-type _self92742_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92742_
                   '11
                   (##vector-length _self92742_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self92586_ _ctx92587_ _root92588_)
        (let ((_super92596_
               (let ((_$e92590_ _root92588_))
                 (if _$e92590_
                     _$e92590_
                     (let ((_$e92593_ (gx#core-context-root__0)))
                       (if _$e92593_
                           _$e92593_
                           (let ((__obj92811
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor92812
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj92811
                                     ':init!)))
                               (if __constructor92812
                                   (__constructor92812 __obj92811)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj92811)))))))
          (if _ctx92587_
              (let ((_id92599_
                     (##structure-ref
                      _ctx92587_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path92600_
                     (##structure-ref _ctx92587_ '7 gx#module-context::t '#f))
                    (_in92601_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx92587_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e92602_
                     (make-promise (lambda () (gx#eval-module _ctx92587_)))))
                (if (##fx< '8 (##structure-length _self92586_))
                    (begin
                      (##unchecked-structure-set!
                       _self92586_
                       _id92599_
                       '1
                       (##structure-type _self92586_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92586_
                       (make-hash-table-eq 'size: (length _in92601_))
                       '2
                       (##structure-type _self92586_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92586_
                       _super92596_
                       '3
                       (##structure-type _self92586_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92586_
                       '#f
                       '4
                       (##structure-type _self92586_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92586_
                       '#f
                       '5
                       (##structure-type _self92586_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92586_
                       _path92600_
                       '6
                       (##structure-type _self92586_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92586_
                       _in92601_
                       '7
                       (##structure-type _self92586_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92586_
                       _e92602_
                       '8
                       (##structure-type _self92586_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self92586_
                           '8
                           (##vector-length _self92586_)))
                (for-each
                 (lambda (_g9260392605_)
                   (gx#core-bind-weak-import!__% _g9260392605_ _self92586_))
                 _in92601_))
              (if (##fx< '8 (##structure-length _self92586_))
                  (begin
                    (##unchecked-structure-set!
                     _self92586_
                     '#f
                     '1
                     (##structure-type _self92586_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92586_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self92586_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92586_
                     _super92596_
                     '3
                     (##structure-type _self92586_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92586_
                     '#f
                     '4
                     (##structure-type _self92586_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92586_
                     '#f
                     '5
                     (##structure-type _self92586_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92586_
                     '#f
                     '6
                     (##structure-type _self92586_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92586_
                     '()
                     '7
                     (##structure-type _self92586_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92586_
                     '#f
                     '8
                     (##structure-type _self92586_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self92586_
                         '8
                         (##vector-length _self92586_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self92611_ _ctx92612_)
        (let ((_root92614_ '#f))
          (gx#prelude-context:::init!__% _self92611_ _ctx92612_ _root92614_))))
    (define gx#prelude-context:::init!
      (lambda _g92818_
        (let ((_g92817_ (##length _g92818_)))
          (cond ((##fx= _g92817_ 2)
                 (apply (lambda (_self92611_ _ctx92612_)
                          (gx#prelude-context:::init!__0
                           _self92611_
                           _ctx92612_))
                        _g92818_))
                ((##fx= _g92817_ 3)
                 (apply (lambda (_self92616_ _ctx92617_ _root92618_)
                          (gx#prelude-context:::init!__%
                           _self92616_
                           _ctx92617_
                           _root92618_))
                        _g92818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g92818_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self92460_ _e92461_)
        (if (##fx< '3 (##structure-length _self92460_))
            (begin
              (##unchecked-structure-set!
               _self92460_
               _e92461_
               '1
               (##structure-type _self92460_)
               '#f)
              (##unchecked-structure-set!
               _self92460_
               (gx#current-expander-context)
               '2
               (##structure-type _self92460_)
               '#f)
              (##unchecked-structure-set!
               _self92460_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self92460_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92460_
                   '3
                   (##vector-length _self92460_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_g9208692089_ _g9208792091_)
        (gx#core-apply-user-expander__%
         _g9208692089_
         _g9208792091_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9195791960_ _g9195891962_)
        (gx#core-apply-user-expander__%
         _g9195791960_
         _g9195891962_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx91828_)
        (let* ((_path91830_
                (##structure-ref _ctx91828_ '7 gx#module-context::t '#f))
               (_path91832_
                (if (pair? _path91830_) (last _path91830_) _path91830_)))
          (if (string? _path91832_) _path91832_ '#f))))
    (define gx#import-module__%
      (lambda (_path91804_ _reload?91805_ _eval?91806_)
        (let ((_ctx91808_
               ((gx#current-expander-module-import)
                _path91804_
                _reload?91805_)))
          (if (and _ctx91808_ _eval?91806_)
              (gx#eval-module _ctx91808_)
              '#!void)
          _ctx91808_)))
    (define gx#import-module__0
      (lambda (_path91813_)
        (let* ((_reload?91815_ '#f) (_eval?91817_ '#f))
          (gx#import-module__% _path91813_ _reload?91815_ _eval?91817_))))
    (define gx#import-module__1
      (lambda (_path91819_ _reload?91820_)
        (let ((_eval?91822_ '#f))
          (gx#import-module__% _path91819_ _reload?91820_ _eval?91822_))))
    (define gx#import-module
      (lambda _g92820_
        (let ((_g92819_ (##length _g92820_)))
          (cond ((##fx= _g92819_ 1)
                 (apply (lambda (_path91813_)
                          (gx#import-module__0 _path91813_))
                        _g92820_))
                ((##fx= _g92819_ 2)
                 (apply (lambda (_path91819_ _reload?91820_)
                          (gx#import-module__1 _path91819_ _reload?91820_))
                        _g92820_))
                ((##fx= _g92819_ 3)
                 (apply (lambda (_path91824_ _reload?91825_ _eval?91826_)
                          (gx#import-module__%
                           _path91824_
                           _reload?91825_
                           _eval?91826_))
                        _g92820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g92820_))))))
    (define gx#eval-module
      (lambda (_mod91801_) ((gx#current-expander-module-eval) _mod91801_)))
    (define gx#core-eval-module
      (lambda (_obj91786_)
        (letrec ((_force-e91788_
                  (lambda (_getf91797_ _e91798_)
                    (call-with-parameters
                     (lambda () (force (_getf91797_ _e91798_)))
                     gx#current-expander-context
                     _e91798_
                     gx#current-expander-phi
                     '0))))
          (let _recur91790_ ((_e91792_ _obj91786_))
            (if (##structure-instance-of? _e91792_ 'gx#module-context::t)
                (begin
                  (let ((_$e91794_ (gx#core-context-prelude__% _e91792_)))
                    (if _$e91794_ (_recur91790_ _$e91794_) '#!void))
                  (_force-e91788_ gx#module-context-e _e91792_))
                (if (##structure-instance-of? _e91792_ 'gx#prelude-context::t)
                    (_force-e91788_ gx#prelude-context-e _e91792_)
                    (if (gx#stx-string? _e91792_)
                        (_recur91790_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e91792_)))
                        (if (gx#core-library-module-path? _e91792_)
                            (_recur91790_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e91792_)))
                            (error '"Cannot eval module" _obj91786_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx91769_)
        (let _lp91771_ ((_e91773_ _ctx91769_))
          (if (or (##structure-instance-of? _e91773_ 'gx#module-context::t)
                  (##structure-instance-of? _e91773_ 'gx#local-context::t))
              (_lp91771_
               (##unchecked-structure-ref _e91773_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e91773_ 'gx#prelude-context::t)
                  _e91773_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx91782_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx91782_))))
    (define gx#core-context-prelude
      (lambda _g92822_
        (let ((_g92821_ (##length _g92822_)))
          (cond ((##fx= _g92821_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g92822_))
                ((##fx= _g92821_ 1)
                 (apply (lambda (_ctx91784_)
                          (gx#core-context-prelude__% _ctx91784_))
                        _g92822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g92822_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx91759_)
        (let* ((_ht91761_ (gx#current-expander-module-registry))
               (_$e91763_ (hash-get _ht91761_ _ctx91759_)))
          (if _$e91763_
              (values _$e91763_)
              (let ((_pre91766_
                     (let ((__obj92813
                            (##structure
                             gx#prelude-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#prelude-context:::init! __obj92813 _ctx91759_)
                       __obj92813)))
                (hash-put! _ht91761_ _ctx91759_ _pre91766_)
                _pre91766_)))))
    (define gx#core-import-module__%
      (lambda (_rpath91640_ _reload?91641_)
        (letrec ((_import-source91643_
                  (lambda (_path91728_)
                    (if (member _path91728_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path91728_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g92823_ (gx#core-read-module _path91728_)))
                         (begin
                           (let ((_g92824_
                                  (if (##values? _g92823_)
                                      (##vector-length _g92823_)
                                      1)))
                             (if (not (##fx= _g92824_ 4))
                                 (error "Context expects 4 values" _g92824_)))
                           (let ((_pre91731_ (##vector-ref _g92823_ 0))
                                 (_id91732_ (##vector-ref _g92823_ 1))
                                 (_ns91733_ (##vector-ref _g92823_ 2))
                                 (_body91734_ (##vector-ref _g92823_ 3)))
                             (let* ((_prelude91739_
                                     (if (##structure-instance-of?
                                          _pre91731_
                                          'gx#prelude-context::t)
                                         _pre91731_
                                         (if (##structure-instance-of?
                                              _pre91731_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre91731_)
                                             (if (string? _pre91731_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre91731_))
                                                 (if (not _pre91731_)
                                                     (let ((_$e91736_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e91736_
                                                           _$e91736_
                                                           (let ((__obj92814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure
                           gx#prelude-context::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f)))
                     (gx#prelude-context:::init! __obj92814 '#f)
                     __obj92814)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath91640_
                                                            _pre91731_))))))
                                    (_ctx91741_
                                     (let ((__obj92815
                                            (##structure
                                             gx#module-context::t
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f)))
                                       (gx#module-context:::init!
                                        __obj92815
                                        _id91732_
                                        _prelude91739_
                                        _ns91733_
                                        _path91728_)
                                       __obj92815))
                                    (_body91743_
                                     (gx#core-expand-module-begin
                                      _body91734_
                                      _ctx91741_))
                                    (_body91745_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body91743_)
                                      _path91728_
                                      _ctx91741_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx91741_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body91745_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx91741_
                                _body91745_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path91728_
                                _ctx91741_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id91732_
                                _ctx91741_)
                               _ctx91741_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path91728_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule91644_
                  (lambda (_rpath91656_)
                    (let* ((_rpath9165791664_ _rpath91656_)
                           (_E9165991668_
                            (lambda ()
                              (error '"No clause matching" _rpath9165791664_)))
                           (_K9166091716_
                            (lambda (_refs91671_ _origin91672_)
                              (let ((_ctx91674_
                                     (if _origin91672_
                                         (gx#core-import-module__%
                                          _origin91672_
                                          _reload?91641_)
                                         (gx#current-expander-context))))
                                (let _lp91676_ ((_rest91678_ _refs91671_)
                                                (_ctx91679_ _ctx91674_))
                                  (let* ((_rest9168091688_ _rest91678_)
                                         (_else9168291696_
                                          (lambda () _ctx91679_))
                                         (_K9168491704_
                                          (lambda (_rest91699_ _id91700_)
                                            (let ((_bind91702_
                                                   (gx#resolve-identifier__%
                                                    _id91700_
                                                    '0
                                                    _ctx91679_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind91702_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind91702_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp91676_
                                                   _rest91699_
                                                   (##unchecked-structure-ref
                                                    _bind91702_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath91656_
                                                         _id91700_
                                                         _bind91702_))))))
                                    (if (##pair? _rest9168091688_)
                                        (let ((_hd9168591707_
                                               (##car _rest9168091688_))
                                              (_tl9168691709_
                                               (##cdr _rest9168091688_)))
                                          (let* ((_id91712_ _hd9168591707_)
                                                 (_rest91714_ _tl9168691709_))
                                            (_K9168491704_
                                             _rest91714_
                                             _id91712_)))
                                        (_else9168291696_))))))))
                      (if (##pair? _rpath9165791664_)
                          (let ((_hd9166191719_ (##car _rpath9165791664_))
                                (_tl9166291721_ (##cdr _rpath9165791664_)))
                            (let* ((_origin91724_ _hd9166191719_)
                                   (_refs91726_ _tl9166291721_))
                              (_K9166091716_ _refs91726_ _origin91724_)))
                          (_E9165991668_))))))
          (let ((_$e91646_
                 (if (not _reload?91641_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath91640_)
                     '#f)))
            (if _$e91646_
                (values _$e91646_)
                (if (list? _rpath91640_)
                    (_import-submodule91644_ _rpath91640_)
                    (if (gx#core-library-module-path? _rpath91640_)
                        (let ((_ctx91649_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath91640_)
                                _reload?91641_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath91640_
                           _ctx91649_)
                          _ctx91649_)
                        (let* ((_npath91651_ (path-normalize _rpath91640_))
                               (_$e91653_
                                (if (not _reload?91641_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath91651_)
                                    '#f)))
                          (if _$e91653_
                              (values _$e91653_)
                              (_import-source91643_ _npath91651_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath91752_)
        (let ((_reload?91754_ '#f))
          (gx#core-import-module__% _rpath91752_ _reload?91754_))))
    (define gx#core-import-module
      (lambda _g92826_
        (let ((_g92825_ (##length _g92826_)))
          (cond ((##fx= _g92825_ 1)
                 (apply (lambda (_rpath91752_)
                          (gx#core-import-module__0 _rpath91752_))
                        _g92826_))
                ((##fx= _g92825_ 2)
                 (apply (lambda (_rpath91756_ _reload?91757_)
                          (gx#core-import-module__%
                           _rpath91756_
                           _reload?91757_))
                        _g92826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g92826_))))))
    (define gx#core-read-module
      (lambda (_path91629_)
        (with-catch
         (lambda (_exn91631_)
           (if (and (datum-parsing-exception? _exn91631_)
                    (eq? (datum-parsing-exception-filepos _exn91631_) '0))
               (gx#core-read-module/lang _path91629_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path91629_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9163391635_)
                      (display-exception _exn91631_ _g9163391635_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path91629_)))))
    (define gx#core-read-module/sexp
      (lambda (_path91492_)
        (let _lp91494_ ((_body91496_ (read-syntax-from-file _path91492_))
                        (_pre91497_ '#f)
                        (_ns91498_ '#f)
                        (_pkg91499_ '#f))
          (let* ((_e9150091524_ _body91496_)
                 (_E9151691546_
                  (lambda ()
                    (let ((_g92827_
                           (if _pkg91499_
                               (values _pre91497_ _ns91498_ _pkg91499_)
                               (gx#core-read-module-package
                                _path91492_
                                _pre91497_
                                _ns91498_))))
                      (begin
                        (let ((_g92828_
                               (if (##values? _g92827_)
                                   (##vector-length _g92827_)
                                   1)))
                          (if (not (##fx= _g92828_ 3))
                              (error "Context expects 3 values" _g92828_)))
                        (let ((_pre91528_ (##vector-ref _g92827_ 0))
                              (_ns91529_ (##vector-ref _g92827_ 1))
                              (_pkg91530_ (##vector-ref _g92827_ 2)))
                          (let* ((_prelude91532_
                                  (if (gx#core-bound-module-prelude?
                                       _pre91528_)
                                      (gx#syntax-local-e__0 _pre91528_)
                                      (if (gx#core-library-module-path?
                                           _pre91528_)
                                          (gx#core-resolve-library-module-path
                                           _pre91528_)
                                          (if (gx#stx-string? _pre91528_)
                                              (gx#core-resolve-module-path__%
                                               _pre91528_
                                               _path91492_)
                                              (gx#stx-e _pre91528_)))))
                                 (_path-id91534_
                                  (gx#core-module-path->namespace _path91492_))
                                 (_pkg-id91536_
                                  (if _pkg91530_
                                      (string-append
                                       _pkg91530_
                                       '"/"
                                       _path-id91534_)
                                      _path-id91534_))
                                 (_module-id91538_
                                  (string->symbol _pkg-id91536_))
                                 (_module-ns91543_
                                  (if (eq? _ns91529_ '#!void)
                                      '#f
                                      (let ((_$e91540_ _ns91529_))
                                        (if _$e91540_
                                            _$e91540_
                                            _pkg-id91536_)))))
                            (values _prelude91532_
                                    _module-id91538_
                                    _module-ns91543_
                                    _body91496_)))))))
                 (_E9150991575_
                  (lambda ()
                    (if (gx#stx-pair? _e9150091524_)
                        (let ((_e9151791550_ (gx#syntax-e _e9150091524_)))
                          (let ((_hd9151891553_ (##car _e9151791550_))
                                (_tl9151991555_ (##cdr _e9151791550_)))
                            (if (eq? (gx#stx-e _hd9151891553_) 'package:)
                                (if (gx#stx-pair? _tl9151991555_)
                                    (let ((_e9152091558_
                                           (gx#syntax-e _tl9151991555_)))
                                      (let ((_hd9152191561_
                                             (##car _e9152091558_))
                                            (_tl9152291563_
                                             (##cdr _e9152091558_)))
                                        (let* ((_pkg91566_ _hd9152191561_)
                                               (_rest91568_ _tl9152291563_))
                                          (if '#t
                                              (let ((_pkg91573_
                                                     (if (gx#identifier?
                                                          _pkg91566_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg91566_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg91566_)
                         (gx#stx-false? _pkg91566_))
                     (gx#stx-e _pkg91566_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg91566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91494_
                                                 _rest91568_
                                                 _pre91497_
                                                 _ns91498_
                                                 _pkg91573_))
                                              (_E9151691546_)))))
                                    (_E9151691546_))
                                (_E9151691546_))))
                        (_E9151691546_))))
                 (_E9150291601_
                  (lambda ()
                    (if (gx#stx-pair? _e9150091524_)
                        (let ((_e9151091579_ (gx#syntax-e _e9150091524_)))
                          (let ((_hd9151191582_ (##car _e9151091579_))
                                (_tl9151291584_ (##cdr _e9151091579_)))
                            (if (eq? (gx#stx-e _hd9151191582_) 'namespace:)
                                (if (gx#stx-pair? _tl9151291584_)
                                    (let ((_e9151391587_
                                           (gx#syntax-e _tl9151291584_)))
                                      (let ((_hd9151491590_
                                             (##car _e9151391587_))
                                            (_tl9151591592_
                                             (##cdr _e9151391587_)))
                                        (let* ((_ns91595_ _hd9151491590_)
                                               (_rest91597_ _tl9151591592_))
                                          (if '#t
                                              (let ((_ns91599_
                                                     (if (gx#identifier?
                                                          _ns91595_)
                                                         (symbol->string
                                                          (gx#stx-e _ns91595_))
                                                         (if (gx#stx-string?
                                                              _ns91595_)
                                                             (gx#stx-e
                                                              _ns91595_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns91595_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns91595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91494_
                                                 _rest91597_
                                                 _pre91497_
                                                 _ns91599_
                                                 _pkg91499_))
                                              (_E9150991575_)))))
                                    (_E9150991575_))
                                (_E9150991575_))))
                        (_E9150991575_))))
                 (_E9150191625_
                  (lambda ()
                    (if (gx#stx-pair? _e9150091524_)
                        (let ((_e9150391605_ (gx#syntax-e _e9150091524_)))
                          (let ((_hd9150491608_ (##car _e9150391605_))
                                (_tl9150591610_ (##cdr _e9150391605_)))
                            (if (eq? (gx#stx-e _hd9150491608_) 'prelude:)
                                (if (gx#stx-pair? _tl9150591610_)
                                    (let ((_e9150691613_
                                           (gx#syntax-e _tl9150591610_)))
                                      (let ((_hd9150791616_
                                             (##car _e9150691613_))
                                            (_tl9150891618_
                                             (##cdr _e9150691613_)))
                                        (let* ((_prelude91621_ _hd9150791616_)
                                               (_rest91623_ _tl9150891618_))
                                          (if '#t
                                              (_lp91494_
                                               _rest91623_
                                               _prelude91621_
                                               _ns91498_
                                               _pkg91499_)
                                              (_E9150291601_)))))
                                    (_E9150291601_))
                                (_E9150291601_))))
                        (_E9150291601_)))))
            (_E9150191625_)))))
    (define gx#core-read-module/lang
      (lambda (_path91319_)
        (letrec ((_default-read-module-body91321_
                  (lambda (_inp91484_)
                    (let _lp91486_ ((_body91488_ '()))
                      (let ((_next91490_ (read-syntax _inp91484_)))
                        (if (eof-object? _next91490_)
                            (reverse _body91488_)
                            (_lp91486_ (cons _next91490_ _body91488_)))))))
                 (_read-body91322_
                  (lambda (_inp91403_
                           _pre91404_
                           _ns91405_
                           _pkg91406_
                           _args91407_)
                    (let ((_g92829_
                           (if _pkg91406_
                               (values _pre91404_ _ns91405_ _pkg91406_)
                               (gx#core-read-module-package
                                _path91319_
                                _pre91404_
                                _ns91405_))))
                      (begin
                        (let ((_g92830_
                               (if (##values? _g92829_)
                                   (##vector-length _g92829_)
                                   1)))
                          (if (not (##fx= _g92830_ 3))
                              (error "Context expects 3 values" _g92830_)))
                        (let ((_pre91409_ (##vector-ref _g92829_ 0))
                              (_ns91410_ (##vector-ref _g92829_ 1))
                              (_pkg91411_ (##vector-ref _g92829_ 2)))
                          (let* ((_prelude91413_
                                  (gx#import-module__0 _pre91409_))
                                 (_read-module-body91467_
                                  (let ((_$e91459_
                                         (find (lambda (_e9141491416_)
                                                 (let* ((_g9141891428_
                                                         _e9141491416_)
                                                        (_else9142091436_
                                                         (lambda () '#f))
                                                        (_K9142291440_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9141891428_
                                                        'gx#module-export::t)
                                                       (let* ((_e9142391443_
                                                               (##unchecked-structure-ref
                                                                _g9141891428_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9142491446_
                                                               (##unchecked-structure-ref
                                                                _g9141891428_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9142591449_
                                                               (##unchecked-structure-ref
                                                                _g9141891428_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9142591449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9142691452_
                            (##unchecked-structure-ref
                             _g9141891428_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9145491456_)
                              (eq? _g9145491456_ 'read-module-body))
                            _e9142691452_)
                           (_K9142291440_)
                           (_else9142091436_)))
                     (_else9142091436_)))
               (_else9142091436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude91413_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e91459_
                                        ((lambda (_xport91462_)
                                           (let ((_proc91465_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport91462_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc91465_)
                                                 _proc91465_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path91319_
                                                  _pre91409_
                                                  _proc91465_))))
                                         _$e91459_)
                                        _default-read-module-body91321_)))
                                 (_path-id91469_
                                  (gx#core-module-path->namespace _path91319_))
                                 (_pkg-id91471_
                                  (if _pkg91411_
                                      (string-append
                                       _pkg91411_
                                       '"/"
                                       _path-id91469_)
                                      _path-id91469_))
                                 (_module-id91473_
                                  (string->symbol _pkg-id91471_))
                                 (_module-ns91478_
                                  (let ((_$e91475_ _ns91410_))
                                    (if _$e91475_ _$e91475_ _pkg-id91471_)))
                                 (_body91481_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body91467_ _inp91403_))
                                   gx#current-module-reader-path
                                   _path91319_
                                   gx#current-module-reader-args
                                   _args91407_)))
                            (values _prelude91413_
                                    _module-id91473_
                                    _module-ns91478_
                                    _body91481_)))))))
                 (_string-e91323_
                  (lambda (_obj91400_ _what91401_)
                    (if (string? _obj91400_)
                        _obj91400_
                        (if (symbol? _obj91400_)
                            (symbol->string _obj91400_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what91401_)
                             _path91319_
                             _obj91400_)))))
                 (_read-lang-args91324_
                  (lambda (_inp91355_ _args91356_)
                    (let* ((_args9135791365_ _args91356_)
                           (_else9135991373_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path91319_)))
                           (_K9136191388_
                            (lambda (_args91376_ _prelude91377_)
                              (let* ((_pkg91379_
                                      (pgetq__0 'package: _args91376_))
                                     (_pkg91381_
                                      (if _pkg91379_
                                          (_string-e91323_
                                           _pkg91379_
                                           '"package")
                                          '#f))
                                     (_ns91383_
                                      (pgetq__0 'namespace: _args91376_))
                                     (_ns91385_
                                      (if _ns91383_
                                          (_string-e91323_
                                           _ns91383_
                                           '"namespace")
                                          '#f)))
                                (_read-body91322_
                                 _inp91355_
                                 _prelude91377_
                                 _ns91385_
                                 _pkg91381_
                                 _args91376_)))))
                      (if (##pair? _args9135791365_)
                          (let ((_hd9136291391_ (##car _args9135791365_))
                                (_tl9136391393_ (##cdr _args9135791365_)))
                            (let* ((_prelude91396_ _hd9136291391_)
                                   (_args91398_ _tl9136391393_))
                              (_K9136191388_ _args91398_ _prelude91396_)))
                          (_else9135991373_)))))
                 (_read-lang91325_
                  (lambda (_inp91330_)
                    (let* ((_head91332_ (read-line _inp91330_))
                           (_$e91334_ (string-index__0 _head91332_ '#\space)))
                      (if _$e91334_
                          ((lambda (_ix91337_)
                             (let ((_lang91339_
                                    (substring _head91332_ '0 _ix91337_)))
                               (if (equal? _lang91339_ '"#lang")
                                   (let* ((_rest91341_
                                           (substring
                                            _head91332_
                                            (fx+ _ix91337_ '1)
                                            (string-length _head91332_)))
                                          (_args91352_
                                           (with-catch
                                            (lambda (_g9134291344_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path91319_
                                               _g9134291344_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest91341_
                                               (lambda (_g9134791349_)
                                                 (read-all
                                                  _g9134791349_
                                                  read)))))))
                                     (_read-lang-args91324_
                                      _inp91330_
                                      _args91352_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path91319_))))
                           _$e91334_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path91319_)))))
                 (_read-e91326_
                  (lambda (_inp91328_)
                    (if (eq? (peek-char _inp91328_) '#\#)
                        (_read-lang91325_ _inp91328_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path91319_)))))
          (gx#call-with-input-source-file _path91319_ _read-e91326_))))
    (define gx#core-read-module-package
      (lambda (_path91273_ _pre91274_ _ns91275_)
        (letrec ((_string-e91277_
                  (lambda (_e91317_)
                    (if (symbol? _e91317_)
                        (symbol->string _e91317_)
                        (if (string? _e91317_)
                            _e91317_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e91317_))))))
          (let _lp91279_ ((_dir91281_ (path-directory _path91273_))
                          (_pkg-path91282_ '()))
            (let ((_gerbil.pkg91284_ (path-expand '"gerbil.pkg" _dir91281_)))
              (if (file-exists? _gerbil.pkg91284_)
                  (let ((_plist91286_
                         (gx#core-library-package-plist__% _dir91281_ '#t)))
                    (if (null? _plist91286_)
                        (let ((_pkg91288_
                               (if (not (null? _pkg-path91282_))
                                   (string-join _pkg-path91282_ '"/")
                                   '#f)))
                          (values _pre91274_ _ns91275_ _pkg91288_))
                        (if (list? _plist91286_)
                            (let* ((_root91290_
                                    (pgetq__0 'package: _plist91286_))
                                   (_pkg91294_
                                    (let ((_pkg-path91292_
                                           (if _root91290_
                                               (cons (_string-e91277_
                                                      _root91290_)
                                                     _pkg-path91282_)
                                               _pkg-path91282_)))
                                      (if (not (null? _pkg-path91292_))
                                          (string-join _pkg-path91292_ '"/")
                                          '#f)))
                                   (_ns91301_
                                    (let ((_ns91299_
                                           (let ((_$e91296_ _ns91275_))
                                             (if _$e91296_
                                                 _$e91296_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist91286_)))))
                                      (if _ns91299_
                                          (_string-e91277_ _ns91299_)
                                          '#f)))
                                   (_pre91306_
                                    (let ((_$e91303_ _pre91274_))
                                      (if _$e91303_
                                          _$e91303_
                                          (pgetq__0 'prelude: _plist91286_)))))
                              (values _pre91306_ _ns91301_ _pkg91294_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist91286_))))
                  (let ((_dir*91309_
                         (path-strip-trailing-directory-separator _dir91281_)))
                    (if (or (string-empty? _dir*91309_)
                            (equal? _dir91281_ _dir*91309_))
                        (values _pre91274_ _ns91275_ '#f)
                        (let ((_xpath91314_ (path-strip-directory _dir*91309_))
                              (_xdir91315_ (path-directory _dir*91309_)))
                          (_lp91279_
                           _xdir91315_
                           (cons _xpath91314_ _pkg-path91282_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path91271_)
        (path-strip-extension (path-strip-directory _path91271_))))
    (define gx#core-module-path->id
      (lambda (_path91269_)
        (string->symbol (gx#core-module-path->namespace _path91269_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path91248_ _rel91249_)
        (let* ((_path91251_ (gx#stx-e _stx-path91248_))
               (_path91253_
                (if (string-empty? (path-extension _path91251_))
                    (string-append _path91251_ '".ss")
                    _path91251_)))
          (gx#core-resolve-path__%
           _path91253_
           (let ((_$e91256_ (gx#stx-source _stx-path91248_)))
             (if _$e91256_ _$e91256_ _rel91249_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path91262_)
        (let ((_rel91264_ '#f))
          (gx#core-resolve-module-path__% _stx-path91262_ _rel91264_))))
    (define gx#core-resolve-module-path
      (lambda _g92832_
        (let ((_g92831_ (##length _g92832_)))
          (cond ((##fx= _g92831_ 1)
                 (apply (lambda (_stx-path91262_)
                          (gx#core-resolve-module-path__0 _stx-path91262_))
                        _g92832_))
                ((##fx= _g92831_ 2)
                 (apply (lambda (_stx-path91266_ _rel91267_)
                          (gx#core-resolve-module-path__%
                           _stx-path91266_
                           _rel91267_))
                        _g92832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g92832_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath91134_)
        (let* ((_spath91136_ (symbol->string (gx#stx-e _libpath91134_)))
               (_spath91138_
                (substring _spath91136_ '1 (string-length _spath91136_)))
               (_ext91140_ (path-extension _spath91138_))
               (_ssi91142_
                (if (string-empty? _ext91140_)
                    (string-append _spath91138_ '".ssi")
                    (string-append
                     (path-strip-extension _spath91138_)
                     '".ssi")))
               (_srcs91146_
                (if (string-empty? _ext91140_)
                    (map (lambda (_ext91144_)
                           (string-append _spath91138_ _ext91144_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath91138_ '()))))
          (let _lp91149_ ((_rest91151_ (load-path)))
            (let* ((_rest9115291161_ _rest91151_)
                   (_E9115591165_
                    (lambda ()
                      (error '"No clause matching" _rest9115291161_))))
              (let ((_K9115791235_
                     (lambda (_rest91176_ _dir91177_)
                       (letrec ((_resolve91179_
                                 (lambda (_ssi91191_ _srcs91192_)
                                   (let ((_compiled-path91194_
                                          (path-expand _ssi91191_ _dir91177_)))
                                     (if (file-exists? _compiled-path91194_)
                                         (path-normalize _compiled-path91194_)
                                         (let _lpr91196_ ((_rest-src91198_
                                                           _srcs91192_))
                                           (let* ((_rest-src9119991207_
                                                   _rest-src91198_)
                                                  (_else9120191215_
                                                   (lambda ()
                                                     (_lp91149_ _rest91176_)))
                                                  (_K9120391223_
                                                   (lambda (_rest-src91218_
                                                            _src91219_)
                                                     (let ((_src-path91221_
                                                            (path-expand
                                                             _src91219_
                                                             _dir91177_)))
                                                       (if (file-exists?
                                                            _src-path91221_)
                                                           (path-normalize
                                                            _src-path91221_)
                                                           (_lpr91196_
                                                            _rest-src91218_))))))
                                             (if (##pair? _rest-src9119991207_)
                                                 (let ((_hd9120491226_
                                                        (##car _rest-src9119991207_))
                                                       (_tl9120591228_
                                                        (##cdr _rest-src9119991207_)))
                                                   (let* ((_src91231_
                                                           _hd9120491226_)
                                                          (_rest-src91233_
                                                           _tl9120591228_))
                                                     (_K9120391223_
                                                      _rest-src91233_
                                                      _src91231_)))
                                                 (_else9120191215_)))))))))
                         (let ((_$e91181_
                                (gx#core-library-package-path-prefix
                                 _dir91177_)))
                           (if _$e91181_
                               ((lambda (_prefix91184_)
                                  (if (string-prefix?
                                       _prefix91184_
                                       _spath91138_)
                                      (let ((_ssi91188_
                                             (substring
                                              _ssi91142_
                                              (string-length _prefix91184_)
                                              (string-length _ssi91142_)))
                                            (_srcs91189_
                                             (map (lambda (_src91186_)
                                                    (substring
                                                     _src91186_
                                                     (string-length
                                                      _prefix91184_)
                                                     (string-length
                                                      _src91186_)))
                                                  _srcs91146_)))
                                        (_resolve91179_
                                         _ssi91188_
                                         _srcs91189_))
                                      (_lp91149_ _rest91176_)))
                                _$e91181_)
                               (_resolve91179_ _ssi91142_ _srcs91146_))))))
                    (_K9115691170_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath91134_))))
                (let ((_try-match9115491173_
                       (lambda ()
                         (if (##null? _rest9115291161_)
                             (_K9115691170_)
                             (_E9115591165_)))))
                  (if (##pair? _rest9115291161_)
                      (let ((_tl9115991240_ (##cdr _rest9115291161_))
                            (_hd9115891238_ (##car _rest9115291161_)))
                        (let ((_dir91243_ _hd9115891238_)
                              (_rest91245_ _tl9115991240_))
                          (_K9115791235_ _rest91245_ _dir91243_)))
                      (_try-match9115491173_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath91107_)
        (letrec ((_resolve91109_
                  (lambda (_path91126_ _base91127_)
                    (let ((_$e91129_ (string-rindex__0 _base91127_ '#\/)))
                      (if _$e91129_
                          ((lambda (_idx91132_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base91127_ '0 _idx91132_)
                                '"/"
                                _path91126_))))
                           _$e91129_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path91126_))))))))
          (let ((_spath91111_ (symbol->string (gx#stx-e _modpath91107_)))
                (_mod91112_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod91112_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath91107_))
            (let ((_mpath91114_
                   (symbol->string
                    (##structure-ref
                     _mod91112_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp91116_ ((_spath91118_ _spath91111_)
                              (_mpath91119_ _mpath91114_))
                (if (string-prefix? '"../" _spath91118_)
                    (let ((_$e91121_ (string-rindex__0 _mpath91119_ '#\/)))
                      (if _$e91121_
                          ((lambda (_idx91124_)
                             (_lp91116_
                              (substring
                               _spath91118_
                               '3
                               (string-length _spath91118_))
                              (substring _mpath91119_ '0 _idx91124_)))
                           _$e91121_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath91107_)))
                    (if (string-prefix? '"./" _spath91118_)
                        (_lp91116_
                         (substring
                          _spath91118_
                          '2
                          (string-length _spath91118_))
                         _mpath91119_)
                        (_resolve91109_ _spath91118_ _mpath91119_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir91100_)
        (let ((_$e91102_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir91100_))))
          (if _$e91102_
              ((lambda (_pkg91105_)
                 (string-append (symbol->string _pkg91105_) '"/"))
               _$e91102_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir91072_ _exists?91073_)
        (let* ((_cache91075_ (gx#core-library-package-cache))
               (_$e91077_ (hash-get _cache91075_ _dir91072_)))
          (if _$e91077_
              (values _$e91077_)
              (let* ((_gerbil.pkg91080_ (path-expand '"gerbil.pkg" _dir91072_))
                     (_plist91087_
                      (if (or _exists?91073_ (file-exists? _gerbil.pkg91080_))
                          (let ((_e91085_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg91080_
                                  read)))
                            (if (eof-object? _e91085_)
                                '()
                                (if (list? _e91085_)
                                    _e91085_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg91080_
                                     _e91085_))))
                          '())))
                (hash-put! _cache91075_ _dir91072_ _plist91087_)
                _plist91087_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir91093_)
        (let ((_exists?91095_ '#f))
          (gx#core-library-package-plist__% _dir91093_ _exists?91095_))))
    (define gx#core-library-package-plist
      (lambda _g92834_
        (let ((_g92833_ (##length _g92834_)))
          (cond ((##fx= _g92833_ 1)
                 (apply (lambda (_dir91093_)
                          (gx#core-library-package-plist__0 _dir91093_))
                        _g92834_))
                ((##fx= _g92833_ 2)
                 (apply (lambda (_dir91097_ _exists?91098_)
                          (gx#core-library-package-plist__%
                           _dir91097_
                           _exists?91098_))
                        _g92834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g92834_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e91066_ (gx#current-expander-module-library-package-cache)))
          (if _$e91066_
              (values _$e91066_)
              (let ((_cache91069_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache91069_)
                _cache91069_)))))
    (define gx#core-library-module-path?
      (lambda (_stx91063_) (gx#core-special-module-path? _stx91063_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx91061_) (gx#core-special-module-path? _stx91061_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx91056_ _char91057_)
        (if (gx#identifier? _stx91056_)
            (if (interned-symbol? (gx#stx-e _stx91056_))
                (let ((_str91059_ (symbol->string (gx#stx-e _stx91056_))))
                  (if (fx> (string-length _str91059_) '1)
                      (eq? (string-ref _str91059_ '0) _char91057_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx91050_)
        (gx#core-bound-identifier?__%
         _stx91050_
         (lambda (_g9105191053_)
           (gx#expander-binding?__% _g9105191053_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx91044_)
        (gx#core-bound-identifier?__%
         _stx91044_
         (lambda (_g9104591047_)
           (gx#expander-binding?__% _g9104591047_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx91031_)
        (letrec ((_module-prelude?91033_
                  (lambda (_e91039_)
                    (let ((_$e91041_
                           (##structure-instance-of?
                            _e91039_
                            'gx#module-context::t)))
                      (if _$e91041_
                          _$e91041_
                          (##structure-instance-of?
                           _e91039_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx91031_
           (lambda (_g9103491036_)
             (gx#expander-binding?__%
              _g9103491036_
              _module-prelude?91033_))))))
    (define gx#core-bind-import!__%
      (lambda (_in90961_ _ctx90962_ _force-weak?90963_)
        (let* ((_in9096490973_ _in90961_)
               (_E9096690977_
                (lambda () (error '"No clause matching" _in9096490973_)))
               (_K9096790990_
                (lambda (_weak?90980_ _phi90981_ _key90982_ _source90983_)
                  (gx#core-bind!__%
                   _key90982_
                   (let ((_e90985_
                          (gx#core-resolve-module-export _source90983_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e90985_ '1 gx#binding::t '#f)
                      _key90982_
                      _phi90981_
                      _e90985_
                      (##unchecked-structure-ref
                       _source90983_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e90987_ _force-weak?90963_))
                        (if _$e90987_ _$e90987_ _weak?90980_))))
                   gx#core-context-rebind?
                   _phi90981_
                   _ctx90962_))))
          (if (##structure-direct-instance-of?
               _in9096490973_
               'gx#module-import::t)
              (let* ((_e9096890993_
                      (##unchecked-structure-ref
                       _in9096490973_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source90996_ _e9096890993_)
                     (_e9096990998_
                      (##unchecked-structure-ref
                       _in9096490973_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key91001_ _e9096990998_)
                     (_e9097091003_
                      (##unchecked-structure-ref
                       _in9096490973_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi91006_ _e9097091003_)
                     (_e9097191008_
                      (##unchecked-structure-ref
                       _in9096490973_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?91011_ _e9097191008_))
                (_K9096790990_
                 _weak?91011_
                 _phi91006_
                 _key91001_
                 _source90996_))
              (_E9096690977_)))))
    (define gx#core-bind-import!__0
      (lambda (_in91016_)
        (let* ((_ctx91018_ (gx#current-expander-context))
               (_force-weak?91020_ '#f))
          (gx#core-bind-import!__% _in91016_ _ctx91018_ _force-weak?91020_))))
    (define gx#core-bind-import!__1
      (lambda (_in91022_ _ctx91023_)
        (let ((_force-weak?91025_ '#f))
          (gx#core-bind-import!__% _in91022_ _ctx91023_ _force-weak?91025_))))
    (define gx#core-bind-import!
      (lambda _g92836_
        (let ((_g92835_ (##length _g92836_)))
          (cond ((##fx= _g92835_ 1)
                 (apply (lambda (_in91016_)
                          (gx#core-bind-import!__0 _in91016_))
                        _g92836_))
                ((##fx= _g92835_ 2)
                 (apply (lambda (_in91022_ _ctx91023_)
                          (gx#core-bind-import!__1 _in91022_ _ctx91023_))
                        _g92836_))
                ((##fx= _g92835_ 3)
                 (apply (lambda (_in91027_ _ctx91028_ _force-weak?91029_)
                          (gx#core-bind-import!__%
                           _in91027_
                           _ctx91028_
                           _force-weak?91029_))
                        _g92836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g92836_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in90947_ _ctx90948_)
        (gx#core-bind-import!__% _in90947_ _ctx90948_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in90953_)
        (let ((_ctx90955_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in90953_ _ctx90955_))))
    (define gx#core-bind-weak-import!
      (lambda _g92838_
        (let ((_g92837_ (##length _g92838_)))
          (cond ((##fx= _g92837_ 1)
                 (apply (lambda (_in90953_)
                          (gx#core-bind-weak-import!__0 _in90953_))
                        _g92838_))
                ((##fx= _g92837_ 2)
                 (apply (lambda (_in90957_ _ctx90958_)
                          (gx#core-bind-weak-import!__% _in90957_ _ctx90958_))
                        _g92838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g92838_))))))
    (define gx#core-resolve-module-export
      (lambda (_out90838_)
        (letrec ((_subst90840_
                  (lambda (_key90886_)
                    (let* ((_key9088790895_ _key90886_)
                           (_else9088990903_ (lambda () _key90886_))
                           (_K9089190934_
                            (lambda (_mark90906_ _id90907_)
                              (let* ((_mark9090890914_ _mark90906_)
                                     (_E9091090918_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9090890914_)))
                                     (_K9091190926_
                                      (lambda (_subst90921_)
                                        (let ((_$e90923_
                                               (if _subst90921_
                                                   (hash-get
                                                    _subst90921_
                                                    _id90907_)
                                                   '#f)))
                                          (if _$e90923_
                                              _$e90923_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key90886_))))))
                                (if (##structure-instance-of?
                                     _mark9090890914_
                                     'gx#expander-mark::t)
                                    (let* ((_e9091290929_
                                            (##unchecked-structure-ref
                                             _mark9090890914_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst90932_ _e9091290929_))
                                      (_K9091190926_ _subst90932_))
                                    (_E9091090918_))))))
                      (if (##pair? _key9088790895_)
                          (let ((_hd9089290937_ (##car _key9088790895_))
                                (_tl9089390939_ (##cdr _key9088790895_)))
                            (let* ((_id90942_ _hd9089290937_)
                                   (_mark90944_ _tl9089390939_))
                              (_K9089190934_ _mark90944_ _id90942_)))
                          (_else9088990903_))))))
          (let* ((_out9084190851_ _out90838_)
                 (_E9084390855_
                  (lambda () (error '"No clause matching" _out9084190851_)))
                 (_K9084490862_
                  (lambda (_phi90858_ _key90859_ _ctx90860_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx90860_ _phi90858_)
                     (_subst90840_ _key90859_)))))
            (if (##structure-direct-instance-of?
                 _out9084190851_
                 'gx#module-export::t)
                (let* ((_e9084590865_
                        (##unchecked-structure-ref
                         _out9084190851_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx90868_ _e9084590865_)
                       (_e9084690870_
                        (##unchecked-structure-ref
                         _out9084190851_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key90873_ _e9084690870_)
                       (_e9084790875_
                        (##unchecked-structure-ref
                         _out9084190851_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi90878_ _e9084790875_)
                       (_e9084890880_
                        (##unchecked-structure-ref
                         _out9084190851_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9084990883_
                        (##unchecked-structure-ref
                         _out9084190851_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9084490862_ _phi90878_ _key90873_ _ctx90868_))
                (_E9084390855_))))))
    (define gx#core-module-export->import__%
      (lambda (_out90763_ _rename90764_ _dphi90765_)
        (let* ((_out9076690776_ _out90763_)
               (_E9076890780_
                (lambda () (error '"No clause matching" _out9076690776_)))
               (_K9076990792_
                (lambda (_weak?90783_
                         _name90784_
                         _phi90785_
                         _key90786_
                         _ctx90787_)
                  (##structure
                   gx#module-import::t
                   _out90763_
                   (let ((_$e90789_ _rename90764_))
                     (if _$e90789_ _$e90789_ _name90784_))
                   (fx+ _phi90785_ _dphi90765_)
                   _weak?90783_))))
          (if (##structure-direct-instance-of?
               _out9076690776_
               'gx#module-export::t)
              (let* ((_e9077090795_
                      (##unchecked-structure-ref
                       _out9076690776_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx90798_ _e9077090795_)
                     (_e9077190800_
                      (##unchecked-structure-ref
                       _out9076690776_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key90803_ _e9077190800_)
                     (_e9077290805_
                      (##unchecked-structure-ref
                       _out9076690776_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi90808_ _e9077290805_)
                     (_e9077390810_
                      (##unchecked-structure-ref
                       _out9076690776_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name90813_ _e9077390810_)
                     (_e9077490815_
                      (##unchecked-structure-ref
                       _out9076690776_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?90818_ _e9077490815_))
                (_K9076990792_
                 _weak?90818_
                 _name90813_
                 _phi90808_
                 _key90803_
                 _ctx90798_))
              (_E9076890780_)))))
    (define gx#core-module-export->import__0
      (lambda (_out90823_)
        (let* ((_rename90825_ '#f) (_dphi90827_ '0))
          (gx#core-module-export->import__%
           _out90823_
           _rename90825_
           _dphi90827_))))
    (define gx#core-module-export->import__1
      (lambda (_out90829_ _rename90830_)
        (let ((_dphi90832_ '0))
          (gx#core-module-export->import__%
           _out90829_
           _rename90830_
           _dphi90832_))))
    (define gx#core-module-export->import
      (lambda _g92840_
        (let ((_g92839_ (##length _g92840_)))
          (cond ((##fx= _g92839_ 1)
                 (apply (lambda (_out90823_)
                          (gx#core-module-export->import__0 _out90823_))
                        _g92840_))
                ((##fx= _g92839_ 2)
                 (apply (lambda (_out90829_ _rename90830_)
                          (gx#core-module-export->import__1
                           _out90829_
                           _rename90830_))
                        _g92840_))
                ((##fx= _g92839_ 3)
                 (apply (lambda (_out90834_ _rename90835_ _dphi90836_)
                          (gx#core-module-export->import__%
                           _out90834_
                           _rename90835_
                           _dphi90836_))
                        _g92840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g92840_))))))
    (define gx#core-expand-module%
      (lambda (_stx90660_)
        (letrec ((_make-context90662_
                  (lambda (_id90744_)
                    (let* ((_super90746_ (gx#current-expander-context))
                           (_bind-id90748_ (gx#stx-e _id90744_))
                           (_mod-id90750_
                            (if (##structure-instance-of?
                                 _super90746_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super90746_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"--"
                                 _bind-id90748_)
                                _bind-id90748_))
                           (_ns90752_ (symbol->string _mod-id90750_))
                           (_path90759_
                            (if (##structure-instance-of?
                                 _super90746_
                                 'gx#module-context::t)
                                (let ((_path90754_
                                       (##unchecked-structure-ref
                                        _super90746_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path90754_)
                                          (null? _path90754_))
                                      (cons _bind-id90748_ _path90754_)
                                      (if (not _path90754_)
                                          _bind-id90748_
                                          (cons _bind-id90748_
                                                (cons _path90754_ '())))))
                                _bind-id90748_)))
                      (let ((__obj92816
                             (##structure
                              gx#module-context::t
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f)))
                        (gx#module-context:::init!
                         __obj92816
                         _mod-id90750_
                         _super90746_
                         _ns90752_
                         _path90759_)
                        __obj92816))))
                 (_valid-module-id?90663_
                  (lambda (_id90714_)
                    (let* ((_sym90716_ (gx#stx-e _id90714_))
                           (_str90718_ (symbol->string _sym90716_))
                           (_len90720_ (string-length _str90718_)))
                      (if (fx>= _len90720_ '1)
                          (let ((_$e90723_
                                 (char=? (string-ref _str90718_ '0) '#\:)))
                            (if _$e90723_
                                _$e90723_
                                (let _loop90726_ ((_i90728_
                                                   (fx- _len90720_ '1)))
                                  (if (fx< _i90728_ '0)
                                      '#t
                                      (let ((_c90730_
                                             (string-ref _str90718_ _i90728_)))
                                        (if (or (and (char>=? _c90730_ '#\a)
                                                     (char<=? _c90730_ '#\z))
                                                (and (char>=? _c90730_ '#\A)
                                                     (char<=? _c90730_ '#\Z))
                                                (and (char>=? _c90730_ '#\0)
                                                     (char<=? _c90730_ '#\9))
                                                (char=? _c90730_ '#\-)
                                                (char=? _c90730_ '#\_))
                                            (_loop90726_ (fx- _i90728_ '1))
                                            '#f))))))
                          '#f)))))
          (let* ((_e9066490674_ _stx90660_)
                 (_E9066690678_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9066490674_)))
                 (_E9066590710_
                  (lambda ()
                    (if (gx#stx-pair? _e9066490674_)
                        (let ((_e9066790682_ (gx#syntax-e _e9066490674_)))
                          (let ((_hd9066890685_ (##car _e9066790682_))
                                (_tl9066990687_ (##cdr _e9066790682_)))
                            (if (gx#stx-pair? _tl9066990687_)
                                (let ((_e9067090690_
                                       (gx#syntax-e _tl9066990687_)))
                                  (let ((_hd9067190693_ (##car _e9067090690_))
                                        (_tl9067290695_ (##cdr _e9067090690_)))
                                    (let* ((_id90698_ _hd9067190693_)
                                           (_body90700_ _tl9067290695_))
                                      (if (and (gx#identifier? _id90698_)
                                               (gx#stx-list? _body90700_))
                                          (if (_valid-module-id?90663_
                                               _id90698_)
                                              (let* ((_ctx90702_
                                                      (_make-context90662_
                                                       _id90698_))
                                                     (_body90704_
                                                      (gx#core-expand-module-begin
                                                       _body90700_
                                                       _ctx90702_))
                                                     (_body90706_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _body90704_)
                                                       (gx#stx-source
                                                        _stx90660_))))
                                                (##unchecked-structure-set!
                                                 _ctx90702_
                                                 (make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _body90706_)))
                                                 '10
                                                 gx#module-context::t
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _ctx90702_
                                                 _body90706_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _id90698_
                                                 _ctx90702_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _id90698_)
                                                  _body90706_)
                                                 (gx#stx-source _stx90660_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id"
                                               _stx90660_
                                               _id90698_))
                                          (_E9066690678_)))))
                                (_E9066690678_))))
                        (_E9066690678_)))))
            (_E9066590710_)))))
    (define gx#core-expand-module-begin
      (lambda (_body90626_ _ctx90627_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx90630_
                   (gx#core-expand-head (cons '%%begin-module _body90626_)))
                  (_e9063190638_ _stx90630_)
                  (_E9063390642_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx90630_)))
                  (_E9063290656_
                   (lambda ()
                     (if (gx#stx-pair? _e9063190638_)
                         (let ((_e9063490646_ (gx#syntax-e _e9063190638_)))
                           (let ((_hd9063590649_ (##car _e9063490646_))
                                 (_tl9063690651_ (##cdr _e9063490646_)))
                             (if (and (gx#identifier? _hd9063590649_)
                                      (gx#core-identifier=?
                                       _hd9063590649_
                                       '%#begin-module))
                                 (let ((_body90654_ _tl9063690651_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx90630_)
                                           _body90654_
                                           (gx#core-expand-module-body
                                            _body90654_))
                                       (_E9063390642_)))
                                 (_E9063390642_))))
                         (_E9063390642_)))))
             (_E9063290656_)))
         gx#current-expander-context
         _ctx90627_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body90422_)
        (letrec ((_expand-special90424_
                  (lambda (_hd90553_ _K90554_ _rest90555_ _r90556_)
                    (let* ((_e9055790574_ _hd90553_)
                           (_E9056990578_
                            (lambda ()
                              (_K90554_
                               _rest90555_
                               (cons (gx#core-expand-top _hd90553_)
                                     _r90556_))))
                           (_E9055990590_
                            (lambda ()
                              (if (gx#stx-pair? _e9055790574_)
                                  (let ((_e9057090582_
                                         (gx#syntax-e _e9055790574_)))
                                    (let ((_hd9057190585_
                                           (##car _e9057090582_))
                                          (_tl9057290587_
                                           (##cdr _e9057090582_)))
                                      (if (and (gx#identifier? _hd9057190585_)
                                               (gx#core-identifier=?
                                                _hd9057190585_
                                                '%#export))
                                          (if '#t
                                              (_K90554_
                                               _rest90555_
                                               (cons _hd90553_ _r90556_))
                                              (_E9056990578_))
                                          (_E9056990578_))))
                                  (_E9056990578_))))
                           (_E9055890622_
                            (lambda ()
                              (if (gx#stx-pair? _e9055790574_)
                                  (let ((_e9056090594_
                                         (gx#syntax-e _e9055790574_)))
                                    (let ((_hd9056190597_
                                           (##car _e9056090594_))
                                          (_tl9056290599_
                                           (##cdr _e9056090594_)))
                                      (if (and (gx#identifier? _hd9056190597_)
                                               (gx#core-identifier=?
                                                _hd9056190597_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9056290599_)
                                              (let ((_e9056390602_
                                                     (gx#syntax-e
                                                      _tl9056290599_)))
                                                (let ((_hd9056490605_
                                                       (##car _e9056390602_))
                                                      (_tl9056590607_
                                                       (##cdr _e9056390602_)))
                                                  (let ((_hd-bind90610_
                                                         _hd9056490605_))
                                                    (if (gx#stx-pair?
                                                         _tl9056590607_)
                                                        (let ((_e9056690612_
                                                               (gx#syntax-e
                                                                _tl9056590607_)))
                                                          (let ((_hd9056790615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9056690612_))
                        (_tl9056890617_ (##cdr _e9056690612_)))
                    (let ((_expr90620_ _hd9056790615_))
                      (if (gx#stx-null? _tl9056890617_)
                          (if (gx#core-bind-values? _hd-bind90610_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90610_)
                                (_K90554_
                                 _rest90555_
                                 (cons _hd90553_ _r90556_)))
                              (_E9055990590_))
                          (_E9055990590_)))))
                (_E9055990590_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9055990590_))
                                          (_E9055990590_))))
                                  (_E9055990590_)))))
                      (_E9055890622_))))
                 (_expand-body90425_
                  (lambda (_rbody90427_)
                    (let _lp90429_ ((_rest90431_ _rbody90427_)
                                    (_body90432_ '()))
                      (let* ((_rest9043390441_ _rest90431_)
                             (_else9043590449_ (lambda () _body90432_))
                             (_K9043790541_
                              (lambda (_rest90452_ _hd90453_)
                                (let* ((_e9045490475_ _hd90453_)
                                       (_E9047090479_
                                        (lambda ()
                                          (_lp90429_
                                           _rest90452_
                                           (cons (gx#core-expand-expression
                                                  _hd90453_)
                                                 _body90432_))))
                                       (_E9046690493_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9045490475_)
                                              (let ((_e9047190483_
                                                     (gx#syntax-e
                                                      _e9045490475_)))
                                                (let ((_hd9047290486_
                                                       (##car _e9047190483_))
                                                      (_tl9047390488_
                                                       (##cdr _e9047190483_)))
                                                  (let ((_form90491_
                                                         _hd9047290486_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form90491_
                                                         gx#special-form-binding?)
                                                        (_lp90429_
                                                         _rest90452_
                                                         (cons _hd90453_
                                                               _body90432_))
                                                        (_E9047090479_)))))
                                              (_E9047090479_))))
                                       (_E9045690505_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9045490475_)
                                              (let ((_e9046790497_
                                                     (gx#syntax-e
                                                      _e9045490475_)))
                                                (let ((_hd9046890500_
                                                       (##car _e9046790497_))
                                                      (_tl9046990502_
                                                       (##cdr _e9046790497_)))
                                                  (if (and (gx#identifier?
                                                            _hd9046890500_)
                                                           (gx#core-identifier=?
                                                            _hd9046890500_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp90429_
                                                           _rest90452_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90453_)
                         _body90432_))
                  (_E9046690493_))
              (_E9046690493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9046690493_))))
                                       (_E9045590537_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9045490475_)
                                              (let ((_e9045790509_
                                                     (gx#syntax-e
                                                      _e9045490475_)))
                                                (let ((_hd9045890512_
                                                       (##car _e9045790509_))
                                                      (_tl9045990514_
                                                       (##cdr _e9045790509_)))
                                                  (if (and (gx#identifier?
                                                            _hd9045890512_)
                                                           (gx#core-identifier=?
                                                            _hd9045890512_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9045990514_)
                                                          (let ((_e9046090517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9045990514_)))
                    (let ((_hd9046190520_ (##car _e9046090517_))
                          (_tl9046290522_ (##cdr _e9046090517_)))
                      (let ((_hd-bind90525_ _hd9046190520_))
                        (if (gx#stx-pair? _tl9046290522_)
                            (let ((_e9046390527_ (gx#syntax-e _tl9046290522_)))
                              (let ((_hd9046490530_ (##car _e9046390527_))
                                    (_tl9046590532_ (##cdr _e9046390527_)))
                                (let ((_expr90535_ _hd9046490530_))
                                  (if (gx#stx-null? _tl9046590532_)
                                      (if '#t
                                          (_lp90429_
                                           _rest90452_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind90525_)
                                                   (gx#core-expand-expression
                                                    _expr90535_))
                                                  (gx#stx-source _hd90453_))
                                                 _body90432_))
                                          (_E9045690505_))
                                      (_E9045690505_)))))
                            (_E9045690505_)))))
                  (_E9045690505_))
              (_E9045690505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9045690505_)))))
                                  (_E9045590537_)))))
                        (if (##pair? _rest9043390441_)
                            (let ((_hd9043890544_ (##car _rest9043390441_))
                                  (_tl9043990546_ (##cdr _rest9043390441_)))
                              (let* ((_hd90549_ _hd9043890544_)
                                     (_rest90551_ _tl9043990546_))
                                (_K9043790541_ _rest90551_ _hd90549_)))
                            (_else9043590449_)))))))
          (_expand-body90425_
           (gx#core-expand-block__%
            (cons '%#begin-module _body90422_)
            _expand-special90424_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx90265_
               _expanded?90266_
               _method90267_
               _current-phi90268_
               _expand190269_)
        (letrec ((_K90271_
                  (lambda (_rest90389_ _r90390_)
                    (let* ((_e9039190398_ _rest90389_)
                           (_E9039390402_ (lambda () _r90390_))
                           (_E9039290418_
                            (lambda ()
                              (if (gx#stx-pair? _e9039190398_)
                                  (let ((_e9039490406_
                                         (gx#syntax-e _e9039190398_)))
                                    (let ((_hd9039590409_
                                           (##car _e9039490406_))
                                          (_tl9039690411_
                                           (##cdr _e9039490406_)))
                                      (let* ((_hd90414_ _hd9039590409_)
                                             (_rest90416_ _tl9039690411_))
                                        (if '#t
                                            (_step90272_
                                             _hd90414_
                                             _rest90416_
                                             _r90390_)
                                            (_E9039390402_)))))
                                  (_E9039390402_)))))
                      (_E9039290418_))))
                 (_step90272_
                  (lambda (_hd90303_ _rest90304_ _r90305_)
                    (let* ((_e9030690324_ _hd90303_)
                           (_E9031990328_
                            (lambda ()
                              (if (_expanded?90266_ (gx#stx-e _hd90303_))
                                  (_K90271_
                                   _rest90304_
                                   (cons (gx#stx-e _hd90303_) _r90305_))
                                  (_expand190269_
                                   _hd90303_
                                   _K90271_
                                   _rest90304_
                                   _r90305_))))
                           (_E9031590344_
                            (lambda ()
                              (if (gx#stx-pair? _e9030690324_)
                                  (let ((_e9032090332_
                                         (gx#syntax-e _e9030690324_)))
                                    (let ((_hd9032190335_
                                           (##car _e9032090332_))
                                          (_tl9032290337_
                                           (##cdr _e9032090332_)))
                                      (let* ((_macro90340_ _hd9032190335_)
                                             (_body90342_ _tl9032290337_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro90340_
                                             gx#syntax-binding?)
                                            (_K90271_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro90340_)
                                                    _hd90303_
                                                    _method90267_)
                                                   _rest90304_)
                                             _r90305_)
                                            (_E9031990328_)))))
                                  (_E9031990328_))))
                           (_E9030890358_
                            (lambda ()
                              (if (gx#stx-pair? _e9030690324_)
                                  (let ((_e9031690348_
                                         (gx#syntax-e _e9030690324_)))
                                    (let ((_hd9031790351_
                                           (##car _e9031690348_))
                                          (_tl9031890353_
                                           (##cdr _e9031690348_)))
                                      (if (eq? (gx#stx-e _hd9031790351_)
                                               'begin:)
                                          (let ((_body90356_ _tl9031890353_))
                                            (if '#t
                                                (_K90271_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest90304_
                                                  _body90356_)
                                                 _r90305_)
                                                (_E9031590344_)))
                                          (_E9031590344_))))
                                  (_E9031590344_))))
                           (_E9030790385_
                            (lambda ()
                              (if (gx#stx-pair? _e9030690324_)
                                  (let ((_e9030990362_
                                         (gx#syntax-e _e9030690324_)))
                                    (let ((_hd9031090365_
                                           (##car _e9030990362_))
                                          (_tl9031190367_
                                           (##cdr _e9030990362_)))
                                      (if (eq? (gx#stx-e _hd9031090365_) 'phi:)
                                          (if (gx#stx-pair? _tl9031190367_)
                                              (let ((_e9031290370_
                                                     (gx#syntax-e
                                                      _tl9031190367_)))
                                                (let ((_hd9031390373_
                                                       (##car _e9031290370_))
                                                      (_tl9031490375_
                                                       (##cdr _e9031290370_)))
                                                  (let* ((_dphi90378_
                                                          _hd9031390373_)
                                                         (_body90380_
                                                          _tl9031490375_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi90378_)
                                                        (let ((_rbody90383_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K90271_ _body90380_ '()))
                        _current-phi90268_
                        (fx+ (gx#stx-e _dphi90378_) (_current-phi90268_)))))
                  (_K90271_ _rest90304_ (foldr1 cons _r90305_ _rbody90383_)))
                (_E9030890358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9030890358_))
                                          (_E9030890358_))))
                                  (_E9030890358_)))))
                      (_E9030790385_)))))
          (let* ((_e9027390280_ _stx90265_)
                 (_E9027590284_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9027390280_)))
                 (_E9027490299_
                  (lambda ()
                    (if (gx#stx-pair? _e9027390280_)
                        (let ((_e9027690288_ (gx#syntax-e _e9027390280_)))
                          (let ((_hd9027790291_ (##car _e9027690288_))
                                (_tl9027890293_ (##cdr _e9027690288_)))
                            (let ((_body90296_ _tl9027890293_))
                              (if '#t
                                  (if (_current-phi90268_)
                                      (_K90271_ _body90296_ '())
                                      (call-with-parameters
                                       (lambda () (_K90271_ _body90296_ '()))
                                       _current-phi90268_
                                       (gx#current-expander-phi)))
                                  (_E9027590284_)))))
                        (_E9027590284_)))))
            (_E9027490299_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx89932_ _internal-expand?89933_)
        (letrec ((_expand189935_
                  (lambda (_hd90245_ _K90246_ _rest90247_ _r90248_)
                    (if (gx#core-bound-module? _hd90245_)
                        (_import189936_
                         (gx#syntax-local-e__0 _hd90245_)
                         _K90246_
                         _rest90247_
                         _r90248_)
                        (if (gx#core-library-module-path? _hd90245_)
                            (_import189936_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd90245_))
                             _K90246_
                             _rest90247_
                             _r90248_)
                            (if (gx#core-library-relative-module-path?
                                 _hd90245_)
                                (_import189936_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd90245_))
                                 _K90246_
                                 _rest90247_
                                 _r90248_)
                                (let ((_e90250_ (gx#stx-e _hd90245_)))
                                  (if (pair? _e90250_)
                                      (let ((_$e90252_
                                             (gx#stx-e (car _e90250_))))
                                        (if (eq? 'spec: _$e90252_)
                                            (_import-spec89939_
                                             _hd90245_
                                             _K90246_
                                             _rest90247_
                                             _r90248_)
                                            (if (eq? 'in: _$e90252_)
                                                (_import-submodule89937_
                                                 _hd90245_
                                                 _K90246_
                                                 _rest90247_
                                                 _r90248_)
                                                (if (eq? 'runtime: _$e90252_)
                                                    (_import-runtime89938_
                                                     _hd90245_
                                                     _K90246_
                                                     _rest90247_
                                                     _r90248_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx89932_
                                                     _hd90245_)))))
                                      (if (string? _e90250_)
                                          (_import189936_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd90245_
                                             (gx#stx-source _stx89932_)))
                                           _K90246_
                                           _rest90247_
                                           _r90248_)
                                          (if (##structure-instance-of?
                                               _e90250_
                                               'gx#module-context::t)
                                              (_K90246_
                                               _rest90247_
                                               (cons _e90250_ _r90248_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx89932_
                                               _hd90245_))))))))))
                 (_import189936_
                  (lambda (_ctx90234_ _K90235_ _rest90236_ _r90237_)
                    (let ((_dphi90239_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K90235_
                       _rest90236_
                       (cons (##structure
                              gx#import-set::t
                              _ctx90234_
                              _dphi90239_
                              (map (lambda (_g9024090242_)
                                     (gx#core-module-export->import__%
                                      _g9024090242_
                                      '#f
                                      _dphi90239_))
                                   (##unchecked-structure-ref
                                    _ctx90234_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r90237_)))))
                 (_import-submodule89937_
                  (lambda (_hd90201_ _K90202_ _rest90203_ _r90204_)
                    (let* ((_e9020590212_ _hd90201_)
                           (_E9020790216_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9020590212_)))
                           (_E9020690230_
                            (lambda ()
                              (if (gx#stx-pair? _e9020590212_)
                                  (let ((_e9020890220_
                                         (gx#syntax-e _e9020590212_)))
                                    (let ((_hd9020990223_
                                           (##car _e9020890220_))
                                          (_tl9021090225_
                                           (##cdr _e9020890220_)))
                                      (let ((_spath90228_ _tl9021090225_))
                                        (if '#t
                                            (_import189936_
                                             (_import-spec-source89940_
                                              _spath90228_)
                                             _K90202_
                                             _rest90203_
                                             _r90204_)
                                            (_E9020790216_)))))
                                  (_E9020790216_)))))
                      (_E9020690230_))))
                 (_import-runtime89938_
                  (lambda (_hd90168_ _K90169_ _rest90170_ _r90171_)
                    (let* ((_e9017290179_ _hd90168_)
                           (_E9017490183_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9017290179_)))
                           (_E9017390197_
                            (lambda ()
                              (if (gx#stx-pair? _e9017290179_)
                                  (let ((_e9017590187_
                                         (gx#syntax-e _e9017290179_)))
                                    (let ((_hd9017690190_
                                           (##car _e9017590187_))
                                          (_tl9017790192_
                                           (##cdr _e9017590187_)))
                                      (let ((_spath90195_ _tl9017790192_))
                                        (if '#t
                                            (_K90169_
                                             _rest90170_
                                             (cons (_import-spec-source89940_
                                                    _spath90195_)
                                                   _r90171_))
                                            (_E9017490183_)))))
                                  (_E9017490183_)))))
                      (_E9017390197_))))
                 (_import-spec89939_
                  (lambda (_hd90007_ _K90008_ _rest90009_ _r90010_)
                    (let* ((_e9001190028_ _hd90007_)
                           (_E9002090032_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9001190028_)))
                           (_E9001390142_
                            (lambda ()
                              (if (gx#stx-pair? _e9001190028_)
                                  (let ((_e9002190036_
                                         (gx#syntax-e _e9001190028_)))
                                    (let ((_hd9002290039_
                                           (##car _e9002190036_))
                                          (_tl9002390041_
                                           (##cdr _e9002190036_)))
                                      (if (gx#stx-pair? _tl9002390041_)
                                          (let ((_e9002490044_
                                                 (gx#syntax-e _tl9002390041_)))
                                            (let ((_hd9002590047_
                                                   (##car _e9002490044_))
                                                  (_tl9002690049_
                                                   (##cdr _e9002490044_)))
                                              (let* ((_path90052_
                                                      _hd9002590047_)
                                                     (_specs90054_
                                                      _tl9002690049_))
                                                (if '#t
                                                    (let ((_src-ctx90056_
                                                           (_import-spec-source89940_
                                                            _path90052_))
                                                          (_exports90057_
                                                           (make-hash-table))
                                                          (_specs90058_
                                                           (gx#syntax->list
                                                            _specs90054_)))
                                                      (for-each
                                                       (lambda (_out90060_)
                                                         (hash-put!
                                                          _exports90057_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out90060_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out90060_
                         '4
                         gx#module-export::t
                         '#f))
                  _out90060_))
               (##unchecked-structure-ref
                _src-ctx90056_
                '9
                gx#module-context::t
                '#f))
              (_K90008_
               _rest90009_
               (foldl1 (lambda (_spec90062_ _r90063_)
                         (let* ((_e9006490080_ _spec90062_)
                                (_E9006690084_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9006490080_)))
                                (_E9006590138_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9006490080_)
                                       (let ((_e9006790088_
                                              (gx#syntax-e _e9006490080_)))
                                         (let ((_hd9006890091_
                                                (##car _e9006790088_))
                                               (_tl9006990093_
                                                (##cdr _e9006790088_)))
                                           (let ((_phi90096_ _hd9006890091_))
                                             (if (gx#stx-pair? _tl9006990093_)
                                                 (let ((_e9007090098_
                                                        (gx#syntax-e
                                                         _tl9006990093_)))
                                                   (let ((_hd9007190101_
                                                          (##car _e9007090098_))
                                                         (_tl9007290103_
                                                          (##cdr _e9007090098_)))
                                                     (let ((_name90106_
                                                            _hd9007190101_))
                                                       (if (gx#stx-pair?
                                                            _tl9007290103_)
                                                           (let ((_e9007390108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9007290103_)))
                     (let ((_hd9007490111_ (##car _e9007390108_))
                           (_tl9007590113_ (##cdr _e9007390108_)))
                       (let ((_src-phi90116_ _hd9007490111_))
                         (if (gx#stx-pair? _tl9007590113_)
                             (let ((_e9007690118_
                                    (gx#syntax-e _tl9007590113_)))
                               (let ((_hd9007790121_ (##car _e9007690118_))
                                     (_tl9007890123_ (##cdr _e9007690118_)))
                                 (let ((_src-name90126_ _hd9007790121_))
                                   (if (gx#stx-null? _tl9007890123_)
                                       (if (and (gx#stx-fixnum? _src-phi90116_)
                                                (gx#identifier?
                                                 _src-name90126_)
                                                (gx#stx-fixnum? _phi90096_)
                                                (gx#identifier? _name90106_))
                                           (let ((_src-phi90128_
                                                  (gx#stx-e _src-phi90116_))
                                                 (_src-name90129_
                                                  (gx#core-identifier-key
                                                   _src-name90126_))
                                                 (_phi90130_
                                                  (gx#stx-e _phi90096_))
                                                 (_name90131_
                                                  (gx#core-identifier-key
                                                   _name90106_)))
                                             (let ((_$e90133_
                                                    (hash-get
                                                     _exports90057_
                                                     (cons _src-phi90128_
                                                           _src-name90129_))))
                                               (if _$e90133_
                                                   ((lambda (_out90136_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out90136_
                                                             _name90131_
                                                             (fx- _phi90130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi90128_))
                    _r90063_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e90133_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx89932_
                                                    _hd90007_))))
                                           (_E9006690084_))
                                       (_E9006690084_)))))
                             (_E9006690084_)))))
                   (_E9006690084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9006690084_)))))
                                       (_E9006690084_)))))
                           (_E9006590138_)))
                       _r90010_
                       _specs90058_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9002090032_)))))
                                          (_E9002090032_))))
                                  (_E9002090032_))))
                           (_E9001290164_
                            (lambda ()
                              (if (gx#stx-pair? _e9001190028_)
                                  (let ((_e9001490146_
                                         (gx#syntax-e _e9001190028_)))
                                    (let ((_hd9001590149_
                                           (##car _e9001490146_))
                                          (_tl9001690151_
                                           (##cdr _e9001490146_)))
                                      (if (gx#stx-pair? _tl9001690151_)
                                          (let ((_e9001790154_
                                                 (gx#syntax-e _tl9001690151_)))
                                            (let ((_hd9001890157_
                                                   (##car _e9001790154_))
                                                  (_tl9001990159_
                                                   (##cdr _e9001790154_)))
                                              (let ((_path90162_
                                                     _hd9001890157_))
                                                (if (gx#stx-null?
                                                     _tl9001990159_)
                                                    (if '#t
                                                        (_K90008_
                                                         _rest90009_
                                                         (cons (_import-spec-source89940_
                                                                _path90162_)
                                                               _r90010_))
                                                        (_E9001390142_))
                                                    (_E9001390142_)))))
                                          (_E9001390142_))))
                                  (_E9001390142_)))))
                      (_E9001290164_))))
                 (_import-spec-source89940_
                  (lambda (_spath90005_)
                    (gx#core-import-nested-module _spath90005_ _stx89932_)))
                 (_import!89941_
                  (lambda (_rbody89954_)
                    (letrec* ((_current-ctx89956_
                               (gx#current-expander-context))
                              (_deps89957_ (make-hash-table-eq))
                              (_bind!89958_
                               (lambda (_hd90003_)
                                 (gx#core-bind-import!__1
                                  _hd90003_
                                  _current-ctx89956_))))
                      (let _lp89960_ ((_rest89962_ _rbody89954_)
                                      (_body89963_ '()))
                        (let* ((_rest8996489972_ _rest89962_)
                               (_else8996689982_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx89956_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx89956_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx89956_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body89963_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx89980_ _g92841_)
                                     (gx#eval-module _ctx89980_))
                                   _deps89957_)
                                  _body89963_))
                               (_K8996889991_
                                (lambda (_rest89985_ _hd89986_)
                                  (if (##structure-direct-instance-of?
                                       _hd89986_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!89958_ _hd89986_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd89986_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd89986_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps89957_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd89986_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd89986_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!89958_
                                             (##unchecked-structure-ref
                                              _hd89986_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd89986_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps89957_
                                                 (##unchecked-structure-ref
                                                  _hd89986_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e89988_
                                                 (##structure-instance-of?
                                                  _hd89986_
                                                  'gx#module-context::t)))
                                            (if _$e89988_
                                                _$e89988_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx89932_
                                                 _hd89986_)))))
                                  (_lp89960_
                                   _rest89985_
                                   (cons _hd89986_ _body89963_)))))
                          (if (##pair? _rest8996489972_)
                              (let ((_hd8996989994_ (##car _rest8996489972_))
                                    (_tl8997089996_ (##cdr _rest8996489972_)))
                                (let* ((_hd89999_ _hd8996989994_)
                                       (_rest90001_ _tl8997089996_))
                                  (_K8996889991_ _rest90001_ _hd89999_)))
                              (_else8996689982_)))))))
                 (_expanded-import?89942_
                  (lambda (_e89946_)
                    (let ((_$e89948_
                           (##structure-direct-instance-of?
                            _e89946_
                            'gx#import-set::t)))
                      (if _$e89948_
                          _$e89948_
                          (let ((_$e89951_
                                 (##structure-direct-instance-of?
                                  _e89946_
                                  'gx#module-import::t)))
                            (if _$e89951_
                                _$e89951_
                                (##structure-instance-of?
                                 _e89946_
                                 'gx#module-context::t))))))))
          (let ((_rbody89944_
                 (gx#core-expand-import/export
                  _stx89932_
                  _expanded-import?89942_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand189935_)))
            (if _internal-expand?89933_
                (reverse _rbody89944_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!89941_ _rbody89944_))
                 (gx#stx-source _stx89932_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx90258_)
        (let ((_internal-expand?90260_ '#f))
          (gx#core-expand-import%__% _stx90258_ _internal-expand?90260_))))
    (define gx#core-expand-import%
      (lambda _g92843_
        (let ((_g92842_ (##length _g92843_)))
          (cond ((##fx= _g92842_ 1)
                 (apply (lambda (_stx90258_)
                          (gx#core-expand-import%__0 _stx90258_))
                        _g92843_))
                ((##fx= _g92842_ 2)
                 (apply (lambda (_stx90262_ _internal-expand?90263_)
                          (gx#core-expand-import%__%
                           _stx90262_
                           _internal-expand?90263_))
                        _g92843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g92843_))))))
    (define gx#core-import-nested-module
      (lambda (_spath89859_ _where89860_)
        (let* ((_e8986189868_ _spath89859_)
               (_E8986389872_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8986189868_)))
               (_E8986289927_
                (lambda ()
                  (if (gx#stx-pair? _e8986189868_)
                      (let ((_e8986489876_ (gx#syntax-e _e8986189868_)))
                        (let ((_hd8986589879_ (##car _e8986489876_))
                              (_tl8986689881_ (##cdr _e8986489876_)))
                          (let* ((_origin89884_ _hd8986589879_)
                                 (_sub89886_ _tl8986689881_))
                            (if '#t
                                (let ((_origin-ctx89888_
                                       (if (gx#stx-false? _origin89884_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin89884_))))
                                  (let _lp89890_ ((_rest89892_ _sub89886_)
                                                  (_ctx89893_
                                                   _origin-ctx89888_))
                                    (let* ((_e8989489901_ _rest89892_)
                                           (_E8989689905_
                                            (lambda () _ctx89893_))
                                           (_E8989589923_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8989489901_)
                                                  (let ((_e8989789909_
                                                         (gx#syntax-e
                                                          _e8989489901_)))
                                                    (let ((_hd8989889912_
                                                           (##car _e8989789909_))
                                                          (_tl8989989914_
                                                           (##cdr _e8989789909_)))
                                                      (let* ((_id89917_
                                                              _hd8989889912_)
                                                             (_rest89919_
                                                              _tl8989989914_))
                                                        (if '#t
                                                            (let ((_bind89921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id89917_ '0 _ctx89893_)))
                      (if (and (##structure-direct-instance-of?
                                _bind89921_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind89921_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where89860_
                           _spath89859_
                           _id89917_))
                      (_lp89890_
                       _rest89919_
                       (##unchecked-structure-ref
                        _bind89921_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8989689905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8989689905_)))))
                                      (_E8989589923_))))
                                (_E8986389872_)))))
                      (_E8986389872_)))))
          (_E8986289927_))))
    (define gx#core-expand-import-source
      (lambda (_hd89857_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd89857_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx89365_ _internal-expand?89366_)
        (letrec* ((_make-export__9277292773_
                   (lambda (_bind89805_ _phi89806_ _ctx89807_ _name89808_)
                     (let* ((_key89810_
                             (##unchecked-structure-ref
                              _bind89805_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key89812_
                             (if _name89808_
                                 (gx#core-identifier-key _name89808_)
                                 _key89810_)))
                       (##structure
                        gx#module-export::t
                        _ctx89807_
                        _key89810_
                        _phi89806_
                        _export-key89812_
                        (let ((_$e89815_
                               (##structure-instance-of?
                                _bind89805_
                                'gx#extern-binding::t)))
                          (if _$e89815_
                              _$e89815_
                              (##structure-direct-instance-of?
                               _bind89805_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9277492777_
                   (lambda (_bind89821_)
                     (let* ((_phi89823_ (gx#current-export-expander-phi))
                            (_ctx89825_ (gx#current-expander-context))
                            (_name89827_ '#f))
                       (_make-export__9277292773_
                        _bind89821_
                        _phi89823_
                        _ctx89825_
                        _name89827_))))
                  (_make-export__1__9277592778_
                   (lambda (_bind89829_ _phi89830_)
                     (let* ((_ctx89832_ (gx#current-expander-context))
                            (_name89834_ '#f))
                       (_make-export__9277292773_
                        _bind89829_
                        _phi89830_
                        _ctx89832_
                        _name89834_))))
                  (_make-export__2__9277692779_
                   (lambda (_bind89836_ _phi89837_ _ctx89838_)
                     (let ((_name89840_ '#f))
                       (_make-export__9277292773_
                        _bind89836_
                        _phi89837_
                        _ctx89838_
                        _name89840_))))
                  (_make-export89368_
                   (lambda _g92845_
                     (let ((_g92844_ (##length _g92845_)))
                       (cond ((##fx= _g92844_ 1)
                              (apply (lambda (_bind89821_)
                                       (_make-export__0__9277492777_
                                        _bind89821_))
                                     _g92845_))
                             ((##fx= _g92844_ 2)
                              (apply (lambda (_bind89829_ _phi89830_)
                                       (_make-export__1__9277592778_
                                        _bind89829_
                                        _phi89830_))
                                     _g92845_))
                             ((##fx= _g92844_ 3)
                              (apply (lambda (_bind89836_
                                              _phi89837_
                                              _ctx89838_)
                                       (_make-export__2__9277692779_
                                        _bind89836_
                                        _phi89837_
                                        _ctx89838_))
                                     _g92845_))
                             ((##fx= _g92844_ 4)
                              (apply (lambda (_bind89842_
                                              _phi89843_
                                              _ctx89844_
                                              _name89845_)
                                       (_make-export__9277292773_
                                        _bind89842_
                                        _phi89843_
                                        _ctx89844_
                                        _name89845_))
                                     _g92845_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g92845_))))))
                  (_expand189369_
                   (lambda (_hd89518_ _K89519_ _rest89520_ _r89521_)
                     (let* ((_e8952289554_ _hd89518_)
                            (_E8954989558_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx89365_
                                _hd89518_)))
                            (_E8953989637_
                             (lambda ()
                               (if (gx#stx-pair? _e8952289554_)
                                   (let ((_e8955089562_
                                          (gx#syntax-e _e8952289554_)))
                                     (let ((_hd8955189565_
                                            (##car _e8955089562_))
                                           (_tl8955289567_
                                            (##cdr _e8955089562_)))
                                       (if (eq? (gx#stx-e _hd8955189565_)
                                                'import:)
                                           (let ((_in89570_ _tl8955289567_))
                                             (if (gx#stx-list? _in89570_)
                                                 (let _lp89572_ ((_in-rest89574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in89570_)
                         (_r89575_ _r89521_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8957689583_
                                                           _in-rest89574_)
                                                          (_E8957889587_
                                                           (lambda ()
                                                             (_K89519_
                                                              _rest89520_
                                                              _r89575_)))
                                                          (_E8957789633_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8957689583_)
                         (let ((_e8957989591_ (gx#syntax-e _e8957689583_)))
                           (let ((_hd8958089594_ (##car _e8957989591_))
                                 (_tl8958189596_ (##cdr _e8957989591_)))
                             (let* ((_hd89599_ _hd8958089594_)
                                    (_in-rest89601_ _tl8958189596_))
                               (if '#t
                                   (let ((_src89631_
                                          (if (gx#core-bound-module? _hd89599_)
                                              (gx#syntax-local-e__0 _hd89599_)
                                              (if (gx#core-library-module-path?
                                                   _hd89599_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd89599_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd89599_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd89599_))
                                                      (if (gx#stx-string?
                                                           _hd89599_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd89599_
                                                            (gx#stx-source
                                                             _stx89365_)))
                                                          (let* ((_e8960289609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89599_)
                         (_E8960489613_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx89365_
                             _hd89599_)))
                         (_E8960389627_
                          (lambda ()
                            (if (gx#stx-pair? _e8960289609_)
                                (let ((_e8960589617_
                                       (gx#syntax-e _e8960289609_)))
                                  (let ((_hd8960689620_ (##car _e8960589617_))
                                        (_tl8960789622_ (##cdr _e8960589617_)))
                                    (if (eq? (gx#stx-e _hd8960689620_) 'in:)
                                        (let ((_spath89625_ _tl8960789622_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath89625_
                                               _stx89365_)
                                              (_E8960489613_)))
                                        (_E8960489613_))))
                                (_E8960489613_)))))
                    (_E8960389627_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp89572_
                                      _in-rest89601_
                                      (_export-imports89370_
                                       _src89631_
                                       _r89575_)))
                                   (_E8957889587_)))))
                         (_E8957889587_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8957789633_)))
                                                 (_E8954989558_)))
                                           (_E8954989558_))))
                                   (_E8954989558_))))
                            (_E8952689676_
                             (lambda ()
                               (if (gx#stx-pair? _e8952289554_)
                                   (let ((_e8954089641_
                                          (gx#syntax-e _e8952289554_)))
                                     (let ((_hd8954189644_
                                            (##car _e8954089641_))
                                           (_tl8954289646_
                                            (##cdr _e8954089641_)))
                                       (if (eq? (gx#stx-e _hd8954189644_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8954289646_)
                                               (let ((_e8954389649_
                                                      (gx#syntax-e
                                                       _tl8954289646_)))
                                                 (let ((_hd8954489652_
                                                        (##car _e8954389649_))
                                                       (_tl8954589654_
                                                        (##cdr _e8954389649_)))
                                                   (let ((_id89657_
                                                          _hd8954489652_))
                                                     (if (gx#stx-pair?
                                                          _tl8954589654_)
                                                         (let ((_e8954689659_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8954589654_)))
                   (let ((_hd8954789662_ (##car _e8954689659_))
                         (_tl8954889664_ (##cdr _e8954689659_)))
                     (let ((_name89667_ _hd8954789662_))
                       (if (gx#stx-null? _tl8954889664_)
                           (if '#t
                               (let* ((_phi89669_
                                       (gx#current-export-expander-phi))
                                      (_$e89671_
                                       (gx#core-resolve-identifier__1
                                        _id89657_
                                        _phi89669_)))
                                 (if _$e89671_
                                     ((lambda (_bind89674_)
                                        (_K89519_
                                         _rest89520_
                                         (cons (_make-export__9277292773_
                                                _bind89674_
                                                _phi89669_
                                                (gx#current-expander-context)
                                                _name89667_)
                                               _r89521_)))
                                      _$e89671_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx89365_
                                      _hd89518_
                                      _id89657_)))
                               (_E8953989637_))
                           (_E8953989637_)))))
                 (_E8953989637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8953989637_))
                                           (_E8953989637_))))
                                   (_E8953989637_))))
                            (_E8952589725_
                             (lambda ()
                               (if (gx#stx-pair? _e8952289554_)
                                   (let ((_e8952789680_
                                          (gx#syntax-e _e8952289554_)))
                                     (let ((_hd8952889683_
                                            (##car _e8952789680_))
                                           (_tl8952989685_
                                            (##cdr _e8952789680_)))
                                       (if (eq? (gx#stx-e _hd8952889683_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8952989685_)
                                               (let ((_e8953089688_
                                                      (gx#syntax-e
                                                       _tl8952989685_)))
                                                 (let ((_hd8953189691_
                                                        (##car _e8953089688_))
                                                       (_tl8953289693_
                                                        (##cdr _e8953089688_)))
                                                   (let ((_phi89696_
                                                          _hd8953189691_))
                                                     (if (gx#stx-pair?
                                                          _tl8953289693_)
                                                         (let ((_e8953389698_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8953289693_)))
                   (let ((_hd8953489701_ (##car _e8953389698_))
                         (_tl8953589703_ (##cdr _e8953389698_)))
                     (let ((_id89706_ _hd8953489701_))
                       (if (gx#stx-pair? _tl8953589703_)
                           (let ((_e8953689708_ (gx#syntax-e _tl8953589703_)))
                             (let ((_hd8953789711_ (##car _e8953689708_))
                                   (_tl8953889713_ (##cdr _e8953689708_)))
                               (let ((_name89716_ _hd8953789711_))
                                 (if (gx#stx-null? _tl8953889713_)
                                     (if (and (gx#stx-fixnum? _phi89696_)
                                              (gx#identifier? _id89706_)
                                              (gx#identifier? _name89716_))
                                         (let* ((_phi89718_
                                                 (gx#stx-e _phi89696_))
                                                (_$e89720_
                                                 (gx#core-resolve-identifier__1
                                                  _id89706_
                                                  _phi89718_)))
                                           (if _$e89720_
                                               ((lambda (_bind89723_)
                                                  (_K89519_
                                                   _rest89520_
                                                   (cons (_make-export__9277292773_
                                                          _bind89723_
                                                          _phi89718_
                                                          (gx#current-expander-context)
                                                          _name89716_)
                                                         _r89521_)))
                                                _$e89720_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx89365_
                                                _hd89518_
                                                _id89706_)))
                                         (_E8952689676_))
                                     (_E8952689676_)))))
                           (_E8952689676_)))))
                 (_E8952689676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8952689676_))
                                           (_E8952689676_))))
                                   (_E8952689676_))))
                            (_E8952489736_
                             (lambda ()
                               (let ((_id89729_ _e8952289554_))
                                 (if (gx#identifier? _id89729_)
                                     (let ((_$e89731_
                                            (gx#core-resolve-identifier__1
                                             _id89729_
                                             (gx#current-export-expander-phi))))
                                       (if _$e89731_
                                           ((lambda (_bind89734_)
                                              (_K89519_
                                               _rest89520_
                                               (cons (_make-export__0__9277492777_
                                                      _bind89734_)
                                                     _r89521_)))
                                            _$e89731_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx89365_
                                            _hd89518_)))
                                     (_E8952589725_)))))
                            (_E8952389800_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8952289554_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx89740_
                                               (gx#current-expander-context))
                                              (_current-phi89742_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx89744_
                                               (gx#core-context-shift
                                                _current-ctx89740_
                                                _current-phi89742_))
                                              (_phi-bind89746_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx89744_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp89749_ ((_bind-rest89751_
                                                          _phi-bind89746_)
                                                         (_set89752_ '()))
                                           (let* ((_bind-rest8975389763_
                                                   _bind-rest89751_)
                                                  (_else8975589771_
                                                   (lambda ()
                                                     (_K89519_
                                                      _rest89520_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi89742_
                                                             _set89752_)
                                                            _r89521_))))
                                                  (_K8975789781_
                                                   (lambda (_bind-rest89774_
                                                            _bind89775_
                                                            _key89776_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind89775_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind89775_))
                                                         (_lp89749_
                                                          _bind-rest89774_
                                                          _set89752_)
                                                         (_lp89749_
                                                          _bind-rest89774_
                                                          (cons (_make-export__2__9277692779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind89775_
                         _current-phi89742_
                         _current-ctx89740_)
                        _set89752_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8975389763_)
                                                 (let ((_hd8975889784_
                                                        (##car _bind-rest8975389763_))
                                                       (_tl8975989786_
                                                        (##cdr _bind-rest8975389763_)))
                                                   (if (##pair? _hd8975889784_)
                                                       (let ((_hd8976089789_
                                                              (##car _hd8975889784_))
                                                             (_tl8976189791_
                                                              (##cdr _hd8975889784_)))
                                                         (let* ((_key89794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8976089789_)
                        (_bind89796_ _tl8976189791_)
                        (_bind-rest89798_ _tl8975989786_))
                   (_K8975789781_ _bind-rest89798_ _bind89796_ _key89794_)))
               (_else8975589771_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8975589771_)))))
                                       (_E8952489736_))
                                   (_E8952489736_)))))
                       (_E8952389800_))))
                  (_export-imports89370_
                   (lambda (_src89394_ _r89395_)
                     (letrec* ((_current-ctx89397_
                                (gx#current-expander-context))
                               (_current-phi89398_
                                (gx#current-export-expander-phi))
                               (_import->export89399_
                                (lambda (_in89480_)
                                  (let* ((_in8948189489_ _in89480_)
                                         (_E8948389493_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8948189489_)))
                                         (_K8948489500_
                                          (lambda (_phi89496_
                                                   _key89497_
                                                   _out89498_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx89397_
                                             _key89497_
                                             _phi89496_
                                             _key89497_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8948189489_
                                         'gx#module-import::t)
                                        (let* ((_e8948589503_
                                                (##unchecked-structure-ref
                                                 _in8948189489_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out89506_ _e8948589503_)
                                               (_e8948689508_
                                                (##unchecked-structure-ref
                                                 _in8948189489_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key89511_ _e8948689508_)
                                               (_e8948789513_
                                                (##unchecked-structure-ref
                                                 _in8948189489_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi89516_ _e8948789513_))
                                          (_K8948489500_
                                           _phi89516_
                                           _key89511_
                                           _out89506_))
                                        (_E8948389493_)))))
                               (_fold-e89400_
                                (lambda (_in89402_ _r89403_)
                                  (let* ((_in8940489418_ _in89402_)
                                         (_else8940789426_
                                          (lambda () _r89403_)))
                                    (let ((_K8941389462_
                                           (lambda (_phi89458_
                                                    _key89459_
                                                    _out89460_)
                                             (if (and (fx= _phi89458_
                                                           _current-phi89398_)
                                                      (eq? _src89394_
                                                           (##unchecked-structure-ref
                                                            _out89460_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export89399_
                                                        _in89402_)
                                                       _r89403_)
                                                 _r89403_)))
                                          (_K8940989437_
                                           (lambda (_imports89430_
                                                    _phi89431_
                                                    _ctx89432_)
                                             (if (and (fx= _phi89431_
                                                           _current-phi89398_)
                                                      (eq? _src89394_
                                                           _ctx89432_))
                                                 (foldl1 (lambda (_in89434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r89435_)
                   (cons (_import->export89399_ _in89434_) _r89435_))
                 _r89403_
                 _imports89430_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r89403_))))
                                      (let ((_try-match8940689455_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8940489418_
                                                    'gx#import-set::t)
                                                   (let* ((_e8941089440_
                                                           (##unchecked-structure-ref
                                                            _in8940489418_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8941189445_
                                                           (##unchecked-structure-ref
                                                            _in8940489418_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8941289450_
                                                           (##unchecked-structure-ref
                                                            _in8940489418_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx89443_
                                                            _e8941089440_)
                                                           (_phi89448_
                                                            _e8941189445_)
                                                           (_imports89453_
                                                            _e8941289450_))
                                                       (_K8940989437_
                                                        _imports89453_
                                                        _phi89448_
                                                        _ctx89443_)))
                                                   (_else8940789426_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8940489418_
                                             'gx#module-import::t)
                                            (let* ((_e8941489465_
                                                    (##unchecked-structure-ref
                                                     _in8940489418_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8941589470_
                                                    (##unchecked-structure-ref
                                                     _in8940489418_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8941689475_
                                                    (##unchecked-structure-ref
                                                     _in8940489418_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out89468_ _e8941489465_)
                                                    (_key89473_ _e8941589470_)
                                                    (_phi89478_ _e8941689475_))
                                                (_K8941389462_
                                                 _phi89478_
                                                 _key89473_
                                                 _out89468_)))
                                            (_try-match8940689455_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src89394_
                              _current-phi89398_
                              (foldl1 _fold-e89400_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx89397_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r89395_))))
                  (_export!89371_
                   (lambda (_rbody89384_)
                     (letrec* ((_current-ctx89386_
                                (gx#current-expander-context))
                               (_fold-e89387_
                                (lambda (_out89391_ _r89392_)
                                  (if (##structure-direct-instance-of?
                                       _out89391_
                                       'gx#module-export::t)
                                      (cons _out89391_ _r89392_)
                                      (if (##structure-direct-instance-of?
                                           _out89391_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r89392_
                                                  (##unchecked-structure-ref
                                                   _out89391_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r89392_)))))
                       (let ((_body89389_ (reverse _rbody89384_)))
                         (##unchecked-structure-set!
                          _current-ctx89386_
                          (foldl1 _fold-e89387_
                                  (##unchecked-structure-ref
                                   _current-ctx89386_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body89389_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body89389_))))
                  (_expanded-export?89372_
                   (lambda (_e89379_)
                     (let ((_$e89381_
                            (##structure-direct-instance-of?
                             _e89379_
                             'gx#module-export::t)))
                       (if _$e89381_
                           _$e89381_
                           (##structure-direct-instance-of?
                            _e89379_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?89366_)
              (let ((_rbody89377_
                     (gx#core-expand-import/export
                      _stx89365_
                      _expanded-export?89372_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand189369_)))
                (if _internal-expand?89366_
                    (reverse _rbody89377_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!89371_ _rbody89377_))
                     (gx#stx-source _stx89365_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx89365_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx89365_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx89850_)
        (let ((_internal-expand?89852_ '#f))
          (gx#core-expand-export%__% _stx89850_ _internal-expand?89852_))))
    (define gx#core-expand-export%
      (lambda _g92847_
        (let ((_g92846_ (##length _g92847_)))
          (cond ((##fx= _g92846_ 1)
                 (apply (lambda (_stx89850_)
                          (gx#core-expand-export%__0 _stx89850_))
                        _g92847_))
                ((##fx= _g92846_ 2)
                 (apply (lambda (_stx89854_ _internal-expand?89855_)
                          (gx#core-expand-export%__%
                           _stx89854_
                           _internal-expand?89855_))
                        _g92847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g92847_))))))
    (define gx#core-expand-export-source
      (lambda (_hd89362_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd89362_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx89332_)
        (let* ((_e8933389340_ _stx89332_)
               (_E8933589344_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8933389340_)))
               (_E8933489358_
                (lambda ()
                  (if (gx#stx-pair? _e8933389340_)
                      (let ((_e8933689348_ (gx#syntax-e _e8933389340_)))
                        (let ((_hd8933789351_ (##car _e8933689348_))
                              (_tl8933889353_ (##cdr _e8933689348_)))
                          (let ((_body89356_ _tl8933889353_))
                            (if (gx#identifier-list? _body89356_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body89356_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body89356_))
                                   (gx#stx-source _stx89332_)))
                                (_E8933589344_)))))
                      (_E8933589344_)))))
          (_E8933489358_))))
    (define gx#core-bind-feature!__%
      (lambda (_id89298_ _private?89299_ _phi89300_ _ctx89301_)
        (gx#core-bind-syntax!__%
         _id89298_
         ((if _private?89299_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id89298_))
         _private?89299_
         _phi89300_
         _ctx89301_)))
    (define gx#core-bind-feature!__0
      (lambda (_id89306_)
        (let* ((_private?89308_ '#f)
               (_phi89310_ (gx#current-expander-phi))
               (_ctx89312_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89306_
           _private?89308_
           _phi89310_
           _ctx89312_))))
    (define gx#core-bind-feature!__1
      (lambda (_id89314_ _private?89315_)
        (let* ((_phi89317_ (gx#current-expander-phi))
               (_ctx89319_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89314_
           _private?89315_
           _phi89317_
           _ctx89319_))))
    (define gx#core-bind-feature!__2
      (lambda (_id89321_ _private?89322_ _phi89323_)
        (let ((_ctx89325_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89321_
           _private?89322_
           _phi89323_
           _ctx89325_))))
    (define gx#core-bind-feature!
      (lambda _g92849_
        (let ((_g92848_ (##length _g92849_)))
          (cond ((##fx= _g92848_ 1)
                 (apply (lambda (_id89306_)
                          (gx#core-bind-feature!__0 _id89306_))
                        _g92849_))
                ((##fx= _g92848_ 2)
                 (apply (lambda (_id89314_ _private?89315_)
                          (gx#core-bind-feature!__1 _id89314_ _private?89315_))
                        _g92849_))
                ((##fx= _g92848_ 3)
                 (apply (lambda (_id89321_ _private?89322_ _phi89323_)
                          (gx#core-bind-feature!__2
                           _id89321_
                           _private?89322_
                           _phi89323_))
                        _g92849_))
                ((##fx= _g92848_ 4)
                 (apply (lambda (_id89327_
                                 _private?89328_
                                 _phi89329_
                                 _ctx89330_)
                          (gx#core-bind-feature!__%
                           _id89327_
                           _private?89328_
                           _phi89329_
                           _ctx89330_))
                        _g92849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g92849_))))))))
