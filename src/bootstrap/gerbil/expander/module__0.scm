(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707842372)
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
      (lambda _$args163777_
        (apply make-instance gx#module-import::t _$args163777_)))
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
      (lambda _$args163774_
        (apply make-instance gx#module-export::t _$args163774_)))
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
      (lambda _$args163771_
        (apply make-instance gx#import-set::t _$args163771_)))
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
      (lambda _$args163768_
        (apply make-instance gx#export-set::t _$args163768_)))
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
      (lambda _$args163765_
        (apply make-instance gx#import-expander::t _$args163765_)))
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
      (lambda _$args163762_
        (apply make-instance gx#export-expander::t _$args163762_)))
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
      (lambda _$args163759_
        (apply make-instance gx#import-export-expander::t _$args163759_)))
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
      (lambda (_path163756_ _fun163757_)
        (call-with-input-file
         (cons 'path: (cons _path163756_ gx#source-file-settings))
         _fun163757_)))
    (define gx#module-context:::init!
      (lambda (_self163750_ _id163751_ _super163752_ _ns163753_ _path163754_)
        (if (##fx< '11 (##structure-length _self163750_))
            (begin
              (##unchecked-structure-set!
               _self163750_
               _id163751_
               '1
               (##structure-type _self163750_)
               '#f)
              (##unchecked-structure-set!
               _self163750_
               (make-table 'test: eq?)
               '2
               (##structure-type _self163750_)
               '#f)
              (##unchecked-structure-set!
               _self163750_
               _super163752_
               '3
               (##structure-type _self163750_)
               '#f)
              (##unchecked-structure-set!
               _self163750_
               '#f
               '4
               (##structure-type _self163750_)
               '#f)
              (##unchecked-structure-set!
               _self163750_
               '#f
               '5
               (##structure-type _self163750_)
               '#f)
              (##unchecked-structure-set!
               _self163750_
               _ns163753_
               '6
               (##structure-type _self163750_)
               '#f)
              (##unchecked-structure-set!
               _self163750_
               _path163754_
               '7
               (##structure-type _self163750_)
               '#f)
              (##unchecked-structure-set!
               _self163750_
               '()
               '8
               (##structure-type _self163750_)
               '#f)
              (##unchecked-structure-set!
               _self163750_
               '()
               '9
               (##structure-type _self163750_)
               '#f)
              (##unchecked-structure-set!
               _self163750_
               '#f
               '10
               (##structure-type _self163750_)
               '#f)
              (##unchecked-structure-set!
               _self163750_
               '#f
               '11
               (##structure-type _self163750_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self163750_
                   '11
                   (##vector-length _self163750_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self163594_ _ctx163595_ _root163596_)
        (let ((_super163604_
               (let ((_$e163598_ _root163596_))
                 (if _$e163598_
                     _$e163598_
                     (let ((_$e163601_ (gx#core-context-root__0)))
                       (if _$e163601_
                           _$e163601_
                           (let ((__obj168387
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor168388
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj168387
                                     ':init!)))
                               (if __constructor168388
                                   (__constructor168388 __obj168387)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj168387)))))))
          (if _ctx163595_
              (let ((_id163607_
                     (##structure-ref
                      _ctx163595_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path163608_
                     (##structure-ref _ctx163595_ '7 gx#module-context::t '#f))
                    (_in163609_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx163595_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e163610_
                     (make-promise (lambda () (gx#eval-module _ctx163595_)))))
                (if (##fx< '8 (##structure-length _self163594_))
                    (begin
                      (##unchecked-structure-set!
                       _self163594_
                       _id163607_
                       '1
                       (##structure-type _self163594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163594_
                       (make-table 'test: eq? 'size: (length _in163609_))
                       '2
                       (##structure-type _self163594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163594_
                       _super163604_
                       '3
                       (##structure-type _self163594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163594_
                       '#f
                       '4
                       (##structure-type _self163594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163594_
                       '#f
                       '5
                       (##structure-type _self163594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163594_
                       _path163608_
                       '6
                       (##structure-type _self163594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163594_
                       _in163609_
                       '7
                       (##structure-type _self163594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163594_
                       _e163610_
                       '8
                       (##structure-type _self163594_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self163594_
                           '8
                           (##vector-length _self163594_)))
                (for-each
                 (lambda (_g163611163613_)
                   (gx#core-bind-weak-import!__% _g163611163613_ _self163594_))
                 _in163609_))
              (if (##fx< '8 (##structure-length _self163594_))
                  (begin
                    (##unchecked-structure-set!
                     _self163594_
                     '#f
                     '1
                     (##structure-type _self163594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163594_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self163594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163594_
                     _super163604_
                     '3
                     (##structure-type _self163594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163594_
                     '#f
                     '4
                     (##structure-type _self163594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163594_
                     '#f
                     '5
                     (##structure-type _self163594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163594_
                     '#f
                     '6
                     (##structure-type _self163594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163594_
                     '()
                     '7
                     (##structure-type _self163594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163594_
                     '#f
                     '8
                     (##structure-type _self163594_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self163594_
                         '8
                         (##vector-length _self163594_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self163619_ _ctx163620_)
        (let ((_root163622_ '#f))
          (gx#prelude-context:::init!__%
           _self163619_
           _ctx163620_
           _root163622_))))
    (define gx#prelude-context:::init!
      (lambda _g168394_
        (let ((_g168393_ (##length _g168394_)))
          (cond ((##fx= _g168393_ 2)
                 (apply (lambda (_self163619_ _ctx163620_)
                          (gx#prelude-context:::init!__0
                           _self163619_
                           _ctx163620_))
                        _g168394_))
                ((##fx= _g168393_ 3)
                 (apply (lambda (_self163624_ _ctx163625_ _root163626_)
                          (gx#prelude-context:::init!__%
                           _self163624_
                           _ctx163625_
                           _root163626_))
                        _g168394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g168394_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self163468_ _e163469_)
        (if (##fx< '3 (##structure-length _self163468_))
            (begin
              (##unchecked-structure-set!
               _self163468_
               _e163469_
               '1
               (##structure-type _self163468_)
               '#f)
              (##unchecked-structure-set!
               _self163468_
               (gx#current-expander-context)
               '2
               (##structure-type _self163468_)
               '#f)
              (##unchecked-structure-set!
               _self163468_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self163468_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self163468_
                   '3
                   (##vector-length _self163468_)))))
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
      (lambda (_g163094163097_ _g163095163099_)
        (gx#core-apply-user-expander__%
         _g163094163097_
         _g163095163099_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g162965162968_ _g162966162970_)
        (gx#core-apply-user-expander__%
         _g162965162968_
         _g162966162970_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx162836_)
        (let* ((_path162838_
                (##structure-ref _ctx162836_ '7 gx#module-context::t '#f))
               (_path162840_
                (if (pair? _path162838_) (last _path162838_) _path162838_)))
          (if (string? _path162840_) _path162840_ '#f))))
    (define gx#import-module__%
      (lambda (_path162812_ _reload?162813_ _eval?162814_)
        (let ((_ctx162816_
               ((gx#current-expander-module-import)
                _path162812_
                _reload?162813_)))
          (if (and _ctx162816_ _eval?162814_)
              (gx#eval-module _ctx162816_)
              '#!void)
          _ctx162816_)))
    (define gx#import-module__0
      (lambda (_path162821_)
        (let* ((_reload?162823_ '#f) (_eval?162825_ '#f))
          (gx#import-module__% _path162821_ _reload?162823_ _eval?162825_))))
    (define gx#import-module__1
      (lambda (_path162827_ _reload?162828_)
        (let ((_eval?162830_ '#f))
          (gx#import-module__% _path162827_ _reload?162828_ _eval?162830_))))
    (define gx#import-module
      (lambda _g168396_
        (let ((_g168395_ (##length _g168396_)))
          (cond ((##fx= _g168395_ 1)
                 (apply (lambda (_path162821_)
                          (gx#import-module__0 _path162821_))
                        _g168396_))
                ((##fx= _g168395_ 2)
                 (apply (lambda (_path162827_ _reload?162828_)
                          (gx#import-module__1 _path162827_ _reload?162828_))
                        _g168396_))
                ((##fx= _g168395_ 3)
                 (apply (lambda (_path162832_ _reload?162833_ _eval?162834_)
                          (gx#import-module__%
                           _path162832_
                           _reload?162833_
                           _eval?162834_))
                        _g168396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g168396_))))))
    (define gx#eval-module
      (lambda (_mod162809_) ((gx#current-expander-module-eval) _mod162809_)))
    (define gx#core-eval-module
      (lambda (_obj162794_)
        (letrec ((_force-e162796_
                  (lambda (_getf162805_ _e162806_)
                    (call-with-parameters
                     (lambda () (force (_getf162805_ _e162806_)))
                     gx#current-expander-context
                     _e162806_
                     gx#current-expander-phi
                     '0))))
          (let _recur162798_ ((_e162800_ _obj162794_))
            (if (##structure-instance-of? _e162800_ 'gx#module-context::t)
                (begin
                  (let ((_$e162802_ (gx#core-context-prelude__% _e162800_)))
                    (if _$e162802_ (_recur162798_ _$e162802_) '#!void))
                  (_force-e162796_ gx#module-context-e _e162800_))
                (if (##structure-instance-of? _e162800_ 'gx#prelude-context::t)
                    (_force-e162796_ gx#prelude-context-e _e162800_)
                    (if (gx#stx-string? _e162800_)
                        (_recur162798_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e162800_)))
                        (if (gx#core-library-module-path? _e162800_)
                            (_recur162798_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e162800_)))
                            (error '"Cannot eval module" _obj162794_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx162777_)
        (let _lp162779_ ((_e162781_ _ctx162777_))
          (if (or (##structure-instance-of? _e162781_ 'gx#module-context::t)
                  (##structure-instance-of? _e162781_ 'gx#local-context::t))
              (_lp162779_
               (##unchecked-structure-ref _e162781_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e162781_ 'gx#prelude-context::t)
                  _e162781_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx162790_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx162790_))))
    (define gx#core-context-prelude
      (lambda _g168398_
        (let ((_g168397_ (##length _g168398_)))
          (cond ((##fx= _g168397_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g168398_))
                ((##fx= _g168397_ 1)
                 (apply (lambda (_ctx162792_)
                          (gx#core-context-prelude__% _ctx162792_))
                        _g168398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g168398_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx162767_)
        (let* ((_ht162769_ (gx#current-expander-module-registry))
               (_$e162771_ (table-ref _ht162769_ _ctx162767_ '#f)))
          (if _$e162771_
              (values _$e162771_)
              (let ((_pre162774_
                     (let ((__obj168389
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
                       (gx#prelude-context:::init! __obj168389 _ctx162767_)
                       __obj168389)))
                (table-set! _ht162769_ _ctx162767_ _pre162774_)
                _pre162774_)))))
    (define gx#core-import-module__%
      (lambda (_rpath162648_ _reload?162649_)
        (letrec ((_import-source162651_
                  (lambda (_path162736_)
                    (if (member _path162736_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path162736_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g168399_ (gx#core-read-module _path162736_)))
                         (begin
                           (let ((_g168400_
                                  (if (##values? _g168399_)
                                      (##vector-length _g168399_)
                                      1)))
                             (if (not (##fx= _g168400_ 4))
                                 (error "Context expects 4 values" _g168400_)))
                           (let ((_pre162739_ (##vector-ref _g168399_ 0))
                                 (_id162740_ (##vector-ref _g168399_ 1))
                                 (_ns162741_ (##vector-ref _g168399_ 2))
                                 (_body162742_ (##vector-ref _g168399_ 3)))
                             (let* ((_prelude162747_
                                     (if (##structure-instance-of?
                                          _pre162739_
                                          'gx#prelude-context::t)
                                         _pre162739_
                                         (if (##structure-instance-of?
                                              _pre162739_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre162739_)
                                             (if (string? _pre162739_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre162739_))
                                                 (if (not _pre162739_)
                                                     (let ((_$e162744_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e162744_
                                                           _$e162744_
                                                           (let ((__obj168390
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
                     (gx#prelude-context:::init! __obj168390 '#f)
                     __obj168390)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath162648_
                                                            _pre162739_))))))
                                    (_ctx162749_
                                     (let ((__obj168391
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
                                        __obj168391
                                        _id162740_
                                        _prelude162747_
                                        _ns162741_
                                        _path162736_)
                                       __obj168391))
                                    (_body162751_
                                     (gx#core-expand-module-begin
                                      _body162742_
                                      _ctx162749_))
                                    (_body162753_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body162751_)
                                      _path162736_
                                      _ctx162749_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx162749_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body162753_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx162749_
                                _body162753_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path162736_
                                _ctx162749_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id162740_
                                _ctx162749_)
                               _ctx162749_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path162736_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule162652_
                  (lambda (_rpath162664_)
                    (let* ((_rpath162665162672_ _rpath162664_)
                           (_E162667162676_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath162665162672_)))
                           (_K162668162724_
                            (lambda (_refs162679_ _origin162680_)
                              (let ((_ctx162682_
                                     (if _origin162680_
                                         (gx#core-import-module__%
                                          _origin162680_
                                          _reload?162649_)
                                         (gx#current-expander-context))))
                                (let _lp162684_ ((_rest162686_ _refs162679_)
                                                 (_ctx162687_ _ctx162682_))
                                  (let* ((_rest162688162696_ _rest162686_)
                                         (_else162690162704_
                                          (lambda () _ctx162687_))
                                         (_K162692162712_
                                          (lambda (_rest162707_ _id162708_)
                                            (let ((_bind162710_
                                                   (gx#resolve-identifier__%
                                                    _id162708_
                                                    '0
                                                    _ctx162687_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind162710_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind162710_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp162684_
                                                   _rest162707_
                                                   (##unchecked-structure-ref
                                                    _bind162710_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath162664_
                                                         _id162708_
                                                         _bind162710_))))))
                                    (if (##pair? _rest162688162696_)
                                        (let ((_hd162693162715_
                                               (##car _rest162688162696_))
                                              (_tl162694162717_
                                               (##cdr _rest162688162696_)))
                                          (let* ((_id162720_ _hd162693162715_)
                                                 (_rest162722_
                                                  _tl162694162717_))
                                            (_K162692162712_
                                             _rest162722_
                                             _id162720_)))
                                        (_else162690162704_))))))))
                      (if (##pair? _rpath162665162672_)
                          (let ((_hd162669162727_ (##car _rpath162665162672_))
                                (_tl162670162729_ (##cdr _rpath162665162672_)))
                            (let* ((_origin162732_ _hd162669162727_)
                                   (_refs162734_ _tl162670162729_))
                              (_K162668162724_ _refs162734_ _origin162732_)))
                          (_E162667162676_))))))
          (let ((_$e162654_
                 (if (not _reload?162649_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath162648_
                      '#f)
                     '#f)))
            (if _$e162654_
                (values _$e162654_)
                (if (list? _rpath162648_)
                    (_import-submodule162652_ _rpath162648_)
                    (if (gx#core-library-module-path? _rpath162648_)
                        (let ((_ctx162657_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath162648_)
                                _reload?162649_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath162648_
                           _ctx162657_)
                          _ctx162657_)
                        (let* ((_npath162659_ (path-normalize _rpath162648_))
                               (_$e162661_
                                (if (not _reload?162649_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath162659_
                                     '#f)
                                    '#f)))
                          (if _$e162661_
                              (values _$e162661_)
                              (_import-source162651_ _npath162659_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath162760_)
        (let ((_reload?162762_ '#f))
          (gx#core-import-module__% _rpath162760_ _reload?162762_))))
    (define gx#core-import-module
      (lambda _g168402_
        (let ((_g168401_ (##length _g168402_)))
          (cond ((##fx= _g168401_ 1)
                 (apply (lambda (_rpath162760_)
                          (gx#core-import-module__0 _rpath162760_))
                        _g168402_))
                ((##fx= _g168401_ 2)
                 (apply (lambda (_rpath162764_ _reload?162765_)
                          (gx#core-import-module__%
                           _rpath162764_
                           _reload?162765_))
                        _g168402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g168402_))))))
    (define gx#core-read-module
      (lambda (_path162637_)
        (with-catch
         (lambda (_exn162639_)
           (if (and (datum-parsing-exception? _exn162639_)
                    (eq? (datum-parsing-exception-filepos _exn162639_) '0))
               (gx#core-read-module/lang _path162637_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path162637_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g162641162643_)
                      (display-exception _exn162639_ _g162641162643_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path162637_)))))
    (define gx#core-read-module/sexp
      (lambda (_path162500_)
        (let _lp162502_ ((_body162504_ (read-syntax-from-file _path162500_))
                         (_pre162505_ '#f)
                         (_ns162506_ '#f)
                         (_pkg162507_ '#f))
          (let* ((_e162508162532_ _body162504_)
                 (_E162524162554_
                  (lambda ()
                    (let ((_g168403_
                           (if _pkg162507_
                               (values _pre162505_ _ns162506_ _pkg162507_)
                               (gx#core-read-module-package
                                _path162500_
                                _pre162505_
                                _ns162506_))))
                      (begin
                        (let ((_g168404_
                               (if (##values? _g168403_)
                                   (##vector-length _g168403_)
                                   1)))
                          (if (not (##fx= _g168404_ 3))
                              (error "Context expects 3 values" _g168404_)))
                        (let ((_pre162536_ (##vector-ref _g168403_ 0))
                              (_ns162537_ (##vector-ref _g168403_ 1))
                              (_pkg162538_ (##vector-ref _g168403_ 2)))
                          (let* ((_prelude162540_
                                  (if (gx#core-bound-module-prelude?
                                       _pre162536_)
                                      (gx#syntax-local-e__0 _pre162536_)
                                      (if (gx#core-library-module-path?
                                           _pre162536_)
                                          (gx#core-resolve-library-module-path
                                           _pre162536_)
                                          (if (gx#stx-string? _pre162536_)
                                              (gx#core-resolve-module-path__%
                                               _pre162536_
                                               _path162500_)
                                              (gx#stx-e _pre162536_)))))
                                 (_path-id162542_
                                  (gx#core-module-path->namespace
                                   _path162500_))
                                 (_pkg-id162544_
                                  (if _pkg162538_
                                      (string-append
                                       _pkg162538_
                                       '"/"
                                       _path-id162542_)
                                      _path-id162542_))
                                 (_module-id162546_
                                  (string->symbol _pkg-id162544_))
                                 (_module-ns162551_
                                  (if (eq? _ns162537_ '#!void)
                                      '#f
                                      (let ((_$e162548_ _ns162537_))
                                        (if _$e162548_
                                            _$e162548_
                                            _pkg-id162544_)))))
                            (values _prelude162540_
                                    _module-id162546_
                                    _module-ns162551_
                                    _body162504_)))))))
                 (_E162517162583_
                  (lambda ()
                    (if (gx#stx-pair? _e162508162532_)
                        (let ((_e162525162558_ (gx#syntax-e _e162508162532_)))
                          (let ((_hd162526162561_ (##car _e162525162558_))
                                (_tl162527162563_ (##cdr _e162525162558_)))
                            (if (eq? (gx#stx-e _hd162526162561_) 'package:)
                                (if (gx#stx-pair? _tl162527162563_)
                                    (let ((_e162528162566_
                                           (gx#syntax-e _tl162527162563_)))
                                      (let ((_hd162529162569_
                                             (##car _e162528162566_))
                                            (_tl162530162571_
                                             (##cdr _e162528162566_)))
                                        (let* ((_pkg162574_ _hd162529162569_)
                                               (_rest162576_ _tl162530162571_))
                                          (if '#t
                                              (let ((_pkg162581_
                                                     (if (gx#identifier?
                                                          _pkg162574_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg162574_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg162574_)
                         (gx#stx-false? _pkg162574_))
                     (gx#stx-e _pkg162574_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg162574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp162502_
                                                 _rest162576_
                                                 _pre162505_
                                                 _ns162506_
                                                 _pkg162581_))
                                              (_E162524162554_)))))
                                    (_E162524162554_))
                                (_E162524162554_))))
                        (_E162524162554_))))
                 (_E162510162609_
                  (lambda ()
                    (if (gx#stx-pair? _e162508162532_)
                        (let ((_e162518162587_ (gx#syntax-e _e162508162532_)))
                          (let ((_hd162519162590_ (##car _e162518162587_))
                                (_tl162520162592_ (##cdr _e162518162587_)))
                            (if (eq? (gx#stx-e _hd162519162590_) 'namespace:)
                                (if (gx#stx-pair? _tl162520162592_)
                                    (let ((_e162521162595_
                                           (gx#syntax-e _tl162520162592_)))
                                      (let ((_hd162522162598_
                                             (##car _e162521162595_))
                                            (_tl162523162600_
                                             (##cdr _e162521162595_)))
                                        (let* ((_ns162603_ _hd162522162598_)
                                               (_rest162605_ _tl162523162600_))
                                          (if '#t
                                              (let ((_ns162607_
                                                     (if (gx#identifier?
                                                          _ns162603_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns162603_))
                                                         (if (gx#stx-string?
                                                              _ns162603_)
                                                             (gx#stx-e
                                                              _ns162603_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns162603_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns162603_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp162502_
                                                 _rest162605_
                                                 _pre162505_
                                                 _ns162607_
                                                 _pkg162507_))
                                              (_E162517162583_)))))
                                    (_E162517162583_))
                                (_E162517162583_))))
                        (_E162517162583_))))
                 (_E162509162633_
                  (lambda ()
                    (if (gx#stx-pair? _e162508162532_)
                        (let ((_e162511162613_ (gx#syntax-e _e162508162532_)))
                          (let ((_hd162512162616_ (##car _e162511162613_))
                                (_tl162513162618_ (##cdr _e162511162613_)))
                            (if (eq? (gx#stx-e _hd162512162616_) 'prelude:)
                                (if (gx#stx-pair? _tl162513162618_)
                                    (let ((_e162514162621_
                                           (gx#syntax-e _tl162513162618_)))
                                      (let ((_hd162515162624_
                                             (##car _e162514162621_))
                                            (_tl162516162626_
                                             (##cdr _e162514162621_)))
                                        (let* ((_prelude162629_
                                                _hd162515162624_)
                                               (_rest162631_ _tl162516162626_))
                                          (if '#t
                                              (_lp162502_
                                               _rest162631_
                                               _prelude162629_
                                               _ns162506_
                                               _pkg162507_)
                                              (_E162510162609_)))))
                                    (_E162510162609_))
                                (_E162510162609_))))
                        (_E162510162609_)))))
            (_E162509162633_)))))
    (define gx#core-read-module/lang
      (lambda (_path162327_)
        (letrec ((_default-read-module-body162329_
                  (lambda (_inp162492_)
                    (let _lp162494_ ((_body162496_ '()))
                      (let ((_next162498_ (read-syntax _inp162492_)))
                        (if (eof-object? _next162498_)
                            (reverse _body162496_)
                            (_lp162494_ (cons _next162498_ _body162496_)))))))
                 (_read-body162330_
                  (lambda (_inp162411_
                           _pre162412_
                           _ns162413_
                           _pkg162414_
                           _args162415_)
                    (let ((_g168405_
                           (if _pkg162414_
                               (values _pre162412_ _ns162413_ _pkg162414_)
                               (gx#core-read-module-package
                                _path162327_
                                _pre162412_
                                _ns162413_))))
                      (begin
                        (let ((_g168406_
                               (if (##values? _g168405_)
                                   (##vector-length _g168405_)
                                   1)))
                          (if (not (##fx= _g168406_ 3))
                              (error "Context expects 3 values" _g168406_)))
                        (let ((_pre162417_ (##vector-ref _g168405_ 0))
                              (_ns162418_ (##vector-ref _g168405_ 1))
                              (_pkg162419_ (##vector-ref _g168405_ 2)))
                          (let* ((_prelude162421_
                                  (gx#import-module__0 _pre162417_))
                                 (_read-module-body162475_
                                  (let ((_$e162467_
                                         (find (lambda (_e162422162424_)
                                                 (let* ((_g162426162436_
                                                         _e162422162424_)
                                                        (_else162428162444_
                                                         (lambda () '#f))
                                                        (_K162430162448_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g162426162436_
                                                        'gx#module-export::t)
                                                       (let* ((_e162431162451_
                                                               (##unchecked-structure-ref
                                                                _g162426162436_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e162432162454_
                                                               (##unchecked-structure-ref
                                                                _g162426162436_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e162433162457_
                                                               (##unchecked-structure-ref
                                                                _g162426162436_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e162433162457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e162434162460_
                            (##unchecked-structure-ref
                             _g162426162436_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g162462162464_)
                              (eq? _g162462162464_ 'read-module-body))
                            _e162434162460_)
                           (_K162430162448_)
                           (_else162428162444_)))
                     (_else162428162444_)))
               (_else162428162444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude162421_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e162467_
                                        ((lambda (_xport162470_)
                                           (let ((_proc162473_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport162470_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc162473_)
                                                 _proc162473_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path162327_
                                                  _pre162417_
                                                  _proc162473_))))
                                         _$e162467_)
                                        _default-read-module-body162329_)))
                                 (_path-id162477_
                                  (gx#core-module-path->namespace
                                   _path162327_))
                                 (_pkg-id162479_
                                  (if _pkg162419_
                                      (string-append
                                       _pkg162419_
                                       '"/"
                                       _path-id162477_)
                                      _path-id162477_))
                                 (_module-id162481_
                                  (string->symbol _pkg-id162479_))
                                 (_module-ns162486_
                                  (let ((_$e162483_ _ns162418_))
                                    (if _$e162483_ _$e162483_ _pkg-id162479_)))
                                 (_body162489_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body162475_ _inp162411_))
                                   gx#current-module-reader-path
                                   _path162327_
                                   gx#current-module-reader-args
                                   _args162415_)))
                            (values _prelude162421_
                                    _module-id162481_
                                    _module-ns162486_
                                    _body162489_)))))))
                 (_string-e162331_
                  (lambda (_obj162408_ _what162409_)
                    (if (string? _obj162408_)
                        _obj162408_
                        (if (symbol? _obj162408_)
                            (symbol->string _obj162408_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what162409_)
                             _path162327_
                             _obj162408_)))))
                 (_read-lang-args162332_
                  (lambda (_inp162363_ _args162364_)
                    (let* ((_args162365162373_ _args162364_)
                           (_else162367162381_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path162327_)))
                           (_K162369162396_
                            (lambda (_args162384_ _prelude162385_)
                              (let* ((_pkg162387_
                                      (pgetq 'package: _args162384_))
                                     (_pkg162389_
                                      (if _pkg162387_
                                          (_string-e162331_
                                           _pkg162387_
                                           '"package")
                                          '#f))
                                     (_ns162391_
                                      (pgetq 'namespace: _args162384_))
                                     (_ns162393_
                                      (if _ns162391_
                                          (_string-e162331_
                                           _ns162391_
                                           '"namespace")
                                          '#f)))
                                (_read-body162330_
                                 _inp162363_
                                 _prelude162385_
                                 _ns162393_
                                 _pkg162389_
                                 _args162384_)))))
                      (if (##pair? _args162365162373_)
                          (let ((_hd162370162399_ (##car _args162365162373_))
                                (_tl162371162401_ (##cdr _args162365162373_)))
                            (let* ((_prelude162404_ _hd162370162399_)
                                   (_args162406_ _tl162371162401_))
                              (_K162369162396_ _args162406_ _prelude162404_)))
                          (_else162367162381_)))))
                 (_read-lang162333_
                  (lambda (_inp162338_)
                    (let* ((_head162340_ (read-line _inp162338_))
                           (_$e162342_ (string-index _head162340_ '#\space)))
                      (if _$e162342_
                          ((lambda (_ix162345_)
                             (let ((_lang162347_
                                    (substring _head162340_ '0 _ix162345_)))
                               (if (equal? _lang162347_ '"#lang")
                                   (let* ((_rest162349_
                                           (substring
                                            _head162340_
                                            (fx+ _ix162345_ '1)
                                            (string-length _head162340_)))
                                          (_args162360_
                                           (with-catch
                                            (lambda (_g162350162352_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path162327_
                                               _g162350162352_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest162349_
                                               (lambda (_g162355162357_)
                                                 (read-all
                                                  _g162355162357_
                                                  read)))))))
                                     (_read-lang-args162332_
                                      _inp162338_
                                      _args162360_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path162327_))))
                           _$e162342_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path162327_)))))
                 (_read-e162334_
                  (lambda (_inp162336_)
                    (if (eq? (peek-char _inp162336_) '#\#)
                        (_read-lang162333_ _inp162336_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path162327_)))))
          (gx#call-with-input-source-file _path162327_ _read-e162334_))))
    (define gx#core-read-module-package
      (lambda (_path162281_ _pre162282_ _ns162283_)
        (letrec ((_string-e162285_
                  (lambda (_e162325_)
                    (if (symbol? _e162325_)
                        (symbol->string _e162325_)
                        (if (string? _e162325_)
                            _e162325_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e162325_))))))
          (let _lp162287_ ((_dir162289_ (path-directory _path162281_))
                           (_pkg-path162290_ '()))
            (let ((_gerbil.pkg162292_ (path-expand '"gerbil.pkg" _dir162289_)))
              (if (file-exists? _gerbil.pkg162292_)
                  (let ((_plist162294_
                         (gx#core-library-package-plist__% _dir162289_ '#t)))
                    (if (null? _plist162294_)
                        (let ((_pkg162296_
                               (if (not (null? _pkg-path162290_))
                                   (string-join _pkg-path162290_ '"/")
                                   '#f)))
                          (values _pre162282_ _ns162283_ _pkg162296_))
                        (if (list? _plist162294_)
                            (let* ((_root162298_
                                    (pgetq 'package: _plist162294_))
                                   (_pkg162302_
                                    (let ((_pkg-path162300_
                                           (if _root162298_
                                               (cons (_string-e162285_
                                                      _root162298_)
                                                     _pkg-path162290_)
                                               _pkg-path162290_)))
                                      (if (not (null? _pkg-path162300_))
                                          (string-join _pkg-path162300_ '"/")
                                          '#f)))
                                   (_ns162309_
                                    (let ((_ns162307_
                                           (let ((_$e162304_ _ns162283_))
                                             (if _$e162304_
                                                 _$e162304_
                                                 (pgetq 'namespace:
                                                        _plist162294_)))))
                                      (if _ns162307_
                                          (_string-e162285_ _ns162307_)
                                          '#f)))
                                   (_pre162314_
                                    (let ((_$e162311_ _pre162282_))
                                      (if _$e162311_
                                          _$e162311_
                                          (pgetq 'prelude: _plist162294_)))))
                              (values _pre162314_ _ns162309_ _pkg162302_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist162294_))))
                  (let ((_dir*162317_
                         (path-strip-trailing-directory-separator
                          _dir162289_)))
                    (if (or (string-empty? _dir*162317_)
                            (equal? _dir162289_ _dir*162317_))
                        (values _pre162282_ _ns162283_ '#f)
                        (let ((_xpath162322_
                               (path-strip-directory _dir*162317_))
                              (_xdir162323_ (path-directory _dir*162317_)))
                          (_lp162287_
                           _xdir162323_
                           (cons _xpath162322_ _pkg-path162290_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path162279_)
        (path-strip-extension (path-strip-directory _path162279_))))
    (define gx#core-module-path->id
      (lambda (_path162277_)
        (string->symbol (gx#core-module-path->namespace _path162277_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path162256_ _rel162257_)
        (let* ((_path162259_ (gx#stx-e _stx-path162256_))
               (_path162261_
                (if (string-empty? (path-extension _path162259_))
                    (string-append _path162259_ '".ss")
                    _path162259_)))
          (gx#core-resolve-path__%
           _path162261_
           (let ((_$e162264_ (gx#stx-source _stx-path162256_)))
             (if _$e162264_ _$e162264_ _rel162257_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path162270_)
        (let ((_rel162272_ '#f))
          (gx#core-resolve-module-path__% _stx-path162270_ _rel162272_))))
    (define gx#core-resolve-module-path
      (lambda _g168408_
        (let ((_g168407_ (##length _g168408_)))
          (cond ((##fx= _g168407_ 1)
                 (apply (lambda (_stx-path162270_)
                          (gx#core-resolve-module-path__0 _stx-path162270_))
                        _g168408_))
                ((##fx= _g168407_ 2)
                 (apply (lambda (_stx-path162274_ _rel162275_)
                          (gx#core-resolve-module-path__%
                           _stx-path162274_
                           _rel162275_))
                        _g168408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g168408_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath162142_)
        (let* ((_spath162144_ (symbol->string (gx#stx-e _libpath162142_)))
               (_spath162146_
                (substring _spath162144_ '1 (string-length _spath162144_)))
               (_ext162148_ (path-extension _spath162146_))
               (_ssi162150_
                (if (string-empty? _ext162148_)
                    (string-append _spath162146_ '".ssi")
                    (string-append
                     (path-strip-extension _spath162146_)
                     '".ssi")))
               (_srcs162154_
                (if (string-empty? _ext162148_)
                    (map (lambda (_ext162152_)
                           (string-append _spath162146_ _ext162152_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath162146_ '()))))
          (let _lp162157_ ((_rest162159_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest162160162169_ _rest162159_)
                   (_E162163162173_
                    (lambda ()
                      (error '"No clause matching" _rest162160162169_))))
              (let ((_K162165162243_
                     (lambda (_rest162184_ _dir162185_)
                       (letrec ((_resolve162187_
                                 (lambda (_ssi162199_ _srcs162200_)
                                   (let ((_compiled-path162202_
                                          (path-expand
                                           _ssi162199_
                                           _dir162185_)))
                                     (if (file-exists? _compiled-path162202_)
                                         (path-normalize _compiled-path162202_)
                                         (let _lpr162204_ ((_rest-src162206_
                                                            _srcs162200_))
                                           (let* ((_rest-src162207162215_
                                                   _rest-src162206_)
                                                  (_else162209162223_
                                                   (lambda ()
                                                     (_lp162157_
                                                      _rest162184_)))
                                                  (_K162211162231_
                                                   (lambda (_rest-src162226_
                                                            _src162227_)
                                                     (let ((_src-path162229_
                                                            (path-expand
                                                             _src162227_
                                                             _dir162185_)))
                                                       (if (file-exists?
                                                            _src-path162229_)
                                                           (path-normalize
                                                            _src-path162229_)
                                                           (_lpr162204_
                                                            _rest-src162226_))))))
                                             (if (##pair? _rest-src162207162215_)
                                                 (let ((_hd162212162234_
                                                        (##car _rest-src162207162215_))
                                                       (_tl162213162236_
                                                        (##cdr _rest-src162207162215_)))
                                                   (let* ((_src162239_
                                                           _hd162212162234_)
                                                          (_rest-src162241_
                                                           _tl162213162236_))
                                                     (_K162211162231_
                                                      _rest-src162241_
                                                      _src162239_)))
                                                 (_else162209162223_)))))))))
                         (let ((_$e162189_
                                (gx#core-library-package-path-prefix
                                 _dir162185_)))
                           (if _$e162189_
                               ((lambda (_prefix162192_)
                                  (if (string-prefix?
                                       _prefix162192_
                                       _spath162146_)
                                      (let ((_ssi162196_
                                             (substring
                                              _ssi162150_
                                              (string-length _prefix162192_)
                                              (string-length _ssi162150_)))
                                            (_srcs162197_
                                             (map (lambda (_src162194_)
                                                    (substring
                                                     _src162194_
                                                     (string-length
                                                      _prefix162192_)
                                                     (string-length
                                                      _src162194_)))
                                                  _srcs162154_)))
                                        (_resolve162187_
                                         _ssi162196_
                                         _srcs162197_))
                                      (_lp162157_ _rest162184_)))
                                _$e162189_)
                               (_resolve162187_ _ssi162150_ _srcs162154_))))))
                    (_K162164162178_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath162142_))))
                (let ((_try-match162162162181_
                       (lambda ()
                         (if (##null? _rest162160162169_)
                             (_K162164162178_)
                             (_E162163162173_)))))
                  (if (##pair? _rest162160162169_)
                      (let ((_tl162167162248_ (##cdr _rest162160162169_))
                            (_hd162166162246_ (##car _rest162160162169_)))
                        (let ((_dir162251_ _hd162166162246_)
                              (_rest162253_ _tl162167162248_))
                          (_K162165162243_ _rest162253_ _dir162251_)))
                      (_try-match162162162181_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath162115_)
        (letrec ((_resolve162117_
                  (lambda (_path162134_ _base162135_)
                    (let ((_$e162137_ (string-rindex _base162135_ '#\/)))
                      (if _$e162137_
                          ((lambda (_idx162140_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base162135_ '0 _idx162140_)
                                '"/"
                                _path162134_))))
                           _$e162137_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path162134_))))))))
          (let ((_spath162119_ (symbol->string (gx#stx-e _modpath162115_)))
                (_mod162120_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod162120_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath162115_))
            (let ((_mpath162122_
                   (symbol->string
                    (##structure-ref
                     _mod162120_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp162124_ ((_spath162126_ _spath162119_)
                               (_mpath162127_ _mpath162122_))
                (if (string-prefix? '"../" _spath162126_)
                    (let ((_$e162129_ (string-rindex _mpath162127_ '#\/)))
                      (if _$e162129_
                          ((lambda (_idx162132_)
                             (_lp162124_
                              (substring
                               _spath162126_
                               '3
                               (string-length _spath162126_))
                              (substring _mpath162127_ '0 _idx162132_)))
                           _$e162129_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath162115_)))
                    (if (string-prefix? '"./" _spath162126_)
                        (_lp162124_
                         (substring
                          _spath162126_
                          '2
                          (string-length _spath162126_))
                         _mpath162127_)
                        (_resolve162117_ _spath162126_ _mpath162127_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir162108_)
        (let ((_$e162110_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir162108_))))
          (if _$e162110_
              ((lambda (_pkg162113_)
                 (string-append (symbol->string _pkg162113_) '"/"))
               _$e162110_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir162080_ _exists?162081_)
        (let* ((_cache162083_ (gx#core-library-package-cache))
               (_$e162085_ (table-ref _cache162083_ _dir162080_ '#f)))
          (if _$e162085_
              (values _$e162085_)
              (let* ((_gerbil.pkg162088_
                      (path-expand '"gerbil.pkg" _dir162080_))
                     (_plist162095_
                      (if (or _exists?162081_
                              (file-exists? _gerbil.pkg162088_))
                          (let ((_e162093_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg162088_
                                  read)))
                            (if (eof-object? _e162093_)
                                '()
                                (if (list? _e162093_)
                                    _e162093_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg162088_
                                     _e162093_))))
                          '())))
                (table-set! _cache162083_ _dir162080_ _plist162095_)
                _plist162095_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir162101_)
        (let ((_exists?162103_ '#f))
          (gx#core-library-package-plist__% _dir162101_ _exists?162103_))))
    (define gx#core-library-package-plist
      (lambda _g168410_
        (let ((_g168409_ (##length _g168410_)))
          (cond ((##fx= _g168409_ 1)
                 (apply (lambda (_dir162101_)
                          (gx#core-library-package-plist__0 _dir162101_))
                        _g168410_))
                ((##fx= _g168409_ 2)
                 (apply (lambda (_dir162105_ _exists?162106_)
                          (gx#core-library-package-plist__%
                           _dir162105_
                           _exists?162106_))
                        _g168410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g168410_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e162074_ (gx#current-expander-module-library-package-cache)))
          (if _$e162074_
              (values _$e162074_)
              (let ((_cache162077_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache162077_)
                _cache162077_)))))
    (define gx#core-library-module-path?
      (lambda (_stx162071_) (gx#core-special-module-path? _stx162071_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx162069_) (gx#core-special-module-path? _stx162069_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx162064_ _char162065_)
        (if (gx#identifier? _stx162064_)
            (if (interned-symbol? (gx#stx-e _stx162064_))
                (let ((_str162067_ (symbol->string (gx#stx-e _stx162064_))))
                  (if (fx> (string-length _str162067_) '1)
                      (eq? (string-ref _str162067_ '0) _char162065_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx162058_)
        (gx#core-bound-identifier?__%
         _stx162058_
         (lambda (_g162059162061_)
           (gx#expander-binding?__% _g162059162061_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx162052_)
        (gx#core-bound-identifier?__%
         _stx162052_
         (lambda (_g162053162055_)
           (gx#expander-binding?__% _g162053162055_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx162039_)
        (letrec ((_module-prelude?162041_
                  (lambda (_e162047_)
                    (let ((_$e162049_
                           (##structure-instance-of?
                            _e162047_
                            'gx#module-context::t)))
                      (if _$e162049_
                          _$e162049_
                          (##structure-instance-of?
                           _e162047_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx162039_
           (lambda (_g162042162044_)
             (gx#expander-binding?__%
              _g162042162044_
              _module-prelude?162041_))))))
    (define gx#core-bind-import!__%
      (lambda (_in161969_ _ctx161970_ _force-weak?161971_)
        (let* ((_in161972161981_ _in161969_)
               (_E161974161985_
                (lambda () (error '"No clause matching" _in161972161981_)))
               (_K161975161998_
                (lambda (_weak?161988_ _phi161989_ _key161990_ _source161991_)
                  (gx#core-bind!__%
                   _key161990_
                   (let ((_e161993_
                          (gx#core-resolve-module-export _source161991_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e161993_
                       '1
                       gx#binding::t
                       '#f)
                      _key161990_
                      _phi161989_
                      _e161993_
                      (##unchecked-structure-ref
                       _source161991_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e161995_ _force-weak?161971_))
                        (if _$e161995_ _$e161995_ _weak?161988_))))
                   gx#core-context-rebind?
                   _phi161989_
                   _ctx161970_))))
          (if (##structure-direct-instance-of?
               _in161972161981_
               'gx#module-import::t)
              (let* ((_e161976162001_
                      (##unchecked-structure-ref
                       _in161972161981_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source162004_ _e161976162001_)
                     (_e161977162006_
                      (##unchecked-structure-ref
                       _in161972161981_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key162009_ _e161977162006_)
                     (_e161978162011_
                      (##unchecked-structure-ref
                       _in161972161981_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi162014_ _e161978162011_)
                     (_e161979162016_
                      (##unchecked-structure-ref
                       _in161972161981_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?162019_ _e161979162016_))
                (_K161975161998_
                 _weak?162019_
                 _phi162014_
                 _key162009_
                 _source162004_))
              (_E161974161985_)))))
    (define gx#core-bind-import!__0
      (lambda (_in162024_)
        (let* ((_ctx162026_ (gx#current-expander-context))
               (_force-weak?162028_ '#f))
          (gx#core-bind-import!__%
           _in162024_
           _ctx162026_
           _force-weak?162028_))))
    (define gx#core-bind-import!__1
      (lambda (_in162030_ _ctx162031_)
        (let ((_force-weak?162033_ '#f))
          (gx#core-bind-import!__%
           _in162030_
           _ctx162031_
           _force-weak?162033_))))
    (define gx#core-bind-import!
      (lambda _g168412_
        (let ((_g168411_ (##length _g168412_)))
          (cond ((##fx= _g168411_ 1)
                 (apply (lambda (_in162024_)
                          (gx#core-bind-import!__0 _in162024_))
                        _g168412_))
                ((##fx= _g168411_ 2)
                 (apply (lambda (_in162030_ _ctx162031_)
                          (gx#core-bind-import!__1 _in162030_ _ctx162031_))
                        _g168412_))
                ((##fx= _g168411_ 3)
                 (apply (lambda (_in162035_ _ctx162036_ _force-weak?162037_)
                          (gx#core-bind-import!__%
                           _in162035_
                           _ctx162036_
                           _force-weak?162037_))
                        _g168412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g168412_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in161955_ _ctx161956_)
        (gx#core-bind-import!__% _in161955_ _ctx161956_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in161961_)
        (let ((_ctx161963_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in161961_ _ctx161963_))))
    (define gx#core-bind-weak-import!
      (lambda _g168414_
        (let ((_g168413_ (##length _g168414_)))
          (cond ((##fx= _g168413_ 1)
                 (apply (lambda (_in161961_)
                          (gx#core-bind-weak-import!__0 _in161961_))
                        _g168414_))
                ((##fx= _g168413_ 2)
                 (apply (lambda (_in161965_ _ctx161966_)
                          (gx#core-bind-weak-import!__%
                           _in161965_
                           _ctx161966_))
                        _g168414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g168414_))))))
    (define gx#core-resolve-module-export
      (lambda (_out161846_)
        (letrec ((_subst161848_
                  (lambda (_key161894_)
                    (let* ((_key161895161903_ _key161894_)
                           (_else161897161911_ (lambda () _key161894_))
                           (_K161899161942_
                            (lambda (_mark161914_ _id161915_)
                              (let* ((_mark161916161922_ _mark161914_)
                                     (_E161918161926_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark161916161922_)))
                                     (_K161919161934_
                                      (lambda (_subst161929_)
                                        (let ((_$e161931_
                                               (if _subst161929_
                                                   (table-ref
                                                    _subst161929_
                                                    _id161915_
                                                    '#f)
                                                   '#f)))
                                          (if _$e161931_
                                              _$e161931_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key161894_))))))
                                (if (##structure-instance-of?
                                     _mark161916161922_
                                     'gx#expander-mark::t)
                                    (let* ((_e161920161937_
                                            (##unchecked-structure-ref
                                             _mark161916161922_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst161940_ _e161920161937_))
                                      (_K161919161934_ _subst161940_))
                                    (_E161918161926_))))))
                      (if (##pair? _key161895161903_)
                          (let ((_hd161900161945_ (##car _key161895161903_))
                                (_tl161901161947_ (##cdr _key161895161903_)))
                            (let* ((_id161950_ _hd161900161945_)
                                   (_mark161952_ _tl161901161947_))
                              (_K161899161942_ _mark161952_ _id161950_)))
                          (_else161897161911_))))))
          (let* ((_out161849161859_ _out161846_)
                 (_E161851161863_
                  (lambda () (error '"No clause matching" _out161849161859_)))
                 (_K161852161870_
                  (lambda (_phi161866_ _key161867_ _ctx161868_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx161868_ _phi161866_)
                     (_subst161848_ _key161867_)))))
            (if (##structure-direct-instance-of?
                 _out161849161859_
                 'gx#module-export::t)
                (let* ((_e161853161873_
                        (##unchecked-structure-ref
                         _out161849161859_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx161876_ _e161853161873_)
                       (_e161854161878_
                        (##unchecked-structure-ref
                         _out161849161859_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key161881_ _e161854161878_)
                       (_e161855161883_
                        (##unchecked-structure-ref
                         _out161849161859_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi161886_ _e161855161883_)
                       (_e161856161888_
                        (##unchecked-structure-ref
                         _out161849161859_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e161857161891_
                        (##unchecked-structure-ref
                         _out161849161859_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K161852161870_ _phi161886_ _key161881_ _ctx161876_))
                (_E161851161863_))))))
    (define gx#core-module-export->import__%
      (lambda (_out161771_ _rename161772_ _dphi161773_)
        (let* ((_out161774161784_ _out161771_)
               (_E161776161788_
                (lambda () (error '"No clause matching" _out161774161784_)))
               (_K161777161800_
                (lambda (_weak?161791_
                         _name161792_
                         _phi161793_
                         _key161794_
                         _ctx161795_)
                  (##structure
                   gx#module-import::t
                   _out161771_
                   (let ((_$e161797_ _rename161772_))
                     (if _$e161797_ _$e161797_ _name161792_))
                   (fx+ _phi161793_ _dphi161773_)
                   _weak?161791_))))
          (if (##structure-direct-instance-of?
               _out161774161784_
               'gx#module-export::t)
              (let* ((_e161778161803_
                      (##unchecked-structure-ref
                       _out161774161784_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx161806_ _e161778161803_)
                     (_e161779161808_
                      (##unchecked-structure-ref
                       _out161774161784_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key161811_ _e161779161808_)
                     (_e161780161813_
                      (##unchecked-structure-ref
                       _out161774161784_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi161816_ _e161780161813_)
                     (_e161781161818_
                      (##unchecked-structure-ref
                       _out161774161784_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name161821_ _e161781161818_)
                     (_e161782161823_
                      (##unchecked-structure-ref
                       _out161774161784_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?161826_ _e161782161823_))
                (_K161777161800_
                 _weak?161826_
                 _name161821_
                 _phi161816_
                 _key161811_
                 _ctx161806_))
              (_E161776161788_)))))
    (define gx#core-module-export->import__0
      (lambda (_out161831_)
        (let* ((_rename161833_ '#f) (_dphi161835_ '0))
          (gx#core-module-export->import__%
           _out161831_
           _rename161833_
           _dphi161835_))))
    (define gx#core-module-export->import__1
      (lambda (_out161837_ _rename161838_)
        (let ((_dphi161840_ '0))
          (gx#core-module-export->import__%
           _out161837_
           _rename161838_
           _dphi161840_))))
    (define gx#core-module-export->import
      (lambda _g168416_
        (let ((_g168415_ (##length _g168416_)))
          (cond ((##fx= _g168415_ 1)
                 (apply (lambda (_out161831_)
                          (gx#core-module-export->import__0 _out161831_))
                        _g168416_))
                ((##fx= _g168415_ 2)
                 (apply (lambda (_out161837_ _rename161838_)
                          (gx#core-module-export->import__1
                           _out161837_
                           _rename161838_))
                        _g168416_))
                ((##fx= _g168415_ 3)
                 (apply (lambda (_out161842_ _rename161843_ _dphi161844_)
                          (gx#core-module-export->import__%
                           _out161842_
                           _rename161843_
                           _dphi161844_))
                        _g168416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g168416_))))))
    (define gx#core-expand-module%
      (lambda (_stx161699_)
        (letrec ((_make-context161701_
                  (lambda (_id161752_)
                    (let* ((_super161754_ (gx#current-expander-context))
                           (_bind-id161756_ (gx#stx-e _id161752_))
                           (_mod-id161758_
                            (if (##structure-instance-of?
                                 _super161754_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super161754_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id161756_)
                                _bind-id161756_))
                           (_ns161760_ (symbol->string _mod-id161758_))
                           (_path161767_
                            (if (##structure-instance-of?
                                 _super161754_
                                 'gx#module-context::t)
                                (let ((_path161762_
                                       (##unchecked-structure-ref
                                        _super161754_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path161762_)
                                          (null? _path161762_))
                                      (cons _bind-id161756_ _path161762_)
                                      (if (not _path161762_)
                                          _bind-id161756_
                                          (cons _bind-id161756_
                                                (cons _path161762_ '())))))
                                _bind-id161756_)))
                      (let ((__obj168392
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
                         __obj168392
                         _mod-id161758_
                         _super161754_
                         _ns161760_
                         _path161767_)
                        __obj168392)))))
          (let* ((_e161702161712_ _stx161699_)
                 (_E161704161716_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e161702161712_)))
                 (_E161703161748_
                  (lambda ()
                    (if (gx#stx-pair? _e161702161712_)
                        (let ((_e161705161720_ (gx#syntax-e _e161702161712_)))
                          (let ((_hd161706161723_ (##car _e161705161720_))
                                (_tl161707161725_ (##cdr _e161705161720_)))
                            (if (gx#stx-pair? _tl161707161725_)
                                (let ((_e161708161728_
                                       (gx#syntax-e _tl161707161725_)))
                                  (let ((_hd161709161731_
                                         (##car _e161708161728_))
                                        (_tl161710161733_
                                         (##cdr _e161708161728_)))
                                    (let* ((_id161736_ _hd161709161731_)
                                           (_body161738_ _tl161710161733_))
                                      (if (and (gx#identifier? _id161736_)
                                               (gx#stx-list? _body161738_))
                                          (let* ((_ctx161740_
                                                  (_make-context161701_
                                                   _id161736_))
                                                 (_body161742_
                                                  (gx#core-expand-module-begin
                                                   _body161738_
                                                   _ctx161740_))
                                                 (_body161744_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body161742_)
                                                   (gx#stx-source
                                                    _stx161699_))))
                                            (##unchecked-structure-set!
                                             _ctx161740_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body161744_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx161740_
                                             _body161744_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id161736_
                                             _ctx161740_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id161736_)
                                              _body161744_)
                                             (gx#stx-source _stx161699_)))
                                          (_E161704161716_)))))
                                (_E161704161716_))))
                        (_E161704161716_)))))
            (_E161703161748_)))))
    (define gx#core-expand-module-begin
      (lambda (_body161665_ _ctx161666_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx161669_
                   (gx#core-expand-head (cons '%%begin-module _body161665_)))
                  (_e161670161677_ _stx161669_)
                  (_E161672161681_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx161669_)))
                  (_E161671161695_
                   (lambda ()
                     (if (gx#stx-pair? _e161670161677_)
                         (let ((_e161673161685_ (gx#syntax-e _e161670161677_)))
                           (let ((_hd161674161688_ (##car _e161673161685_))
                                 (_tl161675161690_ (##cdr _e161673161685_)))
                             (if (and (gx#identifier? _hd161674161688_)
                                      (gx#core-identifier=?
                                       _hd161674161688_
                                       '%#begin-module))
                                 (let ((_body161693_ _tl161675161690_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx161669_)
                                           _body161693_
                                           (gx#core-expand-module-body
                                            _body161693_))
                                       (_E161672161681_)))
                                 (_E161672161681_))))
                         (_E161672161681_)))))
             (_E161671161695_)))
         gx#current-expander-context
         _ctx161666_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body161461_)
        (letrec ((_expand-special161463_
                  (lambda (_hd161592_ _K161593_ _rest161594_ _r161595_)
                    (let* ((_e161596161613_ _hd161592_)
                           (_E161608161617_
                            (lambda ()
                              (_K161593_
                               _rest161594_
                               (cons (gx#core-expand-top _hd161592_)
                                     _r161595_))))
                           (_E161598161629_
                            (lambda ()
                              (if (gx#stx-pair? _e161596161613_)
                                  (let ((_e161609161621_
                                         (gx#syntax-e _e161596161613_)))
                                    (let ((_hd161610161624_
                                           (##car _e161609161621_))
                                          (_tl161611161626_
                                           (##cdr _e161609161621_)))
                                      (if (and (gx#identifier?
                                                _hd161610161624_)
                                               (gx#core-identifier=?
                                                _hd161610161624_
                                                '%#export))
                                          (if '#t
                                              (_K161593_
                                               _rest161594_
                                               (cons _hd161592_ _r161595_))
                                              (_E161608161617_))
                                          (_E161608161617_))))
                                  (_E161608161617_))))
                           (_E161597161661_
                            (lambda ()
                              (if (gx#stx-pair? _e161596161613_)
                                  (let ((_e161599161633_
                                         (gx#syntax-e _e161596161613_)))
                                    (let ((_hd161600161636_
                                           (##car _e161599161633_))
                                          (_tl161601161638_
                                           (##cdr _e161599161633_)))
                                      (if (and (gx#identifier?
                                                _hd161600161636_)
                                               (gx#core-identifier=?
                                                _hd161600161636_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl161601161638_)
                                              (let ((_e161602161641_
                                                     (gx#syntax-e
                                                      _tl161601161638_)))
                                                (let ((_hd161603161644_
                                                       (##car _e161602161641_))
                                                      (_tl161604161646_
                                                       (##cdr _e161602161641_)))
                                                  (let ((_hd-bind161649_
                                                         _hd161603161644_))
                                                    (if (gx#stx-pair?
                                                         _tl161604161646_)
                                                        (let ((_e161605161651_
                                                               (gx#syntax-e
                                                                _tl161604161646_)))
                                                          (let ((_hd161606161654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e161605161651_))
                        (_tl161607161656_ (##cdr _e161605161651_)))
                    (let ((_expr161659_ _hd161606161654_))
                      (if (gx#stx-null? _tl161607161656_)
                          (if (gx#core-bind-values? _hd-bind161649_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind161649_)
                                (_K161593_
                                 _rest161594_
                                 (cons _hd161592_ _r161595_)))
                              (_E161598161629_))
                          (_E161598161629_)))))
                (_E161598161629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161598161629_))
                                          (_E161598161629_))))
                                  (_E161598161629_)))))
                      (_E161597161661_))))
                 (_expand-body161464_
                  (lambda (_rbody161466_)
                    (let _lp161468_ ((_rest161470_ _rbody161466_)
                                     (_body161471_ '()))
                      (let* ((_rest161472161480_ _rest161470_)
                             (_else161474161488_ (lambda () _body161471_))
                             (_K161476161580_
                              (lambda (_rest161491_ _hd161492_)
                                (let* ((_e161493161514_ _hd161492_)
                                       (_E161509161518_
                                        (lambda ()
                                          (_lp161468_
                                           _rest161491_
                                           (cons (gx#core-expand-expression
                                                  _hd161492_)
                                                 _body161471_))))
                                       (_E161505161532_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161493161514_)
                                              (let ((_e161510161522_
                                                     (gx#syntax-e
                                                      _e161493161514_)))
                                                (let ((_hd161511161525_
                                                       (##car _e161510161522_))
                                                      (_tl161512161527_
                                                       (##cdr _e161510161522_)))
                                                  (let ((_form161530_
                                                         _hd161511161525_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form161530_
                                                         gx#special-form-binding?)
                                                        (_lp161468_
                                                         _rest161491_
                                                         (cons _hd161492_
                                                               _body161471_))
                                                        (_E161509161518_)))))
                                              (_E161509161518_))))
                                       (_E161495161544_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161493161514_)
                                              (let ((_e161506161536_
                                                     (gx#syntax-e
                                                      _e161493161514_)))
                                                (let ((_hd161507161539_
                                                       (##car _e161506161536_))
                                                      (_tl161508161541_
                                                       (##cdr _e161506161536_)))
                                                  (if (and (gx#identifier?
                                                            _hd161507161539_)
                                                           (gx#core-identifier=?
                                                            _hd161507161539_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp161468_
                                                           _rest161491_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd161492_)
                         _body161471_))
                  (_E161505161532_))
              (_E161505161532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161505161532_))))
                                       (_E161494161576_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161493161514_)
                                              (let ((_e161496161548_
                                                     (gx#syntax-e
                                                      _e161493161514_)))
                                                (let ((_hd161497161551_
                                                       (##car _e161496161548_))
                                                      (_tl161498161553_
                                                       (##cdr _e161496161548_)))
                                                  (if (and (gx#identifier?
                                                            _hd161497161551_)
                                                           (gx#core-identifier=?
                                                            _hd161497161551_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl161498161553_)
                                                          (let ((_e161499161556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl161498161553_)))
                    (let ((_hd161500161559_ (##car _e161499161556_))
                          (_tl161501161561_ (##cdr _e161499161556_)))
                      (let ((_hd-bind161564_ _hd161500161559_))
                        (if (gx#stx-pair? _tl161501161561_)
                            (let ((_e161502161566_
                                   (gx#syntax-e _tl161501161561_)))
                              (let ((_hd161503161569_ (##car _e161502161566_))
                                    (_tl161504161571_ (##cdr _e161502161566_)))
                                (let ((_expr161574_ _hd161503161569_))
                                  (if (gx#stx-null? _tl161504161571_)
                                      (if '#t
                                          (_lp161468_
                                           _rest161491_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind161564_)
                                                   (gx#core-expand-expression
                                                    _expr161574_))
                                                  (gx#stx-source _hd161492_))
                                                 _body161471_))
                                          (_E161495161544_))
                                      (_E161495161544_)))))
                            (_E161495161544_)))))
                  (_E161495161544_))
              (_E161495161544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161495161544_)))))
                                  (_E161494161576_)))))
                        (if (##pair? _rest161472161480_)
                            (let ((_hd161477161583_ (##car _rest161472161480_))
                                  (_tl161478161585_
                                   (##cdr _rest161472161480_)))
                              (let* ((_hd161588_ _hd161477161583_)
                                     (_rest161590_ _tl161478161585_))
                                (_K161476161580_ _rest161590_ _hd161588_)))
                            (_else161474161488_)))))))
          (_expand-body161464_
           (gx#core-expand-block__%
            (cons '%#begin-module _body161461_)
            _expand-special161463_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx161304_
               _expanded?161305_
               _method161306_
               _current-phi161307_
               _expand1161308_)
        (letrec ((_K161310_
                  (lambda (_rest161428_ _r161429_)
                    (let* ((_e161430161437_ _rest161428_)
                           (_E161432161441_ (lambda () _r161429_))
                           (_E161431161457_
                            (lambda ()
                              (if (gx#stx-pair? _e161430161437_)
                                  (let ((_e161433161445_
                                         (gx#syntax-e _e161430161437_)))
                                    (let ((_hd161434161448_
                                           (##car _e161433161445_))
                                          (_tl161435161450_
                                           (##cdr _e161433161445_)))
                                      (let* ((_hd161453_ _hd161434161448_)
                                             (_rest161455_ _tl161435161450_))
                                        (if '#t
                                            (_step161311_
                                             _hd161453_
                                             _rest161455_
                                             _r161429_)
                                            (_E161432161441_)))))
                                  (_E161432161441_)))))
                      (_E161431161457_))))
                 (_step161311_
                  (lambda (_hd161342_ _rest161343_ _r161344_)
                    (let* ((_e161345161363_ _hd161342_)
                           (_E161358161367_
                            (lambda ()
                              (if (_expanded?161305_ (gx#stx-e _hd161342_))
                                  (_K161310_
                                   _rest161343_
                                   (cons (gx#stx-e _hd161342_) _r161344_))
                                  (_expand1161308_
                                   _hd161342_
                                   _K161310_
                                   _rest161343_
                                   _r161344_))))
                           (_E161354161383_
                            (lambda ()
                              (if (gx#stx-pair? _e161345161363_)
                                  (let ((_e161359161371_
                                         (gx#syntax-e _e161345161363_)))
                                    (let ((_hd161360161374_
                                           (##car _e161359161371_))
                                          (_tl161361161376_
                                           (##cdr _e161359161371_)))
                                      (let* ((_macro161379_ _hd161360161374_)
                                             (_body161381_ _tl161361161376_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro161379_
                                             gx#syntax-binding?)
                                            (_K161310_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro161379_)
                                                    _hd161342_
                                                    _method161306_)
                                                   _rest161343_)
                                             _r161344_)
                                            (_E161358161367_)))))
                                  (_E161358161367_))))
                           (_E161347161397_
                            (lambda ()
                              (if (gx#stx-pair? _e161345161363_)
                                  (let ((_e161355161387_
                                         (gx#syntax-e _e161345161363_)))
                                    (let ((_hd161356161390_
                                           (##car _e161355161387_))
                                          (_tl161357161392_
                                           (##cdr _e161355161387_)))
                                      (if (eq? (gx#stx-e _hd161356161390_)
                                               'begin:)
                                          (let ((_body161395_
                                                 _tl161357161392_))
                                            (if '#t
                                                (_K161310_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest161343_
                                                  _body161395_)
                                                 _r161344_)
                                                (_E161354161383_)))
                                          (_E161354161383_))))
                                  (_E161354161383_))))
                           (_E161346161424_
                            (lambda ()
                              (if (gx#stx-pair? _e161345161363_)
                                  (let ((_e161348161401_
                                         (gx#syntax-e _e161345161363_)))
                                    (let ((_hd161349161404_
                                           (##car _e161348161401_))
                                          (_tl161350161406_
                                           (##cdr _e161348161401_)))
                                      (if (eq? (gx#stx-e _hd161349161404_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl161350161406_)
                                              (let ((_e161351161409_
                                                     (gx#syntax-e
                                                      _tl161350161406_)))
                                                (let ((_hd161352161412_
                                                       (##car _e161351161409_))
                                                      (_tl161353161414_
                                                       (##cdr _e161351161409_)))
                                                  (let* ((_dphi161417_
                                                          _hd161352161412_)
                                                         (_body161419_
                                                          _tl161353161414_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi161417_)
                                                        (let ((_rbody161422_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K161310_ _body161419_ '()))
                        _current-phi161307_
                        (fx+ (gx#stx-e _dphi161417_) (_current-phi161307_)))))
                  (_K161310_
                   _rest161343_
                   (foldr1 cons _r161344_ _rbody161422_)))
                (_E161347161397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161347161397_))
                                          (_E161347161397_))))
                                  (_E161347161397_)))))
                      (_E161346161424_)))))
          (let* ((_e161312161319_ _stx161304_)
                 (_E161314161323_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e161312161319_)))
                 (_E161313161338_
                  (lambda ()
                    (if (gx#stx-pair? _e161312161319_)
                        (let ((_e161315161327_ (gx#syntax-e _e161312161319_)))
                          (let ((_hd161316161330_ (##car _e161315161327_))
                                (_tl161317161332_ (##cdr _e161315161327_)))
                            (let ((_body161335_ _tl161317161332_))
                              (if '#t
                                  (if (_current-phi161307_)
                                      (_K161310_ _body161335_ '())
                                      (call-with-parameters
                                       (lambda () (_K161310_ _body161335_ '()))
                                       _current-phi161307_
                                       (gx#current-expander-phi)))
                                  (_E161314161323_)))))
                        (_E161314161323_)))))
            (_E161313161338_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx160971_ _internal-expand?160972_)
        (letrec ((_expand1160974_
                  (lambda (_hd161284_ _K161285_ _rest161286_ _r161287_)
                    (if (gx#core-bound-module? _hd161284_)
                        (_import1160975_
                         (gx#syntax-local-e__0 _hd161284_)
                         _K161285_
                         _rest161286_
                         _r161287_)
                        (if (gx#core-library-module-path? _hd161284_)
                            (_import1160975_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd161284_))
                             _K161285_
                             _rest161286_
                             _r161287_)
                            (if (gx#core-library-relative-module-path?
                                 _hd161284_)
                                (_import1160975_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd161284_))
                                 _K161285_
                                 _rest161286_
                                 _r161287_)
                                (let ((_e161289_ (gx#stx-e _hd161284_)))
                                  (if (pair? _e161289_)
                                      (let ((_$e161291_
                                             (gx#stx-e (car _e161289_))))
                                        (if (eq? 'spec: _$e161291_)
                                            (_import-spec160978_
                                             _hd161284_
                                             _K161285_
                                             _rest161286_
                                             _r161287_)
                                            (if (eq? 'in: _$e161291_)
                                                (_import-submodule160976_
                                                 _hd161284_
                                                 _K161285_
                                                 _rest161286_
                                                 _r161287_)
                                                (if (eq? 'runtime: _$e161291_)
                                                    (_import-runtime160977_
                                                     _hd161284_
                                                     _K161285_
                                                     _rest161286_
                                                     _r161287_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx160971_
                                                     _hd161284_)))))
                                      (if (string? _e161289_)
                                          (_import1160975_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd161284_
                                             (gx#stx-source _stx160971_)))
                                           _K161285_
                                           _rest161286_
                                           _r161287_)
                                          (if (##structure-instance-of?
                                               _e161289_
                                               'gx#module-context::t)
                                              (_K161285_
                                               _rest161286_
                                               (cons _e161289_ _r161287_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx160971_
                                               _hd161284_))))))))))
                 (_import1160975_
                  (lambda (_ctx161273_ _K161274_ _rest161275_ _r161276_)
                    (let ((_dphi161278_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K161274_
                       _rest161275_
                       (cons (##structure
                              gx#import-set::t
                              _ctx161273_
                              _dphi161278_
                              (map (lambda (_g161279161281_)
                                     (gx#core-module-export->import__%
                                      _g161279161281_
                                      '#f
                                      _dphi161278_))
                                   (##unchecked-structure-ref
                                    _ctx161273_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r161276_)))))
                 (_import-submodule160976_
                  (lambda (_hd161240_ _K161241_ _rest161242_ _r161243_)
                    (let* ((_e161244161251_ _hd161240_)
                           (_E161246161255_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161244161251_)))
                           (_E161245161269_
                            (lambda ()
                              (if (gx#stx-pair? _e161244161251_)
                                  (let ((_e161247161259_
                                         (gx#syntax-e _e161244161251_)))
                                    (let ((_hd161248161262_
                                           (##car _e161247161259_))
                                          (_tl161249161264_
                                           (##cdr _e161247161259_)))
                                      (let ((_spath161267_ _tl161249161264_))
                                        (if '#t
                                            (_import1160975_
                                             (_import-spec-source160979_
                                              _spath161267_)
                                             _K161241_
                                             _rest161242_
                                             _r161243_)
                                            (_E161246161255_)))))
                                  (_E161246161255_)))))
                      (_E161245161269_))))
                 (_import-runtime160977_
                  (lambda (_hd161207_ _K161208_ _rest161209_ _r161210_)
                    (let* ((_e161211161218_ _hd161207_)
                           (_E161213161222_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161211161218_)))
                           (_E161212161236_
                            (lambda ()
                              (if (gx#stx-pair? _e161211161218_)
                                  (let ((_e161214161226_
                                         (gx#syntax-e _e161211161218_)))
                                    (let ((_hd161215161229_
                                           (##car _e161214161226_))
                                          (_tl161216161231_
                                           (##cdr _e161214161226_)))
                                      (let ((_spath161234_ _tl161216161231_))
                                        (if '#t
                                            (_K161208_
                                             _rest161209_
                                             (cons (_import-spec-source160979_
                                                    _spath161234_)
                                                   _r161210_))
                                            (_E161213161222_)))))
                                  (_E161213161222_)))))
                      (_E161212161236_))))
                 (_import-spec160978_
                  (lambda (_hd161046_ _K161047_ _rest161048_ _r161049_)
                    (let* ((_e161050161067_ _hd161046_)
                           (_E161059161071_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161050161067_)))
                           (_E161052161181_
                            (lambda ()
                              (if (gx#stx-pair? _e161050161067_)
                                  (let ((_e161060161075_
                                         (gx#syntax-e _e161050161067_)))
                                    (let ((_hd161061161078_
                                           (##car _e161060161075_))
                                          (_tl161062161080_
                                           (##cdr _e161060161075_)))
                                      (if (gx#stx-pair? _tl161062161080_)
                                          (let ((_e161063161083_
                                                 (gx#syntax-e
                                                  _tl161062161080_)))
                                            (let ((_hd161064161086_
                                                   (##car _e161063161083_))
                                                  (_tl161065161088_
                                                   (##cdr _e161063161083_)))
                                              (let* ((_path161091_
                                                      _hd161064161086_)
                                                     (_specs161093_
                                                      _tl161065161088_))
                                                (if '#t
                                                    (let ((_src-ctx161095_
                                                           (_import-spec-source160979_
                                                            _path161091_))
                                                          (_exports161096_
                                                           (make-table))
                                                          (_specs161097_
                                                           (gx#syntax->list
                                                            _specs161093_)))
                                                      (for-each
                                                       (lambda (_out161099_)
                                                         (table-set!
                                                          _exports161096_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out161099_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out161099_
                         '4
                         gx#module-export::t
                         '#f))
                  _out161099_))
               (##unchecked-structure-ref
                _src-ctx161095_
                '9
                gx#module-context::t
                '#f))
              (_K161047_
               _rest161048_
               (foldl1 (lambda (_spec161101_ _r161102_)
                         (let* ((_e161103161119_ _spec161101_)
                                (_E161105161123_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e161103161119_)))
                                (_E161104161177_
                                 (lambda ()
                                   (if (gx#stx-pair? _e161103161119_)
                                       (let ((_e161106161127_
                                              (gx#syntax-e _e161103161119_)))
                                         (let ((_hd161107161130_
                                                (##car _e161106161127_))
                                               (_tl161108161132_
                                                (##cdr _e161106161127_)))
                                           (let ((_phi161135_
                                                  _hd161107161130_))
                                             (if (gx#stx-pair?
                                                  _tl161108161132_)
                                                 (let ((_e161109161137_
                                                        (gx#syntax-e
                                                         _tl161108161132_)))
                                                   (let ((_hd161110161140_
                                                          (##car _e161109161137_))
                                                         (_tl161111161142_
                                                          (##cdr _e161109161137_)))
                                                     (let ((_name161145_
                                                            _hd161110161140_))
                                                       (if (gx#stx-pair?
                                                            _tl161111161142_)
                                                           (let ((_e161112161147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl161111161142_)))
                     (let ((_hd161113161150_ (##car _e161112161147_))
                           (_tl161114161152_ (##cdr _e161112161147_)))
                       (let ((_src-phi161155_ _hd161113161150_))
                         (if (gx#stx-pair? _tl161114161152_)
                             (let ((_e161115161157_
                                    (gx#syntax-e _tl161114161152_)))
                               (let ((_hd161116161160_ (##car _e161115161157_))
                                     (_tl161117161162_
                                      (##cdr _e161115161157_)))
                                 (let ((_src-name161165_ _hd161116161160_))
                                   (if (gx#stx-null? _tl161117161162_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi161155_)
                                                (gx#identifier?
                                                 _src-name161165_)
                                                (gx#stx-fixnum? _phi161135_)
                                                (gx#identifier? _name161145_))
                                           (let ((_src-phi161167_
                                                  (gx#stx-e _src-phi161155_))
                                                 (_src-name161168_
                                                  (gx#core-identifier-key
                                                   _src-name161165_))
                                                 (_phi161169_
                                                  (gx#stx-e _phi161135_))
                                                 (_name161170_
                                                  (gx#core-identifier-key
                                                   _name161145_)))
                                             (let ((_$e161172_
                                                    (table-ref
                                                     _exports161096_
                                                     (cons _src-phi161167_
                                                           _src-name161168_)
                                                     '#f)))
                                               (if _$e161172_
                                                   ((lambda (_out161175_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out161175_
                                                             _name161170_
                                                             (fx- _phi161169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi161167_))
                    _r161102_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e161172_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx160971_
                                                    _hd161046_))))
                                           (_E161105161123_))
                                       (_E161105161123_)))))
                             (_E161105161123_)))))
                   (_E161105161123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E161105161123_)))))
                                       (_E161105161123_)))))
                           (_E161104161177_)))
                       _r161049_
                       _specs161097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E161059161071_)))))
                                          (_E161059161071_))))
                                  (_E161059161071_))))
                           (_E161051161203_
                            (lambda ()
                              (if (gx#stx-pair? _e161050161067_)
                                  (let ((_e161053161185_
                                         (gx#syntax-e _e161050161067_)))
                                    (let ((_hd161054161188_
                                           (##car _e161053161185_))
                                          (_tl161055161190_
                                           (##cdr _e161053161185_)))
                                      (if (gx#stx-pair? _tl161055161190_)
                                          (let ((_e161056161193_
                                                 (gx#syntax-e
                                                  _tl161055161190_)))
                                            (let ((_hd161057161196_
                                                   (##car _e161056161193_))
                                                  (_tl161058161198_
                                                   (##cdr _e161056161193_)))
                                              (let ((_path161201_
                                                     _hd161057161196_))
                                                (if (gx#stx-null?
                                                     _tl161058161198_)
                                                    (if '#t
                                                        (_K161047_
                                                         _rest161048_
                                                         (cons (_import-spec-source160979_
                                                                _path161201_)
                                                               _r161049_))
                                                        (_E161052161181_))
                                                    (_E161052161181_)))))
                                          (_E161052161181_))))
                                  (_E161052161181_)))))
                      (_E161051161203_))))
                 (_import-spec-source160979_
                  (lambda (_spath161044_)
                    (gx#core-import-nested-module _spath161044_ _stx160971_)))
                 (_import!160980_
                  (lambda (_rbody160993_)
                    (letrec* ((_current-ctx160995_
                               (gx#current-expander-context))
                              (_deps160996_ (make-table 'test: eq?))
                              (_bind!160997_
                               (lambda (_hd161042_)
                                 (gx#core-bind-import!__1
                                  _hd161042_
                                  _current-ctx160995_))))
                      (let _lp160999_ ((_rest161001_ _rbody160993_)
                                       (_body161002_ '()))
                        (let* ((_rest161003161011_ _rest161001_)
                               (_else161005161021_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx160995_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx160995_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx160995_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body161002_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx161019_ _g168417_)
                                     (gx#eval-module _ctx161019_))
                                   _deps160996_)
                                  _body161002_))
                               (_K161007161030_
                                (lambda (_rest161024_ _hd161025_)
                                  (if (##structure-direct-instance-of?
                                       _hd161025_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!160997_ _hd161025_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd161025_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd161025_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps160996_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd161025_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd161025_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!160997_
                                             (##unchecked-structure-ref
                                              _hd161025_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd161025_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps160996_
                                                 (##unchecked-structure-ref
                                                  _hd161025_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e161027_
                                                 (##structure-instance-of?
                                                  _hd161025_
                                                  'gx#module-context::t)))
                                            (if _$e161027_
                                                _$e161027_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx160971_
                                                 _hd161025_)))))
                                  (_lp160999_
                                   _rest161024_
                                   (cons _hd161025_ _body161002_)))))
                          (if (##pair? _rest161003161011_)
                              (let ((_hd161008161033_
                                     (##car _rest161003161011_))
                                    (_tl161009161035_
                                     (##cdr _rest161003161011_)))
                                (let* ((_hd161038_ _hd161008161033_)
                                       (_rest161040_ _tl161009161035_))
                                  (_K161007161030_ _rest161040_ _hd161038_)))
                              (_else161005161021_)))))))
                 (_expanded-import?160981_
                  (lambda (_e160985_)
                    (let ((_$e160987_
                           (##structure-direct-instance-of?
                            _e160985_
                            'gx#import-set::t)))
                      (if _$e160987_
                          _$e160987_
                          (let ((_$e160990_
                                 (##structure-direct-instance-of?
                                  _e160985_
                                  'gx#module-import::t)))
                            (if _$e160990_
                                _$e160990_
                                (##structure-instance-of?
                                 _e160985_
                                 'gx#module-context::t))))))))
          (let ((_rbody160983_
                 (gx#core-expand-import/export
                  _stx160971_
                  _expanded-import?160981_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1160974_)))
            (if _internal-expand?160972_
                (reverse _rbody160983_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!160980_ _rbody160983_))
                 (gx#stx-source _stx160971_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx161297_)
        (let ((_internal-expand?161299_ '#f))
          (gx#core-expand-import%__% _stx161297_ _internal-expand?161299_))))
    (define gx#core-expand-import%
      (lambda _g168419_
        (let ((_g168418_ (##length _g168419_)))
          (cond ((##fx= _g168418_ 1)
                 (apply (lambda (_stx161297_)
                          (gx#core-expand-import%__0 _stx161297_))
                        _g168419_))
                ((##fx= _g168418_ 2)
                 (apply (lambda (_stx161301_ _internal-expand?161302_)
                          (gx#core-expand-import%__%
                           _stx161301_
                           _internal-expand?161302_))
                        _g168419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g168419_))))))
    (define gx#core-import-nested-module
      (lambda (_spath160898_ _where160899_)
        (let* ((_e160900160907_ _spath160898_)
               (_E160902160911_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160900160907_)))
               (_E160901160966_
                (lambda ()
                  (if (gx#stx-pair? _e160900160907_)
                      (let ((_e160903160915_ (gx#syntax-e _e160900160907_)))
                        (let ((_hd160904160918_ (##car _e160903160915_))
                              (_tl160905160920_ (##cdr _e160903160915_)))
                          (let* ((_origin160923_ _hd160904160918_)
                                 (_sub160925_ _tl160905160920_))
                            (if '#t
                                (let ((_origin-ctx160927_
                                       (if (gx#stx-false? _origin160923_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin160923_))))
                                  (let _lp160929_ ((_rest160931_ _sub160925_)
                                                   (_ctx160932_
                                                    _origin-ctx160927_))
                                    (let* ((_e160933160940_ _rest160931_)
                                           (_E160935160944_
                                            (lambda () _ctx160932_))
                                           (_E160934160962_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e160933160940_)
                                                  (let ((_e160936160948_
                                                         (gx#syntax-e
                                                          _e160933160940_)))
                                                    (let ((_hd160937160951_
                                                           (##car _e160936160948_))
                                                          (_tl160938160953_
                                                           (##cdr _e160936160948_)))
                                                      (let* ((_id160956_
                                                              _hd160937160951_)
                                                             (_rest160958_
                                                              _tl160938160953_))
                                                        (if '#t
                                                            (let ((_bind160960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id160956_
                            '0
                            _ctx160932_)))
                      (if (and (##structure-direct-instance-of?
                                _bind160960_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind160960_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where160899_
                           _spath160898_
                           _id160956_))
                      (_lp160929_
                       _rest160958_
                       (##unchecked-structure-ref
                        _bind160960_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E160935160944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160935160944_)))))
                                      (_E160934160962_))))
                                (_E160902160911_)))))
                      (_E160902160911_)))))
          (_E160901160966_))))
    (define gx#core-expand-import-source
      (lambda (_hd160896_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd160896_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx160404_ _internal-expand?160405_)
        (letrec* ((_make-export__168348168349_
                   (lambda (_bind160844_ _phi160845_ _ctx160846_ _name160847_)
                     (let* ((_key160849_
                             (##unchecked-structure-ref
                              _bind160844_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key160851_
                             (if _name160847_
                                 (gx#core-identifier-key _name160847_)
                                 _key160849_)))
                       (##structure
                        gx#module-export::t
                        _ctx160846_
                        _key160849_
                        _phi160845_
                        _export-key160851_
                        (let ((_$e160854_
                               (##structure-instance-of?
                                _bind160844_
                                'gx#extern-binding::t)))
                          (if _$e160854_
                              _$e160854_
                              (##structure-direct-instance-of?
                               _bind160844_
                               'gx#import-binding::t)))))))
                  (_make-export__0__168350168353_
                   (lambda (_bind160860_)
                     (let* ((_phi160862_ (gx#current-export-expander-phi))
                            (_ctx160864_ (gx#current-expander-context))
                            (_name160866_ '#f))
                       (_make-export__168348168349_
                        _bind160860_
                        _phi160862_
                        _ctx160864_
                        _name160866_))))
                  (_make-export__1__168351168354_
                   (lambda (_bind160868_ _phi160869_)
                     (let* ((_ctx160871_ (gx#current-expander-context))
                            (_name160873_ '#f))
                       (_make-export__168348168349_
                        _bind160868_
                        _phi160869_
                        _ctx160871_
                        _name160873_))))
                  (_make-export__2__168352168355_
                   (lambda (_bind160875_ _phi160876_ _ctx160877_)
                     (let ((_name160879_ '#f))
                       (_make-export__168348168349_
                        _bind160875_
                        _phi160876_
                        _ctx160877_
                        _name160879_))))
                  (_make-export160407_
                   (lambda _g168421_
                     (let ((_g168420_ (##length _g168421_)))
                       (cond ((##fx= _g168420_ 1)
                              (apply (lambda (_bind160860_)
                                       (_make-export__0__168350168353_
                                        _bind160860_))
                                     _g168421_))
                             ((##fx= _g168420_ 2)
                              (apply (lambda (_bind160868_ _phi160869_)
                                       (_make-export__1__168351168354_
                                        _bind160868_
                                        _phi160869_))
                                     _g168421_))
                             ((##fx= _g168420_ 3)
                              (apply (lambda (_bind160875_
                                              _phi160876_
                                              _ctx160877_)
                                       (_make-export__2__168352168355_
                                        _bind160875_
                                        _phi160876_
                                        _ctx160877_))
                                     _g168421_))
                             ((##fx= _g168420_ 4)
                              (apply (lambda (_bind160881_
                                              _phi160882_
                                              _ctx160883_
                                              _name160884_)
                                       (_make-export__168348168349_
                                        _bind160881_
                                        _phi160882_
                                        _ctx160883_
                                        _name160884_))
                                     _g168421_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g168421_))))))
                  (_expand1160408_
                   (lambda (_hd160557_ _K160558_ _rest160559_ _r160560_)
                     (let* ((_e160561160593_ _hd160557_)
                            (_E160588160597_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx160404_
                                _hd160557_)))
                            (_E160578160676_
                             (lambda ()
                               (if (gx#stx-pair? _e160561160593_)
                                   (let ((_e160589160601_
                                          (gx#syntax-e _e160561160593_)))
                                     (let ((_hd160590160604_
                                            (##car _e160589160601_))
                                           (_tl160591160606_
                                            (##cdr _e160589160601_)))
                                       (if (eq? (gx#stx-e _hd160590160604_)
                                                'import:)
                                           (let ((_in160609_ _tl160591160606_))
                                             (if (gx#stx-list? _in160609_)
                                                 (let _lp160611_ ((_in-rest160613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in160609_)
                          (_r160614_ _r160560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e160615160622_
                                                           _in-rest160613_)
                                                          (_E160617160626_
                                                           (lambda ()
                                                             (_K160558_
                                                              _rest160559_
                                                              _r160614_)))
                                                          (_E160616160672_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e160615160622_)
                         (let ((_e160618160630_ (gx#syntax-e _e160615160622_)))
                           (let ((_hd160619160633_ (##car _e160618160630_))
                                 (_tl160620160635_ (##cdr _e160618160630_)))
                             (let* ((_hd160638_ _hd160619160633_)
                                    (_in-rest160640_ _tl160620160635_))
                               (if '#t
                                   (let ((_src160670_
                                          (if (gx#core-bound-module?
                                               _hd160638_)
                                              (gx#syntax-local-e__0 _hd160638_)
                                              (if (gx#core-library-module-path?
                                                   _hd160638_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd160638_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd160638_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd160638_))
                                                      (if (gx#stx-string?
                                                           _hd160638_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd160638_
                                                            (gx#stx-source
                                                             _stx160404_)))
                                                          (let* ((_e160641160648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160638_)
                         (_E160643160652_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx160404_
                             _hd160638_)))
                         (_E160642160666_
                          (lambda ()
                            (if (gx#stx-pair? _e160641160648_)
                                (let ((_e160644160656_
                                       (gx#syntax-e _e160641160648_)))
                                  (let ((_hd160645160659_
                                         (##car _e160644160656_))
                                        (_tl160646160661_
                                         (##cdr _e160644160656_)))
                                    (if (eq? (gx#stx-e _hd160645160659_) 'in:)
                                        (let ((_spath160664_ _tl160646160661_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath160664_
                                               _stx160404_)
                                              (_E160643160652_)))
                                        (_E160643160652_))))
                                (_E160643160652_)))))
                    (_E160642160666_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp160611_
                                      _in-rest160640_
                                      (_export-imports160409_
                                       _src160670_
                                       _r160614_)))
                                   (_E160617160626_)))))
                         (_E160617160626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E160616160672_)))
                                                 (_E160588160597_)))
                                           (_E160588160597_))))
                                   (_E160588160597_))))
                            (_E160565160715_
                             (lambda ()
                               (if (gx#stx-pair? _e160561160593_)
                                   (let ((_e160579160680_
                                          (gx#syntax-e _e160561160593_)))
                                     (let ((_hd160580160683_
                                            (##car _e160579160680_))
                                           (_tl160581160685_
                                            (##cdr _e160579160680_)))
                                       (if (eq? (gx#stx-e _hd160580160683_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl160581160685_)
                                               (let ((_e160582160688_
                                                      (gx#syntax-e
                                                       _tl160581160685_)))
                                                 (let ((_hd160583160691_
                                                        (##car _e160582160688_))
                                                       (_tl160584160693_
                                                        (##cdr _e160582160688_)))
                                                   (let ((_id160696_
                                                          _hd160583160691_))
                                                     (if (gx#stx-pair?
                                                          _tl160584160693_)
                                                         (let ((_e160585160698_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl160584160693_)))
                   (let ((_hd160586160701_ (##car _e160585160698_))
                         (_tl160587160703_ (##cdr _e160585160698_)))
                     (let ((_name160706_ _hd160586160701_))
                       (if (gx#stx-null? _tl160587160703_)
                           (if '#t
                               (let* ((_phi160708_
                                       (gx#current-export-expander-phi))
                                      (_$e160710_
                                       (gx#core-resolve-identifier__1
                                        _id160696_
                                        _phi160708_)))
                                 (if _$e160710_
                                     ((lambda (_bind160713_)
                                        (_K160558_
                                         _rest160559_
                                         (cons (_make-export__168348168349_
                                                _bind160713_
                                                _phi160708_
                                                (gx#current-expander-context)
                                                _name160706_)
                                               _r160560_)))
                                      _$e160710_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx160404_
                                      _hd160557_
                                      _id160696_)))
                               (_E160578160676_))
                           (_E160578160676_)))))
                 (_E160578160676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E160578160676_))
                                           (_E160578160676_))))
                                   (_E160578160676_))))
                            (_E160564160764_
                             (lambda ()
                               (if (gx#stx-pair? _e160561160593_)
                                   (let ((_e160566160719_
                                          (gx#syntax-e _e160561160593_)))
                                     (let ((_hd160567160722_
                                            (##car _e160566160719_))
                                           (_tl160568160724_
                                            (##cdr _e160566160719_)))
                                       (if (eq? (gx#stx-e _hd160567160722_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl160568160724_)
                                               (let ((_e160569160727_
                                                      (gx#syntax-e
                                                       _tl160568160724_)))
                                                 (let ((_hd160570160730_
                                                        (##car _e160569160727_))
                                                       (_tl160571160732_
                                                        (##cdr _e160569160727_)))
                                                   (let ((_phi160735_
                                                          _hd160570160730_))
                                                     (if (gx#stx-pair?
                                                          _tl160571160732_)
                                                         (let ((_e160572160737_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl160571160732_)))
                   (let ((_hd160573160740_ (##car _e160572160737_))
                         (_tl160574160742_ (##cdr _e160572160737_)))
                     (let ((_id160745_ _hd160573160740_))
                       (if (gx#stx-pair? _tl160574160742_)
                           (let ((_e160575160747_
                                  (gx#syntax-e _tl160574160742_)))
                             (let ((_hd160576160750_ (##car _e160575160747_))
                                   (_tl160577160752_ (##cdr _e160575160747_)))
                               (let ((_name160755_ _hd160576160750_))
                                 (if (gx#stx-null? _tl160577160752_)
                                     (if (and (gx#stx-fixnum? _phi160735_)
                                              (gx#identifier? _id160745_)
                                              (gx#identifier? _name160755_))
                                         (let* ((_phi160757_
                                                 (gx#stx-e _phi160735_))
                                                (_$e160759_
                                                 (gx#core-resolve-identifier__1
                                                  _id160745_
                                                  _phi160757_)))
                                           (if _$e160759_
                                               ((lambda (_bind160762_)
                                                  (_K160558_
                                                   _rest160559_
                                                   (cons (_make-export__168348168349_
                                                          _bind160762_
                                                          _phi160757_
                                                          (gx#current-expander-context)
                                                          _name160755_)
                                                         _r160560_)))
                                                _$e160759_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx160404_
                                                _hd160557_
                                                _id160745_)))
                                         (_E160565160715_))
                                     (_E160565160715_)))))
                           (_E160565160715_)))))
                 (_E160565160715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E160565160715_))
                                           (_E160565160715_))))
                                   (_E160565160715_))))
                            (_E160563160775_
                             (lambda ()
                               (let ((_id160768_ _e160561160593_))
                                 (if (gx#identifier? _id160768_)
                                     (let ((_$e160770_
                                            (gx#core-resolve-identifier__1
                                             _id160768_
                                             (gx#current-export-expander-phi))))
                                       (if _$e160770_
                                           ((lambda (_bind160773_)
                                              (_K160558_
                                               _rest160559_
                                               (cons (_make-export__0__168350168353_
                                                      _bind160773_)
                                                     _r160560_)))
                                            _$e160770_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx160404_
                                            _hd160557_)))
                                     (_E160564160764_)))))
                            (_E160562160839_
                             (lambda ()
                               (if (eq? (gx#stx-e _e160561160593_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx160779_
                                               (gx#current-expander-context))
                                              (_current-phi160781_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx160783_
                                               (gx#core-context-shift
                                                _current-ctx160779_
                                                _current-phi160781_))
                                              (_phi-bind160785_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx160783_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp160788_ ((_bind-rest160790_
                                                           _phi-bind160785_)
                                                          (_set160791_ '()))
                                           (let* ((_bind-rest160792160802_
                                                   _bind-rest160790_)
                                                  (_else160794160810_
                                                   (lambda ()
                                                     (_K160558_
                                                      _rest160559_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi160781_
                                                             _set160791_)
                                                            _r160560_))))
                                                  (_K160796160820_
                                                   (lambda (_bind-rest160813_
                                                            _bind160814_
                                                            _key160815_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind160814_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind160814_))
                                                         (_lp160788_
                                                          _bind-rest160813_
                                                          _set160791_)
                                                         (_lp160788_
                                                          _bind-rest160813_
                                                          (cons (_make-export__2__168352168355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind160814_
                         _current-phi160781_
                         _current-ctx160779_)
                        _set160791_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest160792160802_)
                                                 (let ((_hd160797160823_
                                                        (##car _bind-rest160792160802_))
                                                       (_tl160798160825_
                                                        (##cdr _bind-rest160792160802_)))
                                                   (if (##pair? _hd160797160823_)
                                                       (let ((_hd160799160828_
                                                              (##car _hd160797160823_))
                                                             (_tl160800160830_
                                                              (##cdr _hd160797160823_)))
                                                         (let* ((_key160833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd160799160828_)
                        (_bind160835_ _tl160800160830_)
                        (_bind-rest160837_ _tl160798160825_))
                   (_K160796160820_
                    _bind-rest160837_
                    _bind160835_
                    _key160833_)))
               (_else160794160810_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else160794160810_)))))
                                       (_E160563160775_))
                                   (_E160563160775_)))))
                       (_E160562160839_))))
                  (_export-imports160409_
                   (lambda (_src160433_ _r160434_)
                     (letrec* ((_current-ctx160436_
                                (gx#current-expander-context))
                               (_current-phi160437_
                                (gx#current-export-expander-phi))
                               (_import->export160438_
                                (lambda (_in160519_)
                                  (let* ((_in160520160528_ _in160519_)
                                         (_E160522160532_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in160520160528_)))
                                         (_K160523160539_
                                          (lambda (_phi160535_
                                                   _key160536_
                                                   _out160537_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx160436_
                                             _key160536_
                                             _phi160535_
                                             _key160536_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in160520160528_
                                         'gx#module-import::t)
                                        (let* ((_e160524160542_
                                                (##unchecked-structure-ref
                                                 _in160520160528_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out160545_ _e160524160542_)
                                               (_e160525160547_
                                                (##unchecked-structure-ref
                                                 _in160520160528_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key160550_ _e160525160547_)
                                               (_e160526160552_
                                                (##unchecked-structure-ref
                                                 _in160520160528_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi160555_ _e160526160552_))
                                          (_K160523160539_
                                           _phi160555_
                                           _key160550_
                                           _out160545_))
                                        (_E160522160532_)))))
                               (_fold-e160439_
                                (lambda (_in160441_ _r160442_)
                                  (let* ((_in160443160457_ _in160441_)
                                         (_else160446160465_
                                          (lambda () _r160442_)))
                                    (let ((_K160452160501_
                                           (lambda (_phi160497_
                                                    _key160498_
                                                    _out160499_)
                                             (if (and (fx= _phi160497_
                                                           _current-phi160437_)
                                                      (eq? _src160433_
                                                           (##unchecked-structure-ref
                                                            _out160499_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export160438_
                                                        _in160441_)
                                                       _r160442_)
                                                 _r160442_)))
                                          (_K160448160476_
                                           (lambda (_imports160469_
                                                    _phi160470_
                                                    _ctx160471_)
                                             (if (and (fx= _phi160470_
                                                           _current-phi160437_)
                                                      (eq? _src160433_
                                                           _ctx160471_))
                                                 (foldl1 (lambda (_in160473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r160474_)
                   (cons (_import->export160438_ _in160473_) _r160474_))
                 _r160442_
                 _imports160469_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r160442_))))
                                      (let ((_try-match160445160494_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in160443160457_
                                                    'gx#import-set::t)
                                                   (let* ((_e160449160479_
                                                           (##unchecked-structure-ref
                                                            _in160443160457_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e160450160484_
                                                           (##unchecked-structure-ref
                                                            _in160443160457_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e160451160489_
                                                           (##unchecked-structure-ref
                                                            _in160443160457_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx160482_
                                                            _e160449160479_)
                                                           (_phi160487_
                                                            _e160450160484_)
                                                           (_imports160492_
                                                            _e160451160489_))
                                                       (_K160448160476_
                                                        _imports160492_
                                                        _phi160487_
                                                        _ctx160482_)))
                                                   (_else160446160465_)))))
                                        (if (##structure-direct-instance-of?
                                             _in160443160457_
                                             'gx#module-import::t)
                                            (let* ((_e160453160504_
                                                    (##unchecked-structure-ref
                                                     _in160443160457_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e160454160509_
                                                    (##unchecked-structure-ref
                                                     _in160443160457_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e160455160514_
                                                    (##unchecked-structure-ref
                                                     _in160443160457_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out160507_
                                                     _e160453160504_)
                                                    (_key160512_
                                                     _e160454160509_)
                                                    (_phi160517_
                                                     _e160455160514_))
                                                (_K160452160501_
                                                 _phi160517_
                                                 _key160512_
                                                 _out160507_)))
                                            (_try-match160445160494_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src160433_
                              _current-phi160437_
                              (foldl1 _fold-e160439_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx160436_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r160434_))))
                  (_export!160410_
                   (lambda (_rbody160423_)
                     (letrec* ((_current-ctx160425_
                                (gx#current-expander-context))
                               (_fold-e160426_
                                (lambda (_out160430_ _r160431_)
                                  (if (##structure-direct-instance-of?
                                       _out160430_
                                       'gx#module-export::t)
                                      (cons _out160430_ _r160431_)
                                      (if (##structure-direct-instance-of?
                                           _out160430_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r160431_
                                                  (##unchecked-structure-ref
                                                   _out160430_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r160431_)))))
                       (let ((_body160428_ (reverse _rbody160423_)))
                         (##unchecked-structure-set!
                          _current-ctx160425_
                          (foldl1 _fold-e160426_
                                  (##unchecked-structure-ref
                                   _current-ctx160425_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body160428_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body160428_))))
                  (_expanded-export?160411_
                   (lambda (_e160418_)
                     (let ((_$e160420_
                            (##structure-direct-instance-of?
                             _e160418_
                             'gx#module-export::t)))
                       (if _$e160420_
                           _$e160420_
                           (##structure-direct-instance-of?
                            _e160418_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?160405_)
              (let ((_rbody160416_
                     (gx#core-expand-import/export
                      _stx160404_
                      _expanded-export?160411_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1160408_)))
                (if _internal-expand?160405_
                    (reverse _rbody160416_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!160410_ _rbody160416_))
                     (gx#stx-source _stx160404_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx160404_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx160404_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx160889_)
        (let ((_internal-expand?160891_ '#f))
          (gx#core-expand-export%__% _stx160889_ _internal-expand?160891_))))
    (define gx#core-expand-export%
      (lambda _g168423_
        (let ((_g168422_ (##length _g168423_)))
          (cond ((##fx= _g168422_ 1)
                 (apply (lambda (_stx160889_)
                          (gx#core-expand-export%__0 _stx160889_))
                        _g168423_))
                ((##fx= _g168422_ 2)
                 (apply (lambda (_stx160893_ _internal-expand?160894_)
                          (gx#core-expand-export%__%
                           _stx160893_
                           _internal-expand?160894_))
                        _g168423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g168423_))))))
    (define gx#core-expand-export-source
      (lambda (_hd160401_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd160401_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx160371_)
        (let* ((_e160372160379_ _stx160371_)
               (_E160374160383_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160372160379_)))
               (_E160373160397_
                (lambda ()
                  (if (gx#stx-pair? _e160372160379_)
                      (let ((_e160375160387_ (gx#syntax-e _e160372160379_)))
                        (let ((_hd160376160390_ (##car _e160375160387_))
                              (_tl160377160392_ (##cdr _e160375160387_)))
                          (let ((_body160395_ _tl160377160392_))
                            (if (gx#identifier-list? _body160395_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body160395_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body160395_))
                                   (gx#stx-source _stx160371_)))
                                (_E160374160383_)))))
                      (_E160374160383_)))))
          (_E160373160397_))))
    (define gx#core-bind-feature!__%
      (lambda (_id160337_ _private?160338_ _phi160339_ _ctx160340_)
        (gx#core-bind-syntax!__%
         _id160337_
         ((if _private?160338_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id160337_))
         _private?160338_
         _phi160339_
         _ctx160340_)))
    (define gx#core-bind-feature!__0
      (lambda (_id160345_)
        (let* ((_private?160347_ '#f)
               (_phi160349_ (gx#current-expander-phi))
               (_ctx160351_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160345_
           _private?160347_
           _phi160349_
           _ctx160351_))))
    (define gx#core-bind-feature!__1
      (lambda (_id160353_ _private?160354_)
        (let* ((_phi160356_ (gx#current-expander-phi))
               (_ctx160358_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160353_
           _private?160354_
           _phi160356_
           _ctx160358_))))
    (define gx#core-bind-feature!__2
      (lambda (_id160360_ _private?160361_ _phi160362_)
        (let ((_ctx160364_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160360_
           _private?160361_
           _phi160362_
           _ctx160364_))))
    (define gx#core-bind-feature!
      (lambda _g168425_
        (let ((_g168424_ (##length _g168425_)))
          (cond ((##fx= _g168424_ 1)
                 (apply (lambda (_id160345_)
                          (gx#core-bind-feature!__0 _id160345_))
                        _g168425_))
                ((##fx= _g168424_ 2)
                 (apply (lambda (_id160353_ _private?160354_)
                          (gx#core-bind-feature!__1
                           _id160353_
                           _private?160354_))
                        _g168425_))
                ((##fx= _g168424_ 3)
                 (apply (lambda (_id160360_ _private?160361_ _phi160362_)
                          (gx#core-bind-feature!__2
                           _id160360_
                           _private?160361_
                           _phi160362_))
                        _g168425_))
                ((##fx= _g168424_ 4)
                 (apply (lambda (_id160366_
                                 _private?160367_
                                 _phi160368_
                                 _ctx160369_)
                          (gx#core-bind-feature!__%
                           _id160366_
                           _private?160367_
                           _phi160368_
                           _ctx160369_))
                        _g168425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g168425_))))))))
