(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707573212)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-struct-type
       'gx#module-import::t
       'module-import
       '#f
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (make-struct-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args160741_
        (apply make-struct-instance gx#module-import::t _$args160741_)))
    (define gx#module-import-source
      (make-struct-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (make-struct-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (make-struct-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (make-struct-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (make-struct-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (make-struct-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (make-struct-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (make-struct-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (make-struct-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (make-struct-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (make-struct-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (make-struct-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (make-struct-type
       'gx#module-export::t
       'module-export
       '#f
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (make-struct-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args160738_
        (apply make-struct-instance gx#module-export::t _$args160738_)))
    (define gx#module-export-context
      (make-struct-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (make-struct-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (make-struct-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (make-struct-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (make-struct-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (make-struct-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (make-struct-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (make-struct-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (make-struct-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (make-struct-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (make-struct-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (make-struct-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (make-struct-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (make-struct-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (make-struct-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (make-struct-type
       'gx#import-set::t
       'import-set
       '#f
       '(source phi imports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (make-struct-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args160735_
        (apply make-struct-instance gx#import-set::t _$args160735_)))
    (define gx#import-set-source
      (make-struct-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi
      (make-struct-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (make-struct-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (make-struct-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (make-struct-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (make-struct-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (make-struct-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (make-struct-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (make-struct-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (make-struct-type
       'gx#export-set::t
       'export-set
       '#f
       '(source phi exports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (make-struct-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args160732_
        (apply make-struct-instance gx#export-set::t _$args160732_)))
    (define gx#export-set-source
      (make-struct-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi
      (make-struct-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (make-struct-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (make-struct-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (make-struct-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (make-struct-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (make-struct-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (make-struct-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (make-struct-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'exports))
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
      (lambda _$args160729_
        (apply make-class-instance gx#import-expander::t _$args160729_)))
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
      (lambda _$args160726_
        (apply make-class-instance gx#export-expander::t _$args160726_)))
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
      (lambda _$args160723_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args160723_)))
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
      (lambda (_path160720_ _fun160721_)
        (call-with-input-file
         (cons 'path: (cons _path160720_ gx#source-file-settings))
         _fun160721_)))
    (define gx#module-context:::init!
      (lambda (_self160714_ _id160715_ _super160716_ _ns160717_ _path160718_)
        (if (##fx< '11 (##structure-length _self160714_))
            (begin
              (##unchecked-structure-set!
               _self160714_
               _id160715_
               '1
               (##structure-type _self160714_)
               '#f)
              (##unchecked-structure-set!
               _self160714_
               (make-table 'test: eq?)
               '2
               (##structure-type _self160714_)
               '#f)
              (##unchecked-structure-set!
               _self160714_
               _super160716_
               '3
               (##structure-type _self160714_)
               '#f)
              (##unchecked-structure-set!
               _self160714_
               '#f
               '4
               (##structure-type _self160714_)
               '#f)
              (##unchecked-structure-set!
               _self160714_
               '#f
               '5
               (##structure-type _self160714_)
               '#f)
              (##unchecked-structure-set!
               _self160714_
               _ns160717_
               '6
               (##structure-type _self160714_)
               '#f)
              (##unchecked-structure-set!
               _self160714_
               _path160718_
               '7
               (##structure-type _self160714_)
               '#f)
              (##unchecked-structure-set!
               _self160714_
               '()
               '8
               (##structure-type _self160714_)
               '#f)
              (##unchecked-structure-set!
               _self160714_
               '()
               '9
               (##structure-type _self160714_)
               '#f)
              (##unchecked-structure-set!
               _self160714_
               '#f
               '10
               (##structure-type _self160714_)
               '#f)
              (##unchecked-structure-set!
               _self160714_
               '#f
               '11
               (##structure-type _self160714_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160714_
                   '11
                   (##vector-length _self160714_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160558_ _ctx160559_ _root160560_)
        (let ((_super160568_
               (let ((_$e160562_ _root160560_))
                 (if _$e160562_
                     _$e160562_
                     (let ((_$e160565_ (gx#core-context-root__0)))
                       (if _$e160565_
                           _$e160565_
                           (let ((__obj165251
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor165252
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor165252
                                   (__constructor165252 __obj165251)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj165251)))))))
          (if _ctx160559_
              (let ((_id160571_
                     (##structure-ref
                      _ctx160559_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160572_
                     (##structure-ref _ctx160559_ '7 gx#module-context::t '#f))
                    (_in160573_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160559_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160574_
                     (make-promise (lambda () (gx#eval-module _ctx160559_)))))
                (if (##fx< '8 (##structure-length _self160558_))
                    (begin
                      (##unchecked-structure-set!
                       _self160558_
                       _id160571_
                       '1
                       (##structure-type _self160558_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160558_
                       (make-table 'test: eq? 'size: (length _in160573_))
                       '2
                       (##structure-type _self160558_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160558_
                       _super160568_
                       '3
                       (##structure-type _self160558_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160558_
                       '#f
                       '4
                       (##structure-type _self160558_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160558_
                       '#f
                       '5
                       (##structure-type _self160558_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160558_
                       _path160572_
                       '6
                       (##structure-type _self160558_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160558_
                       _in160573_
                       '7
                       (##structure-type _self160558_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160558_
                       _e160574_
                       '8
                       (##structure-type _self160558_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160558_
                           '8
                           (##vector-length _self160558_)))
                (for-each
                 (lambda (_g160575160577_)
                   (gx#core-bind-weak-import!__% _g160575160577_ _self160558_))
                 _in160573_))
              (if (##fx< '8 (##structure-length _self160558_))
                  (begin
                    (##unchecked-structure-set!
                     _self160558_
                     '#f
                     '1
                     (##structure-type _self160558_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160558_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self160558_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160558_
                     _super160568_
                     '3
                     (##structure-type _self160558_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160558_
                     '#f
                     '4
                     (##structure-type _self160558_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160558_
                     '#f
                     '5
                     (##structure-type _self160558_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160558_
                     '#f
                     '6
                     (##structure-type _self160558_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160558_
                     '()
                     '7
                     (##structure-type _self160558_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160558_
                     '#f
                     '8
                     (##structure-type _self160558_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160558_
                         '8
                         (##vector-length _self160558_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160583_ _ctx160584_)
        (let ((_root160586_ '#f))
          (gx#prelude-context:::init!__%
           _self160583_
           _ctx160584_
           _root160586_))))
    (define gx#prelude-context:::init!
      (lambda _g165258_
        (let ((_g165257_ (##length _g165258_)))
          (cond ((##fx= _g165257_ 2)
                 (apply (lambda (_self160583_ _ctx160584_)
                          (gx#prelude-context:::init!__0
                           _self160583_
                           _ctx160584_))
                        _g165258_))
                ((##fx= _g165257_ 3)
                 (apply (lambda (_self160588_ _ctx160589_ _root160590_)
                          (gx#prelude-context:::init!__%
                           _self160588_
                           _ctx160589_
                           _root160590_))
                        _g165258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g165258_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160432_ _e160433_)
        (if (##fx< '3 (##structure-length _self160432_))
            (begin
              (##unchecked-structure-set!
               _self160432_
               _e160433_
               '1
               (##structure-type _self160432_)
               '#f)
              (##unchecked-structure-set!
               _self160432_
               (gx#current-expander-context)
               '2
               (##structure-type _self160432_)
               '#f)
              (##unchecked-structure-set!
               _self160432_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160432_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160432_
                   '3
                   (##vector-length _self160432_)))))
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
      (lambda (_g160058160061_ _g160059160063_)
        (gx#core-apply-user-expander__%
         _g160058160061_
         _g160059160063_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g159929159932_ _g159930159934_)
        (gx#core-apply-user-expander__%
         _g159929159932_
         _g159930159934_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx159800_)
        (let* ((_path159802_
                (##structure-ref _ctx159800_ '7 gx#module-context::t '#f))
               (_path159804_
                (if (pair? _path159802_) (last _path159802_) _path159802_)))
          (if (string? _path159804_) _path159804_ '#f))))
    (define gx#import-module__%
      (lambda (_path159776_ _reload?159777_ _eval?159778_)
        (let ((_ctx159780_
               ((gx#current-expander-module-import)
                _path159776_
                _reload?159777_)))
          (if (and _ctx159780_ _eval?159778_)
              (gx#eval-module _ctx159780_)
              '#!void)
          _ctx159780_)))
    (define gx#import-module__0
      (lambda (_path159785_)
        (let* ((_reload?159787_ '#f) (_eval?159789_ '#f))
          (gx#import-module__% _path159785_ _reload?159787_ _eval?159789_))))
    (define gx#import-module__1
      (lambda (_path159791_ _reload?159792_)
        (let ((_eval?159794_ '#f))
          (gx#import-module__% _path159791_ _reload?159792_ _eval?159794_))))
    (define gx#import-module
      (lambda _g165260_
        (let ((_g165259_ (##length _g165260_)))
          (cond ((##fx= _g165259_ 1)
                 (apply (lambda (_path159785_)
                          (gx#import-module__0 _path159785_))
                        _g165260_))
                ((##fx= _g165259_ 2)
                 (apply (lambda (_path159791_ _reload?159792_)
                          (gx#import-module__1 _path159791_ _reload?159792_))
                        _g165260_))
                ((##fx= _g165259_ 3)
                 (apply (lambda (_path159796_ _reload?159797_ _eval?159798_)
                          (gx#import-module__%
                           _path159796_
                           _reload?159797_
                           _eval?159798_))
                        _g165260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g165260_))))))
    (define gx#eval-module
      (lambda (_mod159773_) ((gx#current-expander-module-eval) _mod159773_)))
    (define gx#core-eval-module
      (lambda (_obj159758_)
        (letrec ((_force-e159760_
                  (lambda (_getf159769_ _e159770_)
                    (call-with-parameters
                     (lambda () (force (_getf159769_ _e159770_)))
                     gx#current-expander-context
                     _e159770_
                     gx#current-expander-phi
                     '0))))
          (let _recur159762_ ((_e159764_ _obj159758_))
            (if (##structure-instance-of? _e159764_ 'gx#module-context::t)
                (begin
                  (let ((_$e159766_ (gx#core-context-prelude__% _e159764_)))
                    (if _$e159766_ (_recur159762_ _$e159766_) '#!void))
                  (_force-e159760_ gx#module-context-e _e159764_))
                (if (##structure-instance-of? _e159764_ 'gx#prelude-context::t)
                    (_force-e159760_ gx#prelude-context-e _e159764_)
                    (if (gx#stx-string? _e159764_)
                        (_recur159762_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159764_)))
                        (if (gx#core-library-module-path? _e159764_)
                            (_recur159762_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159764_)))
                            (error '"Cannot eval module" _obj159758_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159741_)
        (let _lp159743_ ((_e159745_ _ctx159741_))
          (if (or (##structure-instance-of? _e159745_ 'gx#module-context::t)
                  (##structure-instance-of? _e159745_ 'gx#local-context::t))
              (_lp159743_
               (##unchecked-structure-ref _e159745_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159745_ 'gx#prelude-context::t)
                  _e159745_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159754_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159754_))))
    (define gx#core-context-prelude
      (lambda _g165262_
        (let ((_g165261_ (##length _g165262_)))
          (cond ((##fx= _g165261_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g165262_))
                ((##fx= _g165261_ 1)
                 (apply (lambda (_ctx159756_)
                          (gx#core-context-prelude__% _ctx159756_))
                        _g165262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g165262_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159731_)
        (let* ((_ht159733_ (gx#current-expander-module-registry))
               (_$e159735_ (table-ref _ht159733_ _ctx159731_ '#f)))
          (if _$e159735_
              (values _$e159735_)
              (let ((_pre159738_
                     (let ((__obj165253
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
                       (gx#prelude-context:::init! __obj165253 _ctx159731_)
                       __obj165253)))
                (table-set! _ht159733_ _ctx159731_ _pre159738_)
                _pre159738_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159612_ _reload?159613_)
        (letrec ((_import-source159615_
                  (lambda (_path159700_)
                    (if (member _path159700_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159700_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g165263_ (gx#core-read-module _path159700_)))
                         (begin
                           (let ((_g165264_
                                  (if (##values? _g165263_)
                                      (##vector-length _g165263_)
                                      1)))
                             (if (not (##fx= _g165264_ 4))
                                 (error "Context expects 4 values" _g165264_)))
                           (let ((_pre159703_ (##vector-ref _g165263_ 0))
                                 (_id159704_ (##vector-ref _g165263_ 1))
                                 (_ns159705_ (##vector-ref _g165263_ 2))
                                 (_body159706_ (##vector-ref _g165263_ 3)))
                             (let* ((_prelude159711_
                                     (if (##structure-instance-of?
                                          _pre159703_
                                          'gx#prelude-context::t)
                                         _pre159703_
                                         (if (##structure-instance-of?
                                              _pre159703_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159703_)
                                             (if (string? _pre159703_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159703_))
                                                 (if (not _pre159703_)
                                                     (let ((_$e159708_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159708_
                                                           _$e159708_
                                                           (let ((__obj165254
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
                     (gx#prelude-context:::init! __obj165254 '#f)
                     __obj165254)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159612_
                                                            _pre159703_))))))
                                    (_ctx159713_
                                     (let ((__obj165255
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
                                        __obj165255
                                        _id159704_
                                        _prelude159711_
                                        _ns159705_
                                        _path159700_)
                                       __obj165255))
                                    (_body159715_
                                     (gx#core-expand-module-begin
                                      _body159706_
                                      _ctx159713_))
                                    (_body159717_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159715_)
                                      _path159700_
                                      _ctx159713_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159713_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159717_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159713_
                                _body159717_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159700_
                                _ctx159713_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159704_
                                _ctx159713_)
                               _ctx159713_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159700_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159616_
                  (lambda (_rpath159628_)
                    (let* ((_rpath159629159636_ _rpath159628_)
                           (_E159631159640_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159629159636_)))
                           (_K159632159688_
                            (lambda (_refs159643_ _origin159644_)
                              (let ((_ctx159646_
                                     (if _origin159644_
                                         (gx#core-import-module__%
                                          _origin159644_
                                          _reload?159613_)
                                         (gx#current-expander-context))))
                                (let _lp159648_ ((_rest159650_ _refs159643_)
                                                 (_ctx159651_ _ctx159646_))
                                  (let* ((_rest159652159660_ _rest159650_)
                                         (_else159654159668_
                                          (lambda () _ctx159651_))
                                         (_K159656159676_
                                          (lambda (_rest159671_ _id159672_)
                                            (let ((_bind159674_
                                                   (gx#resolve-identifier__%
                                                    _id159672_
                                                    '0
                                                    _ctx159651_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159674_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159674_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159648_
                                                   _rest159671_
                                                   (##unchecked-structure-ref
                                                    _bind159674_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159628_
                                                         _id159672_
                                                         _bind159674_))))))
                                    (if (##pair? _rest159652159660_)
                                        (let ((_hd159657159679_
                                               (##car _rest159652159660_))
                                              (_tl159658159681_
                                               (##cdr _rest159652159660_)))
                                          (let* ((_id159684_ _hd159657159679_)
                                                 (_rest159686_
                                                  _tl159658159681_))
                                            (_K159656159676_
                                             _rest159686_
                                             _id159684_)))
                                        (_else159654159668_))))))))
                      (if (##pair? _rpath159629159636_)
                          (let ((_hd159633159691_ (##car _rpath159629159636_))
                                (_tl159634159693_ (##cdr _rpath159629159636_)))
                            (let* ((_origin159696_ _hd159633159691_)
                                   (_refs159698_ _tl159634159693_))
                              (_K159632159688_ _refs159698_ _origin159696_)))
                          (_E159631159640_))))))
          (let ((_$e159618_
                 (if (not _reload?159613_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath159612_
                      '#f)
                     '#f)))
            (if _$e159618_
                (values _$e159618_)
                (if (list? _rpath159612_)
                    (_import-submodule159616_ _rpath159612_)
                    (if (gx#core-library-module-path? _rpath159612_)
                        (let ((_ctx159621_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159612_)
                                _reload?159613_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159612_
                           _ctx159621_)
                          _ctx159621_)
                        (let* ((_npath159623_ (path-normalize _rpath159612_))
                               (_$e159625_
                                (if (not _reload?159613_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath159623_
                                     '#f)
                                    '#f)))
                          (if _$e159625_
                              (values _$e159625_)
                              (_import-source159615_ _npath159623_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159724_)
        (let ((_reload?159726_ '#f))
          (gx#core-import-module__% _rpath159724_ _reload?159726_))))
    (define gx#core-import-module
      (lambda _g165266_
        (let ((_g165265_ (##length _g165266_)))
          (cond ((##fx= _g165265_ 1)
                 (apply (lambda (_rpath159724_)
                          (gx#core-import-module__0 _rpath159724_))
                        _g165266_))
                ((##fx= _g165265_ 2)
                 (apply (lambda (_rpath159728_ _reload?159729_)
                          (gx#core-import-module__%
                           _rpath159728_
                           _reload?159729_))
                        _g165266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g165266_))))))
    (define gx#core-read-module
      (lambda (_path159601_)
        (with-catch
         (lambda (_exn159603_)
           (if (and (datum-parsing-exception? _exn159603_)
                    (eq? (datum-parsing-exception-filepos _exn159603_) '0))
               (gx#core-read-module/lang _path159601_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159601_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159605159607_)
                      (display-exception _exn159603_ _g159605159607_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159601_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159464_)
        (let _lp159466_ ((_body159468_ (read-syntax-from-file _path159464_))
                         (_pre159469_ '#f)
                         (_ns159470_ '#f)
                         (_pkg159471_ '#f))
          (let* ((_e159472159496_ _body159468_)
                 (_E159488159518_
                  (lambda ()
                    (let ((_g165267_
                           (if _pkg159471_
                               (values _pre159469_ _ns159470_ _pkg159471_)
                               (gx#core-read-module-package
                                _path159464_
                                _pre159469_
                                _ns159470_))))
                      (begin
                        (let ((_g165268_
                               (if (##values? _g165267_)
                                   (##vector-length _g165267_)
                                   1)))
                          (if (not (##fx= _g165268_ 3))
                              (error "Context expects 3 values" _g165268_)))
                        (let ((_pre159500_ (##vector-ref _g165267_ 0))
                              (_ns159501_ (##vector-ref _g165267_ 1))
                              (_pkg159502_ (##vector-ref _g165267_ 2)))
                          (let* ((_prelude159504_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159500_)
                                      (gx#syntax-local-e__0 _pre159500_)
                                      (if (gx#core-library-module-path?
                                           _pre159500_)
                                          (gx#core-resolve-library-module-path
                                           _pre159500_)
                                          (if (gx#stx-string? _pre159500_)
                                              (gx#core-resolve-module-path__%
                                               _pre159500_
                                               _path159464_)
                                              (gx#stx-e _pre159500_)))))
                                 (_path-id159506_
                                  (gx#core-module-path->namespace
                                   _path159464_))
                                 (_pkg-id159508_
                                  (if _pkg159502_
                                      (string-append
                                       _pkg159502_
                                       '"/"
                                       _path-id159506_)
                                      _path-id159506_))
                                 (_module-id159510_
                                  (string->symbol _pkg-id159508_))
                                 (_module-ns159515_
                                  (if (eq? _ns159501_ '#!void)
                                      '#f
                                      (let ((_$e159512_ _ns159501_))
                                        (if _$e159512_
                                            _$e159512_
                                            _pkg-id159508_)))))
                            (values _prelude159504_
                                    _module-id159510_
                                    _module-ns159515_
                                    _body159468_)))))))
                 (_E159481159547_
                  (lambda ()
                    (if (gx#stx-pair? _e159472159496_)
                        (let ((_e159489159522_ (gx#syntax-e _e159472159496_)))
                          (let ((_hd159490159525_ (##car _e159489159522_))
                                (_tl159491159527_ (##cdr _e159489159522_)))
                            (if (eq? (gx#stx-e _hd159490159525_) 'package:)
                                (if (gx#stx-pair? _tl159491159527_)
                                    (let ((_e159492159530_
                                           (gx#syntax-e _tl159491159527_)))
                                      (let ((_hd159493159533_
                                             (##car _e159492159530_))
                                            (_tl159494159535_
                                             (##cdr _e159492159530_)))
                                        (let* ((_pkg159538_ _hd159493159533_)
                                               (_rest159540_ _tl159494159535_))
                                          (if '#t
                                              (let ((_pkg159545_
                                                     (if (gx#identifier?
                                                          _pkg159538_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159538_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159538_)
                         (gx#stx-false? _pkg159538_))
                     (gx#stx-e _pkg159538_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159466_
                                                 _rest159540_
                                                 _pre159469_
                                                 _ns159470_
                                                 _pkg159545_))
                                              (_E159488159518_)))))
                                    (_E159488159518_))
                                (_E159488159518_))))
                        (_E159488159518_))))
                 (_E159474159573_
                  (lambda ()
                    (if (gx#stx-pair? _e159472159496_)
                        (let ((_e159482159551_ (gx#syntax-e _e159472159496_)))
                          (let ((_hd159483159554_ (##car _e159482159551_))
                                (_tl159484159556_ (##cdr _e159482159551_)))
                            (if (eq? (gx#stx-e _hd159483159554_) 'namespace:)
                                (if (gx#stx-pair? _tl159484159556_)
                                    (let ((_e159485159559_
                                           (gx#syntax-e _tl159484159556_)))
                                      (let ((_hd159486159562_
                                             (##car _e159485159559_))
                                            (_tl159487159564_
                                             (##cdr _e159485159559_)))
                                        (let* ((_ns159567_ _hd159486159562_)
                                               (_rest159569_ _tl159487159564_))
                                          (if '#t
                                              (let ((_ns159571_
                                                     (if (gx#identifier?
                                                          _ns159567_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159567_))
                                                         (if (gx#stx-string?
                                                              _ns159567_)
                                                             (gx#stx-e
                                                              _ns159567_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159567_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159567_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159466_
                                                 _rest159569_
                                                 _pre159469_
                                                 _ns159571_
                                                 _pkg159471_))
                                              (_E159481159547_)))))
                                    (_E159481159547_))
                                (_E159481159547_))))
                        (_E159481159547_))))
                 (_E159473159597_
                  (lambda ()
                    (if (gx#stx-pair? _e159472159496_)
                        (let ((_e159475159577_ (gx#syntax-e _e159472159496_)))
                          (let ((_hd159476159580_ (##car _e159475159577_))
                                (_tl159477159582_ (##cdr _e159475159577_)))
                            (if (eq? (gx#stx-e _hd159476159580_) 'prelude:)
                                (if (gx#stx-pair? _tl159477159582_)
                                    (let ((_e159478159585_
                                           (gx#syntax-e _tl159477159582_)))
                                      (let ((_hd159479159588_
                                             (##car _e159478159585_))
                                            (_tl159480159590_
                                             (##cdr _e159478159585_)))
                                        (let* ((_prelude159593_
                                                _hd159479159588_)
                                               (_rest159595_ _tl159480159590_))
                                          (if '#t
                                              (_lp159466_
                                               _rest159595_
                                               _prelude159593_
                                               _ns159470_
                                               _pkg159471_)
                                              (_E159474159573_)))))
                                    (_E159474159573_))
                                (_E159474159573_))))
                        (_E159474159573_)))))
            (_E159473159597_)))))
    (define gx#core-read-module/lang
      (lambda (_path159291_)
        (letrec ((_default-read-module-body159293_
                  (lambda (_inp159456_)
                    (let _lp159458_ ((_body159460_ '()))
                      (let ((_next159462_ (read-syntax _inp159456_)))
                        (if (eof-object? _next159462_)
                            (reverse _body159460_)
                            (_lp159458_ (cons _next159462_ _body159460_)))))))
                 (_read-body159294_
                  (lambda (_inp159375_
                           _pre159376_
                           _ns159377_
                           _pkg159378_
                           _args159379_)
                    (let ((_g165269_
                           (if _pkg159378_
                               (values _pre159376_ _ns159377_ _pkg159378_)
                               (gx#core-read-module-package
                                _path159291_
                                _pre159376_
                                _ns159377_))))
                      (begin
                        (let ((_g165270_
                               (if (##values? _g165269_)
                                   (##vector-length _g165269_)
                                   1)))
                          (if (not (##fx= _g165270_ 3))
                              (error "Context expects 3 values" _g165270_)))
                        (let ((_pre159381_ (##vector-ref _g165269_ 0))
                              (_ns159382_ (##vector-ref _g165269_ 1))
                              (_pkg159383_ (##vector-ref _g165269_ 2)))
                          (let* ((_prelude159385_
                                  (gx#import-module__0 _pre159381_))
                                 (_read-module-body159439_
                                  (let ((_$e159431_
                                         (find (lambda (_e159386159388_)
                                                 (let* ((_g159390159400_
                                                         _e159386159388_)
                                                        (_else159392159408_
                                                         (lambda () '#f))
                                                        (_K159394159412_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159390159400_
                                                        'gx#module-export::t)
                                                       (let* ((_e159395159415_
                                                               (##unchecked-structure-ref
                                                                _g159390159400_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159396159418_
                                                               (##unchecked-structure-ref
                                                                _g159390159400_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159397159421_
                                                               (##unchecked-structure-ref
                                                                _g159390159400_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159397159421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159398159424_
                            (##unchecked-structure-ref
                             _g159390159400_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159426159428_)
                              (eq? _g159426159428_ 'read-module-body))
                            _e159398159424_)
                           (_K159394159412_)
                           (_else159392159408_)))
                     (_else159392159408_)))
               (_else159392159408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159385_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159431_
                                        ((lambda (_xport159434_)
                                           (let ((_proc159437_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159434_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159437_)
                                                 _proc159437_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159291_
                                                  _pre159381_
                                                  _proc159437_))))
                                         _$e159431_)
                                        _default-read-module-body159293_)))
                                 (_path-id159441_
                                  (gx#core-module-path->namespace
                                   _path159291_))
                                 (_pkg-id159443_
                                  (if _pkg159383_
                                      (string-append
                                       _pkg159383_
                                       '"/"
                                       _path-id159441_)
                                      _path-id159441_))
                                 (_module-id159445_
                                  (string->symbol _pkg-id159443_))
                                 (_module-ns159450_
                                  (let ((_$e159447_ _ns159382_))
                                    (if _$e159447_ _$e159447_ _pkg-id159443_)))
                                 (_body159453_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159439_ _inp159375_))
                                   gx#current-module-reader-path
                                   _path159291_
                                   gx#current-module-reader-args
                                   _args159379_)))
                            (values _prelude159385_
                                    _module-id159445_
                                    _module-ns159450_
                                    _body159453_)))))))
                 (_string-e159295_
                  (lambda (_obj159372_ _what159373_)
                    (if (string? _obj159372_)
                        _obj159372_
                        (if (symbol? _obj159372_)
                            (symbol->string _obj159372_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159373_)
                             _path159291_
                             _obj159372_)))))
                 (_read-lang-args159296_
                  (lambda (_inp159327_ _args159328_)
                    (let* ((_args159329159337_ _args159328_)
                           (_else159331159345_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159291_)))
                           (_K159333159360_
                            (lambda (_args159348_ _prelude159349_)
                              (let* ((_pkg159351_
                                      (pgetq 'package: _args159348_))
                                     (_pkg159353_
                                      (if _pkg159351_
                                          (_string-e159295_
                                           _pkg159351_
                                           '"package")
                                          '#f))
                                     (_ns159355_
                                      (pgetq 'namespace: _args159348_))
                                     (_ns159357_
                                      (if _ns159355_
                                          (_string-e159295_
                                           _ns159355_
                                           '"namespace")
                                          '#f)))
                                (_read-body159294_
                                 _inp159327_
                                 _prelude159349_
                                 _ns159357_
                                 _pkg159353_
                                 _args159348_)))))
                      (if (##pair? _args159329159337_)
                          (let ((_hd159334159363_ (##car _args159329159337_))
                                (_tl159335159365_ (##cdr _args159329159337_)))
                            (let* ((_prelude159368_ _hd159334159363_)
                                   (_args159370_ _tl159335159365_))
                              (_K159333159360_ _args159370_ _prelude159368_)))
                          (_else159331159345_)))))
                 (_read-lang159297_
                  (lambda (_inp159302_)
                    (let* ((_head159304_ (read-line _inp159302_))
                           (_$e159306_ (string-index _head159304_ '#\space)))
                      (if _$e159306_
                          ((lambda (_ix159309_)
                             (let ((_lang159311_
                                    (substring _head159304_ '0 _ix159309_)))
                               (if (equal? _lang159311_ '"#lang")
                                   (let* ((_rest159313_
                                           (substring
                                            _head159304_
                                            (fx+ _ix159309_ '1)
                                            (string-length _head159304_)))
                                          (_args159324_
                                           (with-catch
                                            (lambda (_g159314159316_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159291_
                                               _g159314159316_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159313_
                                               (lambda (_g159319159321_)
                                                 (read-all
                                                  _g159319159321_
                                                  read)))))))
                                     (_read-lang-args159296_
                                      _inp159302_
                                      _args159324_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159291_))))
                           _$e159306_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159291_)))))
                 (_read-e159298_
                  (lambda (_inp159300_)
                    (if (eq? (peek-char _inp159300_) '#\#)
                        (_read-lang159297_ _inp159300_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159291_)))))
          (gx#call-with-input-source-file _path159291_ _read-e159298_))))
    (define gx#core-read-module-package
      (lambda (_path159245_ _pre159246_ _ns159247_)
        (letrec ((_string-e159249_
                  (lambda (_e159289_)
                    (if (symbol? _e159289_)
                        (symbol->string _e159289_)
                        (if (string? _e159289_)
                            _e159289_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159289_))))))
          (let _lp159251_ ((_dir159253_ (path-directory _path159245_))
                           (_pkg-path159254_ '()))
            (let ((_gerbil.pkg159256_ (path-expand '"gerbil.pkg" _dir159253_)))
              (if (file-exists? _gerbil.pkg159256_)
                  (let ((_plist159258_
                         (gx#core-library-package-plist__% _dir159253_ '#t)))
                    (if (null? _plist159258_)
                        (let ((_pkg159260_
                               (if (not (null? _pkg-path159254_))
                                   (string-join _pkg-path159254_ '"/")
                                   '#f)))
                          (values _pre159246_ _ns159247_ _pkg159260_))
                        (if (list? _plist159258_)
                            (let* ((_root159262_
                                    (pgetq 'package: _plist159258_))
                                   (_pkg159266_
                                    (let ((_pkg-path159264_
                                           (if _root159262_
                                               (cons (_string-e159249_
                                                      _root159262_)
                                                     _pkg-path159254_)
                                               _pkg-path159254_)))
                                      (if (not (null? _pkg-path159264_))
                                          (string-join _pkg-path159264_ '"/")
                                          '#f)))
                                   (_ns159273_
                                    (let ((_ns159271_
                                           (let ((_$e159268_ _ns159247_))
                                             (if _$e159268_
                                                 _$e159268_
                                                 (pgetq 'namespace:
                                                        _plist159258_)))))
                                      (if _ns159271_
                                          (_string-e159249_ _ns159271_)
                                          '#f)))
                                   (_pre159278_
                                    (let ((_$e159275_ _pre159246_))
                                      (if _$e159275_
                                          _$e159275_
                                          (pgetq 'prelude: _plist159258_)))))
                              (values _pre159278_ _ns159273_ _pkg159266_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159258_))))
                  (let ((_dir*159281_
                         (path-strip-trailing-directory-separator
                          _dir159253_)))
                    (if (or (string-empty? _dir*159281_)
                            (equal? _dir159253_ _dir*159281_))
                        (values _pre159246_ _ns159247_ '#f)
                        (let ((_xpath159286_
                               (path-strip-directory _dir*159281_))
                              (_xdir159287_ (path-directory _dir*159281_)))
                          (_lp159251_
                           _xdir159287_
                           (cons _xpath159286_ _pkg-path159254_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159243_)
        (path-strip-extension (path-strip-directory _path159243_))))
    (define gx#core-module-path->id
      (lambda (_path159241_)
        (string->symbol (gx#core-module-path->namespace _path159241_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159220_ _rel159221_)
        (let* ((_path159223_ (gx#stx-e _stx-path159220_))
               (_path159225_
                (if (string-empty? (path-extension _path159223_))
                    (string-append _path159223_ '".ss")
                    _path159223_)))
          (gx#core-resolve-path__%
           _path159225_
           (let ((_$e159228_ (gx#stx-source _stx-path159220_)))
             (if _$e159228_ _$e159228_ _rel159221_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159234_)
        (let ((_rel159236_ '#f))
          (gx#core-resolve-module-path__% _stx-path159234_ _rel159236_))))
    (define gx#core-resolve-module-path
      (lambda _g165272_
        (let ((_g165271_ (##length _g165272_)))
          (cond ((##fx= _g165271_ 1)
                 (apply (lambda (_stx-path159234_)
                          (gx#core-resolve-module-path__0 _stx-path159234_))
                        _g165272_))
                ((##fx= _g165271_ 2)
                 (apply (lambda (_stx-path159238_ _rel159239_)
                          (gx#core-resolve-module-path__%
                           _stx-path159238_
                           _rel159239_))
                        _g165272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g165272_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath159106_)
        (let* ((_spath159108_ (symbol->string (gx#stx-e _libpath159106_)))
               (_spath159110_
                (substring _spath159108_ '1 (string-length _spath159108_)))
               (_ext159112_ (path-extension _spath159110_))
               (_ssi159114_
                (if (string-empty? _ext159112_)
                    (string-append _spath159110_ '".ssi")
                    (string-append
                     (path-strip-extension _spath159110_)
                     '".ssi")))
               (_srcs159118_
                (if (string-empty? _ext159112_)
                    (map (lambda (_ext159116_)
                           (string-append _spath159110_ _ext159116_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath159110_ '()))))
          (let _lp159121_ ((_rest159123_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest159124159133_ _rest159123_)
                   (_E159127159137_
                    (lambda ()
                      (error '"No clause matching" _rest159124159133_))))
              (let ((_K159129159207_
                     (lambda (_rest159148_ _dir159149_)
                       (letrec ((_resolve159151_
                                 (lambda (_ssi159163_ _srcs159164_)
                                   (let ((_compiled-path159166_
                                          (path-expand
                                           _ssi159163_
                                           _dir159149_)))
                                     (if (file-exists? _compiled-path159166_)
                                         (path-normalize _compiled-path159166_)
                                         (let _lpr159168_ ((_rest-src159170_
                                                            _srcs159164_))
                                           (let* ((_rest-src159171159179_
                                                   _rest-src159170_)
                                                  (_else159173159187_
                                                   (lambda ()
                                                     (_lp159121_
                                                      _rest159148_)))
                                                  (_K159175159195_
                                                   (lambda (_rest-src159190_
                                                            _src159191_)
                                                     (let ((_src-path159193_
                                                            (path-expand
                                                             _src159191_
                                                             _dir159149_)))
                                                       (if (file-exists?
                                                            _src-path159193_)
                                                           (path-normalize
                                                            _src-path159193_)
                                                           (_lpr159168_
                                                            _rest-src159190_))))))
                                             (if (##pair? _rest-src159171159179_)
                                                 (let ((_hd159176159198_
                                                        (##car _rest-src159171159179_))
                                                       (_tl159177159200_
                                                        (##cdr _rest-src159171159179_)))
                                                   (let* ((_src159203_
                                                           _hd159176159198_)
                                                          (_rest-src159205_
                                                           _tl159177159200_))
                                                     (_K159175159195_
                                                      _rest-src159205_
                                                      _src159203_)))
                                                 (_else159173159187_)))))))))
                         (let ((_$e159153_
                                (gx#core-library-package-path-prefix
                                 _dir159149_)))
                           (if _$e159153_
                               ((lambda (_prefix159156_)
                                  (if (string-prefix?
                                       _prefix159156_
                                       _spath159110_)
                                      (let ((_ssi159160_
                                             (substring
                                              _ssi159114_
                                              (string-length _prefix159156_)
                                              (string-length _ssi159114_)))
                                            (_srcs159161_
                                             (map (lambda (_src159158_)
                                                    (substring
                                                     _src159158_
                                                     (string-length
                                                      _prefix159156_)
                                                     (string-length
                                                      _src159158_)))
                                                  _srcs159118_)))
                                        (_resolve159151_
                                         _ssi159160_
                                         _srcs159161_))
                                      (_lp159121_ _rest159148_)))
                                _$e159153_)
                               (_resolve159151_ _ssi159114_ _srcs159118_))))))
                    (_K159128159142_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath159106_))))
                (let ((_try-match159126159145_
                       (lambda ()
                         (if (##null? _rest159124159133_)
                             (_K159128159142_)
                             (_E159127159137_)))))
                  (if (##pair? _rest159124159133_)
                      (let ((_tl159131159212_ (##cdr _rest159124159133_))
                            (_hd159130159210_ (##car _rest159124159133_)))
                        (let ((_dir159215_ _hd159130159210_)
                              (_rest159217_ _tl159131159212_))
                          (_K159129159207_ _rest159217_ _dir159215_)))
                      (_try-match159126159145_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath159079_)
        (letrec ((_resolve159081_
                  (lambda (_path159098_ _base159099_)
                    (let ((_$e159101_ (string-rindex _base159099_ '#\/)))
                      (if _$e159101_
                          ((lambda (_idx159104_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base159099_ '0 _idx159104_)
                                '"/"
                                _path159098_))))
                           _$e159101_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path159098_))))))))
          (let ((_spath159083_ (symbol->string (gx#stx-e _modpath159079_)))
                (_mod159084_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod159084_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath159079_))
            (let ((_mpath159086_
                   (symbol->string
                    (##structure-ref
                     _mod159084_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp159088_ ((_spath159090_ _spath159083_)
                               (_mpath159091_ _mpath159086_))
                (if (string-prefix? '"../" _spath159090_)
                    (let ((_$e159093_ (string-rindex _mpath159091_ '#\/)))
                      (if _$e159093_
                          ((lambda (_idx159096_)
                             (_lp159088_
                              (substring
                               _spath159090_
                               '3
                               (string-length _spath159090_))
                              (substring _mpath159091_ '0 _idx159096_)))
                           _$e159093_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath159079_)))
                    (if (string-prefix? '"./" _spath159090_)
                        (_lp159088_
                         (substring
                          _spath159090_
                          '2
                          (string-length _spath159090_))
                         _mpath159091_)
                        (_resolve159081_ _spath159090_ _mpath159091_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir159072_)
        (let ((_$e159074_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir159072_))))
          (if _$e159074_
              ((lambda (_pkg159077_)
                 (string-append (symbol->string _pkg159077_) '"/"))
               _$e159074_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir159044_ _exists?159045_)
        (let* ((_cache159047_ (gx#core-library-package-cache))
               (_$e159049_ (table-ref _cache159047_ _dir159044_ '#f)))
          (if _$e159049_
              (values _$e159049_)
              (let* ((_gerbil.pkg159052_
                      (path-expand '"gerbil.pkg" _dir159044_))
                     (_plist159059_
                      (if (or _exists?159045_
                              (file-exists? _gerbil.pkg159052_))
                          (let ((_e159057_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg159052_
                                  read)))
                            (if (eof-object? _e159057_)
                                '()
                                (if (list? _e159057_)
                                    _e159057_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg159052_
                                     _e159057_))))
                          '())))
                (table-set! _cache159047_ _dir159044_ _plist159059_)
                _plist159059_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir159065_)
        (let ((_exists?159067_ '#f))
          (gx#core-library-package-plist__% _dir159065_ _exists?159067_))))
    (define gx#core-library-package-plist
      (lambda _g165274_
        (let ((_g165273_ (##length _g165274_)))
          (cond ((##fx= _g165273_ 1)
                 (apply (lambda (_dir159065_)
                          (gx#core-library-package-plist__0 _dir159065_))
                        _g165274_))
                ((##fx= _g165273_ 2)
                 (apply (lambda (_dir159069_ _exists?159070_)
                          (gx#core-library-package-plist__%
                           _dir159069_
                           _exists?159070_))
                        _g165274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g165274_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e159038_ (gx#current-expander-module-library-package-cache)))
          (if _$e159038_
              (values _$e159038_)
              (let ((_cache159041_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache159041_)
                _cache159041_)))))
    (define gx#core-library-module-path?
      (lambda (_stx159035_) (gx#core-special-module-path? _stx159035_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx159033_) (gx#core-special-module-path? _stx159033_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx159028_ _char159029_)
        (if (gx#identifier? _stx159028_)
            (if (interned-symbol? (gx#stx-e _stx159028_))
                (let ((_str159031_ (symbol->string (gx#stx-e _stx159028_))))
                  (if (fx> (string-length _str159031_) '1)
                      (eq? (string-ref _str159031_ '0) _char159029_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx159022_)
        (gx#core-bound-identifier?__%
         _stx159022_
         (lambda (_g159023159025_)
           (gx#expander-binding?__% _g159023159025_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx159016_)
        (gx#core-bound-identifier?__%
         _stx159016_
         (lambda (_g159017159019_)
           (gx#expander-binding?__% _g159017159019_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx159003_)
        (letrec ((_module-prelude?159005_
                  (lambda (_e159011_)
                    (let ((_$e159013_
                           (##structure-instance-of?
                            _e159011_
                            'gx#module-context::t)))
                      (if _$e159013_
                          _$e159013_
                          (##structure-instance-of?
                           _e159011_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx159003_
           (lambda (_g159006159008_)
             (gx#expander-binding?__%
              _g159006159008_
              _module-prelude?159005_))))))
    (define gx#core-bind-import!__%
      (lambda (_in158933_ _ctx158934_ _force-weak?158935_)
        (let* ((_in158936158945_ _in158933_)
               (_E158938158949_
                (lambda () (error '"No clause matching" _in158936158945_)))
               (_K158939158962_
                (lambda (_weak?158952_ _phi158953_ _key158954_ _source158955_)
                  (gx#core-bind!__%
                   _key158954_
                   (let ((_e158957_
                          (gx#core-resolve-module-export _source158955_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e158957_
                       '1
                       gx#binding::t
                       '#f)
                      _key158954_
                      _phi158953_
                      _e158957_
                      (##unchecked-structure-ref
                       _source158955_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e158959_ _force-weak?158935_))
                        (if _$e158959_ _$e158959_ _weak?158952_))))
                   gx#core-context-rebind?
                   _phi158953_
                   _ctx158934_))))
          (if (##structure-direct-instance-of?
               _in158936158945_
               'gx#module-import::t)
              (let* ((_e158940158965_
                      (##unchecked-structure-ref
                       _in158936158945_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source158968_ _e158940158965_)
                     (_e158941158970_
                      (##unchecked-structure-ref
                       _in158936158945_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key158973_ _e158941158970_)
                     (_e158942158975_
                      (##unchecked-structure-ref
                       _in158936158945_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi158978_ _e158942158975_)
                     (_e158943158980_
                      (##unchecked-structure-ref
                       _in158936158945_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?158983_ _e158943158980_))
                (_K158939158962_
                 _weak?158983_
                 _phi158978_
                 _key158973_
                 _source158968_))
              (_E158938158949_)))))
    (define gx#core-bind-import!__0
      (lambda (_in158988_)
        (let* ((_ctx158990_ (gx#current-expander-context))
               (_force-weak?158992_ '#f))
          (gx#core-bind-import!__%
           _in158988_
           _ctx158990_
           _force-weak?158992_))))
    (define gx#core-bind-import!__1
      (lambda (_in158994_ _ctx158995_)
        (let ((_force-weak?158997_ '#f))
          (gx#core-bind-import!__%
           _in158994_
           _ctx158995_
           _force-weak?158997_))))
    (define gx#core-bind-import!
      (lambda _g165276_
        (let ((_g165275_ (##length _g165276_)))
          (cond ((##fx= _g165275_ 1)
                 (apply (lambda (_in158988_)
                          (gx#core-bind-import!__0 _in158988_))
                        _g165276_))
                ((##fx= _g165275_ 2)
                 (apply (lambda (_in158994_ _ctx158995_)
                          (gx#core-bind-import!__1 _in158994_ _ctx158995_))
                        _g165276_))
                ((##fx= _g165275_ 3)
                 (apply (lambda (_in158999_ _ctx159000_ _force-weak?159001_)
                          (gx#core-bind-import!__%
                           _in158999_
                           _ctx159000_
                           _force-weak?159001_))
                        _g165276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g165276_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in158919_ _ctx158920_)
        (gx#core-bind-import!__% _in158919_ _ctx158920_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in158925_)
        (let ((_ctx158927_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in158925_ _ctx158927_))))
    (define gx#core-bind-weak-import!
      (lambda _g165278_
        (let ((_g165277_ (##length _g165278_)))
          (cond ((##fx= _g165277_ 1)
                 (apply (lambda (_in158925_)
                          (gx#core-bind-weak-import!__0 _in158925_))
                        _g165278_))
                ((##fx= _g165277_ 2)
                 (apply (lambda (_in158929_ _ctx158930_)
                          (gx#core-bind-weak-import!__%
                           _in158929_
                           _ctx158930_))
                        _g165278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g165278_))))))
    (define gx#core-resolve-module-export
      (lambda (_out158810_)
        (letrec ((_subst158812_
                  (lambda (_key158858_)
                    (let* ((_key158859158867_ _key158858_)
                           (_else158861158875_ (lambda () _key158858_))
                           (_K158863158906_
                            (lambda (_mark158878_ _id158879_)
                              (let* ((_mark158880158886_ _mark158878_)
                                     (_E158882158890_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark158880158886_)))
                                     (_K158883158898_
                                      (lambda (_subst158893_)
                                        (let ((_$e158895_
                                               (if _subst158893_
                                                   (table-ref
                                                    _subst158893_
                                                    _id158879_
                                                    '#f)
                                                   '#f)))
                                          (if _$e158895_
                                              _$e158895_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key158858_))))))
                                (if (##structure-instance-of?
                                     _mark158880158886_
                                     'gx#expander-mark::t)
                                    (let* ((_e158884158901_
                                            (##unchecked-structure-ref
                                             _mark158880158886_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst158904_ _e158884158901_))
                                      (_K158883158898_ _subst158904_))
                                    (_E158882158890_))))))
                      (if (##pair? _key158859158867_)
                          (let ((_hd158864158909_ (##car _key158859158867_))
                                (_tl158865158911_ (##cdr _key158859158867_)))
                            (let* ((_id158914_ _hd158864158909_)
                                   (_mark158916_ _tl158865158911_))
                              (_K158863158906_ _mark158916_ _id158914_)))
                          (_else158861158875_))))))
          (let* ((_out158813158823_ _out158810_)
                 (_E158815158827_
                  (lambda () (error '"No clause matching" _out158813158823_)))
                 (_K158816158834_
                  (lambda (_phi158830_ _key158831_ _ctx158832_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx158832_ _phi158830_)
                     (_subst158812_ _key158831_)))))
            (if (##structure-direct-instance-of?
                 _out158813158823_
                 'gx#module-export::t)
                (let* ((_e158817158837_
                        (##unchecked-structure-ref
                         _out158813158823_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx158840_ _e158817158837_)
                       (_e158818158842_
                        (##unchecked-structure-ref
                         _out158813158823_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key158845_ _e158818158842_)
                       (_e158819158847_
                        (##unchecked-structure-ref
                         _out158813158823_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi158850_ _e158819158847_)
                       (_e158820158852_
                        (##unchecked-structure-ref
                         _out158813158823_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e158821158855_
                        (##unchecked-structure-ref
                         _out158813158823_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K158816158834_ _phi158850_ _key158845_ _ctx158840_))
                (_E158815158827_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158735_ _rename158736_ _dphi158737_)
        (let* ((_out158738158748_ _out158735_)
               (_E158740158752_
                (lambda () (error '"No clause matching" _out158738158748_)))
               (_K158741158764_
                (lambda (_weak?158755_
                         _name158756_
                         _phi158757_
                         _key158758_
                         _ctx158759_)
                  (##structure
                   gx#module-import::t
                   _out158735_
                   (let ((_$e158761_ _rename158736_))
                     (if _$e158761_ _$e158761_ _name158756_))
                   (fx+ _phi158757_ _dphi158737_)
                   _weak?158755_))))
          (if (##structure-direct-instance-of?
               _out158738158748_
               'gx#module-export::t)
              (let* ((_e158742158767_
                      (##unchecked-structure-ref
                       _out158738158748_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158770_ _e158742158767_)
                     (_e158743158772_
                      (##unchecked-structure-ref
                       _out158738158748_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158775_ _e158743158772_)
                     (_e158744158777_
                      (##unchecked-structure-ref
                       _out158738158748_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158780_ _e158744158777_)
                     (_e158745158782_
                      (##unchecked-structure-ref
                       _out158738158748_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158785_ _e158745158782_)
                     (_e158746158787_
                      (##unchecked-structure-ref
                       _out158738158748_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?158790_ _e158746158787_))
                (_K158741158764_
                 _weak?158790_
                 _name158785_
                 _phi158780_
                 _key158775_
                 _ctx158770_))
              (_E158740158752_)))))
    (define gx#core-module-export->import__0
      (lambda (_out158795_)
        (let* ((_rename158797_ '#f) (_dphi158799_ '0))
          (gx#core-module-export->import__%
           _out158795_
           _rename158797_
           _dphi158799_))))
    (define gx#core-module-export->import__1
      (lambda (_out158801_ _rename158802_)
        (let ((_dphi158804_ '0))
          (gx#core-module-export->import__%
           _out158801_
           _rename158802_
           _dphi158804_))))
    (define gx#core-module-export->import
      (lambda _g165280_
        (let ((_g165279_ (##length _g165280_)))
          (cond ((##fx= _g165279_ 1)
                 (apply (lambda (_out158795_)
                          (gx#core-module-export->import__0 _out158795_))
                        _g165280_))
                ((##fx= _g165279_ 2)
                 (apply (lambda (_out158801_ _rename158802_)
                          (gx#core-module-export->import__1
                           _out158801_
                           _rename158802_))
                        _g165280_))
                ((##fx= _g165279_ 3)
                 (apply (lambda (_out158806_ _rename158807_ _dphi158808_)
                          (gx#core-module-export->import__%
                           _out158806_
                           _rename158807_
                           _dphi158808_))
                        _g165280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g165280_))))))
    (define gx#core-expand-module%
      (lambda (_stx158663_)
        (letrec ((_make-context158665_
                  (lambda (_id158716_)
                    (let* ((_super158718_ (gx#current-expander-context))
                           (_bind-id158720_ (gx#stx-e _id158716_))
                           (_mod-id158722_
                            (if (##structure-instance-of?
                                 _super158718_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158718_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158720_)
                                _bind-id158720_))
                           (_ns158724_ (symbol->string _mod-id158722_))
                           (_path158731_
                            (if (##structure-instance-of?
                                 _super158718_
                                 'gx#module-context::t)
                                (let ((_path158726_
                                       (##unchecked-structure-ref
                                        _super158718_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158726_)
                                          (null? _path158726_))
                                      (cons _bind-id158720_ _path158726_)
                                      (if (not _path158726_)
                                          _bind-id158720_
                                          (cons _bind-id158720_
                                                (cons _path158726_ '())))))
                                _bind-id158720_)))
                      (let ((__obj165256
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
                         __obj165256
                         _mod-id158722_
                         _super158718_
                         _ns158724_
                         _path158731_)
                        __obj165256)))))
          (let* ((_e158666158676_ _stx158663_)
                 (_E158668158680_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158666158676_)))
                 (_E158667158712_
                  (lambda ()
                    (if (gx#stx-pair? _e158666158676_)
                        (let ((_e158669158684_ (gx#syntax-e _e158666158676_)))
                          (let ((_hd158670158687_ (##car _e158669158684_))
                                (_tl158671158689_ (##cdr _e158669158684_)))
                            (if (gx#stx-pair? _tl158671158689_)
                                (let ((_e158672158692_
                                       (gx#syntax-e _tl158671158689_)))
                                  (let ((_hd158673158695_
                                         (##car _e158672158692_))
                                        (_tl158674158697_
                                         (##cdr _e158672158692_)))
                                    (let* ((_id158700_ _hd158673158695_)
                                           (_body158702_ _tl158674158697_))
                                      (if (and (gx#identifier? _id158700_)
                                               (gx#stx-list? _body158702_))
                                          (let* ((_ctx158704_
                                                  (_make-context158665_
                                                   _id158700_))
                                                 (_body158706_
                                                  (gx#core-expand-module-begin
                                                   _body158702_
                                                   _ctx158704_))
                                                 (_body158708_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158706_)
                                                   (gx#stx-source
                                                    _stx158663_))))
                                            (##unchecked-structure-set!
                                             _ctx158704_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158708_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158704_
                                             _body158708_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158700_
                                             _ctx158704_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158700_)
                                              _body158708_)
                                             (gx#stx-source _stx158663_)))
                                          (_E158668158680_)))))
                                (_E158668158680_))))
                        (_E158668158680_)))))
            (_E158667158712_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158629_ _ctx158630_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158633_
                   (gx#core-expand-head (cons '%%begin-module _body158629_)))
                  (_e158634158641_ _stx158633_)
                  (_E158636158645_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158633_)))
                  (_E158635158659_
                   (lambda ()
                     (if (gx#stx-pair? _e158634158641_)
                         (let ((_e158637158649_ (gx#syntax-e _e158634158641_)))
                           (let ((_hd158638158652_ (##car _e158637158649_))
                                 (_tl158639158654_ (##cdr _e158637158649_)))
                             (if (and (gx#identifier? _hd158638158652_)
                                      (gx#core-identifier=?
                                       _hd158638158652_
                                       '%#begin-module))
                                 (let ((_body158657_ _tl158639158654_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158633_)
                                           _body158657_
                                           (gx#core-expand-module-body
                                            _body158657_))
                                       (_E158636158645_)))
                                 (_E158636158645_))))
                         (_E158636158645_)))))
             (_E158635158659_)))
         gx#current-expander-context
         _ctx158630_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158425_)
        (letrec ((_expand-special158427_
                  (lambda (_hd158556_ _K158557_ _rest158558_ _r158559_)
                    (let* ((_e158560158577_ _hd158556_)
                           (_E158572158581_
                            (lambda ()
                              (_K158557_
                               _rest158558_
                               (cons (gx#core-expand-top _hd158556_)
                                     _r158559_))))
                           (_E158562158593_
                            (lambda ()
                              (if (gx#stx-pair? _e158560158577_)
                                  (let ((_e158573158585_
                                         (gx#syntax-e _e158560158577_)))
                                    (let ((_hd158574158588_
                                           (##car _e158573158585_))
                                          (_tl158575158590_
                                           (##cdr _e158573158585_)))
                                      (if (and (gx#identifier?
                                                _hd158574158588_)
                                               (gx#core-identifier=?
                                                _hd158574158588_
                                                '%#export))
                                          (if '#t
                                              (_K158557_
                                               _rest158558_
                                               (cons _hd158556_ _r158559_))
                                              (_E158572158581_))
                                          (_E158572158581_))))
                                  (_E158572158581_))))
                           (_E158561158625_
                            (lambda ()
                              (if (gx#stx-pair? _e158560158577_)
                                  (let ((_e158563158597_
                                         (gx#syntax-e _e158560158577_)))
                                    (let ((_hd158564158600_
                                           (##car _e158563158597_))
                                          (_tl158565158602_
                                           (##cdr _e158563158597_)))
                                      (if (and (gx#identifier?
                                                _hd158564158600_)
                                               (gx#core-identifier=?
                                                _hd158564158600_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158565158602_)
                                              (let ((_e158566158605_
                                                     (gx#syntax-e
                                                      _tl158565158602_)))
                                                (let ((_hd158567158608_
                                                       (##car _e158566158605_))
                                                      (_tl158568158610_
                                                       (##cdr _e158566158605_)))
                                                  (let ((_hd-bind158613_
                                                         _hd158567158608_))
                                                    (if (gx#stx-pair?
                                                         _tl158568158610_)
                                                        (let ((_e158569158615_
                                                               (gx#syntax-e
                                                                _tl158568158610_)))
                                                          (let ((_hd158570158618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158569158615_))
                        (_tl158571158620_ (##cdr _e158569158615_)))
                    (let ((_expr158623_ _hd158570158618_))
                      (if (gx#stx-null? _tl158571158620_)
                          (if (gx#core-bind-values? _hd-bind158613_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158613_)
                                (_K158557_
                                 _rest158558_
                                 (cons _hd158556_ _r158559_)))
                              (_E158562158593_))
                          (_E158562158593_)))))
                (_E158562158593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158562158593_))
                                          (_E158562158593_))))
                                  (_E158562158593_)))))
                      (_E158561158625_))))
                 (_expand-body158428_
                  (lambda (_rbody158430_)
                    (let _lp158432_ ((_rest158434_ _rbody158430_)
                                     (_body158435_ '()))
                      (let* ((_rest158436158444_ _rest158434_)
                             (_else158438158452_ (lambda () _body158435_))
                             (_K158440158544_
                              (lambda (_rest158455_ _hd158456_)
                                (let* ((_e158457158478_ _hd158456_)
                                       (_E158473158482_
                                        (lambda ()
                                          (_lp158432_
                                           _rest158455_
                                           (cons (gx#core-expand-expression
                                                  _hd158456_)
                                                 _body158435_))))
                                       (_E158469158496_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158457158478_)
                                              (let ((_e158474158486_
                                                     (gx#syntax-e
                                                      _e158457158478_)))
                                                (let ((_hd158475158489_
                                                       (##car _e158474158486_))
                                                      (_tl158476158491_
                                                       (##cdr _e158474158486_)))
                                                  (let ((_form158494_
                                                         _hd158475158489_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158494_
                                                         gx#special-form-binding?)
                                                        (_lp158432_
                                                         _rest158455_
                                                         (cons _hd158456_
                                                               _body158435_))
                                                        (_E158473158482_)))))
                                              (_E158473158482_))))
                                       (_E158459158508_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158457158478_)
                                              (let ((_e158470158500_
                                                     (gx#syntax-e
                                                      _e158457158478_)))
                                                (let ((_hd158471158503_
                                                       (##car _e158470158500_))
                                                      (_tl158472158505_
                                                       (##cdr _e158470158500_)))
                                                  (if (and (gx#identifier?
                                                            _hd158471158503_)
                                                           (gx#core-identifier=?
                                                            _hd158471158503_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158432_
                                                           _rest158455_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158456_)
                         _body158435_))
                  (_E158469158496_))
              (_E158469158496_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158469158496_))))
                                       (_E158458158540_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158457158478_)
                                              (let ((_e158460158512_
                                                     (gx#syntax-e
                                                      _e158457158478_)))
                                                (let ((_hd158461158515_
                                                       (##car _e158460158512_))
                                                      (_tl158462158517_
                                                       (##cdr _e158460158512_)))
                                                  (if (and (gx#identifier?
                                                            _hd158461158515_)
                                                           (gx#core-identifier=?
                                                            _hd158461158515_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158462158517_)
                                                          (let ((_e158463158520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158462158517_)))
                    (let ((_hd158464158523_ (##car _e158463158520_))
                          (_tl158465158525_ (##cdr _e158463158520_)))
                      (let ((_hd-bind158528_ _hd158464158523_))
                        (if (gx#stx-pair? _tl158465158525_)
                            (let ((_e158466158530_
                                   (gx#syntax-e _tl158465158525_)))
                              (let ((_hd158467158533_ (##car _e158466158530_))
                                    (_tl158468158535_ (##cdr _e158466158530_)))
                                (let ((_expr158538_ _hd158467158533_))
                                  (if (gx#stx-null? _tl158468158535_)
                                      (if '#t
                                          (_lp158432_
                                           _rest158455_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158528_)
                                                   (gx#core-expand-expression
                                                    _expr158538_))
                                                  (gx#stx-source _hd158456_))
                                                 _body158435_))
                                          (_E158459158508_))
                                      (_E158459158508_)))))
                            (_E158459158508_)))))
                  (_E158459158508_))
              (_E158459158508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158459158508_)))))
                                  (_E158458158540_)))))
                        (if (##pair? _rest158436158444_)
                            (let ((_hd158441158547_ (##car _rest158436158444_))
                                  (_tl158442158549_
                                   (##cdr _rest158436158444_)))
                              (let* ((_hd158552_ _hd158441158547_)
                                     (_rest158554_ _tl158442158549_))
                                (_K158440158544_ _rest158554_ _hd158552_)))
                            (_else158438158452_)))))))
          (_expand-body158428_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158425_)
            _expand-special158427_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158268_
               _expanded?158269_
               _method158270_
               _current-phi158271_
               _expand1158272_)
        (letrec ((_K158274_
                  (lambda (_rest158392_ _r158393_)
                    (let* ((_e158394158401_ _rest158392_)
                           (_E158396158405_ (lambda () _r158393_))
                           (_E158395158421_
                            (lambda ()
                              (if (gx#stx-pair? _e158394158401_)
                                  (let ((_e158397158409_
                                         (gx#syntax-e _e158394158401_)))
                                    (let ((_hd158398158412_
                                           (##car _e158397158409_))
                                          (_tl158399158414_
                                           (##cdr _e158397158409_)))
                                      (let* ((_hd158417_ _hd158398158412_)
                                             (_rest158419_ _tl158399158414_))
                                        (if '#t
                                            (_step158275_
                                             _hd158417_
                                             _rest158419_
                                             _r158393_)
                                            (_E158396158405_)))))
                                  (_E158396158405_)))))
                      (_E158395158421_))))
                 (_step158275_
                  (lambda (_hd158306_ _rest158307_ _r158308_)
                    (let* ((_e158309158327_ _hd158306_)
                           (_E158322158331_
                            (lambda ()
                              (if (_expanded?158269_ (gx#stx-e _hd158306_))
                                  (_K158274_
                                   _rest158307_
                                   (cons (gx#stx-e _hd158306_) _r158308_))
                                  (_expand1158272_
                                   _hd158306_
                                   _K158274_
                                   _rest158307_
                                   _r158308_))))
                           (_E158318158347_
                            (lambda ()
                              (if (gx#stx-pair? _e158309158327_)
                                  (let ((_e158323158335_
                                         (gx#syntax-e _e158309158327_)))
                                    (let ((_hd158324158338_
                                           (##car _e158323158335_))
                                          (_tl158325158340_
                                           (##cdr _e158323158335_)))
                                      (let* ((_macro158343_ _hd158324158338_)
                                             (_body158345_ _tl158325158340_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158343_
                                             gx#syntax-binding?)
                                            (_K158274_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158343_)
                                                    _hd158306_
                                                    _method158270_)
                                                   _rest158307_)
                                             _r158308_)
                                            (_E158322158331_)))))
                                  (_E158322158331_))))
                           (_E158311158361_
                            (lambda ()
                              (if (gx#stx-pair? _e158309158327_)
                                  (let ((_e158319158351_
                                         (gx#syntax-e _e158309158327_)))
                                    (let ((_hd158320158354_
                                           (##car _e158319158351_))
                                          (_tl158321158356_
                                           (##cdr _e158319158351_)))
                                      (if (eq? (gx#stx-e _hd158320158354_)
                                               'begin:)
                                          (let ((_body158359_
                                                 _tl158321158356_))
                                            (if '#t
                                                (_K158274_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158307_
                                                  _body158359_)
                                                 _r158308_)
                                                (_E158318158347_)))
                                          (_E158318158347_))))
                                  (_E158318158347_))))
                           (_E158310158388_
                            (lambda ()
                              (if (gx#stx-pair? _e158309158327_)
                                  (let ((_e158312158365_
                                         (gx#syntax-e _e158309158327_)))
                                    (let ((_hd158313158368_
                                           (##car _e158312158365_))
                                          (_tl158314158370_
                                           (##cdr _e158312158365_)))
                                      (if (eq? (gx#stx-e _hd158313158368_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158314158370_)
                                              (let ((_e158315158373_
                                                     (gx#syntax-e
                                                      _tl158314158370_)))
                                                (let ((_hd158316158376_
                                                       (##car _e158315158373_))
                                                      (_tl158317158378_
                                                       (##cdr _e158315158373_)))
                                                  (let* ((_dphi158381_
                                                          _hd158316158376_)
                                                         (_body158383_
                                                          _tl158317158378_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158381_)
                                                        (let ((_rbody158386_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158274_ _body158383_ '()))
                        _current-phi158271_
                        (fx+ (gx#stx-e _dphi158381_) (_current-phi158271_)))))
                  (_K158274_
                   _rest158307_
                   (foldr1 cons _r158308_ _rbody158386_)))
                (_E158311158361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158311158361_))
                                          (_E158311158361_))))
                                  (_E158311158361_)))))
                      (_E158310158388_)))))
          (let* ((_e158276158283_ _stx158268_)
                 (_E158278158287_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158276158283_)))
                 (_E158277158302_
                  (lambda ()
                    (if (gx#stx-pair? _e158276158283_)
                        (let ((_e158279158291_ (gx#syntax-e _e158276158283_)))
                          (let ((_hd158280158294_ (##car _e158279158291_))
                                (_tl158281158296_ (##cdr _e158279158291_)))
                            (let ((_body158299_ _tl158281158296_))
                              (if '#t
                                  (if (_current-phi158271_)
                                      (_K158274_ _body158299_ '())
                                      (call-with-parameters
                                       (lambda () (_K158274_ _body158299_ '()))
                                       _current-phi158271_
                                       (gx#current-expander-phi)))
                                  (_E158278158287_)))))
                        (_E158278158287_)))))
            (_E158277158302_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx157935_ _internal-expand?157936_)
        (letrec ((_expand1157938_
                  (lambda (_hd158248_ _K158249_ _rest158250_ _r158251_)
                    (if (gx#core-bound-module? _hd158248_)
                        (_import1157939_
                         (gx#syntax-local-e__0 _hd158248_)
                         _K158249_
                         _rest158250_
                         _r158251_)
                        (if (gx#core-library-module-path? _hd158248_)
                            (_import1157939_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158248_))
                             _K158249_
                             _rest158250_
                             _r158251_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158248_)
                                (_import1157939_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158248_))
                                 _K158249_
                                 _rest158250_
                                 _r158251_)
                                (let ((_e158253_ (gx#stx-e _hd158248_)))
                                  (if (pair? _e158253_)
                                      (let ((_$e158255_
                                             (gx#stx-e (car _e158253_))))
                                        (if (eq? 'spec: _$e158255_)
                                            (_import-spec157942_
                                             _hd158248_
                                             _K158249_
                                             _rest158250_
                                             _r158251_)
                                            (if (eq? 'in: _$e158255_)
                                                (_import-submodule157940_
                                                 _hd158248_
                                                 _K158249_
                                                 _rest158250_
                                                 _r158251_)
                                                (if (eq? 'runtime: _$e158255_)
                                                    (_import-runtime157941_
                                                     _hd158248_
                                                     _K158249_
                                                     _rest158250_
                                                     _r158251_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx157935_
                                                     _hd158248_)))))
                                      (if (string? _e158253_)
                                          (_import1157939_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158248_
                                             (gx#stx-source _stx157935_)))
                                           _K158249_
                                           _rest158250_
                                           _r158251_)
                                          (if (##structure-instance-of?
                                               _e158253_
                                               'gx#module-context::t)
                                              (_K158249_
                                               _rest158250_
                                               (cons _e158253_ _r158251_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx157935_
                                               _hd158248_))))))))))
                 (_import1157939_
                  (lambda (_ctx158237_ _K158238_ _rest158239_ _r158240_)
                    (let ((_dphi158242_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158238_
                       _rest158239_
                       (cons (##structure
                              gx#import-set::t
                              _ctx158237_
                              _dphi158242_
                              (map (lambda (_g158243158245_)
                                     (gx#core-module-export->import__%
                                      _g158243158245_
                                      '#f
                                      _dphi158242_))
                                   (##unchecked-structure-ref
                                    _ctx158237_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r158240_)))))
                 (_import-submodule157940_
                  (lambda (_hd158204_ _K158205_ _rest158206_ _r158207_)
                    (let* ((_e158208158215_ _hd158204_)
                           (_E158210158219_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158208158215_)))
                           (_E158209158233_
                            (lambda ()
                              (if (gx#stx-pair? _e158208158215_)
                                  (let ((_e158211158223_
                                         (gx#syntax-e _e158208158215_)))
                                    (let ((_hd158212158226_
                                           (##car _e158211158223_))
                                          (_tl158213158228_
                                           (##cdr _e158211158223_)))
                                      (let ((_spath158231_ _tl158213158228_))
                                        (if '#t
                                            (_import1157939_
                                             (_import-spec-source157943_
                                              _spath158231_)
                                             _K158205_
                                             _rest158206_
                                             _r158207_)
                                            (_E158210158219_)))))
                                  (_E158210158219_)))))
                      (_E158209158233_))))
                 (_import-runtime157941_
                  (lambda (_hd158171_ _K158172_ _rest158173_ _r158174_)
                    (let* ((_e158175158182_ _hd158171_)
                           (_E158177158186_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158175158182_)))
                           (_E158176158200_
                            (lambda ()
                              (if (gx#stx-pair? _e158175158182_)
                                  (let ((_e158178158190_
                                         (gx#syntax-e _e158175158182_)))
                                    (let ((_hd158179158193_
                                           (##car _e158178158190_))
                                          (_tl158180158195_
                                           (##cdr _e158178158190_)))
                                      (let ((_spath158198_ _tl158180158195_))
                                        (if '#t
                                            (_K158172_
                                             _rest158173_
                                             (cons (_import-spec-source157943_
                                                    _spath158198_)
                                                   _r158174_))
                                            (_E158177158186_)))))
                                  (_E158177158186_)))))
                      (_E158176158200_))))
                 (_import-spec157942_
                  (lambda (_hd158010_ _K158011_ _rest158012_ _r158013_)
                    (let* ((_e158014158031_ _hd158010_)
                           (_E158023158035_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158014158031_)))
                           (_E158016158145_
                            (lambda ()
                              (if (gx#stx-pair? _e158014158031_)
                                  (let ((_e158024158039_
                                         (gx#syntax-e _e158014158031_)))
                                    (let ((_hd158025158042_
                                           (##car _e158024158039_))
                                          (_tl158026158044_
                                           (##cdr _e158024158039_)))
                                      (if (gx#stx-pair? _tl158026158044_)
                                          (let ((_e158027158047_
                                                 (gx#syntax-e
                                                  _tl158026158044_)))
                                            (let ((_hd158028158050_
                                                   (##car _e158027158047_))
                                                  (_tl158029158052_
                                                   (##cdr _e158027158047_)))
                                              (let* ((_path158055_
                                                      _hd158028158050_)
                                                     (_specs158057_
                                                      _tl158029158052_))
                                                (if '#t
                                                    (let ((_src-ctx158059_
                                                           (_import-spec-source157943_
                                                            _path158055_))
                                                          (_exports158060_
                                                           (make-table))
                                                          (_specs158061_
                                                           (gx#syntax->list
                                                            _specs158057_)))
                                                      (for-each
                                                       (lambda (_out158063_)
                                                         (table-set!
                                                          _exports158060_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out158063_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out158063_
                         '4
                         gx#module-export::t
                         '#f))
                  _out158063_))
               (##unchecked-structure-ref
                _src-ctx158059_
                '9
                gx#module-context::t
                '#f))
              (_K158011_
               _rest158012_
               (foldl1 (lambda (_spec158065_ _r158066_)
                         (let* ((_e158067158083_ _spec158065_)
                                (_E158069158087_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e158067158083_)))
                                (_E158068158141_
                                 (lambda ()
                                   (if (gx#stx-pair? _e158067158083_)
                                       (let ((_e158070158091_
                                              (gx#syntax-e _e158067158083_)))
                                         (let ((_hd158071158094_
                                                (##car _e158070158091_))
                                               (_tl158072158096_
                                                (##cdr _e158070158091_)))
                                           (let ((_phi158099_
                                                  _hd158071158094_))
                                             (if (gx#stx-pair?
                                                  _tl158072158096_)
                                                 (let ((_e158073158101_
                                                        (gx#syntax-e
                                                         _tl158072158096_)))
                                                   (let ((_hd158074158104_
                                                          (##car _e158073158101_))
                                                         (_tl158075158106_
                                                          (##cdr _e158073158101_)))
                                                     (let ((_name158109_
                                                            _hd158074158104_))
                                                       (if (gx#stx-pair?
                                                            _tl158075158106_)
                                                           (let ((_e158076158111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl158075158106_)))
                     (let ((_hd158077158114_ (##car _e158076158111_))
                           (_tl158078158116_ (##cdr _e158076158111_)))
                       (let ((_src-phi158119_ _hd158077158114_))
                         (if (gx#stx-pair? _tl158078158116_)
                             (let ((_e158079158121_
                                    (gx#syntax-e _tl158078158116_)))
                               (let ((_hd158080158124_ (##car _e158079158121_))
                                     (_tl158081158126_
                                      (##cdr _e158079158121_)))
                                 (let ((_src-name158129_ _hd158080158124_))
                                   (if (gx#stx-null? _tl158081158126_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi158119_)
                                                (gx#identifier?
                                                 _src-name158129_)
                                                (gx#stx-fixnum? _phi158099_)
                                                (gx#identifier? _name158109_))
                                           (let ((_src-phi158131_
                                                  (gx#stx-e _src-phi158119_))
                                                 (_src-name158132_
                                                  (gx#core-identifier-key
                                                   _src-name158129_))
                                                 (_phi158133_
                                                  (gx#stx-e _phi158099_))
                                                 (_name158134_
                                                  (gx#core-identifier-key
                                                   _name158109_)))
                                             (let ((_$e158136_
                                                    (table-ref
                                                     _exports158060_
                                                     (cons _src-phi158131_
                                                           _src-name158132_)
                                                     '#f)))
                                               (if _$e158136_
                                                   ((lambda (_out158139_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out158139_
                                                             _name158134_
                                                             (fx- _phi158133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi158131_))
                    _r158066_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e158136_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx157935_
                                                    _hd158010_))))
                                           (_E158069158087_))
                                       (_E158069158087_)))))
                             (_E158069158087_)))))
                   (_E158069158087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E158069158087_)))))
                                       (_E158069158087_)))))
                           (_E158068158141_)))
                       _r158013_
                       _specs158061_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E158023158035_)))))
                                          (_E158023158035_))))
                                  (_E158023158035_))))
                           (_E158015158167_
                            (lambda ()
                              (if (gx#stx-pair? _e158014158031_)
                                  (let ((_e158017158149_
                                         (gx#syntax-e _e158014158031_)))
                                    (let ((_hd158018158152_
                                           (##car _e158017158149_))
                                          (_tl158019158154_
                                           (##cdr _e158017158149_)))
                                      (if (gx#stx-pair? _tl158019158154_)
                                          (let ((_e158020158157_
                                                 (gx#syntax-e
                                                  _tl158019158154_)))
                                            (let ((_hd158021158160_
                                                   (##car _e158020158157_))
                                                  (_tl158022158162_
                                                   (##cdr _e158020158157_)))
                                              (let ((_path158165_
                                                     _hd158021158160_))
                                                (if (gx#stx-null?
                                                     _tl158022158162_)
                                                    (if '#t
                                                        (_K158011_
                                                         _rest158012_
                                                         (cons (_import-spec-source157943_
                                                                _path158165_)
                                                               _r158013_))
                                                        (_E158016158145_))
                                                    (_E158016158145_)))))
                                          (_E158016158145_))))
                                  (_E158016158145_)))))
                      (_E158015158167_))))
                 (_import-spec-source157943_
                  (lambda (_spath158008_)
                    (gx#core-import-nested-module _spath158008_ _stx157935_)))
                 (_import!157944_
                  (lambda (_rbody157957_)
                    (letrec* ((_current-ctx157959_
                               (gx#current-expander-context))
                              (_deps157960_ (make-table 'test: eq?))
                              (_bind!157961_
                               (lambda (_hd158006_)
                                 (gx#core-bind-import!__1
                                  _hd158006_
                                  _current-ctx157959_))))
                      (let _lp157963_ ((_rest157965_ _rbody157957_)
                                       (_body157966_ '()))
                        (let* ((_rest157967157975_ _rest157965_)
                               (_else157969157985_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx157959_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx157959_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx157959_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body157966_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx157983_ _g165281_)
                                     (gx#eval-module _ctx157983_))
                                   _deps157960_)
                                  _body157966_))
                               (_K157971157994_
                                (lambda (_rest157988_ _hd157989_)
                                  (if (##structure-direct-instance-of?
                                       _hd157989_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!157961_ _hd157989_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd157989_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd157989_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps157960_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd157989_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd157989_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!157961_
                                             (##unchecked-structure-ref
                                              _hd157989_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd157989_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps157960_
                                                 (##unchecked-structure-ref
                                                  _hd157989_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e157991_
                                                 (##structure-instance-of?
                                                  _hd157989_
                                                  'gx#module-context::t)))
                                            (if _$e157991_
                                                _$e157991_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx157935_
                                                 _hd157989_)))))
                                  (_lp157963_
                                   _rest157988_
                                   (cons _hd157989_ _body157966_)))))
                          (if (##pair? _rest157967157975_)
                              (let ((_hd157972157997_
                                     (##car _rest157967157975_))
                                    (_tl157973157999_
                                     (##cdr _rest157967157975_)))
                                (let* ((_hd158002_ _hd157972157997_)
                                       (_rest158004_ _tl157973157999_))
                                  (_K157971157994_ _rest158004_ _hd158002_)))
                              (_else157969157985_)))))))
                 (_expanded-import?157945_
                  (lambda (_e157949_)
                    (let ((_$e157951_
                           (##structure-direct-instance-of?
                            _e157949_
                            'gx#import-set::t)))
                      (if _$e157951_
                          _$e157951_
                          (let ((_$e157954_
                                 (##structure-direct-instance-of?
                                  _e157949_
                                  'gx#module-import::t)))
                            (if _$e157954_
                                _$e157954_
                                (##structure-instance-of?
                                 _e157949_
                                 'gx#module-context::t))))))))
          (let ((_rbody157947_
                 (gx#core-expand-import/export
                  _stx157935_
                  _expanded-import?157945_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1157938_)))
            (if _internal-expand?157936_
                (reverse _rbody157947_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!157944_ _rbody157947_))
                 (gx#stx-source _stx157935_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158261_)
        (let ((_internal-expand?158263_ '#f))
          (gx#core-expand-import%__% _stx158261_ _internal-expand?158263_))))
    (define gx#core-expand-import%
      (lambda _g165283_
        (let ((_g165282_ (##length _g165283_)))
          (cond ((##fx= _g165282_ 1)
                 (apply (lambda (_stx158261_)
                          (gx#core-expand-import%__0 _stx158261_))
                        _g165283_))
                ((##fx= _g165282_ 2)
                 (apply (lambda (_stx158265_ _internal-expand?158266_)
                          (gx#core-expand-import%__%
                           _stx158265_
                           _internal-expand?158266_))
                        _g165283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g165283_))))))
    (define gx#core-import-nested-module
      (lambda (_spath157862_ _where157863_)
        (let* ((_e157864157871_ _spath157862_)
               (_E157866157875_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157864157871_)))
               (_E157865157930_
                (lambda ()
                  (if (gx#stx-pair? _e157864157871_)
                      (let ((_e157867157879_ (gx#syntax-e _e157864157871_)))
                        (let ((_hd157868157882_ (##car _e157867157879_))
                              (_tl157869157884_ (##cdr _e157867157879_)))
                          (let* ((_origin157887_ _hd157868157882_)
                                 (_sub157889_ _tl157869157884_))
                            (if '#t
                                (let ((_origin-ctx157891_
                                       (if (gx#stx-false? _origin157887_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin157887_))))
                                  (let _lp157893_ ((_rest157895_ _sub157889_)
                                                   (_ctx157896_
                                                    _origin-ctx157891_))
                                    (let* ((_e157897157904_ _rest157895_)
                                           (_E157899157908_
                                            (lambda () _ctx157896_))
                                           (_E157898157926_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e157897157904_)
                                                  (let ((_e157900157912_
                                                         (gx#syntax-e
                                                          _e157897157904_)))
                                                    (let ((_hd157901157915_
                                                           (##car _e157900157912_))
                                                          (_tl157902157917_
                                                           (##cdr _e157900157912_)))
                                                      (let* ((_id157920_
                                                              _hd157901157915_)
                                                             (_rest157922_
                                                              _tl157902157917_))
                                                        (if '#t
                                                            (let ((_bind157924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id157920_
                            '0
                            _ctx157896_)))
                      (if (and (##structure-direct-instance-of?
                                _bind157924_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind157924_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where157863_
                           _spath157862_
                           _id157920_))
                      (_lp157893_
                       _rest157922_
                       (##unchecked-structure-ref
                        _bind157924_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E157899157908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157899157908_)))))
                                      (_E157898157926_))))
                                (_E157866157875_)))))
                      (_E157866157875_)))))
          (_E157865157930_))))
    (define gx#core-expand-import-source
      (lambda (_hd157860_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd157860_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157368_ _internal-expand?157369_)
        (letrec* ((_make-export__165212165213_
                   (lambda (_bind157808_ _phi157809_ _ctx157810_ _name157811_)
                     (let* ((_key157813_
                             (##unchecked-structure-ref
                              _bind157808_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key157815_
                             (if _name157811_
                                 (gx#core-identifier-key _name157811_)
                                 _key157813_)))
                       (##structure
                        gx#module-export::t
                        _ctx157810_
                        _key157813_
                        _phi157809_
                        _export-key157815_
                        (let ((_$e157818_
                               (##structure-instance-of?
                                _bind157808_
                                'gx#extern-binding::t)))
                          (if _$e157818_
                              _$e157818_
                              (##structure-direct-instance-of?
                               _bind157808_
                               'gx#import-binding::t)))))))
                  (_make-export__0__165214165217_
                   (lambda (_bind157824_)
                     (let* ((_phi157826_ (gx#current-export-expander-phi))
                            (_ctx157828_ (gx#current-expander-context))
                            (_name157830_ '#f))
                       (_make-export__165212165213_
                        _bind157824_
                        _phi157826_
                        _ctx157828_
                        _name157830_))))
                  (_make-export__1__165215165218_
                   (lambda (_bind157832_ _phi157833_)
                     (let* ((_ctx157835_ (gx#current-expander-context))
                            (_name157837_ '#f))
                       (_make-export__165212165213_
                        _bind157832_
                        _phi157833_
                        _ctx157835_
                        _name157837_))))
                  (_make-export__2__165216165219_
                   (lambda (_bind157839_ _phi157840_ _ctx157841_)
                     (let ((_name157843_ '#f))
                       (_make-export__165212165213_
                        _bind157839_
                        _phi157840_
                        _ctx157841_
                        _name157843_))))
                  (_make-export157371_
                   (lambda _g165285_
                     (let ((_g165284_ (##length _g165285_)))
                       (cond ((##fx= _g165284_ 1)
                              (apply (lambda (_bind157824_)
                                       (_make-export__0__165214165217_
                                        _bind157824_))
                                     _g165285_))
                             ((##fx= _g165284_ 2)
                              (apply (lambda (_bind157832_ _phi157833_)
                                       (_make-export__1__165215165218_
                                        _bind157832_
                                        _phi157833_))
                                     _g165285_))
                             ((##fx= _g165284_ 3)
                              (apply (lambda (_bind157839_
                                              _phi157840_
                                              _ctx157841_)
                                       (_make-export__2__165216165219_
                                        _bind157839_
                                        _phi157840_
                                        _ctx157841_))
                                     _g165285_))
                             ((##fx= _g165284_ 4)
                              (apply (lambda (_bind157845_
                                              _phi157846_
                                              _ctx157847_
                                              _name157848_)
                                       (_make-export__165212165213_
                                        _bind157845_
                                        _phi157846_
                                        _ctx157847_
                                        _name157848_))
                                     _g165285_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g165285_))))))
                  (_expand1157372_
                   (lambda (_hd157521_ _K157522_ _rest157523_ _r157524_)
                     (let* ((_e157525157557_ _hd157521_)
                            (_E157552157561_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157368_
                                _hd157521_)))
                            (_E157542157640_
                             (lambda ()
                               (if (gx#stx-pair? _e157525157557_)
                                   (let ((_e157553157565_
                                          (gx#syntax-e _e157525157557_)))
                                     (let ((_hd157554157568_
                                            (##car _e157553157565_))
                                           (_tl157555157570_
                                            (##cdr _e157553157565_)))
                                       (if (eq? (gx#stx-e _hd157554157568_)
                                                'import:)
                                           (let ((_in157573_ _tl157555157570_))
                                             (if (gx#stx-list? _in157573_)
                                                 (let _lp157575_ ((_in-rest157577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157573_)
                          (_r157578_ _r157524_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157579157586_
                                                           _in-rest157577_)
                                                          (_E157581157590_
                                                           (lambda ()
                                                             (_K157522_
                                                              _rest157523_
                                                              _r157578_)))
                                                          (_E157580157636_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157579157586_)
                         (let ((_e157582157594_ (gx#syntax-e _e157579157586_)))
                           (let ((_hd157583157597_ (##car _e157582157594_))
                                 (_tl157584157599_ (##cdr _e157582157594_)))
                             (let* ((_hd157602_ _hd157583157597_)
                                    (_in-rest157604_ _tl157584157599_))
                               (if '#t
                                   (let ((_src157634_
                                          (if (gx#core-bound-module?
                                               _hd157602_)
                                              (gx#syntax-local-e__0 _hd157602_)
                                              (if (gx#core-library-module-path?
                                                   _hd157602_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157602_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157602_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157602_))
                                                      (if (gx#stx-string?
                                                           _hd157602_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157602_
                                                            (gx#stx-source
                                                             _stx157368_)))
                                                          (let* ((_e157605157612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157602_)
                         (_E157607157616_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157368_
                             _hd157602_)))
                         (_E157606157630_
                          (lambda ()
                            (if (gx#stx-pair? _e157605157612_)
                                (let ((_e157608157620_
                                       (gx#syntax-e _e157605157612_)))
                                  (let ((_hd157609157623_
                                         (##car _e157608157620_))
                                        (_tl157610157625_
                                         (##cdr _e157608157620_)))
                                    (if (eq? (gx#stx-e _hd157609157623_) 'in:)
                                        (let ((_spath157628_ _tl157610157625_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157628_
                                               _stx157368_)
                                              (_E157607157616_)))
                                        (_E157607157616_))))
                                (_E157607157616_)))))
                    (_E157606157630_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157575_
                                      _in-rest157604_
                                      (_export-imports157373_
                                       _src157634_
                                       _r157578_)))
                                   (_E157581157590_)))))
                         (_E157581157590_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157580157636_)))
                                                 (_E157552157561_)))
                                           (_E157552157561_))))
                                   (_E157552157561_))))
                            (_E157529157679_
                             (lambda ()
                               (if (gx#stx-pair? _e157525157557_)
                                   (let ((_e157543157644_
                                          (gx#syntax-e _e157525157557_)))
                                     (let ((_hd157544157647_
                                            (##car _e157543157644_))
                                           (_tl157545157649_
                                            (##cdr _e157543157644_)))
                                       (if (eq? (gx#stx-e _hd157544157647_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157545157649_)
                                               (let ((_e157546157652_
                                                      (gx#syntax-e
                                                       _tl157545157649_)))
                                                 (let ((_hd157547157655_
                                                        (##car _e157546157652_))
                                                       (_tl157548157657_
                                                        (##cdr _e157546157652_)))
                                                   (let ((_id157660_
                                                          _hd157547157655_))
                                                     (if (gx#stx-pair?
                                                          _tl157548157657_)
                                                         (let ((_e157549157662_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157548157657_)))
                   (let ((_hd157550157665_ (##car _e157549157662_))
                         (_tl157551157667_ (##cdr _e157549157662_)))
                     (let ((_name157670_ _hd157550157665_))
                       (if (gx#stx-null? _tl157551157667_)
                           (if '#t
                               (let* ((_phi157672_
                                       (gx#current-export-expander-phi))
                                      (_$e157674_
                                       (gx#core-resolve-identifier__1
                                        _id157660_
                                        _phi157672_)))
                                 (if _$e157674_
                                     ((lambda (_bind157677_)
                                        (_K157522_
                                         _rest157523_
                                         (cons (_make-export__165212165213_
                                                _bind157677_
                                                _phi157672_
                                                (gx#current-expander-context)
                                                _name157670_)
                                               _r157524_)))
                                      _$e157674_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157368_
                                      _hd157521_
                                      _id157660_)))
                               (_E157542157640_))
                           (_E157542157640_)))))
                 (_E157542157640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157542157640_))
                                           (_E157542157640_))))
                                   (_E157542157640_))))
                            (_E157528157728_
                             (lambda ()
                               (if (gx#stx-pair? _e157525157557_)
                                   (let ((_e157530157683_
                                          (gx#syntax-e _e157525157557_)))
                                     (let ((_hd157531157686_
                                            (##car _e157530157683_))
                                           (_tl157532157688_
                                            (##cdr _e157530157683_)))
                                       (if (eq? (gx#stx-e _hd157531157686_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157532157688_)
                                               (let ((_e157533157691_
                                                      (gx#syntax-e
                                                       _tl157532157688_)))
                                                 (let ((_hd157534157694_
                                                        (##car _e157533157691_))
                                                       (_tl157535157696_
                                                        (##cdr _e157533157691_)))
                                                   (let ((_phi157699_
                                                          _hd157534157694_))
                                                     (if (gx#stx-pair?
                                                          _tl157535157696_)
                                                         (let ((_e157536157701_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157535157696_)))
                   (let ((_hd157537157704_ (##car _e157536157701_))
                         (_tl157538157706_ (##cdr _e157536157701_)))
                     (let ((_id157709_ _hd157537157704_))
                       (if (gx#stx-pair? _tl157538157706_)
                           (let ((_e157539157711_
                                  (gx#syntax-e _tl157538157706_)))
                             (let ((_hd157540157714_ (##car _e157539157711_))
                                   (_tl157541157716_ (##cdr _e157539157711_)))
                               (let ((_name157719_ _hd157540157714_))
                                 (if (gx#stx-null? _tl157541157716_)
                                     (if (and (gx#stx-fixnum? _phi157699_)
                                              (gx#identifier? _id157709_)
                                              (gx#identifier? _name157719_))
                                         (let* ((_phi157721_
                                                 (gx#stx-e _phi157699_))
                                                (_$e157723_
                                                 (gx#core-resolve-identifier__1
                                                  _id157709_
                                                  _phi157721_)))
                                           (if _$e157723_
                                               ((lambda (_bind157726_)
                                                  (_K157522_
                                                   _rest157523_
                                                   (cons (_make-export__165212165213_
                                                          _bind157726_
                                                          _phi157721_
                                                          (gx#current-expander-context)
                                                          _name157719_)
                                                         _r157524_)))
                                                _$e157723_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157368_
                                                _hd157521_
                                                _id157709_)))
                                         (_E157529157679_))
                                     (_E157529157679_)))))
                           (_E157529157679_)))))
                 (_E157529157679_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157529157679_))
                                           (_E157529157679_))))
                                   (_E157529157679_))))
                            (_E157527157739_
                             (lambda ()
                               (let ((_id157732_ _e157525157557_))
                                 (if (gx#identifier? _id157732_)
                                     (let ((_$e157734_
                                            (gx#core-resolve-identifier__1
                                             _id157732_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157734_
                                           ((lambda (_bind157737_)
                                              (_K157522_
                                               _rest157523_
                                               (cons (_make-export__0__165214165217_
                                                      _bind157737_)
                                                     _r157524_)))
                                            _$e157734_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157368_
                                            _hd157521_)))
                                     (_E157528157728_)))))
                            (_E157526157803_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157525157557_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157743_
                                               (gx#current-expander-context))
                                              (_current-phi157745_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157747_
                                               (gx#core-context-shift
                                                _current-ctx157743_
                                                _current-phi157745_))
                                              (_phi-bind157749_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157747_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157752_ ((_bind-rest157754_
                                                           _phi-bind157749_)
                                                          (_set157755_ '()))
                                           (let* ((_bind-rest157756157766_
                                                   _bind-rest157754_)
                                                  (_else157758157774_
                                                   (lambda ()
                                                     (_K157522_
                                                      _rest157523_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157745_
                                                             _set157755_)
                                                            _r157524_))))
                                                  (_K157760157784_
                                                   (lambda (_bind-rest157777_
                                                            _bind157778_
                                                            _key157779_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157778_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157778_))
                                                         (_lp157752_
                                                          _bind-rest157777_
                                                          _set157755_)
                                                         (_lp157752_
                                                          _bind-rest157777_
                                                          (cons (_make-export__2__165216165219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157778_
                         _current-phi157745_
                         _current-ctx157743_)
                        _set157755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157756157766_)
                                                 (let ((_hd157761157787_
                                                        (##car _bind-rest157756157766_))
                                                       (_tl157762157789_
                                                        (##cdr _bind-rest157756157766_)))
                                                   (if (##pair? _hd157761157787_)
                                                       (let ((_hd157763157792_
                                                              (##car _hd157761157787_))
                                                             (_tl157764157794_
                                                              (##cdr _hd157761157787_)))
                                                         (let* ((_key157797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157763157792_)
                        (_bind157799_ _tl157764157794_)
                        (_bind-rest157801_ _tl157762157789_))
                   (_K157760157784_
                    _bind-rest157801_
                    _bind157799_
                    _key157797_)))
               (_else157758157774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157758157774_)))))
                                       (_E157527157739_))
                                   (_E157527157739_)))))
                       (_E157526157803_))))
                  (_export-imports157373_
                   (lambda (_src157397_ _r157398_)
                     (letrec* ((_current-ctx157400_
                                (gx#current-expander-context))
                               (_current-phi157401_
                                (gx#current-export-expander-phi))
                               (_import->export157402_
                                (lambda (_in157483_)
                                  (let* ((_in157484157492_ _in157483_)
                                         (_E157486157496_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157484157492_)))
                                         (_K157487157503_
                                          (lambda (_phi157499_
                                                   _key157500_
                                                   _out157501_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157400_
                                             _key157500_
                                             _phi157499_
                                             _key157500_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157484157492_
                                         'gx#module-import::t)
                                        (let* ((_e157488157506_
                                                (##unchecked-structure-ref
                                                 _in157484157492_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157509_ _e157488157506_)
                                               (_e157489157511_
                                                (##unchecked-structure-ref
                                                 _in157484157492_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157514_ _e157489157511_)
                                               (_e157490157516_
                                                (##unchecked-structure-ref
                                                 _in157484157492_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157519_ _e157490157516_))
                                          (_K157487157503_
                                           _phi157519_
                                           _key157514_
                                           _out157509_))
                                        (_E157486157496_)))))
                               (_fold-e157403_
                                (lambda (_in157405_ _r157406_)
                                  (let* ((_in157407157421_ _in157405_)
                                         (_else157410157429_
                                          (lambda () _r157406_)))
                                    (let ((_K157416157465_
                                           (lambda (_phi157461_
                                                    _key157462_
                                                    _out157463_)
                                             (if (and (fx= _phi157461_
                                                           _current-phi157401_)
                                                      (eq? _src157397_
                                                           (##unchecked-structure-ref
                                                            _out157463_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157402_
                                                        _in157405_)
                                                       _r157406_)
                                                 _r157406_)))
                                          (_K157412157440_
                                           (lambda (_imports157433_
                                                    _phi157434_
                                                    _ctx157435_)
                                             (if (and (fx= _phi157434_
                                                           _current-phi157401_)
                                                      (eq? _src157397_
                                                           _ctx157435_))
                                                 (foldl1 (lambda (_in157437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157438_)
                   (cons (_import->export157402_ _in157437_) _r157438_))
                 _r157406_
                 _imports157433_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157406_))))
                                      (let ((_try-match157409157458_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157407157421_
                                                    'gx#import-set::t)
                                                   (let* ((_e157413157443_
                                                           (##unchecked-structure-ref
                                                            _in157407157421_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157414157448_
                                                           (##unchecked-structure-ref
                                                            _in157407157421_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157415157453_
                                                           (##unchecked-structure-ref
                                                            _in157407157421_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157446_
                                                            _e157413157443_)
                                                           (_phi157451_
                                                            _e157414157448_)
                                                           (_imports157456_
                                                            _e157415157453_))
                                                       (_K157412157440_
                                                        _imports157456_
                                                        _phi157451_
                                                        _ctx157446_)))
                                                   (_else157410157429_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157407157421_
                                             'gx#module-import::t)
                                            (let* ((_e157417157468_
                                                    (##unchecked-structure-ref
                                                     _in157407157421_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157418157473_
                                                    (##unchecked-structure-ref
                                                     _in157407157421_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157419157478_
                                                    (##unchecked-structure-ref
                                                     _in157407157421_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157471_
                                                     _e157417157468_)
                                                    (_key157476_
                                                     _e157418157473_)
                                                    (_phi157481_
                                                     _e157419157478_))
                                                (_K157416157465_
                                                 _phi157481_
                                                 _key157476_
                                                 _out157471_)))
                                            (_try-match157409157458_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157397_
                              _current-phi157401_
                              (foldl1 _fold-e157403_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157400_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157398_))))
                  (_export!157374_
                   (lambda (_rbody157387_)
                     (letrec* ((_current-ctx157389_
                                (gx#current-expander-context))
                               (_fold-e157390_
                                (lambda (_out157394_ _r157395_)
                                  (if (##structure-direct-instance-of?
                                       _out157394_
                                       'gx#module-export::t)
                                      (cons _out157394_ _r157395_)
                                      (if (##structure-direct-instance-of?
                                           _out157394_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157395_
                                                  (##unchecked-structure-ref
                                                   _out157394_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157395_)))))
                       (let ((_body157392_ (reverse _rbody157387_)))
                         (##unchecked-structure-set!
                          _current-ctx157389_
                          (foldl1 _fold-e157390_
                                  (##unchecked-structure-ref
                                   _current-ctx157389_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157392_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157392_))))
                  (_expanded-export?157375_
                   (lambda (_e157382_)
                     (let ((_$e157384_
                            (##structure-direct-instance-of?
                             _e157382_
                             'gx#module-export::t)))
                       (if _$e157384_
                           _$e157384_
                           (##structure-direct-instance-of?
                            _e157382_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?157369_)
              (let ((_rbody157380_
                     (gx#core-expand-import/export
                      _stx157368_
                      _expanded-export?157375_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157372_)))
                (if _internal-expand?157369_
                    (reverse _rbody157380_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157374_ _rbody157380_))
                     (gx#stx-source _stx157368_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157368_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157368_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx157853_)
        (let ((_internal-expand?157855_ '#f))
          (gx#core-expand-export%__% _stx157853_ _internal-expand?157855_))))
    (define gx#core-expand-export%
      (lambda _g165287_
        (let ((_g165286_ (##length _g165287_)))
          (cond ((##fx= _g165286_ 1)
                 (apply (lambda (_stx157853_)
                          (gx#core-expand-export%__0 _stx157853_))
                        _g165287_))
                ((##fx= _g165286_ 2)
                 (apply (lambda (_stx157857_ _internal-expand?157858_)
                          (gx#core-expand-export%__%
                           _stx157857_
                           _internal-expand?157858_))
                        _g165287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g165287_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157365_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157365_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157335_)
        (let* ((_e157336157343_ _stx157335_)
               (_E157338157347_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157336157343_)))
               (_E157337157361_
                (lambda ()
                  (if (gx#stx-pair? _e157336157343_)
                      (let ((_e157339157351_ (gx#syntax-e _e157336157343_)))
                        (let ((_hd157340157354_ (##car _e157339157351_))
                              (_tl157341157356_ (##cdr _e157339157351_)))
                          (let ((_body157359_ _tl157341157356_))
                            (if (gx#identifier-list? _body157359_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157359_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157359_))
                                   (gx#stx-source _stx157335_)))
                                (_E157338157347_)))))
                      (_E157338157347_)))))
          (_E157337157361_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157301_ _private?157302_ _phi157303_ _ctx157304_)
        (gx#core-bind-syntax!__%
         _id157301_
         ((if _private?157302_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157301_))
         _private?157302_
         _phi157303_
         _ctx157304_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157309_)
        (let* ((_private?157311_ '#f)
               (_phi157313_ (gx#current-expander-phi))
               (_ctx157315_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157309_
           _private?157311_
           _phi157313_
           _ctx157315_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157317_ _private?157318_)
        (let* ((_phi157320_ (gx#current-expander-phi))
               (_ctx157322_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157317_
           _private?157318_
           _phi157320_
           _ctx157322_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157324_ _private?157325_ _phi157326_)
        (let ((_ctx157328_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157324_
           _private?157325_
           _phi157326_
           _ctx157328_))))
    (define gx#core-bind-feature!
      (lambda _g165289_
        (let ((_g165288_ (##length _g165289_)))
          (cond ((##fx= _g165288_ 1)
                 (apply (lambda (_id157309_)
                          (gx#core-bind-feature!__0 _id157309_))
                        _g165289_))
                ((##fx= _g165288_ 2)
                 (apply (lambda (_id157317_ _private?157318_)
                          (gx#core-bind-feature!__1
                           _id157317_
                           _private?157318_))
                        _g165289_))
                ((##fx= _g165288_ 3)
                 (apply (lambda (_id157324_ _private?157325_ _phi157326_)
                          (gx#core-bind-feature!__2
                           _id157324_
                           _private?157325_
                           _phi157326_))
                        _g165289_))
                ((##fx= _g165288_ 4)
                 (apply (lambda (_id157330_
                                 _private?157331_
                                 _phi157332_
                                 _ctx157333_)
                          (gx#core-bind-feature!__%
                           _id157330_
                           _private?157331_
                           _phi157332_
                           _ctx157333_))
                        _g165289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g165289_))))))))
