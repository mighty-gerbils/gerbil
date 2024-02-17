(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708165430)
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
      (lambda _$args170032_
        (apply make-instance gx#module-import::t _$args170032_)))
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
      (lambda _$args170029_
        (apply make-instance gx#module-export::t _$args170029_)))
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
      (lambda _$args170026_
        (apply make-instance gx#import-set::t _$args170026_)))
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
      (lambda _$args170023_
        (apply make-instance gx#export-set::t _$args170023_)))
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
      (lambda _$args170020_
        (apply make-instance gx#import-expander::t _$args170020_)))
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
      (lambda _$args170017_
        (apply make-instance gx#export-expander::t _$args170017_)))
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
      (lambda _$args170014_
        (apply make-instance gx#import-export-expander::t _$args170014_)))
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
      (lambda (_path170011_ _fun170012_)
        (call-with-input-file
         (cons 'path: (cons _path170011_ gx#source-file-settings))
         _fun170012_)))
    (define gx#module-context:::init!
      (lambda (_self170005_ _id170006_ _super170007_ _ns170008_ _path170009_)
        (if (##fx< '11 (##structure-length _self170005_))
            (begin
              (##unchecked-structure-set!
               _self170005_
               _id170006_
               '1
               (##structure-type _self170005_)
               '#f)
              (##unchecked-structure-set!
               _self170005_
               (make-table 'test: eq?)
               '2
               (##structure-type _self170005_)
               '#f)
              (##unchecked-structure-set!
               _self170005_
               _super170007_
               '3
               (##structure-type _self170005_)
               '#f)
              (##unchecked-structure-set!
               _self170005_
               '#f
               '4
               (##structure-type _self170005_)
               '#f)
              (##unchecked-structure-set!
               _self170005_
               '#f
               '5
               (##structure-type _self170005_)
               '#f)
              (##unchecked-structure-set!
               _self170005_
               _ns170008_
               '6
               (##structure-type _self170005_)
               '#f)
              (##unchecked-structure-set!
               _self170005_
               _path170009_
               '7
               (##structure-type _self170005_)
               '#f)
              (##unchecked-structure-set!
               _self170005_
               '()
               '8
               (##structure-type _self170005_)
               '#f)
              (##unchecked-structure-set!
               _self170005_
               '()
               '9
               (##structure-type _self170005_)
               '#f)
              (##unchecked-structure-set!
               _self170005_
               '#f
               '10
               (##structure-type _self170005_)
               '#f)
              (##unchecked-structure-set!
               _self170005_
               '#f
               '11
               (##structure-type _self170005_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self170005_
                   '11
                   (##vector-length _self170005_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self169849_ _ctx169850_ _root169851_)
        (let ((_super169859_
               (let ((_$e169853_ _root169851_))
                 (if _$e169853_
                     _$e169853_
                     (let ((_$e169856_ (gx#core-context-root__0)))
                       (if _$e169856_
                           _$e169856_
                           (let ((__obj174642
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor174643
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj174642
                                     ':init!)))
                               (if __constructor174643
                                   (__constructor174643 __obj174642)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj174642)))))))
          (if _ctx169850_
              (let ((_id169862_
                     (##structure-ref
                      _ctx169850_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path169863_
                     (##structure-ref _ctx169850_ '7 gx#module-context::t '#f))
                    (_in169864_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx169850_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e169865_
                     (make-promise (lambda () (gx#eval-module _ctx169850_)))))
                (if (##fx< '8 (##structure-length _self169849_))
                    (begin
                      (##unchecked-structure-set!
                       _self169849_
                       _id169862_
                       '1
                       (##structure-type _self169849_)
                       '#f)
                      (##unchecked-structure-set!
                       _self169849_
                       (make-table 'test: eq? 'size: (length _in169864_))
                       '2
                       (##structure-type _self169849_)
                       '#f)
                      (##unchecked-structure-set!
                       _self169849_
                       _super169859_
                       '3
                       (##structure-type _self169849_)
                       '#f)
                      (##unchecked-structure-set!
                       _self169849_
                       '#f
                       '4
                       (##structure-type _self169849_)
                       '#f)
                      (##unchecked-structure-set!
                       _self169849_
                       '#f
                       '5
                       (##structure-type _self169849_)
                       '#f)
                      (##unchecked-structure-set!
                       _self169849_
                       _path169863_
                       '6
                       (##structure-type _self169849_)
                       '#f)
                      (##unchecked-structure-set!
                       _self169849_
                       _in169864_
                       '7
                       (##structure-type _self169849_)
                       '#f)
                      (##unchecked-structure-set!
                       _self169849_
                       _e169865_
                       '8
                       (##structure-type _self169849_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self169849_
                           '8
                           (##vector-length _self169849_)))
                (for-each
                 (lambda (_g169866169868_)
                   (gx#core-bind-weak-import!__% _g169866169868_ _self169849_))
                 _in169864_))
              (if (##fx< '8 (##structure-length _self169849_))
                  (begin
                    (##unchecked-structure-set!
                     _self169849_
                     '#f
                     '1
                     (##structure-type _self169849_)
                     '#f)
                    (##unchecked-structure-set!
                     _self169849_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self169849_)
                     '#f)
                    (##unchecked-structure-set!
                     _self169849_
                     _super169859_
                     '3
                     (##structure-type _self169849_)
                     '#f)
                    (##unchecked-structure-set!
                     _self169849_
                     '#f
                     '4
                     (##structure-type _self169849_)
                     '#f)
                    (##unchecked-structure-set!
                     _self169849_
                     '#f
                     '5
                     (##structure-type _self169849_)
                     '#f)
                    (##unchecked-structure-set!
                     _self169849_
                     '#f
                     '6
                     (##structure-type _self169849_)
                     '#f)
                    (##unchecked-structure-set!
                     _self169849_
                     '()
                     '7
                     (##structure-type _self169849_)
                     '#f)
                    (##unchecked-structure-set!
                     _self169849_
                     '#f
                     '8
                     (##structure-type _self169849_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self169849_
                         '8
                         (##vector-length _self169849_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self169874_ _ctx169875_)
        (let ((_root169877_ '#f))
          (gx#prelude-context:::init!__%
           _self169874_
           _ctx169875_
           _root169877_))))
    (define gx#prelude-context:::init!
      (lambda _g174649_
        (let ((_g174648_ (##length _g174649_)))
          (cond ((##fx= _g174648_ 2)
                 (apply (lambda (_self169874_ _ctx169875_)
                          (gx#prelude-context:::init!__0
                           _self169874_
                           _ctx169875_))
                        _g174649_))
                ((##fx= _g174648_ 3)
                 (apply (lambda (_self169879_ _ctx169880_ _root169881_)
                          (gx#prelude-context:::init!__%
                           _self169879_
                           _ctx169880_
                           _root169881_))
                        _g174649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g174649_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self169723_ _e169724_)
        (if (##fx< '3 (##structure-length _self169723_))
            (begin
              (##unchecked-structure-set!
               _self169723_
               _e169724_
               '1
               (##structure-type _self169723_)
               '#f)
              (##unchecked-structure-set!
               _self169723_
               (gx#current-expander-context)
               '2
               (##structure-type _self169723_)
               '#f)
              (##unchecked-structure-set!
               _self169723_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self169723_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self169723_
                   '3
                   (##vector-length _self169723_)))))
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
      (lambda (_g169349169352_ _g169350169354_)
        (gx#core-apply-user-expander__%
         _g169349169352_
         _g169350169354_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g169220169223_ _g169221169225_)
        (gx#core-apply-user-expander__%
         _g169220169223_
         _g169221169225_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx169091_)
        (let* ((_path169093_
                (##structure-ref _ctx169091_ '7 gx#module-context::t '#f))
               (_path169095_
                (if (pair? _path169093_) (last _path169093_) _path169093_)))
          (if (string? _path169095_) _path169095_ '#f))))
    (define gx#import-module__%
      (lambda (_path169067_ _reload?169068_ _eval?169069_)
        (let ((_ctx169071_
               ((gx#current-expander-module-import)
                _path169067_
                _reload?169068_)))
          (if (and _ctx169071_ _eval?169069_)
              (gx#eval-module _ctx169071_)
              '#!void)
          _ctx169071_)))
    (define gx#import-module__0
      (lambda (_path169076_)
        (let* ((_reload?169078_ '#f) (_eval?169080_ '#f))
          (gx#import-module__% _path169076_ _reload?169078_ _eval?169080_))))
    (define gx#import-module__1
      (lambda (_path169082_ _reload?169083_)
        (let ((_eval?169085_ '#f))
          (gx#import-module__% _path169082_ _reload?169083_ _eval?169085_))))
    (define gx#import-module
      (lambda _g174651_
        (let ((_g174650_ (##length _g174651_)))
          (cond ((##fx= _g174650_ 1)
                 (apply (lambda (_path169076_)
                          (gx#import-module__0 _path169076_))
                        _g174651_))
                ((##fx= _g174650_ 2)
                 (apply (lambda (_path169082_ _reload?169083_)
                          (gx#import-module__1 _path169082_ _reload?169083_))
                        _g174651_))
                ((##fx= _g174650_ 3)
                 (apply (lambda (_path169087_ _reload?169088_ _eval?169089_)
                          (gx#import-module__%
                           _path169087_
                           _reload?169088_
                           _eval?169089_))
                        _g174651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g174651_))))))
    (define gx#eval-module
      (lambda (_mod169064_) ((gx#current-expander-module-eval) _mod169064_)))
    (define gx#core-eval-module
      (lambda (_obj169049_)
        (letrec ((_force-e169051_
                  (lambda (_getf169060_ _e169061_)
                    (call-with-parameters
                     (lambda () (force (_getf169060_ _e169061_)))
                     gx#current-expander-context
                     _e169061_
                     gx#current-expander-phi
                     '0))))
          (let _recur169053_ ((_e169055_ _obj169049_))
            (if (##structure-instance-of? _e169055_ 'gx#module-context::t)
                (begin
                  (let ((_$e169057_ (gx#core-context-prelude__% _e169055_)))
                    (if _$e169057_ (_recur169053_ _$e169057_) '#!void))
                  (_force-e169051_ gx#module-context-e _e169055_))
                (if (##structure-instance-of? _e169055_ 'gx#prelude-context::t)
                    (_force-e169051_ gx#prelude-context-e _e169055_)
                    (if (gx#stx-string? _e169055_)
                        (_recur169053_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e169055_)))
                        (if (gx#core-library-module-path? _e169055_)
                            (_recur169053_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e169055_)))
                            (error '"Cannot eval module" _obj169049_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx169032_)
        (let _lp169034_ ((_e169036_ _ctx169032_))
          (if (or (##structure-instance-of? _e169036_ 'gx#module-context::t)
                  (##structure-instance-of? _e169036_ 'gx#local-context::t))
              (_lp169034_
               (##unchecked-structure-ref _e169036_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e169036_ 'gx#prelude-context::t)
                  _e169036_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx169045_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx169045_))))
    (define gx#core-context-prelude
      (lambda _g174653_
        (let ((_g174652_ (##length _g174653_)))
          (cond ((##fx= _g174652_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g174653_))
                ((##fx= _g174652_ 1)
                 (apply (lambda (_ctx169047_)
                          (gx#core-context-prelude__% _ctx169047_))
                        _g174653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g174653_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx169022_)
        (let* ((_ht169024_ (gx#current-expander-module-registry))
               (_$e169026_ (table-ref _ht169024_ _ctx169022_ '#f)))
          (if _$e169026_
              (values _$e169026_)
              (let ((_pre169029_
                     (let ((__obj174644
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
                       (gx#prelude-context:::init! __obj174644 _ctx169022_)
                       __obj174644)))
                (table-set! _ht169024_ _ctx169022_ _pre169029_)
                _pre169029_)))))
    (define gx#core-import-module__%
      (lambda (_rpath168903_ _reload?168904_)
        (letrec ((_import-source168906_
                  (lambda (_path168991_)
                    (if (member _path168991_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path168991_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g174654_ (gx#core-read-module _path168991_)))
                         (begin
                           (let ((_g174655_
                                  (if (##values? _g174654_)
                                      (##vector-length _g174654_)
                                      1)))
                             (if (not (##fx= _g174655_ 4))
                                 (error "Context expects 4 values" _g174655_)))
                           (let ((_pre168994_ (##vector-ref _g174654_ 0))
                                 (_id168995_ (##vector-ref _g174654_ 1))
                                 (_ns168996_ (##vector-ref _g174654_ 2))
                                 (_body168997_ (##vector-ref _g174654_ 3)))
                             (let* ((_prelude169002_
                                     (if (##structure-instance-of?
                                          _pre168994_
                                          'gx#prelude-context::t)
                                         _pre168994_
                                         (if (##structure-instance-of?
                                              _pre168994_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre168994_)
                                             (if (string? _pre168994_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre168994_))
                                                 (if (not _pre168994_)
                                                     (let ((_$e168999_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e168999_
                                                           _$e168999_
                                                           (let ((__obj174645
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
                     (gx#prelude-context:::init! __obj174645 '#f)
                     __obj174645)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath168903_
                                                            _pre168994_))))))
                                    (_ctx169004_
                                     (let ((__obj174646
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
                                        __obj174646
                                        _id168995_
                                        _prelude169002_
                                        _ns168996_
                                        _path168991_)
                                       __obj174646))
                                    (_body169006_
                                     (gx#core-expand-module-begin
                                      _body168997_
                                      _ctx169004_))
                                    (_body169008_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body169006_)
                                      _path168991_
                                      _ctx169004_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx169004_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body169008_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx169004_
                                _body169008_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path168991_
                                _ctx169004_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id168995_
                                _ctx169004_)
                               _ctx169004_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path168991_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule168907_
                  (lambda (_rpath168919_)
                    (let* ((_rpath168920168927_ _rpath168919_)
                           (_E168922168931_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath168920168927_)))
                           (_K168923168979_
                            (lambda (_refs168934_ _origin168935_)
                              (let ((_ctx168937_
                                     (if _origin168935_
                                         (gx#core-import-module__%
                                          _origin168935_
                                          _reload?168904_)
                                         (gx#current-expander-context))))
                                (let _lp168939_ ((_rest168941_ _refs168934_)
                                                 (_ctx168942_ _ctx168937_))
                                  (let* ((_rest168943168951_ _rest168941_)
                                         (_else168945168959_
                                          (lambda () _ctx168942_))
                                         (_K168947168967_
                                          (lambda (_rest168962_ _id168963_)
                                            (let ((_bind168965_
                                                   (gx#resolve-identifier__%
                                                    _id168963_
                                                    '0
                                                    _ctx168942_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind168965_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind168965_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp168939_
                                                   _rest168962_
                                                   (##unchecked-structure-ref
                                                    _bind168965_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath168919_
                                                         _id168963_
                                                         _bind168965_))))))
                                    (if (##pair? _rest168943168951_)
                                        (let ((_hd168948168970_
                                               (##car _rest168943168951_))
                                              (_tl168949168972_
                                               (##cdr _rest168943168951_)))
                                          (let* ((_id168975_ _hd168948168970_)
                                                 (_rest168977_
                                                  _tl168949168972_))
                                            (_K168947168967_
                                             _rest168977_
                                             _id168975_)))
                                        (_else168945168959_))))))))
                      (if (##pair? _rpath168920168927_)
                          (let ((_hd168924168982_ (##car _rpath168920168927_))
                                (_tl168925168984_ (##cdr _rpath168920168927_)))
                            (let* ((_origin168987_ _hd168924168982_)
                                   (_refs168989_ _tl168925168984_))
                              (_K168923168979_ _refs168989_ _origin168987_)))
                          (_E168922168931_))))))
          (let ((_$e168909_
                 (if (not _reload?168904_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath168903_
                      '#f)
                     '#f)))
            (if _$e168909_
                (values _$e168909_)
                (if (list? _rpath168903_)
                    (_import-submodule168907_ _rpath168903_)
                    (if (gx#core-library-module-path? _rpath168903_)
                        (let ((_ctx168912_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath168903_)
                                _reload?168904_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath168903_
                           _ctx168912_)
                          _ctx168912_)
                        (let* ((_npath168914_ (path-normalize _rpath168903_))
                               (_$e168916_
                                (if (not _reload?168904_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath168914_
                                     '#f)
                                    '#f)))
                          (if _$e168916_
                              (values _$e168916_)
                              (_import-source168906_ _npath168914_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath169015_)
        (let ((_reload?169017_ '#f))
          (gx#core-import-module__% _rpath169015_ _reload?169017_))))
    (define gx#core-import-module
      (lambda _g174657_
        (let ((_g174656_ (##length _g174657_)))
          (cond ((##fx= _g174656_ 1)
                 (apply (lambda (_rpath169015_)
                          (gx#core-import-module__0 _rpath169015_))
                        _g174657_))
                ((##fx= _g174656_ 2)
                 (apply (lambda (_rpath169019_ _reload?169020_)
                          (gx#core-import-module__%
                           _rpath169019_
                           _reload?169020_))
                        _g174657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g174657_))))))
    (define gx#core-read-module
      (lambda (_path168892_)
        (with-catch
         (lambda (_exn168894_)
           (if (and (datum-parsing-exception? _exn168894_)
                    (eq? (datum-parsing-exception-filepos _exn168894_) '0))
               (gx#core-read-module/lang _path168892_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path168892_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g168896168898_)
                      (display-exception _exn168894_ _g168896168898_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path168892_)))))
    (define gx#core-read-module/sexp
      (lambda (_path168755_)
        (let _lp168757_ ((_body168759_ (read-syntax-from-file _path168755_))
                         (_pre168760_ '#f)
                         (_ns168761_ '#f)
                         (_pkg168762_ '#f))
          (let* ((_e168763168787_ _body168759_)
                 (_E168779168809_
                  (lambda ()
                    (let ((_g174658_
                           (if _pkg168762_
                               (values _pre168760_ _ns168761_ _pkg168762_)
                               (gx#core-read-module-package
                                _path168755_
                                _pre168760_
                                _ns168761_))))
                      (begin
                        (let ((_g174659_
                               (if (##values? _g174658_)
                                   (##vector-length _g174658_)
                                   1)))
                          (if (not (##fx= _g174659_ 3))
                              (error "Context expects 3 values" _g174659_)))
                        (let ((_pre168791_ (##vector-ref _g174658_ 0))
                              (_ns168792_ (##vector-ref _g174658_ 1))
                              (_pkg168793_ (##vector-ref _g174658_ 2)))
                          (let* ((_prelude168795_
                                  (if (gx#core-bound-module-prelude?
                                       _pre168791_)
                                      (gx#syntax-local-e__0 _pre168791_)
                                      (if (gx#core-library-module-path?
                                           _pre168791_)
                                          (gx#core-resolve-library-module-path
                                           _pre168791_)
                                          (if (gx#stx-string? _pre168791_)
                                              (gx#core-resolve-module-path__%
                                               _pre168791_
                                               _path168755_)
                                              (gx#stx-e _pre168791_)))))
                                 (_path-id168797_
                                  (gx#core-module-path->namespace
                                   _path168755_))
                                 (_pkg-id168799_
                                  (if _pkg168793_
                                      (string-append
                                       _pkg168793_
                                       '"/"
                                       _path-id168797_)
                                      _path-id168797_))
                                 (_module-id168801_
                                  (string->symbol _pkg-id168799_))
                                 (_module-ns168806_
                                  (if (eq? _ns168792_ '#!void)
                                      '#f
                                      (let ((_$e168803_ _ns168792_))
                                        (if _$e168803_
                                            _$e168803_
                                            _pkg-id168799_)))))
                            (values _prelude168795_
                                    _module-id168801_
                                    _module-ns168806_
                                    _body168759_)))))))
                 (_E168772168838_
                  (lambda ()
                    (if (gx#stx-pair? _e168763168787_)
                        (let ((_e168780168813_ (gx#syntax-e _e168763168787_)))
                          (let ((_hd168781168816_ (##car _e168780168813_))
                                (_tl168782168818_ (##cdr _e168780168813_)))
                            (if (eq? (gx#stx-e _hd168781168816_) 'package:)
                                (if (gx#stx-pair? _tl168782168818_)
                                    (let ((_e168783168821_
                                           (gx#syntax-e _tl168782168818_)))
                                      (let ((_hd168784168824_
                                             (##car _e168783168821_))
                                            (_tl168785168826_
                                             (##cdr _e168783168821_)))
                                        (let* ((_pkg168829_ _hd168784168824_)
                                               (_rest168831_ _tl168785168826_))
                                          (if '#t
                                              (let ((_pkg168836_
                                                     (if (gx#identifier?
                                                          _pkg168829_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg168829_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg168829_)
                         (gx#stx-false? _pkg168829_))
                     (gx#stx-e _pkg168829_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg168829_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp168757_
                                                 _rest168831_
                                                 _pre168760_
                                                 _ns168761_
                                                 _pkg168836_))
                                              (_E168779168809_)))))
                                    (_E168779168809_))
                                (_E168779168809_))))
                        (_E168779168809_))))
                 (_E168765168864_
                  (lambda ()
                    (if (gx#stx-pair? _e168763168787_)
                        (let ((_e168773168842_ (gx#syntax-e _e168763168787_)))
                          (let ((_hd168774168845_ (##car _e168773168842_))
                                (_tl168775168847_ (##cdr _e168773168842_)))
                            (if (eq? (gx#stx-e _hd168774168845_) 'namespace:)
                                (if (gx#stx-pair? _tl168775168847_)
                                    (let ((_e168776168850_
                                           (gx#syntax-e _tl168775168847_)))
                                      (let ((_hd168777168853_
                                             (##car _e168776168850_))
                                            (_tl168778168855_
                                             (##cdr _e168776168850_)))
                                        (let* ((_ns168858_ _hd168777168853_)
                                               (_rest168860_ _tl168778168855_))
                                          (if '#t
                                              (let ((_ns168862_
                                                     (if (gx#identifier?
                                                          _ns168858_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns168858_))
                                                         (if (gx#stx-string?
                                                              _ns168858_)
                                                             (gx#stx-e
                                                              _ns168858_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns168858_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns168858_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp168757_
                                                 _rest168860_
                                                 _pre168760_
                                                 _ns168862_
                                                 _pkg168762_))
                                              (_E168772168838_)))))
                                    (_E168772168838_))
                                (_E168772168838_))))
                        (_E168772168838_))))
                 (_E168764168888_
                  (lambda ()
                    (if (gx#stx-pair? _e168763168787_)
                        (let ((_e168766168868_ (gx#syntax-e _e168763168787_)))
                          (let ((_hd168767168871_ (##car _e168766168868_))
                                (_tl168768168873_ (##cdr _e168766168868_)))
                            (if (eq? (gx#stx-e _hd168767168871_) 'prelude:)
                                (if (gx#stx-pair? _tl168768168873_)
                                    (let ((_e168769168876_
                                           (gx#syntax-e _tl168768168873_)))
                                      (let ((_hd168770168879_
                                             (##car _e168769168876_))
                                            (_tl168771168881_
                                             (##cdr _e168769168876_)))
                                        (let* ((_prelude168884_
                                                _hd168770168879_)
                                               (_rest168886_ _tl168771168881_))
                                          (if '#t
                                              (_lp168757_
                                               _rest168886_
                                               _prelude168884_
                                               _ns168761_
                                               _pkg168762_)
                                              (_E168765168864_)))))
                                    (_E168765168864_))
                                (_E168765168864_))))
                        (_E168765168864_)))))
            (_E168764168888_)))))
    (define gx#core-read-module/lang
      (lambda (_path168582_)
        (letrec ((_default-read-module-body168584_
                  (lambda (_inp168747_)
                    (let _lp168749_ ((_body168751_ '()))
                      (let ((_next168753_ (read-syntax _inp168747_)))
                        (if (eof-object? _next168753_)
                            (reverse _body168751_)
                            (_lp168749_ (cons _next168753_ _body168751_)))))))
                 (_read-body168585_
                  (lambda (_inp168666_
                           _pre168667_
                           _ns168668_
                           _pkg168669_
                           _args168670_)
                    (let ((_g174660_
                           (if _pkg168669_
                               (values _pre168667_ _ns168668_ _pkg168669_)
                               (gx#core-read-module-package
                                _path168582_
                                _pre168667_
                                _ns168668_))))
                      (begin
                        (let ((_g174661_
                               (if (##values? _g174660_)
                                   (##vector-length _g174660_)
                                   1)))
                          (if (not (##fx= _g174661_ 3))
                              (error "Context expects 3 values" _g174661_)))
                        (let ((_pre168672_ (##vector-ref _g174660_ 0))
                              (_ns168673_ (##vector-ref _g174660_ 1))
                              (_pkg168674_ (##vector-ref _g174660_ 2)))
                          (let* ((_prelude168676_
                                  (gx#import-module__0 _pre168672_))
                                 (_read-module-body168730_
                                  (let ((_$e168722_
                                         (find (lambda (_e168677168679_)
                                                 (let* ((_g168681168691_
                                                         _e168677168679_)
                                                        (_else168683168699_
                                                         (lambda () '#f))
                                                        (_K168685168703_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g168681168691_
                                                        'gx#module-export::t)
                                                       (let* ((_e168686168706_
                                                               (##unchecked-structure-ref
                                                                _g168681168691_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e168687168709_
                                                               (##unchecked-structure-ref
                                                                _g168681168691_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e168688168712_
                                                               (##unchecked-structure-ref
                                                                _g168681168691_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e168688168712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e168689168715_
                            (##unchecked-structure-ref
                             _g168681168691_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g168717168719_)
                              (eq? _g168717168719_ 'read-module-body))
                            _e168689168715_)
                           (_K168685168703_)
                           (_else168683168699_)))
                     (_else168683168699_)))
               (_else168683168699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude168676_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e168722_
                                        ((lambda (_xport168725_)
                                           (let ((_proc168728_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport168725_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc168728_)
                                                 _proc168728_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path168582_
                                                  _pre168672_
                                                  _proc168728_))))
                                         _$e168722_)
                                        _default-read-module-body168584_)))
                                 (_path-id168732_
                                  (gx#core-module-path->namespace
                                   _path168582_))
                                 (_pkg-id168734_
                                  (if _pkg168674_
                                      (string-append
                                       _pkg168674_
                                       '"/"
                                       _path-id168732_)
                                      _path-id168732_))
                                 (_module-id168736_
                                  (string->symbol _pkg-id168734_))
                                 (_module-ns168741_
                                  (let ((_$e168738_ _ns168673_))
                                    (if _$e168738_ _$e168738_ _pkg-id168734_)))
                                 (_body168744_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body168730_ _inp168666_))
                                   gx#current-module-reader-path
                                   _path168582_
                                   gx#current-module-reader-args
                                   _args168670_)))
                            (values _prelude168676_
                                    _module-id168736_
                                    _module-ns168741_
                                    _body168744_)))))))
                 (_string-e168586_
                  (lambda (_obj168663_ _what168664_)
                    (if (string? _obj168663_)
                        _obj168663_
                        (if (symbol? _obj168663_)
                            (symbol->string _obj168663_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what168664_)
                             _path168582_
                             _obj168663_)))))
                 (_read-lang-args168587_
                  (lambda (_inp168618_ _args168619_)
                    (let* ((_args168620168628_ _args168619_)
                           (_else168622168636_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path168582_)))
                           (_K168624168651_
                            (lambda (_args168639_ _prelude168640_)
                              (let* ((_pkg168642_
                                      (pgetq 'package: _args168639_))
                                     (_pkg168644_
                                      (if _pkg168642_
                                          (_string-e168586_
                                           _pkg168642_
                                           '"package")
                                          '#f))
                                     (_ns168646_
                                      (pgetq 'namespace: _args168639_))
                                     (_ns168648_
                                      (if _ns168646_
                                          (_string-e168586_
                                           _ns168646_
                                           '"namespace")
                                          '#f)))
                                (_read-body168585_
                                 _inp168618_
                                 _prelude168640_
                                 _ns168648_
                                 _pkg168644_
                                 _args168639_)))))
                      (if (##pair? _args168620168628_)
                          (let ((_hd168625168654_ (##car _args168620168628_))
                                (_tl168626168656_ (##cdr _args168620168628_)))
                            (let* ((_prelude168659_ _hd168625168654_)
                                   (_args168661_ _tl168626168656_))
                              (_K168624168651_ _args168661_ _prelude168659_)))
                          (_else168622168636_)))))
                 (_read-lang168588_
                  (lambda (_inp168593_)
                    (let* ((_head168595_ (read-line _inp168593_))
                           (_$e168597_ (string-index _head168595_ '#\space)))
                      (if _$e168597_
                          ((lambda (_ix168600_)
                             (let ((_lang168602_
                                    (substring _head168595_ '0 _ix168600_)))
                               (if (equal? _lang168602_ '"#lang")
                                   (let* ((_rest168604_
                                           (substring
                                            _head168595_
                                            (fx+ _ix168600_ '1)
                                            (string-length _head168595_)))
                                          (_args168615_
                                           (with-catch
                                            (lambda (_g168605168607_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path168582_
                                               _g168605168607_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest168604_
                                               (lambda (_g168610168612_)
                                                 (read-all
                                                  _g168610168612_
                                                  read)))))))
                                     (_read-lang-args168587_
                                      _inp168593_
                                      _args168615_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path168582_))))
                           _$e168597_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path168582_)))))
                 (_read-e168589_
                  (lambda (_inp168591_)
                    (if (eq? (peek-char _inp168591_) '#\#)
                        (_read-lang168588_ _inp168591_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path168582_)))))
          (gx#call-with-input-source-file _path168582_ _read-e168589_))))
    (define gx#core-read-module-package
      (lambda (_path168536_ _pre168537_ _ns168538_)
        (letrec ((_string-e168540_
                  (lambda (_e168580_)
                    (if (symbol? _e168580_)
                        (symbol->string _e168580_)
                        (if (string? _e168580_)
                            _e168580_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e168580_))))))
          (let _lp168542_ ((_dir168544_ (path-directory _path168536_))
                           (_pkg-path168545_ '()))
            (let ((_gerbil.pkg168547_ (path-expand '"gerbil.pkg" _dir168544_)))
              (if (file-exists? _gerbil.pkg168547_)
                  (let ((_plist168549_
                         (gx#core-library-package-plist__% _dir168544_ '#t)))
                    (if (null? _plist168549_)
                        (let ((_pkg168551_
                               (if (not (null? _pkg-path168545_))
                                   (string-join _pkg-path168545_ '"/")
                                   '#f)))
                          (values _pre168537_ _ns168538_ _pkg168551_))
                        (if (list? _plist168549_)
                            (let* ((_root168553_
                                    (pgetq 'package: _plist168549_))
                                   (_pkg168557_
                                    (let ((_pkg-path168555_
                                           (if _root168553_
                                               (cons (_string-e168540_
                                                      _root168553_)
                                                     _pkg-path168545_)
                                               _pkg-path168545_)))
                                      (if (not (null? _pkg-path168555_))
                                          (string-join _pkg-path168555_ '"/")
                                          '#f)))
                                   (_ns168564_
                                    (let ((_ns168562_
                                           (let ((_$e168559_ _ns168538_))
                                             (if _$e168559_
                                                 _$e168559_
                                                 (pgetq 'namespace:
                                                        _plist168549_)))))
                                      (if _ns168562_
                                          (_string-e168540_ _ns168562_)
                                          '#f)))
                                   (_pre168569_
                                    (let ((_$e168566_ _pre168537_))
                                      (if _$e168566_
                                          _$e168566_
                                          (pgetq 'prelude: _plist168549_)))))
                              (values _pre168569_ _ns168564_ _pkg168557_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist168549_))))
                  (let ((_dir*168572_
                         (path-strip-trailing-directory-separator
                          _dir168544_)))
                    (if (or (string-empty? _dir*168572_)
                            (equal? _dir168544_ _dir*168572_))
                        (values _pre168537_ _ns168538_ '#f)
                        (let ((_xpath168577_
                               (path-strip-directory _dir*168572_))
                              (_xdir168578_ (path-directory _dir*168572_)))
                          (_lp168542_
                           _xdir168578_
                           (cons _xpath168577_ _pkg-path168545_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path168534_)
        (path-strip-extension (path-strip-directory _path168534_))))
    (define gx#core-module-path->id
      (lambda (_path168532_)
        (string->symbol (gx#core-module-path->namespace _path168532_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path168511_ _rel168512_)
        (let* ((_path168514_ (gx#stx-e _stx-path168511_))
               (_path168516_
                (if (string-empty? (path-extension _path168514_))
                    (string-append _path168514_ '".ss")
                    _path168514_)))
          (gx#core-resolve-path__%
           _path168516_
           (let ((_$e168519_ (gx#stx-source _stx-path168511_)))
             (if _$e168519_ _$e168519_ _rel168512_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path168525_)
        (let ((_rel168527_ '#f))
          (gx#core-resolve-module-path__% _stx-path168525_ _rel168527_))))
    (define gx#core-resolve-module-path
      (lambda _g174663_
        (let ((_g174662_ (##length _g174663_)))
          (cond ((##fx= _g174662_ 1)
                 (apply (lambda (_stx-path168525_)
                          (gx#core-resolve-module-path__0 _stx-path168525_))
                        _g174663_))
                ((##fx= _g174662_ 2)
                 (apply (lambda (_stx-path168529_ _rel168530_)
                          (gx#core-resolve-module-path__%
                           _stx-path168529_
                           _rel168530_))
                        _g174663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g174663_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath168397_)
        (let* ((_spath168399_ (symbol->string (gx#stx-e _libpath168397_)))
               (_spath168401_
                (substring _spath168399_ '1 (string-length _spath168399_)))
               (_ext168403_ (path-extension _spath168401_))
               (_ssi168405_
                (if (string-empty? _ext168403_)
                    (string-append _spath168401_ '".ssi")
                    (string-append
                     (path-strip-extension _spath168401_)
                     '".ssi")))
               (_srcs168409_
                (if (string-empty? _ext168403_)
                    (map (lambda (_ext168407_)
                           (string-append _spath168401_ _ext168407_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath168401_ '()))))
          (let _lp168412_ ((_rest168414_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest168415168424_ _rest168414_)
                   (_E168418168428_
                    (lambda ()
                      (error '"No clause matching" _rest168415168424_))))
              (let ((_K168420168498_
                     (lambda (_rest168439_ _dir168440_)
                       (letrec ((_resolve168442_
                                 (lambda (_ssi168454_ _srcs168455_)
                                   (let ((_compiled-path168457_
                                          (path-expand
                                           _ssi168454_
                                           _dir168440_)))
                                     (if (file-exists? _compiled-path168457_)
                                         (path-normalize _compiled-path168457_)
                                         (let _lpr168459_ ((_rest-src168461_
                                                            _srcs168455_))
                                           (let* ((_rest-src168462168470_
                                                   _rest-src168461_)
                                                  (_else168464168478_
                                                   (lambda ()
                                                     (_lp168412_
                                                      _rest168439_)))
                                                  (_K168466168486_
                                                   (lambda (_rest-src168481_
                                                            _src168482_)
                                                     (let ((_src-path168484_
                                                            (path-expand
                                                             _src168482_
                                                             _dir168440_)))
                                                       (if (file-exists?
                                                            _src-path168484_)
                                                           (path-normalize
                                                            _src-path168484_)
                                                           (_lpr168459_
                                                            _rest-src168481_))))))
                                             (if (##pair? _rest-src168462168470_)
                                                 (let ((_hd168467168489_
                                                        (##car _rest-src168462168470_))
                                                       (_tl168468168491_
                                                        (##cdr _rest-src168462168470_)))
                                                   (let* ((_src168494_
                                                           _hd168467168489_)
                                                          (_rest-src168496_
                                                           _tl168468168491_))
                                                     (_K168466168486_
                                                      _rest-src168496_
                                                      _src168494_)))
                                                 (_else168464168478_)))))))))
                         (let ((_$e168444_
                                (gx#core-library-package-path-prefix
                                 _dir168440_)))
                           (if _$e168444_
                               ((lambda (_prefix168447_)
                                  (if (string-prefix?
                                       _prefix168447_
                                       _spath168401_)
                                      (let ((_ssi168451_
                                             (substring
                                              _ssi168405_
                                              (string-length _prefix168447_)
                                              (string-length _ssi168405_)))
                                            (_srcs168452_
                                             (map (lambda (_src168449_)
                                                    (substring
                                                     _src168449_
                                                     (string-length
                                                      _prefix168447_)
                                                     (string-length
                                                      _src168449_)))
                                                  _srcs168409_)))
                                        (_resolve168442_
                                         _ssi168451_
                                         _srcs168452_))
                                      (_lp168412_ _rest168439_)))
                                _$e168444_)
                               (_resolve168442_ _ssi168405_ _srcs168409_))))))
                    (_K168419168433_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath168397_))))
                (let ((_try-match168417168436_
                       (lambda ()
                         (if (##null? _rest168415168424_)
                             (_K168419168433_)
                             (_E168418168428_)))))
                  (if (##pair? _rest168415168424_)
                      (let ((_tl168422168503_ (##cdr _rest168415168424_))
                            (_hd168421168501_ (##car _rest168415168424_)))
                        (let ((_dir168506_ _hd168421168501_)
                              (_rest168508_ _tl168422168503_))
                          (_K168420168498_ _rest168508_ _dir168506_)))
                      (_try-match168417168436_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath168370_)
        (letrec ((_resolve168372_
                  (lambda (_path168389_ _base168390_)
                    (let ((_$e168392_ (string-rindex _base168390_ '#\/)))
                      (if _$e168392_
                          ((lambda (_idx168395_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base168390_ '0 _idx168395_)
                                '"/"
                                _path168389_))))
                           _$e168392_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path168389_))))))))
          (let ((_spath168374_ (symbol->string (gx#stx-e _modpath168370_)))
                (_mod168375_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod168375_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath168370_))
            (let ((_mpath168377_
                   (symbol->string
                    (##structure-ref
                     _mod168375_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp168379_ ((_spath168381_ _spath168374_)
                               (_mpath168382_ _mpath168377_))
                (if (string-prefix? '"../" _spath168381_)
                    (let ((_$e168384_ (string-rindex _mpath168382_ '#\/)))
                      (if _$e168384_
                          ((lambda (_idx168387_)
                             (_lp168379_
                              (substring
                               _spath168381_
                               '3
                               (string-length _spath168381_))
                              (substring _mpath168382_ '0 _idx168387_)))
                           _$e168384_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath168370_)))
                    (if (string-prefix? '"./" _spath168381_)
                        (_lp168379_
                         (substring
                          _spath168381_
                          '2
                          (string-length _spath168381_))
                         _mpath168382_)
                        (_resolve168372_ _spath168381_ _mpath168382_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir168363_)
        (let ((_$e168365_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir168363_))))
          (if _$e168365_
              ((lambda (_pkg168368_)
                 (string-append (symbol->string _pkg168368_) '"/"))
               _$e168365_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir168335_ _exists?168336_)
        (let* ((_cache168338_ (gx#core-library-package-cache))
               (_$e168340_ (table-ref _cache168338_ _dir168335_ '#f)))
          (if _$e168340_
              (values _$e168340_)
              (let* ((_gerbil.pkg168343_
                      (path-expand '"gerbil.pkg" _dir168335_))
                     (_plist168350_
                      (if (or _exists?168336_
                              (file-exists? _gerbil.pkg168343_))
                          (let ((_e168348_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg168343_
                                  read)))
                            (if (eof-object? _e168348_)
                                '()
                                (if (list? _e168348_)
                                    _e168348_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg168343_
                                     _e168348_))))
                          '())))
                (table-set! _cache168338_ _dir168335_ _plist168350_)
                _plist168350_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir168356_)
        (let ((_exists?168358_ '#f))
          (gx#core-library-package-plist__% _dir168356_ _exists?168358_))))
    (define gx#core-library-package-plist
      (lambda _g174665_
        (let ((_g174664_ (##length _g174665_)))
          (cond ((##fx= _g174664_ 1)
                 (apply (lambda (_dir168356_)
                          (gx#core-library-package-plist__0 _dir168356_))
                        _g174665_))
                ((##fx= _g174664_ 2)
                 (apply (lambda (_dir168360_ _exists?168361_)
                          (gx#core-library-package-plist__%
                           _dir168360_
                           _exists?168361_))
                        _g174665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g174665_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e168329_ (gx#current-expander-module-library-package-cache)))
          (if _$e168329_
              (values _$e168329_)
              (let ((_cache168332_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache168332_)
                _cache168332_)))))
    (define gx#core-library-module-path?
      (lambda (_stx168326_) (gx#core-special-module-path? _stx168326_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx168324_) (gx#core-special-module-path? _stx168324_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx168319_ _char168320_)
        (if (gx#identifier? _stx168319_)
            (if (interned-symbol? (gx#stx-e _stx168319_))
                (let ((_str168322_ (symbol->string (gx#stx-e _stx168319_))))
                  (if (fx> (string-length _str168322_) '1)
                      (eq? (string-ref _str168322_ '0) _char168320_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx168313_)
        (gx#core-bound-identifier?__%
         _stx168313_
         (lambda (_g168314168316_)
           (gx#expander-binding?__% _g168314168316_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx168307_)
        (gx#core-bound-identifier?__%
         _stx168307_
         (lambda (_g168308168310_)
           (gx#expander-binding?__% _g168308168310_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx168294_)
        (letrec ((_module-prelude?168296_
                  (lambda (_e168302_)
                    (let ((_$e168304_
                           (##structure-instance-of?
                            _e168302_
                            'gx#module-context::t)))
                      (if _$e168304_
                          _$e168304_
                          (##structure-instance-of?
                           _e168302_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx168294_
           (lambda (_g168297168299_)
             (gx#expander-binding?__%
              _g168297168299_
              _module-prelude?168296_))))))
    (define gx#core-bind-import!__%
      (lambda (_in168224_ _ctx168225_ _force-weak?168226_)
        (let* ((_in168227168236_ _in168224_)
               (_E168229168240_
                (lambda () (error '"No clause matching" _in168227168236_)))
               (_K168230168253_
                (lambda (_weak?168243_ _phi168244_ _key168245_ _source168246_)
                  (gx#core-bind!__%
                   _key168245_
                   (let ((_e168248_
                          (gx#core-resolve-module-export _source168246_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e168248_
                       '1
                       gx#binding::t
                       '#f)
                      _key168245_
                      _phi168244_
                      _e168248_
                      (##unchecked-structure-ref
                       _source168246_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e168250_ _force-weak?168226_))
                        (if _$e168250_ _$e168250_ _weak?168243_))))
                   gx#core-context-rebind?
                   _phi168244_
                   _ctx168225_))))
          (if (##structure-direct-instance-of?
               _in168227168236_
               'gx#module-import::t)
              (let* ((_e168231168256_
                      (##unchecked-structure-ref
                       _in168227168236_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source168259_ _e168231168256_)
                     (_e168232168261_
                      (##unchecked-structure-ref
                       _in168227168236_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key168264_ _e168232168261_)
                     (_e168233168266_
                      (##unchecked-structure-ref
                       _in168227168236_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi168269_ _e168233168266_)
                     (_e168234168271_
                      (##unchecked-structure-ref
                       _in168227168236_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?168274_ _e168234168271_))
                (_K168230168253_
                 _weak?168274_
                 _phi168269_
                 _key168264_
                 _source168259_))
              (_E168229168240_)))))
    (define gx#core-bind-import!__0
      (lambda (_in168279_)
        (let* ((_ctx168281_ (gx#current-expander-context))
               (_force-weak?168283_ '#f))
          (gx#core-bind-import!__%
           _in168279_
           _ctx168281_
           _force-weak?168283_))))
    (define gx#core-bind-import!__1
      (lambda (_in168285_ _ctx168286_)
        (let ((_force-weak?168288_ '#f))
          (gx#core-bind-import!__%
           _in168285_
           _ctx168286_
           _force-weak?168288_))))
    (define gx#core-bind-import!
      (lambda _g174667_
        (let ((_g174666_ (##length _g174667_)))
          (cond ((##fx= _g174666_ 1)
                 (apply (lambda (_in168279_)
                          (gx#core-bind-import!__0 _in168279_))
                        _g174667_))
                ((##fx= _g174666_ 2)
                 (apply (lambda (_in168285_ _ctx168286_)
                          (gx#core-bind-import!__1 _in168285_ _ctx168286_))
                        _g174667_))
                ((##fx= _g174666_ 3)
                 (apply (lambda (_in168290_ _ctx168291_ _force-weak?168292_)
                          (gx#core-bind-import!__%
                           _in168290_
                           _ctx168291_
                           _force-weak?168292_))
                        _g174667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g174667_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in168210_ _ctx168211_)
        (gx#core-bind-import!__% _in168210_ _ctx168211_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in168216_)
        (let ((_ctx168218_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in168216_ _ctx168218_))))
    (define gx#core-bind-weak-import!
      (lambda _g174669_
        (let ((_g174668_ (##length _g174669_)))
          (cond ((##fx= _g174668_ 1)
                 (apply (lambda (_in168216_)
                          (gx#core-bind-weak-import!__0 _in168216_))
                        _g174669_))
                ((##fx= _g174668_ 2)
                 (apply (lambda (_in168220_ _ctx168221_)
                          (gx#core-bind-weak-import!__%
                           _in168220_
                           _ctx168221_))
                        _g174669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g174669_))))))
    (define gx#core-resolve-module-export
      (lambda (_out168101_)
        (letrec ((_subst168103_
                  (lambda (_key168149_)
                    (let* ((_key168150168158_ _key168149_)
                           (_else168152168166_ (lambda () _key168149_))
                           (_K168154168197_
                            (lambda (_mark168169_ _id168170_)
                              (let* ((_mark168171168177_ _mark168169_)
                                     (_E168173168181_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark168171168177_)))
                                     (_K168174168189_
                                      (lambda (_subst168184_)
                                        (let ((_$e168186_
                                               (if _subst168184_
                                                   (table-ref
                                                    _subst168184_
                                                    _id168170_
                                                    '#f)
                                                   '#f)))
                                          (if _$e168186_
                                              _$e168186_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key168149_))))))
                                (if (##structure-instance-of?
                                     _mark168171168177_
                                     'gx#expander-mark::t)
                                    (let* ((_e168175168192_
                                            (##unchecked-structure-ref
                                             _mark168171168177_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst168195_ _e168175168192_))
                                      (_K168174168189_ _subst168195_))
                                    (_E168173168181_))))))
                      (if (##pair? _key168150168158_)
                          (let ((_hd168155168200_ (##car _key168150168158_))
                                (_tl168156168202_ (##cdr _key168150168158_)))
                            (let* ((_id168205_ _hd168155168200_)
                                   (_mark168207_ _tl168156168202_))
                              (_K168154168197_ _mark168207_ _id168205_)))
                          (_else168152168166_))))))
          (let* ((_out168104168114_ _out168101_)
                 (_E168106168118_
                  (lambda () (error '"No clause matching" _out168104168114_)))
                 (_K168107168125_
                  (lambda (_phi168121_ _key168122_ _ctx168123_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx168123_ _phi168121_)
                     (_subst168103_ _key168122_)))))
            (if (##structure-direct-instance-of?
                 _out168104168114_
                 'gx#module-export::t)
                (let* ((_e168108168128_
                        (##unchecked-structure-ref
                         _out168104168114_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx168131_ _e168108168128_)
                       (_e168109168133_
                        (##unchecked-structure-ref
                         _out168104168114_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key168136_ _e168109168133_)
                       (_e168110168138_
                        (##unchecked-structure-ref
                         _out168104168114_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi168141_ _e168110168138_)
                       (_e168111168143_
                        (##unchecked-structure-ref
                         _out168104168114_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e168112168146_
                        (##unchecked-structure-ref
                         _out168104168114_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K168107168125_ _phi168141_ _key168136_ _ctx168131_))
                (_E168106168118_))))))
    (define gx#core-module-export->import__%
      (lambda (_out168026_ _rename168027_ _dphi168028_)
        (let* ((_out168029168039_ _out168026_)
               (_E168031168043_
                (lambda () (error '"No clause matching" _out168029168039_)))
               (_K168032168055_
                (lambda (_weak?168046_
                         _name168047_
                         _phi168048_
                         _key168049_
                         _ctx168050_)
                  (##structure
                   gx#module-import::t
                   _out168026_
                   (let ((_$e168052_ _rename168027_))
                     (if _$e168052_ _$e168052_ _name168047_))
                   (fx+ _phi168048_ _dphi168028_)
                   _weak?168046_))))
          (if (##structure-direct-instance-of?
               _out168029168039_
               'gx#module-export::t)
              (let* ((_e168033168058_
                      (##unchecked-structure-ref
                       _out168029168039_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx168061_ _e168033168058_)
                     (_e168034168063_
                      (##unchecked-structure-ref
                       _out168029168039_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key168066_ _e168034168063_)
                     (_e168035168068_
                      (##unchecked-structure-ref
                       _out168029168039_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi168071_ _e168035168068_)
                     (_e168036168073_
                      (##unchecked-structure-ref
                       _out168029168039_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name168076_ _e168036168073_)
                     (_e168037168078_
                      (##unchecked-structure-ref
                       _out168029168039_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?168081_ _e168037168078_))
                (_K168032168055_
                 _weak?168081_
                 _name168076_
                 _phi168071_
                 _key168066_
                 _ctx168061_))
              (_E168031168043_)))))
    (define gx#core-module-export->import__0
      (lambda (_out168086_)
        (let* ((_rename168088_ '#f) (_dphi168090_ '0))
          (gx#core-module-export->import__%
           _out168086_
           _rename168088_
           _dphi168090_))))
    (define gx#core-module-export->import__1
      (lambda (_out168092_ _rename168093_)
        (let ((_dphi168095_ '0))
          (gx#core-module-export->import__%
           _out168092_
           _rename168093_
           _dphi168095_))))
    (define gx#core-module-export->import
      (lambda _g174671_
        (let ((_g174670_ (##length _g174671_)))
          (cond ((##fx= _g174670_ 1)
                 (apply (lambda (_out168086_)
                          (gx#core-module-export->import__0 _out168086_))
                        _g174671_))
                ((##fx= _g174670_ 2)
                 (apply (lambda (_out168092_ _rename168093_)
                          (gx#core-module-export->import__1
                           _out168092_
                           _rename168093_))
                        _g174671_))
                ((##fx= _g174670_ 3)
                 (apply (lambda (_out168097_ _rename168098_ _dphi168099_)
                          (gx#core-module-export->import__%
                           _out168097_
                           _rename168098_
                           _dphi168099_))
                        _g174671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g174671_))))))
    (define gx#core-expand-module%
      (lambda (_stx167954_)
        (letrec ((_make-context167956_
                  (lambda (_id168007_)
                    (let* ((_super168009_ (gx#current-expander-context))
                           (_bind-id168011_ (gx#stx-e _id168007_))
                           (_mod-id168013_
                            (if (##structure-instance-of?
                                 _super168009_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super168009_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id168011_)
                                _bind-id168011_))
                           (_ns168015_ (symbol->string _mod-id168013_))
                           (_path168022_
                            (if (##structure-instance-of?
                                 _super168009_
                                 'gx#module-context::t)
                                (let ((_path168017_
                                       (##unchecked-structure-ref
                                        _super168009_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path168017_)
                                          (null? _path168017_))
                                      (cons _bind-id168011_ _path168017_)
                                      (if (not _path168017_)
                                          _bind-id168011_
                                          (cons _bind-id168011_
                                                (cons _path168017_ '())))))
                                _bind-id168011_)))
                      (let ((__obj174647
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
                         __obj174647
                         _mod-id168013_
                         _super168009_
                         _ns168015_
                         _path168022_)
                        __obj174647)))))
          (let* ((_e167957167967_ _stx167954_)
                 (_E167959167971_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e167957167967_)))
                 (_E167958168003_
                  (lambda ()
                    (if (gx#stx-pair? _e167957167967_)
                        (let ((_e167960167975_ (gx#syntax-e _e167957167967_)))
                          (let ((_hd167961167978_ (##car _e167960167975_))
                                (_tl167962167980_ (##cdr _e167960167975_)))
                            (if (gx#stx-pair? _tl167962167980_)
                                (let ((_e167963167983_
                                       (gx#syntax-e _tl167962167980_)))
                                  (let ((_hd167964167986_
                                         (##car _e167963167983_))
                                        (_tl167965167988_
                                         (##cdr _e167963167983_)))
                                    (let* ((_id167991_ _hd167964167986_)
                                           (_body167993_ _tl167965167988_))
                                      (if (and (gx#identifier? _id167991_)
                                               (gx#stx-list? _body167993_))
                                          (let* ((_ctx167995_
                                                  (_make-context167956_
                                                   _id167991_))
                                                 (_body167997_
                                                  (gx#core-expand-module-begin
                                                   _body167993_
                                                   _ctx167995_))
                                                 (_body167999_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body167997_)
                                                   (gx#stx-source
                                                    _stx167954_))))
                                            (##unchecked-structure-set!
                                             _ctx167995_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body167999_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx167995_
                                             _body167999_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id167991_
                                             _ctx167995_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id167991_)
                                              _body167999_)
                                             (gx#stx-source _stx167954_)))
                                          (_E167959167971_)))))
                                (_E167959167971_))))
                        (_E167959167971_)))))
            (_E167958168003_)))))
    (define gx#core-expand-module-begin
      (lambda (_body167920_ _ctx167921_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx167924_
                   (gx#core-expand-head (cons '%%begin-module _body167920_)))
                  (_e167925167932_ _stx167924_)
                  (_E167927167936_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx167924_)))
                  (_E167926167950_
                   (lambda ()
                     (if (gx#stx-pair? _e167925167932_)
                         (let ((_e167928167940_ (gx#syntax-e _e167925167932_)))
                           (let ((_hd167929167943_ (##car _e167928167940_))
                                 (_tl167930167945_ (##cdr _e167928167940_)))
                             (if (and (gx#identifier? _hd167929167943_)
                                      (gx#core-identifier=?
                                       _hd167929167943_
                                       '%#begin-module))
                                 (let ((_body167948_ _tl167930167945_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx167924_)
                                           _body167948_
                                           (gx#core-expand-module-body
                                            _body167948_))
                                       (_E167927167936_)))
                                 (_E167927167936_))))
                         (_E167927167936_)))))
             (_E167926167950_)))
         gx#current-expander-context
         _ctx167921_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body167716_)
        (letrec ((_expand-special167718_
                  (lambda (_hd167847_ _K167848_ _rest167849_ _r167850_)
                    (let* ((_e167851167868_ _hd167847_)
                           (_E167863167872_
                            (lambda ()
                              (_K167848_
                               _rest167849_
                               (cons (gx#core-expand-top _hd167847_)
                                     _r167850_))))
                           (_E167853167884_
                            (lambda ()
                              (if (gx#stx-pair? _e167851167868_)
                                  (let ((_e167864167876_
                                         (gx#syntax-e _e167851167868_)))
                                    (let ((_hd167865167879_
                                           (##car _e167864167876_))
                                          (_tl167866167881_
                                           (##cdr _e167864167876_)))
                                      (if (and (gx#identifier?
                                                _hd167865167879_)
                                               (gx#core-identifier=?
                                                _hd167865167879_
                                                '%#export))
                                          (if '#t
                                              (_K167848_
                                               _rest167849_
                                               (cons _hd167847_ _r167850_))
                                              (_E167863167872_))
                                          (_E167863167872_))))
                                  (_E167863167872_))))
                           (_E167852167916_
                            (lambda ()
                              (if (gx#stx-pair? _e167851167868_)
                                  (let ((_e167854167888_
                                         (gx#syntax-e _e167851167868_)))
                                    (let ((_hd167855167891_
                                           (##car _e167854167888_))
                                          (_tl167856167893_
                                           (##cdr _e167854167888_)))
                                      (if (and (gx#identifier?
                                                _hd167855167891_)
                                               (gx#core-identifier=?
                                                _hd167855167891_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl167856167893_)
                                              (let ((_e167857167896_
                                                     (gx#syntax-e
                                                      _tl167856167893_)))
                                                (let ((_hd167858167899_
                                                       (##car _e167857167896_))
                                                      (_tl167859167901_
                                                       (##cdr _e167857167896_)))
                                                  (let ((_hd-bind167904_
                                                         _hd167858167899_))
                                                    (if (gx#stx-pair?
                                                         _tl167859167901_)
                                                        (let ((_e167860167906_
                                                               (gx#syntax-e
                                                                _tl167859167901_)))
                                                          (let ((_hd167861167909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e167860167906_))
                        (_tl167862167911_ (##cdr _e167860167906_)))
                    (let ((_expr167914_ _hd167861167909_))
                      (if (gx#stx-null? _tl167862167911_)
                          (if (gx#core-bind-values? _hd-bind167904_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind167904_)
                                (_K167848_
                                 _rest167849_
                                 (cons _hd167847_ _r167850_)))
                              (_E167853167884_))
                          (_E167853167884_)))))
                (_E167853167884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E167853167884_))
                                          (_E167853167884_))))
                                  (_E167853167884_)))))
                      (_E167852167916_))))
                 (_expand-body167719_
                  (lambda (_rbody167721_)
                    (let _lp167723_ ((_rest167725_ _rbody167721_)
                                     (_body167726_ '()))
                      (let* ((_rest167727167735_ _rest167725_)
                             (_else167729167743_ (lambda () _body167726_))
                             (_K167731167835_
                              (lambda (_rest167746_ _hd167747_)
                                (let* ((_e167748167769_ _hd167747_)
                                       (_E167764167773_
                                        (lambda ()
                                          (_lp167723_
                                           _rest167746_
                                           (cons (gx#core-expand-expression
                                                  _hd167747_)
                                                 _body167726_))))
                                       (_E167760167787_
                                        (lambda ()
                                          (if (gx#stx-pair? _e167748167769_)
                                              (let ((_e167765167777_
                                                     (gx#syntax-e
                                                      _e167748167769_)))
                                                (let ((_hd167766167780_
                                                       (##car _e167765167777_))
                                                      (_tl167767167782_
                                                       (##cdr _e167765167777_)))
                                                  (let ((_form167785_
                                                         _hd167766167780_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form167785_
                                                         gx#special-form-binding?)
                                                        (_lp167723_
                                                         _rest167746_
                                                         (cons _hd167747_
                                                               _body167726_))
                                                        (_E167764167773_)))))
                                              (_E167764167773_))))
                                       (_E167750167799_
                                        (lambda ()
                                          (if (gx#stx-pair? _e167748167769_)
                                              (let ((_e167761167791_
                                                     (gx#syntax-e
                                                      _e167748167769_)))
                                                (let ((_hd167762167794_
                                                       (##car _e167761167791_))
                                                      (_tl167763167796_
                                                       (##cdr _e167761167791_)))
                                                  (if (and (gx#identifier?
                                                            _hd167762167794_)
                                                           (gx#core-identifier=?
                                                            _hd167762167794_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp167723_
                                                           _rest167746_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd167747_)
                         _body167726_))
                  (_E167760167787_))
              (_E167760167787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E167760167787_))))
                                       (_E167749167831_
                                        (lambda ()
                                          (if (gx#stx-pair? _e167748167769_)
                                              (let ((_e167751167803_
                                                     (gx#syntax-e
                                                      _e167748167769_)))
                                                (let ((_hd167752167806_
                                                       (##car _e167751167803_))
                                                      (_tl167753167808_
                                                       (##cdr _e167751167803_)))
                                                  (if (and (gx#identifier?
                                                            _hd167752167806_)
                                                           (gx#core-identifier=?
                                                            _hd167752167806_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl167753167808_)
                                                          (let ((_e167754167811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl167753167808_)))
                    (let ((_hd167755167814_ (##car _e167754167811_))
                          (_tl167756167816_ (##cdr _e167754167811_)))
                      (let ((_hd-bind167819_ _hd167755167814_))
                        (if (gx#stx-pair? _tl167756167816_)
                            (let ((_e167757167821_
                                   (gx#syntax-e _tl167756167816_)))
                              (let ((_hd167758167824_ (##car _e167757167821_))
                                    (_tl167759167826_ (##cdr _e167757167821_)))
                                (let ((_expr167829_ _hd167758167824_))
                                  (if (gx#stx-null? _tl167759167826_)
                                      (if '#t
                                          (_lp167723_
                                           _rest167746_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind167819_)
                                                   (gx#core-expand-expression
                                                    _expr167829_))
                                                  (gx#stx-source _hd167747_))
                                                 _body167726_))
                                          (_E167750167799_))
                                      (_E167750167799_)))))
                            (_E167750167799_)))))
                  (_E167750167799_))
              (_E167750167799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E167750167799_)))))
                                  (_E167749167831_)))))
                        (if (##pair? _rest167727167735_)
                            (let ((_hd167732167838_ (##car _rest167727167735_))
                                  (_tl167733167840_
                                   (##cdr _rest167727167735_)))
                              (let* ((_hd167843_ _hd167732167838_)
                                     (_rest167845_ _tl167733167840_))
                                (_K167731167835_ _rest167845_ _hd167843_)))
                            (_else167729167743_)))))))
          (_expand-body167719_
           (gx#core-expand-block__%
            (cons '%#begin-module _body167716_)
            _expand-special167718_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx167559_
               _expanded?167560_
               _method167561_
               _current-phi167562_
               _expand1167563_)
        (letrec ((_K167565_
                  (lambda (_rest167683_ _r167684_)
                    (let* ((_e167685167692_ _rest167683_)
                           (_E167687167696_ (lambda () _r167684_))
                           (_E167686167712_
                            (lambda ()
                              (if (gx#stx-pair? _e167685167692_)
                                  (let ((_e167688167700_
                                         (gx#syntax-e _e167685167692_)))
                                    (let ((_hd167689167703_
                                           (##car _e167688167700_))
                                          (_tl167690167705_
                                           (##cdr _e167688167700_)))
                                      (let* ((_hd167708_ _hd167689167703_)
                                             (_rest167710_ _tl167690167705_))
                                        (if '#t
                                            (_step167566_
                                             _hd167708_
                                             _rest167710_
                                             _r167684_)
                                            (_E167687167696_)))))
                                  (_E167687167696_)))))
                      (_E167686167712_))))
                 (_step167566_
                  (lambda (_hd167597_ _rest167598_ _r167599_)
                    (let* ((_e167600167618_ _hd167597_)
                           (_E167613167622_
                            (lambda ()
                              (if (_expanded?167560_ (gx#stx-e _hd167597_))
                                  (_K167565_
                                   _rest167598_
                                   (cons (gx#stx-e _hd167597_) _r167599_))
                                  (_expand1167563_
                                   _hd167597_
                                   _K167565_
                                   _rest167598_
                                   _r167599_))))
                           (_E167609167638_
                            (lambda ()
                              (if (gx#stx-pair? _e167600167618_)
                                  (let ((_e167614167626_
                                         (gx#syntax-e _e167600167618_)))
                                    (let ((_hd167615167629_
                                           (##car _e167614167626_))
                                          (_tl167616167631_
                                           (##cdr _e167614167626_)))
                                      (let* ((_macro167634_ _hd167615167629_)
                                             (_body167636_ _tl167616167631_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro167634_
                                             gx#syntax-binding?)
                                            (_K167565_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro167634_)
                                                    _hd167597_
                                                    _method167561_)
                                                   _rest167598_)
                                             _r167599_)
                                            (_E167613167622_)))))
                                  (_E167613167622_))))
                           (_E167602167652_
                            (lambda ()
                              (if (gx#stx-pair? _e167600167618_)
                                  (let ((_e167610167642_
                                         (gx#syntax-e _e167600167618_)))
                                    (let ((_hd167611167645_
                                           (##car _e167610167642_))
                                          (_tl167612167647_
                                           (##cdr _e167610167642_)))
                                      (if (eq? (gx#stx-e _hd167611167645_)
                                               'begin:)
                                          (let ((_body167650_
                                                 _tl167612167647_))
                                            (if '#t
                                                (_K167565_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest167598_
                                                  _body167650_)
                                                 _r167599_)
                                                (_E167609167638_)))
                                          (_E167609167638_))))
                                  (_E167609167638_))))
                           (_E167601167679_
                            (lambda ()
                              (if (gx#stx-pair? _e167600167618_)
                                  (let ((_e167603167656_
                                         (gx#syntax-e _e167600167618_)))
                                    (let ((_hd167604167659_
                                           (##car _e167603167656_))
                                          (_tl167605167661_
                                           (##cdr _e167603167656_)))
                                      (if (eq? (gx#stx-e _hd167604167659_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl167605167661_)
                                              (let ((_e167606167664_
                                                     (gx#syntax-e
                                                      _tl167605167661_)))
                                                (let ((_hd167607167667_
                                                       (##car _e167606167664_))
                                                      (_tl167608167669_
                                                       (##cdr _e167606167664_)))
                                                  (let* ((_dphi167672_
                                                          _hd167607167667_)
                                                         (_body167674_
                                                          _tl167608167669_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi167672_)
                                                        (let ((_rbody167677_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K167565_ _body167674_ '()))
                        _current-phi167562_
                        (fx+ (gx#stx-e _dphi167672_) (_current-phi167562_)))))
                  (_K167565_
                   _rest167598_
                   (foldr1 cons _r167599_ _rbody167677_)))
                (_E167602167652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E167602167652_))
                                          (_E167602167652_))))
                                  (_E167602167652_)))))
                      (_E167601167679_)))))
          (let* ((_e167567167574_ _stx167559_)
                 (_E167569167578_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e167567167574_)))
                 (_E167568167593_
                  (lambda ()
                    (if (gx#stx-pair? _e167567167574_)
                        (let ((_e167570167582_ (gx#syntax-e _e167567167574_)))
                          (let ((_hd167571167585_ (##car _e167570167582_))
                                (_tl167572167587_ (##cdr _e167570167582_)))
                            (let ((_body167590_ _tl167572167587_))
                              (if '#t
                                  (if (_current-phi167562_)
                                      (_K167565_ _body167590_ '())
                                      (call-with-parameters
                                       (lambda () (_K167565_ _body167590_ '()))
                                       _current-phi167562_
                                       (gx#current-expander-phi)))
                                  (_E167569167578_)))))
                        (_E167569167578_)))))
            (_E167568167593_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx167226_ _internal-expand?167227_)
        (letrec ((_expand1167229_
                  (lambda (_hd167539_ _K167540_ _rest167541_ _r167542_)
                    (if (gx#core-bound-module? _hd167539_)
                        (_import1167230_
                         (gx#syntax-local-e__0 _hd167539_)
                         _K167540_
                         _rest167541_
                         _r167542_)
                        (if (gx#core-library-module-path? _hd167539_)
                            (_import1167230_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd167539_))
                             _K167540_
                             _rest167541_
                             _r167542_)
                            (if (gx#core-library-relative-module-path?
                                 _hd167539_)
                                (_import1167230_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd167539_))
                                 _K167540_
                                 _rest167541_
                                 _r167542_)
                                (let ((_e167544_ (gx#stx-e _hd167539_)))
                                  (if (pair? _e167544_)
                                      (let ((_$e167546_
                                             (gx#stx-e (car _e167544_))))
                                        (if (eq? 'spec: _$e167546_)
                                            (_import-spec167233_
                                             _hd167539_
                                             _K167540_
                                             _rest167541_
                                             _r167542_)
                                            (if (eq? 'in: _$e167546_)
                                                (_import-submodule167231_
                                                 _hd167539_
                                                 _K167540_
                                                 _rest167541_
                                                 _r167542_)
                                                (if (eq? 'runtime: _$e167546_)
                                                    (_import-runtime167232_
                                                     _hd167539_
                                                     _K167540_
                                                     _rest167541_
                                                     _r167542_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx167226_
                                                     _hd167539_)))))
                                      (if (string? _e167544_)
                                          (_import1167230_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd167539_
                                             (gx#stx-source _stx167226_)))
                                           _K167540_
                                           _rest167541_
                                           _r167542_)
                                          (if (##structure-instance-of?
                                               _e167544_
                                               'gx#module-context::t)
                                              (_K167540_
                                               _rest167541_
                                               (cons _e167544_ _r167542_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx167226_
                                               _hd167539_))))))))))
                 (_import1167230_
                  (lambda (_ctx167528_ _K167529_ _rest167530_ _r167531_)
                    (let ((_dphi167533_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K167529_
                       _rest167530_
                       (cons (##structure
                              gx#import-set::t
                              _ctx167528_
                              _dphi167533_
                              (map (lambda (_g167534167536_)
                                     (gx#core-module-export->import__%
                                      _g167534167536_
                                      '#f
                                      _dphi167533_))
                                   (##unchecked-structure-ref
                                    _ctx167528_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r167531_)))))
                 (_import-submodule167231_
                  (lambda (_hd167495_ _K167496_ _rest167497_ _r167498_)
                    (let* ((_e167499167506_ _hd167495_)
                           (_E167501167510_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e167499167506_)))
                           (_E167500167524_
                            (lambda ()
                              (if (gx#stx-pair? _e167499167506_)
                                  (let ((_e167502167514_
                                         (gx#syntax-e _e167499167506_)))
                                    (let ((_hd167503167517_
                                           (##car _e167502167514_))
                                          (_tl167504167519_
                                           (##cdr _e167502167514_)))
                                      (let ((_spath167522_ _tl167504167519_))
                                        (if '#t
                                            (_import1167230_
                                             (_import-spec-source167234_
                                              _spath167522_)
                                             _K167496_
                                             _rest167497_
                                             _r167498_)
                                            (_E167501167510_)))))
                                  (_E167501167510_)))))
                      (_E167500167524_))))
                 (_import-runtime167232_
                  (lambda (_hd167462_ _K167463_ _rest167464_ _r167465_)
                    (let* ((_e167466167473_ _hd167462_)
                           (_E167468167477_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e167466167473_)))
                           (_E167467167491_
                            (lambda ()
                              (if (gx#stx-pair? _e167466167473_)
                                  (let ((_e167469167481_
                                         (gx#syntax-e _e167466167473_)))
                                    (let ((_hd167470167484_
                                           (##car _e167469167481_))
                                          (_tl167471167486_
                                           (##cdr _e167469167481_)))
                                      (let ((_spath167489_ _tl167471167486_))
                                        (if '#t
                                            (_K167463_
                                             _rest167464_
                                             (cons (_import-spec-source167234_
                                                    _spath167489_)
                                                   _r167465_))
                                            (_E167468167477_)))))
                                  (_E167468167477_)))))
                      (_E167467167491_))))
                 (_import-spec167233_
                  (lambda (_hd167301_ _K167302_ _rest167303_ _r167304_)
                    (let* ((_e167305167322_ _hd167301_)
                           (_E167314167326_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e167305167322_)))
                           (_E167307167436_
                            (lambda ()
                              (if (gx#stx-pair? _e167305167322_)
                                  (let ((_e167315167330_
                                         (gx#syntax-e _e167305167322_)))
                                    (let ((_hd167316167333_
                                           (##car _e167315167330_))
                                          (_tl167317167335_
                                           (##cdr _e167315167330_)))
                                      (if (gx#stx-pair? _tl167317167335_)
                                          (let ((_e167318167338_
                                                 (gx#syntax-e
                                                  _tl167317167335_)))
                                            (let ((_hd167319167341_
                                                   (##car _e167318167338_))
                                                  (_tl167320167343_
                                                   (##cdr _e167318167338_)))
                                              (let* ((_path167346_
                                                      _hd167319167341_)
                                                     (_specs167348_
                                                      _tl167320167343_))
                                                (if '#t
                                                    (let ((_src-ctx167350_
                                                           (_import-spec-source167234_
                                                            _path167346_))
                                                          (_exports167351_
                                                           (make-table))
                                                          (_specs167352_
                                                           (gx#syntax->list
                                                            _specs167348_)))
                                                      (for-each
                                                       (lambda (_out167354_)
                                                         (table-set!
                                                          _exports167351_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out167354_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out167354_
                         '4
                         gx#module-export::t
                         '#f))
                  _out167354_))
               (##unchecked-structure-ref
                _src-ctx167350_
                '9
                gx#module-context::t
                '#f))
              (_K167302_
               _rest167303_
               (foldl1 (lambda (_spec167356_ _r167357_)
                         (let* ((_e167358167374_ _spec167356_)
                                (_E167360167378_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e167358167374_)))
                                (_E167359167432_
                                 (lambda ()
                                   (if (gx#stx-pair? _e167358167374_)
                                       (let ((_e167361167382_
                                              (gx#syntax-e _e167358167374_)))
                                         (let ((_hd167362167385_
                                                (##car _e167361167382_))
                                               (_tl167363167387_
                                                (##cdr _e167361167382_)))
                                           (let ((_phi167390_
                                                  _hd167362167385_))
                                             (if (gx#stx-pair?
                                                  _tl167363167387_)
                                                 (let ((_e167364167392_
                                                        (gx#syntax-e
                                                         _tl167363167387_)))
                                                   (let ((_hd167365167395_
                                                          (##car _e167364167392_))
                                                         (_tl167366167397_
                                                          (##cdr _e167364167392_)))
                                                     (let ((_name167400_
                                                            _hd167365167395_))
                                                       (if (gx#stx-pair?
                                                            _tl167366167397_)
                                                           (let ((_e167367167402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl167366167397_)))
                     (let ((_hd167368167405_ (##car _e167367167402_))
                           (_tl167369167407_ (##cdr _e167367167402_)))
                       (let ((_src-phi167410_ _hd167368167405_))
                         (if (gx#stx-pair? _tl167369167407_)
                             (let ((_e167370167412_
                                    (gx#syntax-e _tl167369167407_)))
                               (let ((_hd167371167415_ (##car _e167370167412_))
                                     (_tl167372167417_
                                      (##cdr _e167370167412_)))
                                 (let ((_src-name167420_ _hd167371167415_))
                                   (if (gx#stx-null? _tl167372167417_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi167410_)
                                                (gx#identifier?
                                                 _src-name167420_)
                                                (gx#stx-fixnum? _phi167390_)
                                                (gx#identifier? _name167400_))
                                           (let ((_src-phi167422_
                                                  (gx#stx-e _src-phi167410_))
                                                 (_src-name167423_
                                                  (gx#core-identifier-key
                                                   _src-name167420_))
                                                 (_phi167424_
                                                  (gx#stx-e _phi167390_))
                                                 (_name167425_
                                                  (gx#core-identifier-key
                                                   _name167400_)))
                                             (let ((_$e167427_
                                                    (table-ref
                                                     _exports167351_
                                                     (cons _src-phi167422_
                                                           _src-name167423_)
                                                     '#f)))
                                               (if _$e167427_
                                                   ((lambda (_out167430_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out167430_
                                                             _name167425_
                                                             (fx- _phi167424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi167422_))
                    _r167357_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e167427_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx167226_
                                                    _hd167301_))))
                                           (_E167360167378_))
                                       (_E167360167378_)))))
                             (_E167360167378_)))))
                   (_E167360167378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E167360167378_)))))
                                       (_E167360167378_)))))
                           (_E167359167432_)))
                       _r167304_
                       _specs167352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E167314167326_)))))
                                          (_E167314167326_))))
                                  (_E167314167326_))))
                           (_E167306167458_
                            (lambda ()
                              (if (gx#stx-pair? _e167305167322_)
                                  (let ((_e167308167440_
                                         (gx#syntax-e _e167305167322_)))
                                    (let ((_hd167309167443_
                                           (##car _e167308167440_))
                                          (_tl167310167445_
                                           (##cdr _e167308167440_)))
                                      (if (gx#stx-pair? _tl167310167445_)
                                          (let ((_e167311167448_
                                                 (gx#syntax-e
                                                  _tl167310167445_)))
                                            (let ((_hd167312167451_
                                                   (##car _e167311167448_))
                                                  (_tl167313167453_
                                                   (##cdr _e167311167448_)))
                                              (let ((_path167456_
                                                     _hd167312167451_))
                                                (if (gx#stx-null?
                                                     _tl167313167453_)
                                                    (if '#t
                                                        (_K167302_
                                                         _rest167303_
                                                         (cons (_import-spec-source167234_
                                                                _path167456_)
                                                               _r167304_))
                                                        (_E167307167436_))
                                                    (_E167307167436_)))))
                                          (_E167307167436_))))
                                  (_E167307167436_)))))
                      (_E167306167458_))))
                 (_import-spec-source167234_
                  (lambda (_spath167299_)
                    (gx#core-import-nested-module _spath167299_ _stx167226_)))
                 (_import!167235_
                  (lambda (_rbody167248_)
                    (letrec* ((_current-ctx167250_
                               (gx#current-expander-context))
                              (_deps167251_ (make-table 'test: eq?))
                              (_bind!167252_
                               (lambda (_hd167297_)
                                 (gx#core-bind-import!__1
                                  _hd167297_
                                  _current-ctx167250_))))
                      (let _lp167254_ ((_rest167256_ _rbody167248_)
                                       (_body167257_ '()))
                        (let* ((_rest167258167266_ _rest167256_)
                               (_else167260167276_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx167250_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx167250_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx167250_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body167257_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx167274_ _g174672_)
                                     (gx#eval-module _ctx167274_))
                                   _deps167251_)
                                  _body167257_))
                               (_K167262167285_
                                (lambda (_rest167279_ _hd167280_)
                                  (if (##structure-direct-instance-of?
                                       _hd167280_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!167252_ _hd167280_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd167280_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd167280_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps167251_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd167280_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd167280_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!167252_
                                             (##unchecked-structure-ref
                                              _hd167280_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd167280_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps167251_
                                                 (##unchecked-structure-ref
                                                  _hd167280_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e167282_
                                                 (##structure-instance-of?
                                                  _hd167280_
                                                  'gx#module-context::t)))
                                            (if _$e167282_
                                                _$e167282_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx167226_
                                                 _hd167280_)))))
                                  (_lp167254_
                                   _rest167279_
                                   (cons _hd167280_ _body167257_)))))
                          (if (##pair? _rest167258167266_)
                              (let ((_hd167263167288_
                                     (##car _rest167258167266_))
                                    (_tl167264167290_
                                     (##cdr _rest167258167266_)))
                                (let* ((_hd167293_ _hd167263167288_)
                                       (_rest167295_ _tl167264167290_))
                                  (_K167262167285_ _rest167295_ _hd167293_)))
                              (_else167260167276_)))))))
                 (_expanded-import?167236_
                  (lambda (_e167240_)
                    (let ((_$e167242_
                           (##structure-direct-instance-of?
                            _e167240_
                            'gx#import-set::t)))
                      (if _$e167242_
                          _$e167242_
                          (let ((_$e167245_
                                 (##structure-direct-instance-of?
                                  _e167240_
                                  'gx#module-import::t)))
                            (if _$e167245_
                                _$e167245_
                                (##structure-instance-of?
                                 _e167240_
                                 'gx#module-context::t))))))))
          (let ((_rbody167238_
                 (gx#core-expand-import/export
                  _stx167226_
                  _expanded-import?167236_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1167229_)))
            (if _internal-expand?167227_
                (reverse _rbody167238_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!167235_ _rbody167238_))
                 (gx#stx-source _stx167226_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx167552_)
        (let ((_internal-expand?167554_ '#f))
          (gx#core-expand-import%__% _stx167552_ _internal-expand?167554_))))
    (define gx#core-expand-import%
      (lambda _g174674_
        (let ((_g174673_ (##length _g174674_)))
          (cond ((##fx= _g174673_ 1)
                 (apply (lambda (_stx167552_)
                          (gx#core-expand-import%__0 _stx167552_))
                        _g174674_))
                ((##fx= _g174673_ 2)
                 (apply (lambda (_stx167556_ _internal-expand?167557_)
                          (gx#core-expand-import%__%
                           _stx167556_
                           _internal-expand?167557_))
                        _g174674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g174674_))))))
    (define gx#core-import-nested-module
      (lambda (_spath167153_ _where167154_)
        (let* ((_e167155167162_ _spath167153_)
               (_E167157167166_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167155167162_)))
               (_E167156167221_
                (lambda ()
                  (if (gx#stx-pair? _e167155167162_)
                      (let ((_e167158167170_ (gx#syntax-e _e167155167162_)))
                        (let ((_hd167159167173_ (##car _e167158167170_))
                              (_tl167160167175_ (##cdr _e167158167170_)))
                          (let* ((_origin167178_ _hd167159167173_)
                                 (_sub167180_ _tl167160167175_))
                            (if '#t
                                (let ((_origin-ctx167182_
                                       (if (gx#stx-false? _origin167178_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin167178_))))
                                  (let _lp167184_ ((_rest167186_ _sub167180_)
                                                   (_ctx167187_
                                                    _origin-ctx167182_))
                                    (let* ((_e167188167195_ _rest167186_)
                                           (_E167190167199_
                                            (lambda () _ctx167187_))
                                           (_E167189167217_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e167188167195_)
                                                  (let ((_e167191167203_
                                                         (gx#syntax-e
                                                          _e167188167195_)))
                                                    (let ((_hd167192167206_
                                                           (##car _e167191167203_))
                                                          (_tl167193167208_
                                                           (##cdr _e167191167203_)))
                                                      (let* ((_id167211_
                                                              _hd167192167206_)
                                                             (_rest167213_
                                                              _tl167193167208_))
                                                        (if '#t
                                                            (let ((_bind167215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id167211_
                            '0
                            _ctx167187_)))
                      (if (and (##structure-direct-instance-of?
                                _bind167215_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind167215_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where167154_
                           _spath167153_
                           _id167211_))
                      (_lp167184_
                       _rest167213_
                       (##unchecked-structure-ref
                        _bind167215_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E167190167199_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167190167199_)))))
                                      (_E167189167217_))))
                                (_E167157167166_)))))
                      (_E167157167166_)))))
          (_E167156167221_))))
    (define gx#core-expand-import-source
      (lambda (_hd167151_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd167151_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx166659_ _internal-expand?166660_)
        (letrec* ((_make-export__174603174604_
                   (lambda (_bind167099_ _phi167100_ _ctx167101_ _name167102_)
                     (let* ((_key167104_
                             (##unchecked-structure-ref
                              _bind167099_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key167106_
                             (if _name167102_
                                 (gx#core-identifier-key _name167102_)
                                 _key167104_)))
                       (##structure
                        gx#module-export::t
                        _ctx167101_
                        _key167104_
                        _phi167100_
                        _export-key167106_
                        (let ((_$e167109_
                               (##structure-instance-of?
                                _bind167099_
                                'gx#extern-binding::t)))
                          (if _$e167109_
                              _$e167109_
                              (##structure-direct-instance-of?
                               _bind167099_
                               'gx#import-binding::t)))))))
                  (_make-export__0__174605174608_
                   (lambda (_bind167115_)
                     (let* ((_phi167117_ (gx#current-export-expander-phi))
                            (_ctx167119_ (gx#current-expander-context))
                            (_name167121_ '#f))
                       (_make-export__174603174604_
                        _bind167115_
                        _phi167117_
                        _ctx167119_
                        _name167121_))))
                  (_make-export__1__174606174609_
                   (lambda (_bind167123_ _phi167124_)
                     (let* ((_ctx167126_ (gx#current-expander-context))
                            (_name167128_ '#f))
                       (_make-export__174603174604_
                        _bind167123_
                        _phi167124_
                        _ctx167126_
                        _name167128_))))
                  (_make-export__2__174607174610_
                   (lambda (_bind167130_ _phi167131_ _ctx167132_)
                     (let ((_name167134_ '#f))
                       (_make-export__174603174604_
                        _bind167130_
                        _phi167131_
                        _ctx167132_
                        _name167134_))))
                  (_make-export166662_
                   (lambda _g174676_
                     (let ((_g174675_ (##length _g174676_)))
                       (cond ((##fx= _g174675_ 1)
                              (apply (lambda (_bind167115_)
                                       (_make-export__0__174605174608_
                                        _bind167115_))
                                     _g174676_))
                             ((##fx= _g174675_ 2)
                              (apply (lambda (_bind167123_ _phi167124_)
                                       (_make-export__1__174606174609_
                                        _bind167123_
                                        _phi167124_))
                                     _g174676_))
                             ((##fx= _g174675_ 3)
                              (apply (lambda (_bind167130_
                                              _phi167131_
                                              _ctx167132_)
                                       (_make-export__2__174607174610_
                                        _bind167130_
                                        _phi167131_
                                        _ctx167132_))
                                     _g174676_))
                             ((##fx= _g174675_ 4)
                              (apply (lambda (_bind167136_
                                              _phi167137_
                                              _ctx167138_
                                              _name167139_)
                                       (_make-export__174603174604_
                                        _bind167136_
                                        _phi167137_
                                        _ctx167138_
                                        _name167139_))
                                     _g174676_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g174676_))))))
                  (_expand1166663_
                   (lambda (_hd166812_ _K166813_ _rest166814_ _r166815_)
                     (let* ((_e166816166848_ _hd166812_)
                            (_E166843166852_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx166659_
                                _hd166812_)))
                            (_E166833166931_
                             (lambda ()
                               (if (gx#stx-pair? _e166816166848_)
                                   (let ((_e166844166856_
                                          (gx#syntax-e _e166816166848_)))
                                     (let ((_hd166845166859_
                                            (##car _e166844166856_))
                                           (_tl166846166861_
                                            (##cdr _e166844166856_)))
                                       (if (eq? (gx#stx-e _hd166845166859_)
                                                'import:)
                                           (let ((_in166864_ _tl166846166861_))
                                             (if (gx#stx-list? _in166864_)
                                                 (let _lp166866_ ((_in-rest166868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in166864_)
                          (_r166869_ _r166815_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e166870166877_
                                                           _in-rest166868_)
                                                          (_E166872166881_
                                                           (lambda ()
                                                             (_K166813_
                                                              _rest166814_
                                                              _r166869_)))
                                                          (_E166871166927_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e166870166877_)
                         (let ((_e166873166885_ (gx#syntax-e _e166870166877_)))
                           (let ((_hd166874166888_ (##car _e166873166885_))
                                 (_tl166875166890_ (##cdr _e166873166885_)))
                             (let* ((_hd166893_ _hd166874166888_)
                                    (_in-rest166895_ _tl166875166890_))
                               (if '#t
                                   (let ((_src166925_
                                          (if (gx#core-bound-module?
                                               _hd166893_)
                                              (gx#syntax-local-e__0 _hd166893_)
                                              (if (gx#core-library-module-path?
                                                   _hd166893_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd166893_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd166893_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd166893_))
                                                      (if (gx#stx-string?
                                                           _hd166893_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd166893_
                                                            (gx#stx-source
                                                             _stx166659_)))
                                                          (let* ((_e166896166903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd166893_)
                         (_E166898166907_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx166659_
                             _hd166893_)))
                         (_E166897166921_
                          (lambda ()
                            (if (gx#stx-pair? _e166896166903_)
                                (let ((_e166899166911_
                                       (gx#syntax-e _e166896166903_)))
                                  (let ((_hd166900166914_
                                         (##car _e166899166911_))
                                        (_tl166901166916_
                                         (##cdr _e166899166911_)))
                                    (if (eq? (gx#stx-e _hd166900166914_) 'in:)
                                        (let ((_spath166919_ _tl166901166916_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath166919_
                                               _stx166659_)
                                              (_E166898166907_)))
                                        (_E166898166907_))))
                                (_E166898166907_)))))
                    (_E166897166921_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp166866_
                                      _in-rest166895_
                                      (_export-imports166664_
                                       _src166925_
                                       _r166869_)))
                                   (_E166872166881_)))))
                         (_E166872166881_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E166871166927_)))
                                                 (_E166843166852_)))
                                           (_E166843166852_))))
                                   (_E166843166852_))))
                            (_E166820166970_
                             (lambda ()
                               (if (gx#stx-pair? _e166816166848_)
                                   (let ((_e166834166935_
                                          (gx#syntax-e _e166816166848_)))
                                     (let ((_hd166835166938_
                                            (##car _e166834166935_))
                                           (_tl166836166940_
                                            (##cdr _e166834166935_)))
                                       (if (eq? (gx#stx-e _hd166835166938_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl166836166940_)
                                               (let ((_e166837166943_
                                                      (gx#syntax-e
                                                       _tl166836166940_)))
                                                 (let ((_hd166838166946_
                                                        (##car _e166837166943_))
                                                       (_tl166839166948_
                                                        (##cdr _e166837166943_)))
                                                   (let ((_id166951_
                                                          _hd166838166946_))
                                                     (if (gx#stx-pair?
                                                          _tl166839166948_)
                                                         (let ((_e166840166953_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl166839166948_)))
                   (let ((_hd166841166956_ (##car _e166840166953_))
                         (_tl166842166958_ (##cdr _e166840166953_)))
                     (let ((_name166961_ _hd166841166956_))
                       (if (gx#stx-null? _tl166842166958_)
                           (if '#t
                               (let* ((_phi166963_
                                       (gx#current-export-expander-phi))
                                      (_$e166965_
                                       (gx#core-resolve-identifier__1
                                        _id166951_
                                        _phi166963_)))
                                 (if _$e166965_
                                     ((lambda (_bind166968_)
                                        (_K166813_
                                         _rest166814_
                                         (cons (_make-export__174603174604_
                                                _bind166968_
                                                _phi166963_
                                                (gx#current-expander-context)
                                                _name166961_)
                                               _r166815_)))
                                      _$e166965_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx166659_
                                      _hd166812_
                                      _id166951_)))
                               (_E166833166931_))
                           (_E166833166931_)))))
                 (_E166833166931_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E166833166931_))
                                           (_E166833166931_))))
                                   (_E166833166931_))))
                            (_E166819167019_
                             (lambda ()
                               (if (gx#stx-pair? _e166816166848_)
                                   (let ((_e166821166974_
                                          (gx#syntax-e _e166816166848_)))
                                     (let ((_hd166822166977_
                                            (##car _e166821166974_))
                                           (_tl166823166979_
                                            (##cdr _e166821166974_)))
                                       (if (eq? (gx#stx-e _hd166822166977_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl166823166979_)
                                               (let ((_e166824166982_
                                                      (gx#syntax-e
                                                       _tl166823166979_)))
                                                 (let ((_hd166825166985_
                                                        (##car _e166824166982_))
                                                       (_tl166826166987_
                                                        (##cdr _e166824166982_)))
                                                   (let ((_phi166990_
                                                          _hd166825166985_))
                                                     (if (gx#stx-pair?
                                                          _tl166826166987_)
                                                         (let ((_e166827166992_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl166826166987_)))
                   (let ((_hd166828166995_ (##car _e166827166992_))
                         (_tl166829166997_ (##cdr _e166827166992_)))
                     (let ((_id167000_ _hd166828166995_))
                       (if (gx#stx-pair? _tl166829166997_)
                           (let ((_e166830167002_
                                  (gx#syntax-e _tl166829166997_)))
                             (let ((_hd166831167005_ (##car _e166830167002_))
                                   (_tl166832167007_ (##cdr _e166830167002_)))
                               (let ((_name167010_ _hd166831167005_))
                                 (if (gx#stx-null? _tl166832167007_)
                                     (if (and (gx#stx-fixnum? _phi166990_)
                                              (gx#identifier? _id167000_)
                                              (gx#identifier? _name167010_))
                                         (let* ((_phi167012_
                                                 (gx#stx-e _phi166990_))
                                                (_$e167014_
                                                 (gx#core-resolve-identifier__1
                                                  _id167000_
                                                  _phi167012_)))
                                           (if _$e167014_
                                               ((lambda (_bind167017_)
                                                  (_K166813_
                                                   _rest166814_
                                                   (cons (_make-export__174603174604_
                                                          _bind167017_
                                                          _phi167012_
                                                          (gx#current-expander-context)
                                                          _name167010_)
                                                         _r166815_)))
                                                _$e167014_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx166659_
                                                _hd166812_
                                                _id167000_)))
                                         (_E166820166970_))
                                     (_E166820166970_)))))
                           (_E166820166970_)))))
                 (_E166820166970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E166820166970_))
                                           (_E166820166970_))))
                                   (_E166820166970_))))
                            (_E166818167030_
                             (lambda ()
                               (let ((_id167023_ _e166816166848_))
                                 (if (gx#identifier? _id167023_)
                                     (let ((_$e167025_
                                            (gx#core-resolve-identifier__1
                                             _id167023_
                                             (gx#current-export-expander-phi))))
                                       (if _$e167025_
                                           ((lambda (_bind167028_)
                                              (_K166813_
                                               _rest166814_
                                               (cons (_make-export__0__174605174608_
                                                      _bind167028_)
                                                     _r166815_)))
                                            _$e167025_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx166659_
                                            _hd166812_)))
                                     (_E166819167019_)))))
                            (_E166817167094_
                             (lambda ()
                               (if (eq? (gx#stx-e _e166816166848_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx167034_
                                               (gx#current-expander-context))
                                              (_current-phi167036_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx167038_
                                               (gx#core-context-shift
                                                _current-ctx167034_
                                                _current-phi167036_))
                                              (_phi-bind167040_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx167038_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp167043_ ((_bind-rest167045_
                                                           _phi-bind167040_)
                                                          (_set167046_ '()))
                                           (let* ((_bind-rest167047167057_
                                                   _bind-rest167045_)
                                                  (_else167049167065_
                                                   (lambda ()
                                                     (_K166813_
                                                      _rest166814_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi167036_
                                                             _set167046_)
                                                            _r166815_))))
                                                  (_K167051167075_
                                                   (lambda (_bind-rest167068_
                                                            _bind167069_
                                                            _key167070_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind167069_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind167069_))
                                                         (_lp167043_
                                                          _bind-rest167068_
                                                          _set167046_)
                                                         (_lp167043_
                                                          _bind-rest167068_
                                                          (cons (_make-export__2__174607174610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind167069_
                         _current-phi167036_
                         _current-ctx167034_)
                        _set167046_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest167047167057_)
                                                 (let ((_hd167052167078_
                                                        (##car _bind-rest167047167057_))
                                                       (_tl167053167080_
                                                        (##cdr _bind-rest167047167057_)))
                                                   (if (##pair? _hd167052167078_)
                                                       (let ((_hd167054167083_
                                                              (##car _hd167052167078_))
                                                             (_tl167055167085_
                                                              (##cdr _hd167052167078_)))
                                                         (let* ((_key167088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd167054167083_)
                        (_bind167090_ _tl167055167085_)
                        (_bind-rest167092_ _tl167053167080_))
                   (_K167051167075_
                    _bind-rest167092_
                    _bind167090_
                    _key167088_)))
               (_else167049167065_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else167049167065_)))))
                                       (_E166818167030_))
                                   (_E166818167030_)))))
                       (_E166817167094_))))
                  (_export-imports166664_
                   (lambda (_src166688_ _r166689_)
                     (letrec* ((_current-ctx166691_
                                (gx#current-expander-context))
                               (_current-phi166692_
                                (gx#current-export-expander-phi))
                               (_import->export166693_
                                (lambda (_in166774_)
                                  (let* ((_in166775166783_ _in166774_)
                                         (_E166777166787_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in166775166783_)))
                                         (_K166778166794_
                                          (lambda (_phi166790_
                                                   _key166791_
                                                   _out166792_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx166691_
                                             _key166791_
                                             _phi166790_
                                             _key166791_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in166775166783_
                                         'gx#module-import::t)
                                        (let* ((_e166779166797_
                                                (##unchecked-structure-ref
                                                 _in166775166783_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out166800_ _e166779166797_)
                                               (_e166780166802_
                                                (##unchecked-structure-ref
                                                 _in166775166783_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key166805_ _e166780166802_)
                                               (_e166781166807_
                                                (##unchecked-structure-ref
                                                 _in166775166783_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi166810_ _e166781166807_))
                                          (_K166778166794_
                                           _phi166810_
                                           _key166805_
                                           _out166800_))
                                        (_E166777166787_)))))
                               (_fold-e166694_
                                (lambda (_in166696_ _r166697_)
                                  (let* ((_in166698166712_ _in166696_)
                                         (_else166701166720_
                                          (lambda () _r166697_)))
                                    (let ((_K166707166756_
                                           (lambda (_phi166752_
                                                    _key166753_
                                                    _out166754_)
                                             (if (and (fx= _phi166752_
                                                           _current-phi166692_)
                                                      (eq? _src166688_
                                                           (##unchecked-structure-ref
                                                            _out166754_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export166693_
                                                        _in166696_)
                                                       _r166697_)
                                                 _r166697_)))
                                          (_K166703166731_
                                           (lambda (_imports166724_
                                                    _phi166725_
                                                    _ctx166726_)
                                             (if (and (fx= _phi166725_
                                                           _current-phi166692_)
                                                      (eq? _src166688_
                                                           _ctx166726_))
                                                 (foldl1 (lambda (_in166728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r166729_)
                   (cons (_import->export166693_ _in166728_) _r166729_))
                 _r166697_
                 _imports166724_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r166697_))))
                                      (let ((_try-match166700166749_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in166698166712_
                                                    'gx#import-set::t)
                                                   (let* ((_e166704166734_
                                                           (##unchecked-structure-ref
                                                            _in166698166712_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e166705166739_
                                                           (##unchecked-structure-ref
                                                            _in166698166712_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e166706166744_
                                                           (##unchecked-structure-ref
                                                            _in166698166712_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx166737_
                                                            _e166704166734_)
                                                           (_phi166742_
                                                            _e166705166739_)
                                                           (_imports166747_
                                                            _e166706166744_))
                                                       (_K166703166731_
                                                        _imports166747_
                                                        _phi166742_
                                                        _ctx166737_)))
                                                   (_else166701166720_)))))
                                        (if (##structure-direct-instance-of?
                                             _in166698166712_
                                             'gx#module-import::t)
                                            (let* ((_e166708166759_
                                                    (##unchecked-structure-ref
                                                     _in166698166712_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e166709166764_
                                                    (##unchecked-structure-ref
                                                     _in166698166712_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e166710166769_
                                                    (##unchecked-structure-ref
                                                     _in166698166712_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out166762_
                                                     _e166708166759_)
                                                    (_key166767_
                                                     _e166709166764_)
                                                    (_phi166772_
                                                     _e166710166769_))
                                                (_K166707166756_
                                                 _phi166772_
                                                 _key166767_
                                                 _out166762_)))
                                            (_try-match166700166749_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src166688_
                              _current-phi166692_
                              (foldl1 _fold-e166694_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx166691_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r166689_))))
                  (_export!166665_
                   (lambda (_rbody166678_)
                     (letrec* ((_current-ctx166680_
                                (gx#current-expander-context))
                               (_fold-e166681_
                                (lambda (_out166685_ _r166686_)
                                  (if (##structure-direct-instance-of?
                                       _out166685_
                                       'gx#module-export::t)
                                      (cons _out166685_ _r166686_)
                                      (if (##structure-direct-instance-of?
                                           _out166685_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r166686_
                                                  (##unchecked-structure-ref
                                                   _out166685_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r166686_)))))
                       (let ((_body166683_ (reverse _rbody166678_)))
                         (##unchecked-structure-set!
                          _current-ctx166680_
                          (foldl1 _fold-e166681_
                                  (##unchecked-structure-ref
                                   _current-ctx166680_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body166683_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body166683_))))
                  (_expanded-export?166666_
                   (lambda (_e166673_)
                     (let ((_$e166675_
                            (##structure-direct-instance-of?
                             _e166673_
                             'gx#module-export::t)))
                       (if _$e166675_
                           _$e166675_
                           (##structure-direct-instance-of?
                            _e166673_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?166660_)
              (let ((_rbody166671_
                     (gx#core-expand-import/export
                      _stx166659_
                      _expanded-export?166666_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1166663_)))
                (if _internal-expand?166660_
                    (reverse _rbody166671_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!166665_ _rbody166671_))
                     (gx#stx-source _stx166659_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx166659_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx166659_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx167144_)
        (let ((_internal-expand?167146_ '#f))
          (gx#core-expand-export%__% _stx167144_ _internal-expand?167146_))))
    (define gx#core-expand-export%
      (lambda _g174678_
        (let ((_g174677_ (##length _g174678_)))
          (cond ((##fx= _g174677_ 1)
                 (apply (lambda (_stx167144_)
                          (gx#core-expand-export%__0 _stx167144_))
                        _g174678_))
                ((##fx= _g174677_ 2)
                 (apply (lambda (_stx167148_ _internal-expand?167149_)
                          (gx#core-expand-export%__%
                           _stx167148_
                           _internal-expand?167149_))
                        _g174678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g174678_))))))
    (define gx#core-expand-export-source
      (lambda (_hd166656_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd166656_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx166626_)
        (let* ((_e166627166634_ _stx166626_)
               (_E166629166638_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166627166634_)))
               (_E166628166652_
                (lambda ()
                  (if (gx#stx-pair? _e166627166634_)
                      (let ((_e166630166642_ (gx#syntax-e _e166627166634_)))
                        (let ((_hd166631166645_ (##car _e166630166642_))
                              (_tl166632166647_ (##cdr _e166630166642_)))
                          (let ((_body166650_ _tl166632166647_))
                            (if (gx#identifier-list? _body166650_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body166650_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body166650_))
                                   (gx#stx-source _stx166626_)))
                                (_E166629166638_)))))
                      (_E166629166638_)))))
          (_E166628166652_))))
    (define gx#core-bind-feature!__%
      (lambda (_id166592_ _private?166593_ _phi166594_ _ctx166595_)
        (gx#core-bind-syntax!__%
         _id166592_
         ((if _private?166593_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id166592_))
         _private?166593_
         _phi166594_
         _ctx166595_)))
    (define gx#core-bind-feature!__0
      (lambda (_id166600_)
        (let* ((_private?166602_ '#f)
               (_phi166604_ (gx#current-expander-phi))
               (_ctx166606_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id166600_
           _private?166602_
           _phi166604_
           _ctx166606_))))
    (define gx#core-bind-feature!__1
      (lambda (_id166608_ _private?166609_)
        (let* ((_phi166611_ (gx#current-expander-phi))
               (_ctx166613_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id166608_
           _private?166609_
           _phi166611_
           _ctx166613_))))
    (define gx#core-bind-feature!__2
      (lambda (_id166615_ _private?166616_ _phi166617_)
        (let ((_ctx166619_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id166615_
           _private?166616_
           _phi166617_
           _ctx166619_))))
    (define gx#core-bind-feature!
      (lambda _g174680_
        (let ((_g174679_ (##length _g174680_)))
          (cond ((##fx= _g174679_ 1)
                 (apply (lambda (_id166600_)
                          (gx#core-bind-feature!__0 _id166600_))
                        _g174680_))
                ((##fx= _g174679_ 2)
                 (apply (lambda (_id166608_ _private?166609_)
                          (gx#core-bind-feature!__1
                           _id166608_
                           _private?166609_))
                        _g174680_))
                ((##fx= _g174679_ 3)
                 (apply (lambda (_id166615_ _private?166616_ _phi166617_)
                          (gx#core-bind-feature!__2
                           _id166615_
                           _private?166616_
                           _phi166617_))
                        _g174680_))
                ((##fx= _g174679_ 4)
                 (apply (lambda (_id166621_
                                 _private?166622_
                                 _phi166623_
                                 _ctx166624_)
                          (gx#core-bind-feature!__%
                           _id166621_
                           _private?166622_
                           _phi166623_
                           _ctx166624_))
                        _g174680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g174680_))))))))
