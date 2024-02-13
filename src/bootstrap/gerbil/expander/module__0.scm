(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707840756)
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
      (lambda _$args163883_
        (apply make-instance gx#module-import::t _$args163883_)))
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
      (lambda _$args163880_
        (apply make-instance gx#module-export::t _$args163880_)))
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
      (lambda _$args163877_
        (apply make-instance gx#import-set::t _$args163877_)))
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
      (lambda _$args163874_
        (apply make-instance gx#export-set::t _$args163874_)))
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
      (lambda _$args163871_
        (apply make-instance gx#import-expander::t _$args163871_)))
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
      (lambda _$args163868_
        (apply make-instance gx#export-expander::t _$args163868_)))
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
      (lambda _$args163865_
        (apply make-instance gx#import-export-expander::t _$args163865_)))
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
      (lambda (_path163862_ _fun163863_)
        (call-with-input-file
         (cons 'path: (cons _path163862_ gx#source-file-settings))
         _fun163863_)))
    (define gx#module-context:::init!
      (lambda (_self163856_ _id163857_ _super163858_ _ns163859_ _path163860_)
        (if (##fx< '11 (##structure-length _self163856_))
            (begin
              (##unchecked-structure-set!
               _self163856_
               _id163857_
               '1
               (##structure-type _self163856_)
               '#f)
              (##unchecked-structure-set!
               _self163856_
               (make-table 'test: eq?)
               '2
               (##structure-type _self163856_)
               '#f)
              (##unchecked-structure-set!
               _self163856_
               _super163858_
               '3
               (##structure-type _self163856_)
               '#f)
              (##unchecked-structure-set!
               _self163856_
               '#f
               '4
               (##structure-type _self163856_)
               '#f)
              (##unchecked-structure-set!
               _self163856_
               '#f
               '5
               (##structure-type _self163856_)
               '#f)
              (##unchecked-structure-set!
               _self163856_
               _ns163859_
               '6
               (##structure-type _self163856_)
               '#f)
              (##unchecked-structure-set!
               _self163856_
               _path163860_
               '7
               (##structure-type _self163856_)
               '#f)
              (##unchecked-structure-set!
               _self163856_
               '()
               '8
               (##structure-type _self163856_)
               '#f)
              (##unchecked-structure-set!
               _self163856_
               '()
               '9
               (##structure-type _self163856_)
               '#f)
              (##unchecked-structure-set!
               _self163856_
               '#f
               '10
               (##structure-type _self163856_)
               '#f)
              (##unchecked-structure-set!
               _self163856_
               '#f
               '11
               (##structure-type _self163856_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self163856_
                   '11
                   (##vector-length _self163856_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self163700_ _ctx163701_ _root163702_)
        (let ((_super163710_
               (let ((_$e163704_ _root163702_))
                 (if _$e163704_
                     _$e163704_
                     (let ((_$e163707_ (gx#core-context-root__0)))
                       (if _$e163707_
                           _$e163707_
                           (let ((__obj168493
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor168494
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj168493
                                     ':init!)))
                               (if __constructor168494
                                   (__constructor168494 __obj168493)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj168493)))))))
          (if _ctx163701_
              (let ((_id163713_
                     (##structure-ref
                      _ctx163701_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path163714_
                     (##structure-ref _ctx163701_ '7 gx#module-context::t '#f))
                    (_in163715_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx163701_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e163716_
                     (make-promise (lambda () (gx#eval-module _ctx163701_)))))
                (if (##fx< '8 (##structure-length _self163700_))
                    (begin
                      (##unchecked-structure-set!
                       _self163700_
                       _id163713_
                       '1
                       (##structure-type _self163700_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163700_
                       (make-table 'test: eq? 'size: (length _in163715_))
                       '2
                       (##structure-type _self163700_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163700_
                       _super163710_
                       '3
                       (##structure-type _self163700_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163700_
                       '#f
                       '4
                       (##structure-type _self163700_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163700_
                       '#f
                       '5
                       (##structure-type _self163700_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163700_
                       _path163714_
                       '6
                       (##structure-type _self163700_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163700_
                       _in163715_
                       '7
                       (##structure-type _self163700_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163700_
                       _e163716_
                       '8
                       (##structure-type _self163700_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self163700_
                           '8
                           (##vector-length _self163700_)))
                (for-each
                 (lambda (_g163717163719_)
                   (gx#core-bind-weak-import!__% _g163717163719_ _self163700_))
                 _in163715_))
              (if (##fx< '8 (##structure-length _self163700_))
                  (begin
                    (##unchecked-structure-set!
                     _self163700_
                     '#f
                     '1
                     (##structure-type _self163700_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163700_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self163700_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163700_
                     _super163710_
                     '3
                     (##structure-type _self163700_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163700_
                     '#f
                     '4
                     (##structure-type _self163700_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163700_
                     '#f
                     '5
                     (##structure-type _self163700_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163700_
                     '#f
                     '6
                     (##structure-type _self163700_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163700_
                     '()
                     '7
                     (##structure-type _self163700_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163700_
                     '#f
                     '8
                     (##structure-type _self163700_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self163700_
                         '8
                         (##vector-length _self163700_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self163725_ _ctx163726_)
        (let ((_root163728_ '#f))
          (gx#prelude-context:::init!__%
           _self163725_
           _ctx163726_
           _root163728_))))
    (define gx#prelude-context:::init!
      (lambda _g168500_
        (let ((_g168499_ (##length _g168500_)))
          (cond ((##fx= _g168499_ 2)
                 (apply (lambda (_self163725_ _ctx163726_)
                          (gx#prelude-context:::init!__0
                           _self163725_
                           _ctx163726_))
                        _g168500_))
                ((##fx= _g168499_ 3)
                 (apply (lambda (_self163730_ _ctx163731_ _root163732_)
                          (gx#prelude-context:::init!__%
                           _self163730_
                           _ctx163731_
                           _root163732_))
                        _g168500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g168500_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self163574_ _e163575_)
        (if (##fx< '3 (##structure-length _self163574_))
            (begin
              (##unchecked-structure-set!
               _self163574_
               _e163575_
               '1
               (##structure-type _self163574_)
               '#f)
              (##unchecked-structure-set!
               _self163574_
               (gx#current-expander-context)
               '2
               (##structure-type _self163574_)
               '#f)
              (##unchecked-structure-set!
               _self163574_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self163574_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self163574_
                   '3
                   (##vector-length _self163574_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (bind-method!
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_g163200163203_ _g163201163205_)
        (gx#core-apply-user-expander__%
         _g163200163203_
         _g163201163205_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g163071163074_ _g163072163076_)
        (gx#core-apply-user-expander__%
         _g163071163074_
         _g163072163076_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx162942_)
        (let* ((_path162944_
                (##structure-ref _ctx162942_ '7 gx#module-context::t '#f))
               (_path162946_
                (if (pair? _path162944_) (last _path162944_) _path162944_)))
          (if (string? _path162946_) _path162946_ '#f))))
    (define gx#import-module__%
      (lambda (_path162918_ _reload?162919_ _eval?162920_)
        (let ((_ctx162922_
               ((gx#current-expander-module-import)
                _path162918_
                _reload?162919_)))
          (if (and _ctx162922_ _eval?162920_)
              (gx#eval-module _ctx162922_)
              '#!void)
          _ctx162922_)))
    (define gx#import-module__0
      (lambda (_path162927_)
        (let* ((_reload?162929_ '#f) (_eval?162931_ '#f))
          (gx#import-module__% _path162927_ _reload?162929_ _eval?162931_))))
    (define gx#import-module__1
      (lambda (_path162933_ _reload?162934_)
        (let ((_eval?162936_ '#f))
          (gx#import-module__% _path162933_ _reload?162934_ _eval?162936_))))
    (define gx#import-module
      (lambda _g168502_
        (let ((_g168501_ (##length _g168502_)))
          (cond ((##fx= _g168501_ 1)
                 (apply (lambda (_path162927_)
                          (gx#import-module__0 _path162927_))
                        _g168502_))
                ((##fx= _g168501_ 2)
                 (apply (lambda (_path162933_ _reload?162934_)
                          (gx#import-module__1 _path162933_ _reload?162934_))
                        _g168502_))
                ((##fx= _g168501_ 3)
                 (apply (lambda (_path162938_ _reload?162939_ _eval?162940_)
                          (gx#import-module__%
                           _path162938_
                           _reload?162939_
                           _eval?162940_))
                        _g168502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g168502_))))))
    (define gx#eval-module
      (lambda (_mod162915_) ((gx#current-expander-module-eval) _mod162915_)))
    (define gx#core-eval-module
      (lambda (_obj162900_)
        (letrec ((_force-e162902_
                  (lambda (_getf162911_ _e162912_)
                    (call-with-parameters
                     (lambda () (force (_getf162911_ _e162912_)))
                     gx#current-expander-context
                     _e162912_
                     gx#current-expander-phi
                     '0))))
          (let _recur162904_ ((_e162906_ _obj162900_))
            (if (##structure-instance-of? _e162906_ 'gx#module-context::t)
                (begin
                  (let ((_$e162908_ (gx#core-context-prelude__% _e162906_)))
                    (if _$e162908_ (_recur162904_ _$e162908_) '#!void))
                  (_force-e162902_ gx#module-context-e _e162906_))
                (if (##structure-instance-of? _e162906_ 'gx#prelude-context::t)
                    (_force-e162902_ gx#prelude-context-e _e162906_)
                    (if (gx#stx-string? _e162906_)
                        (_recur162904_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e162906_)))
                        (if (gx#core-library-module-path? _e162906_)
                            (_recur162904_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e162906_)))
                            (error '"Cannot eval module" _obj162900_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx162883_)
        (let _lp162885_ ((_e162887_ _ctx162883_))
          (if (or (##structure-instance-of? _e162887_ 'gx#module-context::t)
                  (##structure-instance-of? _e162887_ 'gx#local-context::t))
              (_lp162885_
               (##unchecked-structure-ref _e162887_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e162887_ 'gx#prelude-context::t)
                  _e162887_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx162896_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx162896_))))
    (define gx#core-context-prelude
      (lambda _g168504_
        (let ((_g168503_ (##length _g168504_)))
          (cond ((##fx= _g168503_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g168504_))
                ((##fx= _g168503_ 1)
                 (apply (lambda (_ctx162898_)
                          (gx#core-context-prelude__% _ctx162898_))
                        _g168504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g168504_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx162873_)
        (let* ((_ht162875_ (gx#current-expander-module-registry))
               (_$e162877_ (table-ref _ht162875_ _ctx162873_ '#f)))
          (if _$e162877_
              (values _$e162877_)
              (let ((_pre162880_
                     (let ((__obj168495
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
                       (gx#prelude-context:::init! __obj168495 _ctx162873_)
                       __obj168495)))
                (table-set! _ht162875_ _ctx162873_ _pre162880_)
                _pre162880_)))))
    (define gx#core-import-module__%
      (lambda (_rpath162754_ _reload?162755_)
        (letrec ((_import-source162757_
                  (lambda (_path162842_)
                    (if (member _path162842_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path162842_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g168505_ (gx#core-read-module _path162842_)))
                         (begin
                           (let ((_g168506_
                                  (if (##values? _g168505_)
                                      (##vector-length _g168505_)
                                      1)))
                             (if (not (##fx= _g168506_ 4))
                                 (error "Context expects 4 values" _g168506_)))
                           (let ((_pre162845_ (##vector-ref _g168505_ 0))
                                 (_id162846_ (##vector-ref _g168505_ 1))
                                 (_ns162847_ (##vector-ref _g168505_ 2))
                                 (_body162848_ (##vector-ref _g168505_ 3)))
                             (let* ((_prelude162853_
                                     (if (##structure-instance-of?
                                          _pre162845_
                                          'gx#prelude-context::t)
                                         _pre162845_
                                         (if (##structure-instance-of?
                                              _pre162845_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre162845_)
                                             (if (string? _pre162845_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre162845_))
                                                 (if (not _pre162845_)
                                                     (let ((_$e162850_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e162850_
                                                           _$e162850_
                                                           (let ((__obj168496
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
                     (gx#prelude-context:::init! __obj168496 '#f)
                     __obj168496)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath162754_
                                                            _pre162845_))))))
                                    (_ctx162855_
                                     (let ((__obj168497
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
                                        __obj168497
                                        _id162846_
                                        _prelude162853_
                                        _ns162847_
                                        _path162842_)
                                       __obj168497))
                                    (_body162857_
                                     (gx#core-expand-module-begin
                                      _body162848_
                                      _ctx162855_))
                                    (_body162859_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body162857_)
                                      _path162842_
                                      _ctx162855_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx162855_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body162859_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx162855_
                                _body162859_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path162842_
                                _ctx162855_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id162846_
                                _ctx162855_)
                               _ctx162855_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path162842_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule162758_
                  (lambda (_rpath162770_)
                    (let* ((_rpath162771162778_ _rpath162770_)
                           (_E162773162782_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath162771162778_)))
                           (_K162774162830_
                            (lambda (_refs162785_ _origin162786_)
                              (let ((_ctx162788_
                                     (if _origin162786_
                                         (gx#core-import-module__%
                                          _origin162786_
                                          _reload?162755_)
                                         (gx#current-expander-context))))
                                (let _lp162790_ ((_rest162792_ _refs162785_)
                                                 (_ctx162793_ _ctx162788_))
                                  (let* ((_rest162794162802_ _rest162792_)
                                         (_else162796162810_
                                          (lambda () _ctx162793_))
                                         (_K162798162818_
                                          (lambda (_rest162813_ _id162814_)
                                            (let ((_bind162816_
                                                   (gx#resolve-identifier__%
                                                    _id162814_
                                                    '0
                                                    _ctx162793_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind162816_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind162816_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp162790_
                                                   _rest162813_
                                                   (##unchecked-structure-ref
                                                    _bind162816_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath162770_
                                                         _id162814_
                                                         _bind162816_))))))
                                    (if (##pair? _rest162794162802_)
                                        (let ((_hd162799162821_
                                               (##car _rest162794162802_))
                                              (_tl162800162823_
                                               (##cdr _rest162794162802_)))
                                          (let* ((_id162826_ _hd162799162821_)
                                                 (_rest162828_
                                                  _tl162800162823_))
                                            (_K162798162818_
                                             _rest162828_
                                             _id162826_)))
                                        (_else162796162810_))))))))
                      (if (##pair? _rpath162771162778_)
                          (let ((_hd162775162833_ (##car _rpath162771162778_))
                                (_tl162776162835_ (##cdr _rpath162771162778_)))
                            (let* ((_origin162838_ _hd162775162833_)
                                   (_refs162840_ _tl162776162835_))
                              (_K162774162830_ _refs162840_ _origin162838_)))
                          (_E162773162782_))))))
          (let ((_$e162760_
                 (if (not _reload?162755_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath162754_
                      '#f)
                     '#f)))
            (if _$e162760_
                (values _$e162760_)
                (if (list? _rpath162754_)
                    (_import-submodule162758_ _rpath162754_)
                    (if (gx#core-library-module-path? _rpath162754_)
                        (let ((_ctx162763_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath162754_)
                                _reload?162755_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath162754_
                           _ctx162763_)
                          _ctx162763_)
                        (let* ((_npath162765_ (path-normalize _rpath162754_))
                               (_$e162767_
                                (if (not _reload?162755_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath162765_
                                     '#f)
                                    '#f)))
                          (if _$e162767_
                              (values _$e162767_)
                              (_import-source162757_ _npath162765_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath162866_)
        (let ((_reload?162868_ '#f))
          (gx#core-import-module__% _rpath162866_ _reload?162868_))))
    (define gx#core-import-module
      (lambda _g168508_
        (let ((_g168507_ (##length _g168508_)))
          (cond ((##fx= _g168507_ 1)
                 (apply (lambda (_rpath162866_)
                          (gx#core-import-module__0 _rpath162866_))
                        _g168508_))
                ((##fx= _g168507_ 2)
                 (apply (lambda (_rpath162870_ _reload?162871_)
                          (gx#core-import-module__%
                           _rpath162870_
                           _reload?162871_))
                        _g168508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g168508_))))))
    (define gx#core-read-module
      (lambda (_path162743_)
        (with-catch
         (lambda (_exn162745_)
           (if (and (datum-parsing-exception? _exn162745_)
                    (eq? (datum-parsing-exception-filepos _exn162745_) '0))
               (gx#core-read-module/lang _path162743_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path162743_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g162747162749_)
                      (display-exception _exn162745_ _g162747162749_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path162743_)))))
    (define gx#core-read-module/sexp
      (lambda (_path162606_)
        (let _lp162608_ ((_body162610_ (read-syntax-from-file _path162606_))
                         (_pre162611_ '#f)
                         (_ns162612_ '#f)
                         (_pkg162613_ '#f))
          (let* ((_e162614162638_ _body162610_)
                 (_E162630162660_
                  (lambda ()
                    (let ((_g168509_
                           (if _pkg162613_
                               (values _pre162611_ _ns162612_ _pkg162613_)
                               (gx#core-read-module-package
                                _path162606_
                                _pre162611_
                                _ns162612_))))
                      (begin
                        (let ((_g168510_
                               (if (##values? _g168509_)
                                   (##vector-length _g168509_)
                                   1)))
                          (if (not (##fx= _g168510_ 3))
                              (error "Context expects 3 values" _g168510_)))
                        (let ((_pre162642_ (##vector-ref _g168509_ 0))
                              (_ns162643_ (##vector-ref _g168509_ 1))
                              (_pkg162644_ (##vector-ref _g168509_ 2)))
                          (let* ((_prelude162646_
                                  (if (gx#core-bound-module-prelude?
                                       _pre162642_)
                                      (gx#syntax-local-e__0 _pre162642_)
                                      (if (gx#core-library-module-path?
                                           _pre162642_)
                                          (gx#core-resolve-library-module-path
                                           _pre162642_)
                                          (if (gx#stx-string? _pre162642_)
                                              (gx#core-resolve-module-path__%
                                               _pre162642_
                                               _path162606_)
                                              (gx#stx-e _pre162642_)))))
                                 (_path-id162648_
                                  (gx#core-module-path->namespace
                                   _path162606_))
                                 (_pkg-id162650_
                                  (if _pkg162644_
                                      (string-append
                                       _pkg162644_
                                       '"/"
                                       _path-id162648_)
                                      _path-id162648_))
                                 (_module-id162652_
                                  (string->symbol _pkg-id162650_))
                                 (_module-ns162657_
                                  (if (eq? _ns162643_ '#!void)
                                      '#f
                                      (let ((_$e162654_ _ns162643_))
                                        (if _$e162654_
                                            _$e162654_
                                            _pkg-id162650_)))))
                            (values _prelude162646_
                                    _module-id162652_
                                    _module-ns162657_
                                    _body162610_)))))))
                 (_E162623162689_
                  (lambda ()
                    (if (gx#stx-pair? _e162614162638_)
                        (let ((_e162631162664_ (gx#syntax-e _e162614162638_)))
                          (let ((_hd162632162667_ (##car _e162631162664_))
                                (_tl162633162669_ (##cdr _e162631162664_)))
                            (if (eq? (gx#stx-e _hd162632162667_) 'package:)
                                (if (gx#stx-pair? _tl162633162669_)
                                    (let ((_e162634162672_
                                           (gx#syntax-e _tl162633162669_)))
                                      (let ((_hd162635162675_
                                             (##car _e162634162672_))
                                            (_tl162636162677_
                                             (##cdr _e162634162672_)))
                                        (let* ((_pkg162680_ _hd162635162675_)
                                               (_rest162682_ _tl162636162677_))
                                          (if '#t
                                              (let ((_pkg162687_
                                                     (if (gx#identifier?
                                                          _pkg162680_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg162680_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg162680_)
                         (gx#stx-false? _pkg162680_))
                     (gx#stx-e _pkg162680_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg162680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp162608_
                                                 _rest162682_
                                                 _pre162611_
                                                 _ns162612_
                                                 _pkg162687_))
                                              (_E162630162660_)))))
                                    (_E162630162660_))
                                (_E162630162660_))))
                        (_E162630162660_))))
                 (_E162616162715_
                  (lambda ()
                    (if (gx#stx-pair? _e162614162638_)
                        (let ((_e162624162693_ (gx#syntax-e _e162614162638_)))
                          (let ((_hd162625162696_ (##car _e162624162693_))
                                (_tl162626162698_ (##cdr _e162624162693_)))
                            (if (eq? (gx#stx-e _hd162625162696_) 'namespace:)
                                (if (gx#stx-pair? _tl162626162698_)
                                    (let ((_e162627162701_
                                           (gx#syntax-e _tl162626162698_)))
                                      (let ((_hd162628162704_
                                             (##car _e162627162701_))
                                            (_tl162629162706_
                                             (##cdr _e162627162701_)))
                                        (let* ((_ns162709_ _hd162628162704_)
                                               (_rest162711_ _tl162629162706_))
                                          (if '#t
                                              (let ((_ns162713_
                                                     (if (gx#identifier?
                                                          _ns162709_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns162709_))
                                                         (if (gx#stx-string?
                                                              _ns162709_)
                                                             (gx#stx-e
                                                              _ns162709_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns162709_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns162709_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp162608_
                                                 _rest162711_
                                                 _pre162611_
                                                 _ns162713_
                                                 _pkg162613_))
                                              (_E162623162689_)))))
                                    (_E162623162689_))
                                (_E162623162689_))))
                        (_E162623162689_))))
                 (_E162615162739_
                  (lambda ()
                    (if (gx#stx-pair? _e162614162638_)
                        (let ((_e162617162719_ (gx#syntax-e _e162614162638_)))
                          (let ((_hd162618162722_ (##car _e162617162719_))
                                (_tl162619162724_ (##cdr _e162617162719_)))
                            (if (eq? (gx#stx-e _hd162618162722_) 'prelude:)
                                (if (gx#stx-pair? _tl162619162724_)
                                    (let ((_e162620162727_
                                           (gx#syntax-e _tl162619162724_)))
                                      (let ((_hd162621162730_
                                             (##car _e162620162727_))
                                            (_tl162622162732_
                                             (##cdr _e162620162727_)))
                                        (let* ((_prelude162735_
                                                _hd162621162730_)
                                               (_rest162737_ _tl162622162732_))
                                          (if '#t
                                              (_lp162608_
                                               _rest162737_
                                               _prelude162735_
                                               _ns162612_
                                               _pkg162613_)
                                              (_E162616162715_)))))
                                    (_E162616162715_))
                                (_E162616162715_))))
                        (_E162616162715_)))))
            (_E162615162739_)))))
    (define gx#core-read-module/lang
      (lambda (_path162433_)
        (letrec ((_default-read-module-body162435_
                  (lambda (_inp162598_)
                    (let _lp162600_ ((_body162602_ '()))
                      (let ((_next162604_ (read-syntax _inp162598_)))
                        (if (eof-object? _next162604_)
                            (reverse _body162602_)
                            (_lp162600_ (cons _next162604_ _body162602_)))))))
                 (_read-body162436_
                  (lambda (_inp162517_
                           _pre162518_
                           _ns162519_
                           _pkg162520_
                           _args162521_)
                    (let ((_g168511_
                           (if _pkg162520_
                               (values _pre162518_ _ns162519_ _pkg162520_)
                               (gx#core-read-module-package
                                _path162433_
                                _pre162518_
                                _ns162519_))))
                      (begin
                        (let ((_g168512_
                               (if (##values? _g168511_)
                                   (##vector-length _g168511_)
                                   1)))
                          (if (not (##fx= _g168512_ 3))
                              (error "Context expects 3 values" _g168512_)))
                        (let ((_pre162523_ (##vector-ref _g168511_ 0))
                              (_ns162524_ (##vector-ref _g168511_ 1))
                              (_pkg162525_ (##vector-ref _g168511_ 2)))
                          (let* ((_prelude162527_
                                  (gx#import-module__0 _pre162523_))
                                 (_read-module-body162581_
                                  (let ((_$e162573_
                                         (find (lambda (_e162528162530_)
                                                 (let* ((_g162532162542_
                                                         _e162528162530_)
                                                        (_else162534162550_
                                                         (lambda () '#f))
                                                        (_K162536162554_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g162532162542_
                                                        'gx#module-export::t)
                                                       (let* ((_e162537162557_
                                                               (##unchecked-structure-ref
                                                                _g162532162542_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e162538162560_
                                                               (##unchecked-structure-ref
                                                                _g162532162542_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e162539162563_
                                                               (##unchecked-structure-ref
                                                                _g162532162542_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e162539162563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e162540162566_
                            (##unchecked-structure-ref
                             _g162532162542_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g162568162570_)
                              (eq? _g162568162570_ 'read-module-body))
                            _e162540162566_)
                           (_K162536162554_)
                           (_else162534162550_)))
                     (_else162534162550_)))
               (_else162534162550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude162527_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e162573_
                                        ((lambda (_xport162576_)
                                           (let ((_proc162579_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport162576_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc162579_)
                                                 _proc162579_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path162433_
                                                  _pre162523_
                                                  _proc162579_))))
                                         _$e162573_)
                                        _default-read-module-body162435_)))
                                 (_path-id162583_
                                  (gx#core-module-path->namespace
                                   _path162433_))
                                 (_pkg-id162585_
                                  (if _pkg162525_
                                      (string-append
                                       _pkg162525_
                                       '"/"
                                       _path-id162583_)
                                      _path-id162583_))
                                 (_module-id162587_
                                  (string->symbol _pkg-id162585_))
                                 (_module-ns162592_
                                  (let ((_$e162589_ _ns162524_))
                                    (if _$e162589_ _$e162589_ _pkg-id162585_)))
                                 (_body162595_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body162581_ _inp162517_))
                                   gx#current-module-reader-path
                                   _path162433_
                                   gx#current-module-reader-args
                                   _args162521_)))
                            (values _prelude162527_
                                    _module-id162587_
                                    _module-ns162592_
                                    _body162595_)))))))
                 (_string-e162437_
                  (lambda (_obj162514_ _what162515_)
                    (if (string? _obj162514_)
                        _obj162514_
                        (if (symbol? _obj162514_)
                            (symbol->string _obj162514_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what162515_)
                             _path162433_
                             _obj162514_)))))
                 (_read-lang-args162438_
                  (lambda (_inp162469_ _args162470_)
                    (let* ((_args162471162479_ _args162470_)
                           (_else162473162487_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path162433_)))
                           (_K162475162502_
                            (lambda (_args162490_ _prelude162491_)
                              (let* ((_pkg162493_
                                      (pgetq 'package: _args162490_))
                                     (_pkg162495_
                                      (if _pkg162493_
                                          (_string-e162437_
                                           _pkg162493_
                                           '"package")
                                          '#f))
                                     (_ns162497_
                                      (pgetq 'namespace: _args162490_))
                                     (_ns162499_
                                      (if _ns162497_
                                          (_string-e162437_
                                           _ns162497_
                                           '"namespace")
                                          '#f)))
                                (_read-body162436_
                                 _inp162469_
                                 _prelude162491_
                                 _ns162499_
                                 _pkg162495_
                                 _args162490_)))))
                      (if (##pair? _args162471162479_)
                          (let ((_hd162476162505_ (##car _args162471162479_))
                                (_tl162477162507_ (##cdr _args162471162479_)))
                            (let* ((_prelude162510_ _hd162476162505_)
                                   (_args162512_ _tl162477162507_))
                              (_K162475162502_ _args162512_ _prelude162510_)))
                          (_else162473162487_)))))
                 (_read-lang162439_
                  (lambda (_inp162444_)
                    (let* ((_head162446_ (read-line _inp162444_))
                           (_$e162448_ (string-index _head162446_ '#\space)))
                      (if _$e162448_
                          ((lambda (_ix162451_)
                             (let ((_lang162453_
                                    (substring _head162446_ '0 _ix162451_)))
                               (if (equal? _lang162453_ '"#lang")
                                   (let* ((_rest162455_
                                           (substring
                                            _head162446_
                                            (fx+ _ix162451_ '1)
                                            (string-length _head162446_)))
                                          (_args162466_
                                           (with-catch
                                            (lambda (_g162456162458_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path162433_
                                               _g162456162458_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest162455_
                                               (lambda (_g162461162463_)
                                                 (read-all
                                                  _g162461162463_
                                                  read)))))))
                                     (_read-lang-args162438_
                                      _inp162444_
                                      _args162466_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path162433_))))
                           _$e162448_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path162433_)))))
                 (_read-e162440_
                  (lambda (_inp162442_)
                    (if (eq? (peek-char _inp162442_) '#\#)
                        (_read-lang162439_ _inp162442_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path162433_)))))
          (gx#call-with-input-source-file _path162433_ _read-e162440_))))
    (define gx#core-read-module-package
      (lambda (_path162387_ _pre162388_ _ns162389_)
        (letrec ((_string-e162391_
                  (lambda (_e162431_)
                    (if (symbol? _e162431_)
                        (symbol->string _e162431_)
                        (if (string? _e162431_)
                            _e162431_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e162431_))))))
          (let _lp162393_ ((_dir162395_ (path-directory _path162387_))
                           (_pkg-path162396_ '()))
            (let ((_gerbil.pkg162398_ (path-expand '"gerbil.pkg" _dir162395_)))
              (if (file-exists? _gerbil.pkg162398_)
                  (let ((_plist162400_
                         (gx#core-library-package-plist__% _dir162395_ '#t)))
                    (if (null? _plist162400_)
                        (let ((_pkg162402_
                               (if (not (null? _pkg-path162396_))
                                   (string-join _pkg-path162396_ '"/")
                                   '#f)))
                          (values _pre162388_ _ns162389_ _pkg162402_))
                        (if (list? _plist162400_)
                            (let* ((_root162404_
                                    (pgetq 'package: _plist162400_))
                                   (_pkg162408_
                                    (let ((_pkg-path162406_
                                           (if _root162404_
                                               (cons (_string-e162391_
                                                      _root162404_)
                                                     _pkg-path162396_)
                                               _pkg-path162396_)))
                                      (if (not (null? _pkg-path162406_))
                                          (string-join _pkg-path162406_ '"/")
                                          '#f)))
                                   (_ns162415_
                                    (let ((_ns162413_
                                           (let ((_$e162410_ _ns162389_))
                                             (if _$e162410_
                                                 _$e162410_
                                                 (pgetq 'namespace:
                                                        _plist162400_)))))
                                      (if _ns162413_
                                          (_string-e162391_ _ns162413_)
                                          '#f)))
                                   (_pre162420_
                                    (let ((_$e162417_ _pre162388_))
                                      (if _$e162417_
                                          _$e162417_
                                          (pgetq 'prelude: _plist162400_)))))
                              (values _pre162420_ _ns162415_ _pkg162408_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist162400_))))
                  (let ((_dir*162423_
                         (path-strip-trailing-directory-separator
                          _dir162395_)))
                    (if (or (string-empty? _dir*162423_)
                            (equal? _dir162395_ _dir*162423_))
                        (values _pre162388_ _ns162389_ '#f)
                        (let ((_xpath162428_
                               (path-strip-directory _dir*162423_))
                              (_xdir162429_ (path-directory _dir*162423_)))
                          (_lp162393_
                           _xdir162429_
                           (cons _xpath162428_ _pkg-path162396_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path162385_)
        (path-strip-extension (path-strip-directory _path162385_))))
    (define gx#core-module-path->id
      (lambda (_path162383_)
        (string->symbol (gx#core-module-path->namespace _path162383_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path162362_ _rel162363_)
        (let* ((_path162365_ (gx#stx-e _stx-path162362_))
               (_path162367_
                (if (string-empty? (path-extension _path162365_))
                    (string-append _path162365_ '".ss")
                    _path162365_)))
          (gx#core-resolve-path__%
           _path162367_
           (let ((_$e162370_ (gx#stx-source _stx-path162362_)))
             (if _$e162370_ _$e162370_ _rel162363_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path162376_)
        (let ((_rel162378_ '#f))
          (gx#core-resolve-module-path__% _stx-path162376_ _rel162378_))))
    (define gx#core-resolve-module-path
      (lambda _g168514_
        (let ((_g168513_ (##length _g168514_)))
          (cond ((##fx= _g168513_ 1)
                 (apply (lambda (_stx-path162376_)
                          (gx#core-resolve-module-path__0 _stx-path162376_))
                        _g168514_))
                ((##fx= _g168513_ 2)
                 (apply (lambda (_stx-path162380_ _rel162381_)
                          (gx#core-resolve-module-path__%
                           _stx-path162380_
                           _rel162381_))
                        _g168514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g168514_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath162248_)
        (let* ((_spath162250_ (symbol->string (gx#stx-e _libpath162248_)))
               (_spath162252_
                (substring _spath162250_ '1 (string-length _spath162250_)))
               (_ext162254_ (path-extension _spath162252_))
               (_ssi162256_
                (if (string-empty? _ext162254_)
                    (string-append _spath162252_ '".ssi")
                    (string-append
                     (path-strip-extension _spath162252_)
                     '".ssi")))
               (_srcs162260_
                (if (string-empty? _ext162254_)
                    (map (lambda (_ext162258_)
                           (string-append _spath162252_ _ext162258_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath162252_ '()))))
          (let _lp162263_ ((_rest162265_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest162266162275_ _rest162265_)
                   (_E162269162279_
                    (lambda ()
                      (error '"No clause matching" _rest162266162275_))))
              (let ((_K162271162349_
                     (lambda (_rest162290_ _dir162291_)
                       (letrec ((_resolve162293_
                                 (lambda (_ssi162305_ _srcs162306_)
                                   (let ((_compiled-path162308_
                                          (path-expand
                                           _ssi162305_
                                           _dir162291_)))
                                     (if (file-exists? _compiled-path162308_)
                                         (path-normalize _compiled-path162308_)
                                         (let _lpr162310_ ((_rest-src162312_
                                                            _srcs162306_))
                                           (let* ((_rest-src162313162321_
                                                   _rest-src162312_)
                                                  (_else162315162329_
                                                   (lambda ()
                                                     (_lp162263_
                                                      _rest162290_)))
                                                  (_K162317162337_
                                                   (lambda (_rest-src162332_
                                                            _src162333_)
                                                     (let ((_src-path162335_
                                                            (path-expand
                                                             _src162333_
                                                             _dir162291_)))
                                                       (if (file-exists?
                                                            _src-path162335_)
                                                           (path-normalize
                                                            _src-path162335_)
                                                           (_lpr162310_
                                                            _rest-src162332_))))))
                                             (if (##pair? _rest-src162313162321_)
                                                 (let ((_hd162318162340_
                                                        (##car _rest-src162313162321_))
                                                       (_tl162319162342_
                                                        (##cdr _rest-src162313162321_)))
                                                   (let* ((_src162345_
                                                           _hd162318162340_)
                                                          (_rest-src162347_
                                                           _tl162319162342_))
                                                     (_K162317162337_
                                                      _rest-src162347_
                                                      _src162345_)))
                                                 (_else162315162329_)))))))))
                         (let ((_$e162295_
                                (gx#core-library-package-path-prefix
                                 _dir162291_)))
                           (if _$e162295_
                               ((lambda (_prefix162298_)
                                  (if (string-prefix?
                                       _prefix162298_
                                       _spath162252_)
                                      (let ((_ssi162302_
                                             (substring
                                              _ssi162256_
                                              (string-length _prefix162298_)
                                              (string-length _ssi162256_)))
                                            (_srcs162303_
                                             (map (lambda (_src162300_)
                                                    (substring
                                                     _src162300_
                                                     (string-length
                                                      _prefix162298_)
                                                     (string-length
                                                      _src162300_)))
                                                  _srcs162260_)))
                                        (_resolve162293_
                                         _ssi162302_
                                         _srcs162303_))
                                      (_lp162263_ _rest162290_)))
                                _$e162295_)
                               (_resolve162293_ _ssi162256_ _srcs162260_))))))
                    (_K162270162284_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath162248_))))
                (let ((_try-match162268162287_
                       (lambda ()
                         (if (##null? _rest162266162275_)
                             (_K162270162284_)
                             (_E162269162279_)))))
                  (if (##pair? _rest162266162275_)
                      (let ((_tl162273162354_ (##cdr _rest162266162275_))
                            (_hd162272162352_ (##car _rest162266162275_)))
                        (let ((_dir162357_ _hd162272162352_)
                              (_rest162359_ _tl162273162354_))
                          (_K162271162349_ _rest162359_ _dir162357_)))
                      (_try-match162268162287_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath162221_)
        (letrec ((_resolve162223_
                  (lambda (_path162240_ _base162241_)
                    (let ((_$e162243_ (string-rindex _base162241_ '#\/)))
                      (if _$e162243_
                          ((lambda (_idx162246_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base162241_ '0 _idx162246_)
                                '"/"
                                _path162240_))))
                           _$e162243_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path162240_))))))))
          (let ((_spath162225_ (symbol->string (gx#stx-e _modpath162221_)))
                (_mod162226_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod162226_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath162221_))
            (let ((_mpath162228_
                   (symbol->string
                    (##structure-ref
                     _mod162226_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp162230_ ((_spath162232_ _spath162225_)
                               (_mpath162233_ _mpath162228_))
                (if (string-prefix? '"../" _spath162232_)
                    (let ((_$e162235_ (string-rindex _mpath162233_ '#\/)))
                      (if _$e162235_
                          ((lambda (_idx162238_)
                             (_lp162230_
                              (substring
                               _spath162232_
                               '3
                               (string-length _spath162232_))
                              (substring _mpath162233_ '0 _idx162238_)))
                           _$e162235_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath162221_)))
                    (if (string-prefix? '"./" _spath162232_)
                        (_lp162230_
                         (substring
                          _spath162232_
                          '2
                          (string-length _spath162232_))
                         _mpath162233_)
                        (_resolve162223_ _spath162232_ _mpath162233_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir162214_)
        (let ((_$e162216_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir162214_))))
          (if _$e162216_
              ((lambda (_pkg162219_)
                 (string-append (symbol->string _pkg162219_) '"/"))
               _$e162216_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir162186_ _exists?162187_)
        (let* ((_cache162189_ (gx#core-library-package-cache))
               (_$e162191_ (table-ref _cache162189_ _dir162186_ '#f)))
          (if _$e162191_
              (values _$e162191_)
              (let* ((_gerbil.pkg162194_
                      (path-expand '"gerbil.pkg" _dir162186_))
                     (_plist162201_
                      (if (or _exists?162187_
                              (file-exists? _gerbil.pkg162194_))
                          (let ((_e162199_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg162194_
                                  read)))
                            (if (eof-object? _e162199_)
                                '()
                                (if (list? _e162199_)
                                    _e162199_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg162194_
                                     _e162199_))))
                          '())))
                (table-set! _cache162189_ _dir162186_ _plist162201_)
                _plist162201_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir162207_)
        (let ((_exists?162209_ '#f))
          (gx#core-library-package-plist__% _dir162207_ _exists?162209_))))
    (define gx#core-library-package-plist
      (lambda _g168516_
        (let ((_g168515_ (##length _g168516_)))
          (cond ((##fx= _g168515_ 1)
                 (apply (lambda (_dir162207_)
                          (gx#core-library-package-plist__0 _dir162207_))
                        _g168516_))
                ((##fx= _g168515_ 2)
                 (apply (lambda (_dir162211_ _exists?162212_)
                          (gx#core-library-package-plist__%
                           _dir162211_
                           _exists?162212_))
                        _g168516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g168516_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e162180_ (gx#current-expander-module-library-package-cache)))
          (if _$e162180_
              (values _$e162180_)
              (let ((_cache162183_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache162183_)
                _cache162183_)))))
    (define gx#core-library-module-path?
      (lambda (_stx162177_) (gx#core-special-module-path? _stx162177_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx162175_) (gx#core-special-module-path? _stx162175_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx162170_ _char162171_)
        (if (gx#identifier? _stx162170_)
            (if (interned-symbol? (gx#stx-e _stx162170_))
                (let ((_str162173_ (symbol->string (gx#stx-e _stx162170_))))
                  (if (fx> (string-length _str162173_) '1)
                      (eq? (string-ref _str162173_ '0) _char162171_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx162164_)
        (gx#core-bound-identifier?__%
         _stx162164_
         (lambda (_g162165162167_)
           (gx#expander-binding?__% _g162165162167_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx162158_)
        (gx#core-bound-identifier?__%
         _stx162158_
         (lambda (_g162159162161_)
           (gx#expander-binding?__% _g162159162161_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx162145_)
        (letrec ((_module-prelude?162147_
                  (lambda (_e162153_)
                    (let ((_$e162155_
                           (##structure-instance-of?
                            _e162153_
                            'gx#module-context::t)))
                      (if _$e162155_
                          _$e162155_
                          (##structure-instance-of?
                           _e162153_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx162145_
           (lambda (_g162148162150_)
             (gx#expander-binding?__%
              _g162148162150_
              _module-prelude?162147_))))))
    (define gx#core-bind-import!__%
      (lambda (_in162075_ _ctx162076_ _force-weak?162077_)
        (let* ((_in162078162087_ _in162075_)
               (_E162080162091_
                (lambda () (error '"No clause matching" _in162078162087_)))
               (_K162081162104_
                (lambda (_weak?162094_ _phi162095_ _key162096_ _source162097_)
                  (gx#core-bind!__%
                   _key162096_
                   (let ((_e162099_
                          (gx#core-resolve-module-export _source162097_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e162099_
                       '1
                       gx#binding::t
                       '#f)
                      _key162096_
                      _phi162095_
                      _e162099_
                      (##unchecked-structure-ref
                       _source162097_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e162101_ _force-weak?162077_))
                        (if _$e162101_ _$e162101_ _weak?162094_))))
                   gx#core-context-rebind?
                   _phi162095_
                   _ctx162076_))))
          (if (##structure-direct-instance-of?
               _in162078162087_
               'gx#module-import::t)
              (let* ((_e162082162107_
                      (##unchecked-structure-ref
                       _in162078162087_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source162110_ _e162082162107_)
                     (_e162083162112_
                      (##unchecked-structure-ref
                       _in162078162087_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key162115_ _e162083162112_)
                     (_e162084162117_
                      (##unchecked-structure-ref
                       _in162078162087_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi162120_ _e162084162117_)
                     (_e162085162122_
                      (##unchecked-structure-ref
                       _in162078162087_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?162125_ _e162085162122_))
                (_K162081162104_
                 _weak?162125_
                 _phi162120_
                 _key162115_
                 _source162110_))
              (_E162080162091_)))))
    (define gx#core-bind-import!__0
      (lambda (_in162130_)
        (let* ((_ctx162132_ (gx#current-expander-context))
               (_force-weak?162134_ '#f))
          (gx#core-bind-import!__%
           _in162130_
           _ctx162132_
           _force-weak?162134_))))
    (define gx#core-bind-import!__1
      (lambda (_in162136_ _ctx162137_)
        (let ((_force-weak?162139_ '#f))
          (gx#core-bind-import!__%
           _in162136_
           _ctx162137_
           _force-weak?162139_))))
    (define gx#core-bind-import!
      (lambda _g168518_
        (let ((_g168517_ (##length _g168518_)))
          (cond ((##fx= _g168517_ 1)
                 (apply (lambda (_in162130_)
                          (gx#core-bind-import!__0 _in162130_))
                        _g168518_))
                ((##fx= _g168517_ 2)
                 (apply (lambda (_in162136_ _ctx162137_)
                          (gx#core-bind-import!__1 _in162136_ _ctx162137_))
                        _g168518_))
                ((##fx= _g168517_ 3)
                 (apply (lambda (_in162141_ _ctx162142_ _force-weak?162143_)
                          (gx#core-bind-import!__%
                           _in162141_
                           _ctx162142_
                           _force-weak?162143_))
                        _g168518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g168518_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in162061_ _ctx162062_)
        (gx#core-bind-import!__% _in162061_ _ctx162062_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in162067_)
        (let ((_ctx162069_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in162067_ _ctx162069_))))
    (define gx#core-bind-weak-import!
      (lambda _g168520_
        (let ((_g168519_ (##length _g168520_)))
          (cond ((##fx= _g168519_ 1)
                 (apply (lambda (_in162067_)
                          (gx#core-bind-weak-import!__0 _in162067_))
                        _g168520_))
                ((##fx= _g168519_ 2)
                 (apply (lambda (_in162071_ _ctx162072_)
                          (gx#core-bind-weak-import!__%
                           _in162071_
                           _ctx162072_))
                        _g168520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g168520_))))))
    (define gx#core-resolve-module-export
      (lambda (_out161952_)
        (letrec ((_subst161954_
                  (lambda (_key162000_)
                    (let* ((_key162001162009_ _key162000_)
                           (_else162003162017_ (lambda () _key162000_))
                           (_K162005162048_
                            (lambda (_mark162020_ _id162021_)
                              (let* ((_mark162022162028_ _mark162020_)
                                     (_E162024162032_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark162022162028_)))
                                     (_K162025162040_
                                      (lambda (_subst162035_)
                                        (let ((_$e162037_
                                               (if _subst162035_
                                                   (table-ref
                                                    _subst162035_
                                                    _id162021_
                                                    '#f)
                                                   '#f)))
                                          (if _$e162037_
                                              _$e162037_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key162000_))))))
                                (if (##structure-instance-of?
                                     _mark162022162028_
                                     'gx#expander-mark::t)
                                    (let* ((_e162026162043_
                                            (##unchecked-structure-ref
                                             _mark162022162028_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst162046_ _e162026162043_))
                                      (_K162025162040_ _subst162046_))
                                    (_E162024162032_))))))
                      (if (##pair? _key162001162009_)
                          (let ((_hd162006162051_ (##car _key162001162009_))
                                (_tl162007162053_ (##cdr _key162001162009_)))
                            (let* ((_id162056_ _hd162006162051_)
                                   (_mark162058_ _tl162007162053_))
                              (_K162005162048_ _mark162058_ _id162056_)))
                          (_else162003162017_))))))
          (let* ((_out161955161965_ _out161952_)
                 (_E161957161969_
                  (lambda () (error '"No clause matching" _out161955161965_)))
                 (_K161958161976_
                  (lambda (_phi161972_ _key161973_ _ctx161974_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx161974_ _phi161972_)
                     (_subst161954_ _key161973_)))))
            (if (##structure-direct-instance-of?
                 _out161955161965_
                 'gx#module-export::t)
                (let* ((_e161959161979_
                        (##unchecked-structure-ref
                         _out161955161965_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx161982_ _e161959161979_)
                       (_e161960161984_
                        (##unchecked-structure-ref
                         _out161955161965_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key161987_ _e161960161984_)
                       (_e161961161989_
                        (##unchecked-structure-ref
                         _out161955161965_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi161992_ _e161961161989_)
                       (_e161962161994_
                        (##unchecked-structure-ref
                         _out161955161965_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e161963161997_
                        (##unchecked-structure-ref
                         _out161955161965_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K161958161976_ _phi161992_ _key161987_ _ctx161982_))
                (_E161957161969_))))))
    (define gx#core-module-export->import__%
      (lambda (_out161877_ _rename161878_ _dphi161879_)
        (let* ((_out161880161890_ _out161877_)
               (_E161882161894_
                (lambda () (error '"No clause matching" _out161880161890_)))
               (_K161883161906_
                (lambda (_weak?161897_
                         _name161898_
                         _phi161899_
                         _key161900_
                         _ctx161901_)
                  (##structure
                   gx#module-import::t
                   _out161877_
                   (let ((_$e161903_ _rename161878_))
                     (if _$e161903_ _$e161903_ _name161898_))
                   (fx+ _phi161899_ _dphi161879_)
                   _weak?161897_))))
          (if (##structure-direct-instance-of?
               _out161880161890_
               'gx#module-export::t)
              (let* ((_e161884161909_
                      (##unchecked-structure-ref
                       _out161880161890_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx161912_ _e161884161909_)
                     (_e161885161914_
                      (##unchecked-structure-ref
                       _out161880161890_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key161917_ _e161885161914_)
                     (_e161886161919_
                      (##unchecked-structure-ref
                       _out161880161890_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi161922_ _e161886161919_)
                     (_e161887161924_
                      (##unchecked-structure-ref
                       _out161880161890_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name161927_ _e161887161924_)
                     (_e161888161929_
                      (##unchecked-structure-ref
                       _out161880161890_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?161932_ _e161888161929_))
                (_K161883161906_
                 _weak?161932_
                 _name161927_
                 _phi161922_
                 _key161917_
                 _ctx161912_))
              (_E161882161894_)))))
    (define gx#core-module-export->import__0
      (lambda (_out161937_)
        (let* ((_rename161939_ '#f) (_dphi161941_ '0))
          (gx#core-module-export->import__%
           _out161937_
           _rename161939_
           _dphi161941_))))
    (define gx#core-module-export->import__1
      (lambda (_out161943_ _rename161944_)
        (let ((_dphi161946_ '0))
          (gx#core-module-export->import__%
           _out161943_
           _rename161944_
           _dphi161946_))))
    (define gx#core-module-export->import
      (lambda _g168522_
        (let ((_g168521_ (##length _g168522_)))
          (cond ((##fx= _g168521_ 1)
                 (apply (lambda (_out161937_)
                          (gx#core-module-export->import__0 _out161937_))
                        _g168522_))
                ((##fx= _g168521_ 2)
                 (apply (lambda (_out161943_ _rename161944_)
                          (gx#core-module-export->import__1
                           _out161943_
                           _rename161944_))
                        _g168522_))
                ((##fx= _g168521_ 3)
                 (apply (lambda (_out161948_ _rename161949_ _dphi161950_)
                          (gx#core-module-export->import__%
                           _out161948_
                           _rename161949_
                           _dphi161950_))
                        _g168522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g168522_))))))
    (define gx#core-expand-module%
      (lambda (_stx161805_)
        (letrec ((_make-context161807_
                  (lambda (_id161858_)
                    (let* ((_super161860_ (gx#current-expander-context))
                           (_bind-id161862_ (gx#stx-e _id161858_))
                           (_mod-id161864_
                            (if (##structure-instance-of?
                                 _super161860_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super161860_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id161862_)
                                _bind-id161862_))
                           (_ns161866_ (symbol->string _mod-id161864_))
                           (_path161873_
                            (if (##structure-instance-of?
                                 _super161860_
                                 'gx#module-context::t)
                                (let ((_path161868_
                                       (##unchecked-structure-ref
                                        _super161860_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path161868_)
                                          (null? _path161868_))
                                      (cons _bind-id161862_ _path161868_)
                                      (if (not _path161868_)
                                          _bind-id161862_
                                          (cons _bind-id161862_
                                                (cons _path161868_ '())))))
                                _bind-id161862_)))
                      (let ((__obj168498
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
                         __obj168498
                         _mod-id161864_
                         _super161860_
                         _ns161866_
                         _path161873_)
                        __obj168498)))))
          (let* ((_e161808161818_ _stx161805_)
                 (_E161810161822_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e161808161818_)))
                 (_E161809161854_
                  (lambda ()
                    (if (gx#stx-pair? _e161808161818_)
                        (let ((_e161811161826_ (gx#syntax-e _e161808161818_)))
                          (let ((_hd161812161829_ (##car _e161811161826_))
                                (_tl161813161831_ (##cdr _e161811161826_)))
                            (if (gx#stx-pair? _tl161813161831_)
                                (let ((_e161814161834_
                                       (gx#syntax-e _tl161813161831_)))
                                  (let ((_hd161815161837_
                                         (##car _e161814161834_))
                                        (_tl161816161839_
                                         (##cdr _e161814161834_)))
                                    (let* ((_id161842_ _hd161815161837_)
                                           (_body161844_ _tl161816161839_))
                                      (if (and (gx#identifier? _id161842_)
                                               (gx#stx-list? _body161844_))
                                          (let* ((_ctx161846_
                                                  (_make-context161807_
                                                   _id161842_))
                                                 (_body161848_
                                                  (gx#core-expand-module-begin
                                                   _body161844_
                                                   _ctx161846_))
                                                 (_body161850_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body161848_)
                                                   (gx#stx-source
                                                    _stx161805_))))
                                            (##unchecked-structure-set!
                                             _ctx161846_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body161850_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx161846_
                                             _body161850_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id161842_
                                             _ctx161846_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id161842_)
                                              _body161850_)
                                             (gx#stx-source _stx161805_)))
                                          (_E161810161822_)))))
                                (_E161810161822_))))
                        (_E161810161822_)))))
            (_E161809161854_)))))
    (define gx#core-expand-module-begin
      (lambda (_body161771_ _ctx161772_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx161775_
                   (gx#core-expand-head (cons '%%begin-module _body161771_)))
                  (_e161776161783_ _stx161775_)
                  (_E161778161787_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx161775_)))
                  (_E161777161801_
                   (lambda ()
                     (if (gx#stx-pair? _e161776161783_)
                         (let ((_e161779161791_ (gx#syntax-e _e161776161783_)))
                           (let ((_hd161780161794_ (##car _e161779161791_))
                                 (_tl161781161796_ (##cdr _e161779161791_)))
                             (if (and (gx#identifier? _hd161780161794_)
                                      (gx#core-identifier=?
                                       _hd161780161794_
                                       '%#begin-module))
                                 (let ((_body161799_ _tl161781161796_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx161775_)
                                           _body161799_
                                           (gx#core-expand-module-body
                                            _body161799_))
                                       (_E161778161787_)))
                                 (_E161778161787_))))
                         (_E161778161787_)))))
             (_E161777161801_)))
         gx#current-expander-context
         _ctx161772_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body161567_)
        (letrec ((_expand-special161569_
                  (lambda (_hd161698_ _K161699_ _rest161700_ _r161701_)
                    (let* ((_e161702161719_ _hd161698_)
                           (_E161714161723_
                            (lambda ()
                              (_K161699_
                               _rest161700_
                               (cons (gx#core-expand-top _hd161698_)
                                     _r161701_))))
                           (_E161704161735_
                            (lambda ()
                              (if (gx#stx-pair? _e161702161719_)
                                  (let ((_e161715161727_
                                         (gx#syntax-e _e161702161719_)))
                                    (let ((_hd161716161730_
                                           (##car _e161715161727_))
                                          (_tl161717161732_
                                           (##cdr _e161715161727_)))
                                      (if (and (gx#identifier?
                                                _hd161716161730_)
                                               (gx#core-identifier=?
                                                _hd161716161730_
                                                '%#export))
                                          (if '#t
                                              (_K161699_
                                               _rest161700_
                                               (cons _hd161698_ _r161701_))
                                              (_E161714161723_))
                                          (_E161714161723_))))
                                  (_E161714161723_))))
                           (_E161703161767_
                            (lambda ()
                              (if (gx#stx-pair? _e161702161719_)
                                  (let ((_e161705161739_
                                         (gx#syntax-e _e161702161719_)))
                                    (let ((_hd161706161742_
                                           (##car _e161705161739_))
                                          (_tl161707161744_
                                           (##cdr _e161705161739_)))
                                      (if (and (gx#identifier?
                                                _hd161706161742_)
                                               (gx#core-identifier=?
                                                _hd161706161742_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl161707161744_)
                                              (let ((_e161708161747_
                                                     (gx#syntax-e
                                                      _tl161707161744_)))
                                                (let ((_hd161709161750_
                                                       (##car _e161708161747_))
                                                      (_tl161710161752_
                                                       (##cdr _e161708161747_)))
                                                  (let ((_hd-bind161755_
                                                         _hd161709161750_))
                                                    (if (gx#stx-pair?
                                                         _tl161710161752_)
                                                        (let ((_e161711161757_
                                                               (gx#syntax-e
                                                                _tl161710161752_)))
                                                          (let ((_hd161712161760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e161711161757_))
                        (_tl161713161762_ (##cdr _e161711161757_)))
                    (let ((_expr161765_ _hd161712161760_))
                      (if (gx#stx-null? _tl161713161762_)
                          (if (gx#core-bind-values? _hd-bind161755_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind161755_)
                                (_K161699_
                                 _rest161700_
                                 (cons _hd161698_ _r161701_)))
                              (_E161704161735_))
                          (_E161704161735_)))))
                (_E161704161735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161704161735_))
                                          (_E161704161735_))))
                                  (_E161704161735_)))))
                      (_E161703161767_))))
                 (_expand-body161570_
                  (lambda (_rbody161572_)
                    (let _lp161574_ ((_rest161576_ _rbody161572_)
                                     (_body161577_ '()))
                      (let* ((_rest161578161586_ _rest161576_)
                             (_else161580161594_ (lambda () _body161577_))
                             (_K161582161686_
                              (lambda (_rest161597_ _hd161598_)
                                (let* ((_e161599161620_ _hd161598_)
                                       (_E161615161624_
                                        (lambda ()
                                          (_lp161574_
                                           _rest161597_
                                           (cons (gx#core-expand-expression
                                                  _hd161598_)
                                                 _body161577_))))
                                       (_E161611161638_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161599161620_)
                                              (let ((_e161616161628_
                                                     (gx#syntax-e
                                                      _e161599161620_)))
                                                (let ((_hd161617161631_
                                                       (##car _e161616161628_))
                                                      (_tl161618161633_
                                                       (##cdr _e161616161628_)))
                                                  (let ((_form161636_
                                                         _hd161617161631_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form161636_
                                                         gx#special-form-binding?)
                                                        (_lp161574_
                                                         _rest161597_
                                                         (cons _hd161598_
                                                               _body161577_))
                                                        (_E161615161624_)))))
                                              (_E161615161624_))))
                                       (_E161601161650_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161599161620_)
                                              (let ((_e161612161642_
                                                     (gx#syntax-e
                                                      _e161599161620_)))
                                                (let ((_hd161613161645_
                                                       (##car _e161612161642_))
                                                      (_tl161614161647_
                                                       (##cdr _e161612161642_)))
                                                  (if (and (gx#identifier?
                                                            _hd161613161645_)
                                                           (gx#core-identifier=?
                                                            _hd161613161645_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp161574_
                                                           _rest161597_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd161598_)
                         _body161577_))
                  (_E161611161638_))
              (_E161611161638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161611161638_))))
                                       (_E161600161682_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161599161620_)
                                              (let ((_e161602161654_
                                                     (gx#syntax-e
                                                      _e161599161620_)))
                                                (let ((_hd161603161657_
                                                       (##car _e161602161654_))
                                                      (_tl161604161659_
                                                       (##cdr _e161602161654_)))
                                                  (if (and (gx#identifier?
                                                            _hd161603161657_)
                                                           (gx#core-identifier=?
                                                            _hd161603161657_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl161604161659_)
                                                          (let ((_e161605161662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl161604161659_)))
                    (let ((_hd161606161665_ (##car _e161605161662_))
                          (_tl161607161667_ (##cdr _e161605161662_)))
                      (let ((_hd-bind161670_ _hd161606161665_))
                        (if (gx#stx-pair? _tl161607161667_)
                            (let ((_e161608161672_
                                   (gx#syntax-e _tl161607161667_)))
                              (let ((_hd161609161675_ (##car _e161608161672_))
                                    (_tl161610161677_ (##cdr _e161608161672_)))
                                (let ((_expr161680_ _hd161609161675_))
                                  (if (gx#stx-null? _tl161610161677_)
                                      (if '#t
                                          (_lp161574_
                                           _rest161597_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind161670_)
                                                   (gx#core-expand-expression
                                                    _expr161680_))
                                                  (gx#stx-source _hd161598_))
                                                 _body161577_))
                                          (_E161601161650_))
                                      (_E161601161650_)))))
                            (_E161601161650_)))))
                  (_E161601161650_))
              (_E161601161650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161601161650_)))))
                                  (_E161600161682_)))))
                        (if (##pair? _rest161578161586_)
                            (let ((_hd161583161689_ (##car _rest161578161586_))
                                  (_tl161584161691_
                                   (##cdr _rest161578161586_)))
                              (let* ((_hd161694_ _hd161583161689_)
                                     (_rest161696_ _tl161584161691_))
                                (_K161582161686_ _rest161696_ _hd161694_)))
                            (_else161580161594_)))))))
          (_expand-body161570_
           (gx#core-expand-block__%
            (cons '%#begin-module _body161567_)
            _expand-special161569_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx161410_
               _expanded?161411_
               _method161412_
               _current-phi161413_
               _expand1161414_)
        (letrec ((_K161416_
                  (lambda (_rest161534_ _r161535_)
                    (let* ((_e161536161543_ _rest161534_)
                           (_E161538161547_ (lambda () _r161535_))
                           (_E161537161563_
                            (lambda ()
                              (if (gx#stx-pair? _e161536161543_)
                                  (let ((_e161539161551_
                                         (gx#syntax-e _e161536161543_)))
                                    (let ((_hd161540161554_
                                           (##car _e161539161551_))
                                          (_tl161541161556_
                                           (##cdr _e161539161551_)))
                                      (let* ((_hd161559_ _hd161540161554_)
                                             (_rest161561_ _tl161541161556_))
                                        (if '#t
                                            (_step161417_
                                             _hd161559_
                                             _rest161561_
                                             _r161535_)
                                            (_E161538161547_)))))
                                  (_E161538161547_)))))
                      (_E161537161563_))))
                 (_step161417_
                  (lambda (_hd161448_ _rest161449_ _r161450_)
                    (let* ((_e161451161469_ _hd161448_)
                           (_E161464161473_
                            (lambda ()
                              (if (_expanded?161411_ (gx#stx-e _hd161448_))
                                  (_K161416_
                                   _rest161449_
                                   (cons (gx#stx-e _hd161448_) _r161450_))
                                  (_expand1161414_
                                   _hd161448_
                                   _K161416_
                                   _rest161449_
                                   _r161450_))))
                           (_E161460161489_
                            (lambda ()
                              (if (gx#stx-pair? _e161451161469_)
                                  (let ((_e161465161477_
                                         (gx#syntax-e _e161451161469_)))
                                    (let ((_hd161466161480_
                                           (##car _e161465161477_))
                                          (_tl161467161482_
                                           (##cdr _e161465161477_)))
                                      (let* ((_macro161485_ _hd161466161480_)
                                             (_body161487_ _tl161467161482_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro161485_
                                             gx#syntax-binding?)
                                            (_K161416_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro161485_)
                                                    _hd161448_
                                                    _method161412_)
                                                   _rest161449_)
                                             _r161450_)
                                            (_E161464161473_)))))
                                  (_E161464161473_))))
                           (_E161453161503_
                            (lambda ()
                              (if (gx#stx-pair? _e161451161469_)
                                  (let ((_e161461161493_
                                         (gx#syntax-e _e161451161469_)))
                                    (let ((_hd161462161496_
                                           (##car _e161461161493_))
                                          (_tl161463161498_
                                           (##cdr _e161461161493_)))
                                      (if (eq? (gx#stx-e _hd161462161496_)
                                               'begin:)
                                          (let ((_body161501_
                                                 _tl161463161498_))
                                            (if '#t
                                                (_K161416_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest161449_
                                                  _body161501_)
                                                 _r161450_)
                                                (_E161460161489_)))
                                          (_E161460161489_))))
                                  (_E161460161489_))))
                           (_E161452161530_
                            (lambda ()
                              (if (gx#stx-pair? _e161451161469_)
                                  (let ((_e161454161507_
                                         (gx#syntax-e _e161451161469_)))
                                    (let ((_hd161455161510_
                                           (##car _e161454161507_))
                                          (_tl161456161512_
                                           (##cdr _e161454161507_)))
                                      (if (eq? (gx#stx-e _hd161455161510_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl161456161512_)
                                              (let ((_e161457161515_
                                                     (gx#syntax-e
                                                      _tl161456161512_)))
                                                (let ((_hd161458161518_
                                                       (##car _e161457161515_))
                                                      (_tl161459161520_
                                                       (##cdr _e161457161515_)))
                                                  (let* ((_dphi161523_
                                                          _hd161458161518_)
                                                         (_body161525_
                                                          _tl161459161520_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi161523_)
                                                        (let ((_rbody161528_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K161416_ _body161525_ '()))
                        _current-phi161413_
                        (fx+ (gx#stx-e _dphi161523_) (_current-phi161413_)))))
                  (_K161416_
                   _rest161449_
                   (foldr1 cons _r161450_ _rbody161528_)))
                (_E161453161503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161453161503_))
                                          (_E161453161503_))))
                                  (_E161453161503_)))))
                      (_E161452161530_)))))
          (let* ((_e161418161425_ _stx161410_)
                 (_E161420161429_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e161418161425_)))
                 (_E161419161444_
                  (lambda ()
                    (if (gx#stx-pair? _e161418161425_)
                        (let ((_e161421161433_ (gx#syntax-e _e161418161425_)))
                          (let ((_hd161422161436_ (##car _e161421161433_))
                                (_tl161423161438_ (##cdr _e161421161433_)))
                            (let ((_body161441_ _tl161423161438_))
                              (if '#t
                                  (if (_current-phi161413_)
                                      (_K161416_ _body161441_ '())
                                      (call-with-parameters
                                       (lambda () (_K161416_ _body161441_ '()))
                                       _current-phi161413_
                                       (gx#current-expander-phi)))
                                  (_E161420161429_)))))
                        (_E161420161429_)))))
            (_E161419161444_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx161077_ _internal-expand?161078_)
        (letrec ((_expand1161080_
                  (lambda (_hd161390_ _K161391_ _rest161392_ _r161393_)
                    (if (gx#core-bound-module? _hd161390_)
                        (_import1161081_
                         (gx#syntax-local-e__0 _hd161390_)
                         _K161391_
                         _rest161392_
                         _r161393_)
                        (if (gx#core-library-module-path? _hd161390_)
                            (_import1161081_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd161390_))
                             _K161391_
                             _rest161392_
                             _r161393_)
                            (if (gx#core-library-relative-module-path?
                                 _hd161390_)
                                (_import1161081_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd161390_))
                                 _K161391_
                                 _rest161392_
                                 _r161393_)
                                (let ((_e161395_ (gx#stx-e _hd161390_)))
                                  (if (pair? _e161395_)
                                      (let ((_$e161397_
                                             (gx#stx-e (car _e161395_))))
                                        (if (eq? 'spec: _$e161397_)
                                            (_import-spec161084_
                                             _hd161390_
                                             _K161391_
                                             _rest161392_
                                             _r161393_)
                                            (if (eq? 'in: _$e161397_)
                                                (_import-submodule161082_
                                                 _hd161390_
                                                 _K161391_
                                                 _rest161392_
                                                 _r161393_)
                                                (if (eq? 'runtime: _$e161397_)
                                                    (_import-runtime161083_
                                                     _hd161390_
                                                     _K161391_
                                                     _rest161392_
                                                     _r161393_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx161077_
                                                     _hd161390_)))))
                                      (if (string? _e161395_)
                                          (_import1161081_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd161390_
                                             (gx#stx-source _stx161077_)))
                                           _K161391_
                                           _rest161392_
                                           _r161393_)
                                          (if (##structure-instance-of?
                                               _e161395_
                                               'gx#module-context::t)
                                              (_K161391_
                                               _rest161392_
                                               (cons _e161395_ _r161393_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx161077_
                                               _hd161390_))))))))))
                 (_import1161081_
                  (lambda (_ctx161379_ _K161380_ _rest161381_ _r161382_)
                    (let ((_dphi161384_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K161380_
                       _rest161381_
                       (cons (##structure
                              gx#import-set::t
                              _ctx161379_
                              _dphi161384_
                              (map (lambda (_g161385161387_)
                                     (gx#core-module-export->import__%
                                      _g161385161387_
                                      '#f
                                      _dphi161384_))
                                   (##unchecked-structure-ref
                                    _ctx161379_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r161382_)))))
                 (_import-submodule161082_
                  (lambda (_hd161346_ _K161347_ _rest161348_ _r161349_)
                    (let* ((_e161350161357_ _hd161346_)
                           (_E161352161361_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161350161357_)))
                           (_E161351161375_
                            (lambda ()
                              (if (gx#stx-pair? _e161350161357_)
                                  (let ((_e161353161365_
                                         (gx#syntax-e _e161350161357_)))
                                    (let ((_hd161354161368_
                                           (##car _e161353161365_))
                                          (_tl161355161370_
                                           (##cdr _e161353161365_)))
                                      (let ((_spath161373_ _tl161355161370_))
                                        (if '#t
                                            (_import1161081_
                                             (_import-spec-source161085_
                                              _spath161373_)
                                             _K161347_
                                             _rest161348_
                                             _r161349_)
                                            (_E161352161361_)))))
                                  (_E161352161361_)))))
                      (_E161351161375_))))
                 (_import-runtime161083_
                  (lambda (_hd161313_ _K161314_ _rest161315_ _r161316_)
                    (let* ((_e161317161324_ _hd161313_)
                           (_E161319161328_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161317161324_)))
                           (_E161318161342_
                            (lambda ()
                              (if (gx#stx-pair? _e161317161324_)
                                  (let ((_e161320161332_
                                         (gx#syntax-e _e161317161324_)))
                                    (let ((_hd161321161335_
                                           (##car _e161320161332_))
                                          (_tl161322161337_
                                           (##cdr _e161320161332_)))
                                      (let ((_spath161340_ _tl161322161337_))
                                        (if '#t
                                            (_K161314_
                                             _rest161315_
                                             (cons (_import-spec-source161085_
                                                    _spath161340_)
                                                   _r161316_))
                                            (_E161319161328_)))))
                                  (_E161319161328_)))))
                      (_E161318161342_))))
                 (_import-spec161084_
                  (lambda (_hd161152_ _K161153_ _rest161154_ _r161155_)
                    (let* ((_e161156161173_ _hd161152_)
                           (_E161165161177_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161156161173_)))
                           (_E161158161287_
                            (lambda ()
                              (if (gx#stx-pair? _e161156161173_)
                                  (let ((_e161166161181_
                                         (gx#syntax-e _e161156161173_)))
                                    (let ((_hd161167161184_
                                           (##car _e161166161181_))
                                          (_tl161168161186_
                                           (##cdr _e161166161181_)))
                                      (if (gx#stx-pair? _tl161168161186_)
                                          (let ((_e161169161189_
                                                 (gx#syntax-e
                                                  _tl161168161186_)))
                                            (let ((_hd161170161192_
                                                   (##car _e161169161189_))
                                                  (_tl161171161194_
                                                   (##cdr _e161169161189_)))
                                              (let* ((_path161197_
                                                      _hd161170161192_)
                                                     (_specs161199_
                                                      _tl161171161194_))
                                                (if '#t
                                                    (let ((_src-ctx161201_
                                                           (_import-spec-source161085_
                                                            _path161197_))
                                                          (_exports161202_
                                                           (make-table))
                                                          (_specs161203_
                                                           (gx#syntax->list
                                                            _specs161199_)))
                                                      (for-each
                                                       (lambda (_out161205_)
                                                         (table-set!
                                                          _exports161202_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out161205_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out161205_
                         '4
                         gx#module-export::t
                         '#f))
                  _out161205_))
               (##unchecked-structure-ref
                _src-ctx161201_
                '9
                gx#module-context::t
                '#f))
              (_K161153_
               _rest161154_
               (foldl1 (lambda (_spec161207_ _r161208_)
                         (let* ((_e161209161225_ _spec161207_)
                                (_E161211161229_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e161209161225_)))
                                (_E161210161283_
                                 (lambda ()
                                   (if (gx#stx-pair? _e161209161225_)
                                       (let ((_e161212161233_
                                              (gx#syntax-e _e161209161225_)))
                                         (let ((_hd161213161236_
                                                (##car _e161212161233_))
                                               (_tl161214161238_
                                                (##cdr _e161212161233_)))
                                           (let ((_phi161241_
                                                  _hd161213161236_))
                                             (if (gx#stx-pair?
                                                  _tl161214161238_)
                                                 (let ((_e161215161243_
                                                        (gx#syntax-e
                                                         _tl161214161238_)))
                                                   (let ((_hd161216161246_
                                                          (##car _e161215161243_))
                                                         (_tl161217161248_
                                                          (##cdr _e161215161243_)))
                                                     (let ((_name161251_
                                                            _hd161216161246_))
                                                       (if (gx#stx-pair?
                                                            _tl161217161248_)
                                                           (let ((_e161218161253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl161217161248_)))
                     (let ((_hd161219161256_ (##car _e161218161253_))
                           (_tl161220161258_ (##cdr _e161218161253_)))
                       (let ((_src-phi161261_ _hd161219161256_))
                         (if (gx#stx-pair? _tl161220161258_)
                             (let ((_e161221161263_
                                    (gx#syntax-e _tl161220161258_)))
                               (let ((_hd161222161266_ (##car _e161221161263_))
                                     (_tl161223161268_
                                      (##cdr _e161221161263_)))
                                 (let ((_src-name161271_ _hd161222161266_))
                                   (if (gx#stx-null? _tl161223161268_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi161261_)
                                                (gx#identifier?
                                                 _src-name161271_)
                                                (gx#stx-fixnum? _phi161241_)
                                                (gx#identifier? _name161251_))
                                           (let ((_src-phi161273_
                                                  (gx#stx-e _src-phi161261_))
                                                 (_src-name161274_
                                                  (gx#core-identifier-key
                                                   _src-name161271_))
                                                 (_phi161275_
                                                  (gx#stx-e _phi161241_))
                                                 (_name161276_
                                                  (gx#core-identifier-key
                                                   _name161251_)))
                                             (let ((_$e161278_
                                                    (table-ref
                                                     _exports161202_
                                                     (cons _src-phi161273_
                                                           _src-name161274_)
                                                     '#f)))
                                               (if _$e161278_
                                                   ((lambda (_out161281_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out161281_
                                                             _name161276_
                                                             (fx- _phi161275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi161273_))
                    _r161208_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e161278_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx161077_
                                                    _hd161152_))))
                                           (_E161211161229_))
                                       (_E161211161229_)))))
                             (_E161211161229_)))))
                   (_E161211161229_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E161211161229_)))))
                                       (_E161211161229_)))))
                           (_E161210161283_)))
                       _r161155_
                       _specs161203_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E161165161177_)))))
                                          (_E161165161177_))))
                                  (_E161165161177_))))
                           (_E161157161309_
                            (lambda ()
                              (if (gx#stx-pair? _e161156161173_)
                                  (let ((_e161159161291_
                                         (gx#syntax-e _e161156161173_)))
                                    (let ((_hd161160161294_
                                           (##car _e161159161291_))
                                          (_tl161161161296_
                                           (##cdr _e161159161291_)))
                                      (if (gx#stx-pair? _tl161161161296_)
                                          (let ((_e161162161299_
                                                 (gx#syntax-e
                                                  _tl161161161296_)))
                                            (let ((_hd161163161302_
                                                   (##car _e161162161299_))
                                                  (_tl161164161304_
                                                   (##cdr _e161162161299_)))
                                              (let ((_path161307_
                                                     _hd161163161302_))
                                                (if (gx#stx-null?
                                                     _tl161164161304_)
                                                    (if '#t
                                                        (_K161153_
                                                         _rest161154_
                                                         (cons (_import-spec-source161085_
                                                                _path161307_)
                                                               _r161155_))
                                                        (_E161158161287_))
                                                    (_E161158161287_)))))
                                          (_E161158161287_))))
                                  (_E161158161287_)))))
                      (_E161157161309_))))
                 (_import-spec-source161085_
                  (lambda (_spath161150_)
                    (gx#core-import-nested-module _spath161150_ _stx161077_)))
                 (_import!161086_
                  (lambda (_rbody161099_)
                    (letrec* ((_current-ctx161101_
                               (gx#current-expander-context))
                              (_deps161102_ (make-table 'test: eq?))
                              (_bind!161103_
                               (lambda (_hd161148_)
                                 (gx#core-bind-import!__1
                                  _hd161148_
                                  _current-ctx161101_))))
                      (let _lp161105_ ((_rest161107_ _rbody161099_)
                                       (_body161108_ '()))
                        (let* ((_rest161109161117_ _rest161107_)
                               (_else161111161127_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx161101_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx161101_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx161101_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body161108_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx161125_ _g168523_)
                                     (gx#eval-module _ctx161125_))
                                   _deps161102_)
                                  _body161108_))
                               (_K161113161136_
                                (lambda (_rest161130_ _hd161131_)
                                  (if (##structure-direct-instance-of?
                                       _hd161131_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!161103_ _hd161131_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd161131_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd161131_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps161102_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd161131_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd161131_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!161103_
                                             (##unchecked-structure-ref
                                              _hd161131_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd161131_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps161102_
                                                 (##unchecked-structure-ref
                                                  _hd161131_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e161133_
                                                 (##structure-instance-of?
                                                  _hd161131_
                                                  'gx#module-context::t)))
                                            (if _$e161133_
                                                _$e161133_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx161077_
                                                 _hd161131_)))))
                                  (_lp161105_
                                   _rest161130_
                                   (cons _hd161131_ _body161108_)))))
                          (if (##pair? _rest161109161117_)
                              (let ((_hd161114161139_
                                     (##car _rest161109161117_))
                                    (_tl161115161141_
                                     (##cdr _rest161109161117_)))
                                (let* ((_hd161144_ _hd161114161139_)
                                       (_rest161146_ _tl161115161141_))
                                  (_K161113161136_ _rest161146_ _hd161144_)))
                              (_else161111161127_)))))))
                 (_expanded-import?161087_
                  (lambda (_e161091_)
                    (let ((_$e161093_
                           (##structure-direct-instance-of?
                            _e161091_
                            'gx#import-set::t)))
                      (if _$e161093_
                          _$e161093_
                          (let ((_$e161096_
                                 (##structure-direct-instance-of?
                                  _e161091_
                                  'gx#module-import::t)))
                            (if _$e161096_
                                _$e161096_
                                (##structure-instance-of?
                                 _e161091_
                                 'gx#module-context::t))))))))
          (let ((_rbody161089_
                 (gx#core-expand-import/export
                  _stx161077_
                  _expanded-import?161087_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1161080_)))
            (if _internal-expand?161078_
                (reverse _rbody161089_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!161086_ _rbody161089_))
                 (gx#stx-source _stx161077_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx161403_)
        (let ((_internal-expand?161405_ '#f))
          (gx#core-expand-import%__% _stx161403_ _internal-expand?161405_))))
    (define gx#core-expand-import%
      (lambda _g168525_
        (let ((_g168524_ (##length _g168525_)))
          (cond ((##fx= _g168524_ 1)
                 (apply (lambda (_stx161403_)
                          (gx#core-expand-import%__0 _stx161403_))
                        _g168525_))
                ((##fx= _g168524_ 2)
                 (apply (lambda (_stx161407_ _internal-expand?161408_)
                          (gx#core-expand-import%__%
                           _stx161407_
                           _internal-expand?161408_))
                        _g168525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g168525_))))))
    (define gx#core-import-nested-module
      (lambda (_spath161004_ _where161005_)
        (let* ((_e161006161013_ _spath161004_)
               (_E161008161017_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161006161013_)))
               (_E161007161072_
                (lambda ()
                  (if (gx#stx-pair? _e161006161013_)
                      (let ((_e161009161021_ (gx#syntax-e _e161006161013_)))
                        (let ((_hd161010161024_ (##car _e161009161021_))
                              (_tl161011161026_ (##cdr _e161009161021_)))
                          (let* ((_origin161029_ _hd161010161024_)
                                 (_sub161031_ _tl161011161026_))
                            (if '#t
                                (let ((_origin-ctx161033_
                                       (if (gx#stx-false? _origin161029_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin161029_))))
                                  (let _lp161035_ ((_rest161037_ _sub161031_)
                                                   (_ctx161038_
                                                    _origin-ctx161033_))
                                    (let* ((_e161039161046_ _rest161037_)
                                           (_E161041161050_
                                            (lambda () _ctx161038_))
                                           (_E161040161068_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e161039161046_)
                                                  (let ((_e161042161054_
                                                         (gx#syntax-e
                                                          _e161039161046_)))
                                                    (let ((_hd161043161057_
                                                           (##car _e161042161054_))
                                                          (_tl161044161059_
                                                           (##cdr _e161042161054_)))
                                                      (let* ((_id161062_
                                                              _hd161043161057_)
                                                             (_rest161064_
                                                              _tl161044161059_))
                                                        (if '#t
                                                            (let ((_bind161066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id161062_
                            '0
                            _ctx161038_)))
                      (if (and (##structure-direct-instance-of?
                                _bind161066_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind161066_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where161005_
                           _spath161004_
                           _id161062_))
                      (_lp161035_
                       _rest161064_
                       (##unchecked-structure-ref
                        _bind161066_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E161041161050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E161041161050_)))))
                                      (_E161040161068_))))
                                (_E161008161017_)))))
                      (_E161008161017_)))))
          (_E161007161072_))))
    (define gx#core-expand-import-source
      (lambda (_hd161002_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd161002_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx160510_ _internal-expand?160511_)
        (letrec* ((_make-export__168454168455_
                   (lambda (_bind160950_ _phi160951_ _ctx160952_ _name160953_)
                     (let* ((_key160955_
                             (##unchecked-structure-ref
                              _bind160950_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key160957_
                             (if _name160953_
                                 (gx#core-identifier-key _name160953_)
                                 _key160955_)))
                       (##structure
                        gx#module-export::t
                        _ctx160952_
                        _key160955_
                        _phi160951_
                        _export-key160957_
                        (let ((_$e160960_
                               (##structure-instance-of?
                                _bind160950_
                                'gx#extern-binding::t)))
                          (if _$e160960_
                              _$e160960_
                              (##structure-direct-instance-of?
                               _bind160950_
                               'gx#import-binding::t)))))))
                  (_make-export__0__168456168459_
                   (lambda (_bind160966_)
                     (let* ((_phi160968_ (gx#current-export-expander-phi))
                            (_ctx160970_ (gx#current-expander-context))
                            (_name160972_ '#f))
                       (_make-export__168454168455_
                        _bind160966_
                        _phi160968_
                        _ctx160970_
                        _name160972_))))
                  (_make-export__1__168457168460_
                   (lambda (_bind160974_ _phi160975_)
                     (let* ((_ctx160977_ (gx#current-expander-context))
                            (_name160979_ '#f))
                       (_make-export__168454168455_
                        _bind160974_
                        _phi160975_
                        _ctx160977_
                        _name160979_))))
                  (_make-export__2__168458168461_
                   (lambda (_bind160981_ _phi160982_ _ctx160983_)
                     (let ((_name160985_ '#f))
                       (_make-export__168454168455_
                        _bind160981_
                        _phi160982_
                        _ctx160983_
                        _name160985_))))
                  (_make-export160513_
                   (lambda _g168527_
                     (let ((_g168526_ (##length _g168527_)))
                       (cond ((##fx= _g168526_ 1)
                              (apply (lambda (_bind160966_)
                                       (_make-export__0__168456168459_
                                        _bind160966_))
                                     _g168527_))
                             ((##fx= _g168526_ 2)
                              (apply (lambda (_bind160974_ _phi160975_)
                                       (_make-export__1__168457168460_
                                        _bind160974_
                                        _phi160975_))
                                     _g168527_))
                             ((##fx= _g168526_ 3)
                              (apply (lambda (_bind160981_
                                              _phi160982_
                                              _ctx160983_)
                                       (_make-export__2__168458168461_
                                        _bind160981_
                                        _phi160982_
                                        _ctx160983_))
                                     _g168527_))
                             ((##fx= _g168526_ 4)
                              (apply (lambda (_bind160987_
                                              _phi160988_
                                              _ctx160989_
                                              _name160990_)
                                       (_make-export__168454168455_
                                        _bind160987_
                                        _phi160988_
                                        _ctx160989_
                                        _name160990_))
                                     _g168527_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g168527_))))))
                  (_expand1160514_
                   (lambda (_hd160663_ _K160664_ _rest160665_ _r160666_)
                     (let* ((_e160667160699_ _hd160663_)
                            (_E160694160703_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx160510_
                                _hd160663_)))
                            (_E160684160782_
                             (lambda ()
                               (if (gx#stx-pair? _e160667160699_)
                                   (let ((_e160695160707_
                                          (gx#syntax-e _e160667160699_)))
                                     (let ((_hd160696160710_
                                            (##car _e160695160707_))
                                           (_tl160697160712_
                                            (##cdr _e160695160707_)))
                                       (if (eq? (gx#stx-e _hd160696160710_)
                                                'import:)
                                           (let ((_in160715_ _tl160697160712_))
                                             (if (gx#stx-list? _in160715_)
                                                 (let _lp160717_ ((_in-rest160719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in160715_)
                          (_r160720_ _r160666_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e160721160728_
                                                           _in-rest160719_)
                                                          (_E160723160732_
                                                           (lambda ()
                                                             (_K160664_
                                                              _rest160665_
                                                              _r160720_)))
                                                          (_E160722160778_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e160721160728_)
                         (let ((_e160724160736_ (gx#syntax-e _e160721160728_)))
                           (let ((_hd160725160739_ (##car _e160724160736_))
                                 (_tl160726160741_ (##cdr _e160724160736_)))
                             (let* ((_hd160744_ _hd160725160739_)
                                    (_in-rest160746_ _tl160726160741_))
                               (if '#t
                                   (let ((_src160776_
                                          (if (gx#core-bound-module?
                                               _hd160744_)
                                              (gx#syntax-local-e__0 _hd160744_)
                                              (if (gx#core-library-module-path?
                                                   _hd160744_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd160744_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd160744_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd160744_))
                                                      (if (gx#stx-string?
                                                           _hd160744_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd160744_
                                                            (gx#stx-source
                                                             _stx160510_)))
                                                          (let* ((_e160747160754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160744_)
                         (_E160749160758_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx160510_
                             _hd160744_)))
                         (_E160748160772_
                          (lambda ()
                            (if (gx#stx-pair? _e160747160754_)
                                (let ((_e160750160762_
                                       (gx#syntax-e _e160747160754_)))
                                  (let ((_hd160751160765_
                                         (##car _e160750160762_))
                                        (_tl160752160767_
                                         (##cdr _e160750160762_)))
                                    (if (eq? (gx#stx-e _hd160751160765_) 'in:)
                                        (let ((_spath160770_ _tl160752160767_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath160770_
                                               _stx160510_)
                                              (_E160749160758_)))
                                        (_E160749160758_))))
                                (_E160749160758_)))))
                    (_E160748160772_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp160717_
                                      _in-rest160746_
                                      (_export-imports160515_
                                       _src160776_
                                       _r160720_)))
                                   (_E160723160732_)))))
                         (_E160723160732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E160722160778_)))
                                                 (_E160694160703_)))
                                           (_E160694160703_))))
                                   (_E160694160703_))))
                            (_E160671160821_
                             (lambda ()
                               (if (gx#stx-pair? _e160667160699_)
                                   (let ((_e160685160786_
                                          (gx#syntax-e _e160667160699_)))
                                     (let ((_hd160686160789_
                                            (##car _e160685160786_))
                                           (_tl160687160791_
                                            (##cdr _e160685160786_)))
                                       (if (eq? (gx#stx-e _hd160686160789_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl160687160791_)
                                               (let ((_e160688160794_
                                                      (gx#syntax-e
                                                       _tl160687160791_)))
                                                 (let ((_hd160689160797_
                                                        (##car _e160688160794_))
                                                       (_tl160690160799_
                                                        (##cdr _e160688160794_)))
                                                   (let ((_id160802_
                                                          _hd160689160797_))
                                                     (if (gx#stx-pair?
                                                          _tl160690160799_)
                                                         (let ((_e160691160804_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl160690160799_)))
                   (let ((_hd160692160807_ (##car _e160691160804_))
                         (_tl160693160809_ (##cdr _e160691160804_)))
                     (let ((_name160812_ _hd160692160807_))
                       (if (gx#stx-null? _tl160693160809_)
                           (if '#t
                               (let* ((_phi160814_
                                       (gx#current-export-expander-phi))
                                      (_$e160816_
                                       (gx#core-resolve-identifier__1
                                        _id160802_
                                        _phi160814_)))
                                 (if _$e160816_
                                     ((lambda (_bind160819_)
                                        (_K160664_
                                         _rest160665_
                                         (cons (_make-export__168454168455_
                                                _bind160819_
                                                _phi160814_
                                                (gx#current-expander-context)
                                                _name160812_)
                                               _r160666_)))
                                      _$e160816_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx160510_
                                      _hd160663_
                                      _id160802_)))
                               (_E160684160782_))
                           (_E160684160782_)))))
                 (_E160684160782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E160684160782_))
                                           (_E160684160782_))))
                                   (_E160684160782_))))
                            (_E160670160870_
                             (lambda ()
                               (if (gx#stx-pair? _e160667160699_)
                                   (let ((_e160672160825_
                                          (gx#syntax-e _e160667160699_)))
                                     (let ((_hd160673160828_
                                            (##car _e160672160825_))
                                           (_tl160674160830_
                                            (##cdr _e160672160825_)))
                                       (if (eq? (gx#stx-e _hd160673160828_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl160674160830_)
                                               (let ((_e160675160833_
                                                      (gx#syntax-e
                                                       _tl160674160830_)))
                                                 (let ((_hd160676160836_
                                                        (##car _e160675160833_))
                                                       (_tl160677160838_
                                                        (##cdr _e160675160833_)))
                                                   (let ((_phi160841_
                                                          _hd160676160836_))
                                                     (if (gx#stx-pair?
                                                          _tl160677160838_)
                                                         (let ((_e160678160843_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl160677160838_)))
                   (let ((_hd160679160846_ (##car _e160678160843_))
                         (_tl160680160848_ (##cdr _e160678160843_)))
                     (let ((_id160851_ _hd160679160846_))
                       (if (gx#stx-pair? _tl160680160848_)
                           (let ((_e160681160853_
                                  (gx#syntax-e _tl160680160848_)))
                             (let ((_hd160682160856_ (##car _e160681160853_))
                                   (_tl160683160858_ (##cdr _e160681160853_)))
                               (let ((_name160861_ _hd160682160856_))
                                 (if (gx#stx-null? _tl160683160858_)
                                     (if (and (gx#stx-fixnum? _phi160841_)
                                              (gx#identifier? _id160851_)
                                              (gx#identifier? _name160861_))
                                         (let* ((_phi160863_
                                                 (gx#stx-e _phi160841_))
                                                (_$e160865_
                                                 (gx#core-resolve-identifier__1
                                                  _id160851_
                                                  _phi160863_)))
                                           (if _$e160865_
                                               ((lambda (_bind160868_)
                                                  (_K160664_
                                                   _rest160665_
                                                   (cons (_make-export__168454168455_
                                                          _bind160868_
                                                          _phi160863_
                                                          (gx#current-expander-context)
                                                          _name160861_)
                                                         _r160666_)))
                                                _$e160865_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx160510_
                                                _hd160663_
                                                _id160851_)))
                                         (_E160671160821_))
                                     (_E160671160821_)))))
                           (_E160671160821_)))))
                 (_E160671160821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E160671160821_))
                                           (_E160671160821_))))
                                   (_E160671160821_))))
                            (_E160669160881_
                             (lambda ()
                               (let ((_id160874_ _e160667160699_))
                                 (if (gx#identifier? _id160874_)
                                     (let ((_$e160876_
                                            (gx#core-resolve-identifier__1
                                             _id160874_
                                             (gx#current-export-expander-phi))))
                                       (if _$e160876_
                                           ((lambda (_bind160879_)
                                              (_K160664_
                                               _rest160665_
                                               (cons (_make-export__0__168456168459_
                                                      _bind160879_)
                                                     _r160666_)))
                                            _$e160876_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx160510_
                                            _hd160663_)))
                                     (_E160670160870_)))))
                            (_E160668160945_
                             (lambda ()
                               (if (eq? (gx#stx-e _e160667160699_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx160885_
                                               (gx#current-expander-context))
                                              (_current-phi160887_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx160889_
                                               (gx#core-context-shift
                                                _current-ctx160885_
                                                _current-phi160887_))
                                              (_phi-bind160891_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx160889_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp160894_ ((_bind-rest160896_
                                                           _phi-bind160891_)
                                                          (_set160897_ '()))
                                           (let* ((_bind-rest160898160908_
                                                   _bind-rest160896_)
                                                  (_else160900160916_
                                                   (lambda ()
                                                     (_K160664_
                                                      _rest160665_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi160887_
                                                             _set160897_)
                                                            _r160666_))))
                                                  (_K160902160926_
                                                   (lambda (_bind-rest160919_
                                                            _bind160920_
                                                            _key160921_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind160920_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind160920_))
                                                         (_lp160894_
                                                          _bind-rest160919_
                                                          _set160897_)
                                                         (_lp160894_
                                                          _bind-rest160919_
                                                          (cons (_make-export__2__168458168461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind160920_
                         _current-phi160887_
                         _current-ctx160885_)
                        _set160897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest160898160908_)
                                                 (let ((_hd160903160929_
                                                        (##car _bind-rest160898160908_))
                                                       (_tl160904160931_
                                                        (##cdr _bind-rest160898160908_)))
                                                   (if (##pair? _hd160903160929_)
                                                       (let ((_hd160905160934_
                                                              (##car _hd160903160929_))
                                                             (_tl160906160936_
                                                              (##cdr _hd160903160929_)))
                                                         (let* ((_key160939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd160905160934_)
                        (_bind160941_ _tl160906160936_)
                        (_bind-rest160943_ _tl160904160931_))
                   (_K160902160926_
                    _bind-rest160943_
                    _bind160941_
                    _key160939_)))
               (_else160900160916_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else160900160916_)))))
                                       (_E160669160881_))
                                   (_E160669160881_)))))
                       (_E160668160945_))))
                  (_export-imports160515_
                   (lambda (_src160539_ _r160540_)
                     (letrec* ((_current-ctx160542_
                                (gx#current-expander-context))
                               (_current-phi160543_
                                (gx#current-export-expander-phi))
                               (_import->export160544_
                                (lambda (_in160625_)
                                  (let* ((_in160626160634_ _in160625_)
                                         (_E160628160638_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in160626160634_)))
                                         (_K160629160645_
                                          (lambda (_phi160641_
                                                   _key160642_
                                                   _out160643_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx160542_
                                             _key160642_
                                             _phi160641_
                                             _key160642_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in160626160634_
                                         'gx#module-import::t)
                                        (let* ((_e160630160648_
                                                (##unchecked-structure-ref
                                                 _in160626160634_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out160651_ _e160630160648_)
                                               (_e160631160653_
                                                (##unchecked-structure-ref
                                                 _in160626160634_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key160656_ _e160631160653_)
                                               (_e160632160658_
                                                (##unchecked-structure-ref
                                                 _in160626160634_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi160661_ _e160632160658_))
                                          (_K160629160645_
                                           _phi160661_
                                           _key160656_
                                           _out160651_))
                                        (_E160628160638_)))))
                               (_fold-e160545_
                                (lambda (_in160547_ _r160548_)
                                  (let* ((_in160549160563_ _in160547_)
                                         (_else160552160571_
                                          (lambda () _r160548_)))
                                    (let ((_K160558160607_
                                           (lambda (_phi160603_
                                                    _key160604_
                                                    _out160605_)
                                             (if (and (fx= _phi160603_
                                                           _current-phi160543_)
                                                      (eq? _src160539_
                                                           (##unchecked-structure-ref
                                                            _out160605_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export160544_
                                                        _in160547_)
                                                       _r160548_)
                                                 _r160548_)))
                                          (_K160554160582_
                                           (lambda (_imports160575_
                                                    _phi160576_
                                                    _ctx160577_)
                                             (if (and (fx= _phi160576_
                                                           _current-phi160543_)
                                                      (eq? _src160539_
                                                           _ctx160577_))
                                                 (foldl1 (lambda (_in160579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r160580_)
                   (cons (_import->export160544_ _in160579_) _r160580_))
                 _r160548_
                 _imports160575_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r160548_))))
                                      (let ((_try-match160551160600_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in160549160563_
                                                    'gx#import-set::t)
                                                   (let* ((_e160555160585_
                                                           (##unchecked-structure-ref
                                                            _in160549160563_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e160556160590_
                                                           (##unchecked-structure-ref
                                                            _in160549160563_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e160557160595_
                                                           (##unchecked-structure-ref
                                                            _in160549160563_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx160588_
                                                            _e160555160585_)
                                                           (_phi160593_
                                                            _e160556160590_)
                                                           (_imports160598_
                                                            _e160557160595_))
                                                       (_K160554160582_
                                                        _imports160598_
                                                        _phi160593_
                                                        _ctx160588_)))
                                                   (_else160552160571_)))))
                                        (if (##structure-direct-instance-of?
                                             _in160549160563_
                                             'gx#module-import::t)
                                            (let* ((_e160559160610_
                                                    (##unchecked-structure-ref
                                                     _in160549160563_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e160560160615_
                                                    (##unchecked-structure-ref
                                                     _in160549160563_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e160561160620_
                                                    (##unchecked-structure-ref
                                                     _in160549160563_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out160613_
                                                     _e160559160610_)
                                                    (_key160618_
                                                     _e160560160615_)
                                                    (_phi160623_
                                                     _e160561160620_))
                                                (_K160558160607_
                                                 _phi160623_
                                                 _key160618_
                                                 _out160613_)))
                                            (_try-match160551160600_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src160539_
                              _current-phi160543_
                              (foldl1 _fold-e160545_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx160542_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r160540_))))
                  (_export!160516_
                   (lambda (_rbody160529_)
                     (letrec* ((_current-ctx160531_
                                (gx#current-expander-context))
                               (_fold-e160532_
                                (lambda (_out160536_ _r160537_)
                                  (if (##structure-direct-instance-of?
                                       _out160536_
                                       'gx#module-export::t)
                                      (cons _out160536_ _r160537_)
                                      (if (##structure-direct-instance-of?
                                           _out160536_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r160537_
                                                  (##unchecked-structure-ref
                                                   _out160536_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r160537_)))))
                       (let ((_body160534_ (reverse _rbody160529_)))
                         (##unchecked-structure-set!
                          _current-ctx160531_
                          (foldl1 _fold-e160532_
                                  (##unchecked-structure-ref
                                   _current-ctx160531_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body160534_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body160534_))))
                  (_expanded-export?160517_
                   (lambda (_e160524_)
                     (let ((_$e160526_
                            (##structure-direct-instance-of?
                             _e160524_
                             'gx#module-export::t)))
                       (if _$e160526_
                           _$e160526_
                           (##structure-direct-instance-of?
                            _e160524_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?160511_)
              (let ((_rbody160522_
                     (gx#core-expand-import/export
                      _stx160510_
                      _expanded-export?160517_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1160514_)))
                (if _internal-expand?160511_
                    (reverse _rbody160522_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!160516_ _rbody160522_))
                     (gx#stx-source _stx160510_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx160510_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx160510_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx160995_)
        (let ((_internal-expand?160997_ '#f))
          (gx#core-expand-export%__% _stx160995_ _internal-expand?160997_))))
    (define gx#core-expand-export%
      (lambda _g168529_
        (let ((_g168528_ (##length _g168529_)))
          (cond ((##fx= _g168528_ 1)
                 (apply (lambda (_stx160995_)
                          (gx#core-expand-export%__0 _stx160995_))
                        _g168529_))
                ((##fx= _g168528_ 2)
                 (apply (lambda (_stx160999_ _internal-expand?161000_)
                          (gx#core-expand-export%__%
                           _stx160999_
                           _internal-expand?161000_))
                        _g168529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g168529_))))))
    (define gx#core-expand-export-source
      (lambda (_hd160507_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd160507_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx160477_)
        (let* ((_e160478160485_ _stx160477_)
               (_E160480160489_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160478160485_)))
               (_E160479160503_
                (lambda ()
                  (if (gx#stx-pair? _e160478160485_)
                      (let ((_e160481160493_ (gx#syntax-e _e160478160485_)))
                        (let ((_hd160482160496_ (##car _e160481160493_))
                              (_tl160483160498_ (##cdr _e160481160493_)))
                          (let ((_body160501_ _tl160483160498_))
                            (if (gx#identifier-list? _body160501_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body160501_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body160501_))
                                   (gx#stx-source _stx160477_)))
                                (_E160480160489_)))))
                      (_E160480160489_)))))
          (_E160479160503_))))
    (define gx#core-bind-feature!__%
      (lambda (_id160443_ _private?160444_ _phi160445_ _ctx160446_)
        (gx#core-bind-syntax!__%
         _id160443_
         ((if _private?160444_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id160443_))
         _private?160444_
         _phi160445_
         _ctx160446_)))
    (define gx#core-bind-feature!__0
      (lambda (_id160451_)
        (let* ((_private?160453_ '#f)
               (_phi160455_ (gx#current-expander-phi))
               (_ctx160457_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160451_
           _private?160453_
           _phi160455_
           _ctx160457_))))
    (define gx#core-bind-feature!__1
      (lambda (_id160459_ _private?160460_)
        (let* ((_phi160462_ (gx#current-expander-phi))
               (_ctx160464_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160459_
           _private?160460_
           _phi160462_
           _ctx160464_))))
    (define gx#core-bind-feature!__2
      (lambda (_id160466_ _private?160467_ _phi160468_)
        (let ((_ctx160470_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160466_
           _private?160467_
           _phi160468_
           _ctx160470_))))
    (define gx#core-bind-feature!
      (lambda _g168531_
        (let ((_g168530_ (##length _g168531_)))
          (cond ((##fx= _g168530_ 1)
                 (apply (lambda (_id160451_)
                          (gx#core-bind-feature!__0 _id160451_))
                        _g168531_))
                ((##fx= _g168530_ 2)
                 (apply (lambda (_id160459_ _private?160460_)
                          (gx#core-bind-feature!__1
                           _id160459_
                           _private?160460_))
                        _g168531_))
                ((##fx= _g168530_ 3)
                 (apply (lambda (_id160466_ _private?160467_ _phi160468_)
                          (gx#core-bind-feature!__2
                           _id160466_
                           _private?160467_
                           _phi160468_))
                        _g168531_))
                ((##fx= _g168530_ 4)
                 (apply (lambda (_id160472_
                                 _private?160473_
                                 _phi160474_
                                 _ctx160475_)
                          (gx#core-bind-feature!__%
                           _id160472_
                           _private?160473_
                           _phi160474_
                           _ctx160475_))
                        _g168531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g168531_))))))))
