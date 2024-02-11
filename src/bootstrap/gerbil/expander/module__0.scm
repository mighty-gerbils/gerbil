(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707657570)
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
      (lambda _$args160610_
        (apply make-class-instance gx#module-import::t _$args160610_)))
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
      (lambda _$args160607_
        (apply make-class-instance gx#module-export::t _$args160607_)))
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
      (lambda _$args160604_
        (apply make-class-instance gx#import-set::t _$args160604_)))
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
      (lambda _$args160601_
        (apply make-class-instance gx#export-set::t _$args160601_)))
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
      (lambda _$args160598_
        (apply make-class-instance gx#import-expander::t _$args160598_)))
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
      (lambda _$args160595_
        (apply make-class-instance gx#export-expander::t _$args160595_)))
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
      (lambda _$args160592_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args160592_)))
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
      (lambda (_path160589_ _fun160590_)
        (call-with-input-file
         (cons 'path: (cons _path160589_ gx#source-file-settings))
         _fun160590_)))
    (define gx#module-context:::init!
      (lambda (_self160583_ _id160584_ _super160585_ _ns160586_ _path160587_)
        (if (##fx< '11 (##structure-length _self160583_))
            (begin
              (##unchecked-structure-set!
               _self160583_
               _id160584_
               '1
               (##structure-type _self160583_)
               '#f)
              (##unchecked-structure-set!
               _self160583_
               (make-table 'test: eq?)
               '2
               (##structure-type _self160583_)
               '#f)
              (##unchecked-structure-set!
               _self160583_
               _super160585_
               '3
               (##structure-type _self160583_)
               '#f)
              (##unchecked-structure-set!
               _self160583_
               '#f
               '4
               (##structure-type _self160583_)
               '#f)
              (##unchecked-structure-set!
               _self160583_
               '#f
               '5
               (##structure-type _self160583_)
               '#f)
              (##unchecked-structure-set!
               _self160583_
               _ns160586_
               '6
               (##structure-type _self160583_)
               '#f)
              (##unchecked-structure-set!
               _self160583_
               _path160587_
               '7
               (##structure-type _self160583_)
               '#f)
              (##unchecked-structure-set!
               _self160583_
               '()
               '8
               (##structure-type _self160583_)
               '#f)
              (##unchecked-structure-set!
               _self160583_
               '()
               '9
               (##structure-type _self160583_)
               '#f)
              (##unchecked-structure-set!
               _self160583_
               '#f
               '10
               (##structure-type _self160583_)
               '#f)
              (##unchecked-structure-set!
               _self160583_
               '#f
               '11
               (##structure-type _self160583_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160583_
                   '11
                   (##vector-length _self160583_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160427_ _ctx160428_ _root160429_)
        (let ((_super160437_
               (let ((_$e160431_ _root160429_))
                 (if _$e160431_
                     _$e160431_
                     (let ((_$e160434_ (gx#core-context-root__0)))
                       (if _$e160434_
                           _$e160434_
                           (let ((__obj165120
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor165121
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor165121
                                   (__constructor165121 __obj165120)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj165120)))))))
          (if _ctx160428_
              (let ((_id160440_
                     (##structure-ref
                      _ctx160428_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160441_
                     (##structure-ref _ctx160428_ '7 gx#module-context::t '#f))
                    (_in160442_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160428_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160443_
                     (make-promise (lambda () (gx#eval-module _ctx160428_)))))
                (if (##fx< '8 (##structure-length _self160427_))
                    (begin
                      (##unchecked-structure-set!
                       _self160427_
                       _id160440_
                       '1
                       (##structure-type _self160427_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160427_
                       (make-table 'test: eq? 'size: (length _in160442_))
                       '2
                       (##structure-type _self160427_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160427_
                       _super160437_
                       '3
                       (##structure-type _self160427_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160427_
                       '#f
                       '4
                       (##structure-type _self160427_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160427_
                       '#f
                       '5
                       (##structure-type _self160427_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160427_
                       _path160441_
                       '6
                       (##structure-type _self160427_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160427_
                       _in160442_
                       '7
                       (##structure-type _self160427_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160427_
                       _e160443_
                       '8
                       (##structure-type _self160427_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160427_
                           '8
                           (##vector-length _self160427_)))
                (for-each
                 (lambda (_g160444160446_)
                   (gx#core-bind-weak-import!__% _g160444160446_ _self160427_))
                 _in160442_))
              (if (##fx< '8 (##structure-length _self160427_))
                  (begin
                    (##unchecked-structure-set!
                     _self160427_
                     '#f
                     '1
                     (##structure-type _self160427_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160427_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self160427_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160427_
                     _super160437_
                     '3
                     (##structure-type _self160427_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160427_
                     '#f
                     '4
                     (##structure-type _self160427_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160427_
                     '#f
                     '5
                     (##structure-type _self160427_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160427_
                     '#f
                     '6
                     (##structure-type _self160427_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160427_
                     '()
                     '7
                     (##structure-type _self160427_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160427_
                     '#f
                     '8
                     (##structure-type _self160427_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160427_
                         '8
                         (##vector-length _self160427_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160452_ _ctx160453_)
        (let ((_root160455_ '#f))
          (gx#prelude-context:::init!__%
           _self160452_
           _ctx160453_
           _root160455_))))
    (define gx#prelude-context:::init!
      (lambda _g165127_
        (let ((_g165126_ (##length _g165127_)))
          (cond ((##fx= _g165126_ 2)
                 (apply (lambda (_self160452_ _ctx160453_)
                          (gx#prelude-context:::init!__0
                           _self160452_
                           _ctx160453_))
                        _g165127_))
                ((##fx= _g165126_ 3)
                 (apply (lambda (_self160457_ _ctx160458_ _root160459_)
                          (gx#prelude-context:::init!__%
                           _self160457_
                           _ctx160458_
                           _root160459_))
                        _g165127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g165127_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160301_ _e160302_)
        (if (##fx< '3 (##structure-length _self160301_))
            (begin
              (##unchecked-structure-set!
               _self160301_
               _e160302_
               '1
               (##structure-type _self160301_)
               '#f)
              (##unchecked-structure-set!
               _self160301_
               (gx#current-expander-context)
               '2
               (##structure-type _self160301_)
               '#f)
              (##unchecked-structure-set!
               _self160301_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160301_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160301_
                   '3
                   (##vector-length _self160301_)))))
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
      (lambda (_g159927159930_ _g159928159932_)
        (gx#core-apply-user-expander__%
         _g159927159930_
         _g159928159932_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g159798159801_ _g159799159803_)
        (gx#core-apply-user-expander__%
         _g159798159801_
         _g159799159803_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx159669_)
        (let* ((_path159671_
                (##structure-ref _ctx159669_ '7 gx#module-context::t '#f))
               (_path159673_
                (if (pair? _path159671_) (last _path159671_) _path159671_)))
          (if (string? _path159673_) _path159673_ '#f))))
    (define gx#import-module__%
      (lambda (_path159645_ _reload?159646_ _eval?159647_)
        (let ((_ctx159649_
               ((gx#current-expander-module-import)
                _path159645_
                _reload?159646_)))
          (if (and _ctx159649_ _eval?159647_)
              (gx#eval-module _ctx159649_)
              '#!void)
          _ctx159649_)))
    (define gx#import-module__0
      (lambda (_path159654_)
        (let* ((_reload?159656_ '#f) (_eval?159658_ '#f))
          (gx#import-module__% _path159654_ _reload?159656_ _eval?159658_))))
    (define gx#import-module__1
      (lambda (_path159660_ _reload?159661_)
        (let ((_eval?159663_ '#f))
          (gx#import-module__% _path159660_ _reload?159661_ _eval?159663_))))
    (define gx#import-module
      (lambda _g165129_
        (let ((_g165128_ (##length _g165129_)))
          (cond ((##fx= _g165128_ 1)
                 (apply (lambda (_path159654_)
                          (gx#import-module__0 _path159654_))
                        _g165129_))
                ((##fx= _g165128_ 2)
                 (apply (lambda (_path159660_ _reload?159661_)
                          (gx#import-module__1 _path159660_ _reload?159661_))
                        _g165129_))
                ((##fx= _g165128_ 3)
                 (apply (lambda (_path159665_ _reload?159666_ _eval?159667_)
                          (gx#import-module__%
                           _path159665_
                           _reload?159666_
                           _eval?159667_))
                        _g165129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g165129_))))))
    (define gx#eval-module
      (lambda (_mod159642_) ((gx#current-expander-module-eval) _mod159642_)))
    (define gx#core-eval-module
      (lambda (_obj159627_)
        (letrec ((_force-e159629_
                  (lambda (_getf159638_ _e159639_)
                    (call-with-parameters
                     (lambda () (force (_getf159638_ _e159639_)))
                     gx#current-expander-context
                     _e159639_
                     gx#current-expander-phi
                     '0))))
          (let _recur159631_ ((_e159633_ _obj159627_))
            (if (##structure-instance-of? _e159633_ 'gx#module-context::t)
                (begin
                  (let ((_$e159635_ (gx#core-context-prelude__% _e159633_)))
                    (if _$e159635_ (_recur159631_ _$e159635_) '#!void))
                  (_force-e159629_ gx#module-context-e _e159633_))
                (if (##structure-instance-of? _e159633_ 'gx#prelude-context::t)
                    (_force-e159629_ gx#prelude-context-e _e159633_)
                    (if (gx#stx-string? _e159633_)
                        (_recur159631_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159633_)))
                        (if (gx#core-library-module-path? _e159633_)
                            (_recur159631_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159633_)))
                            (error '"Cannot eval module" _obj159627_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159610_)
        (let _lp159612_ ((_e159614_ _ctx159610_))
          (if (or (##structure-instance-of? _e159614_ 'gx#module-context::t)
                  (##structure-instance-of? _e159614_ 'gx#local-context::t))
              (_lp159612_
               (##unchecked-structure-ref _e159614_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159614_ 'gx#prelude-context::t)
                  _e159614_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159623_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159623_))))
    (define gx#core-context-prelude
      (lambda _g165131_
        (let ((_g165130_ (##length _g165131_)))
          (cond ((##fx= _g165130_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g165131_))
                ((##fx= _g165130_ 1)
                 (apply (lambda (_ctx159625_)
                          (gx#core-context-prelude__% _ctx159625_))
                        _g165131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g165131_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159600_)
        (let* ((_ht159602_ (gx#current-expander-module-registry))
               (_$e159604_ (table-ref _ht159602_ _ctx159600_ '#f)))
          (if _$e159604_
              (values _$e159604_)
              (let ((_pre159607_
                     (let ((__obj165122
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
                       (gx#prelude-context:::init! __obj165122 _ctx159600_)
                       __obj165122)))
                (table-set! _ht159602_ _ctx159600_ _pre159607_)
                _pre159607_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159481_ _reload?159482_)
        (letrec ((_import-source159484_
                  (lambda (_path159569_)
                    (if (member _path159569_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159569_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g165132_ (gx#core-read-module _path159569_)))
                         (begin
                           (let ((_g165133_
                                  (if (##values? _g165132_)
                                      (##vector-length _g165132_)
                                      1)))
                             (if (not (##fx= _g165133_ 4))
                                 (error "Context expects 4 values" _g165133_)))
                           (let ((_pre159572_ (##vector-ref _g165132_ 0))
                                 (_id159573_ (##vector-ref _g165132_ 1))
                                 (_ns159574_ (##vector-ref _g165132_ 2))
                                 (_body159575_ (##vector-ref _g165132_ 3)))
                             (let* ((_prelude159580_
                                     (if (##structure-instance-of?
                                          _pre159572_
                                          'gx#prelude-context::t)
                                         _pre159572_
                                         (if (##structure-instance-of?
                                              _pre159572_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159572_)
                                             (if (string? _pre159572_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159572_))
                                                 (if (not _pre159572_)
                                                     (let ((_$e159577_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159577_
                                                           _$e159577_
                                                           (let ((__obj165123
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
                     (gx#prelude-context:::init! __obj165123 '#f)
                     __obj165123)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159481_
                                                            _pre159572_))))))
                                    (_ctx159582_
                                     (let ((__obj165124
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
                                        __obj165124
                                        _id159573_
                                        _prelude159580_
                                        _ns159574_
                                        _path159569_)
                                       __obj165124))
                                    (_body159584_
                                     (gx#core-expand-module-begin
                                      _body159575_
                                      _ctx159582_))
                                    (_body159586_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159584_)
                                      _path159569_
                                      _ctx159582_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159582_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159586_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159582_
                                _body159586_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159569_
                                _ctx159582_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159573_
                                _ctx159582_)
                               _ctx159582_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159569_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159485_
                  (lambda (_rpath159497_)
                    (let* ((_rpath159498159505_ _rpath159497_)
                           (_E159500159509_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159498159505_)))
                           (_K159501159557_
                            (lambda (_refs159512_ _origin159513_)
                              (let ((_ctx159515_
                                     (if _origin159513_
                                         (gx#core-import-module__%
                                          _origin159513_
                                          _reload?159482_)
                                         (gx#current-expander-context))))
                                (let _lp159517_ ((_rest159519_ _refs159512_)
                                                 (_ctx159520_ _ctx159515_))
                                  (let* ((_rest159521159529_ _rest159519_)
                                         (_else159523159537_
                                          (lambda () _ctx159520_))
                                         (_K159525159545_
                                          (lambda (_rest159540_ _id159541_)
                                            (let ((_bind159543_
                                                   (gx#resolve-identifier__%
                                                    _id159541_
                                                    '0
                                                    _ctx159520_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159543_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159543_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159517_
                                                   _rest159540_
                                                   (##unchecked-structure-ref
                                                    _bind159543_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159497_
                                                         _id159541_
                                                         _bind159543_))))))
                                    (if (##pair? _rest159521159529_)
                                        (let ((_hd159526159548_
                                               (##car _rest159521159529_))
                                              (_tl159527159550_
                                               (##cdr _rest159521159529_)))
                                          (let* ((_id159553_ _hd159526159548_)
                                                 (_rest159555_
                                                  _tl159527159550_))
                                            (_K159525159545_
                                             _rest159555_
                                             _id159553_)))
                                        (_else159523159537_))))))))
                      (if (##pair? _rpath159498159505_)
                          (let ((_hd159502159560_ (##car _rpath159498159505_))
                                (_tl159503159562_ (##cdr _rpath159498159505_)))
                            (let* ((_origin159565_ _hd159502159560_)
                                   (_refs159567_ _tl159503159562_))
                              (_K159501159557_ _refs159567_ _origin159565_)))
                          (_E159500159509_))))))
          (let ((_$e159487_
                 (if (not _reload?159482_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath159481_
                      '#f)
                     '#f)))
            (if _$e159487_
                (values _$e159487_)
                (if (list? _rpath159481_)
                    (_import-submodule159485_ _rpath159481_)
                    (if (gx#core-library-module-path? _rpath159481_)
                        (let ((_ctx159490_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159481_)
                                _reload?159482_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159481_
                           _ctx159490_)
                          _ctx159490_)
                        (let* ((_npath159492_ (path-normalize _rpath159481_))
                               (_$e159494_
                                (if (not _reload?159482_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath159492_
                                     '#f)
                                    '#f)))
                          (if _$e159494_
                              (values _$e159494_)
                              (_import-source159484_ _npath159492_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159593_)
        (let ((_reload?159595_ '#f))
          (gx#core-import-module__% _rpath159593_ _reload?159595_))))
    (define gx#core-import-module
      (lambda _g165135_
        (let ((_g165134_ (##length _g165135_)))
          (cond ((##fx= _g165134_ 1)
                 (apply (lambda (_rpath159593_)
                          (gx#core-import-module__0 _rpath159593_))
                        _g165135_))
                ((##fx= _g165134_ 2)
                 (apply (lambda (_rpath159597_ _reload?159598_)
                          (gx#core-import-module__%
                           _rpath159597_
                           _reload?159598_))
                        _g165135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g165135_))))))
    (define gx#core-read-module
      (lambda (_path159470_)
        (with-catch
         (lambda (_exn159472_)
           (if (and (datum-parsing-exception? _exn159472_)
                    (eq? (datum-parsing-exception-filepos _exn159472_) '0))
               (gx#core-read-module/lang _path159470_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159470_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159474159476_)
                      (display-exception _exn159472_ _g159474159476_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159470_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159333_)
        (let _lp159335_ ((_body159337_ (read-syntax-from-file _path159333_))
                         (_pre159338_ '#f)
                         (_ns159339_ '#f)
                         (_pkg159340_ '#f))
          (let* ((_e159341159365_ _body159337_)
                 (_E159357159387_
                  (lambda ()
                    (let ((_g165136_
                           (if _pkg159340_
                               (values _pre159338_ _ns159339_ _pkg159340_)
                               (gx#core-read-module-package
                                _path159333_
                                _pre159338_
                                _ns159339_))))
                      (begin
                        (let ((_g165137_
                               (if (##values? _g165136_)
                                   (##vector-length _g165136_)
                                   1)))
                          (if (not (##fx= _g165137_ 3))
                              (error "Context expects 3 values" _g165137_)))
                        (let ((_pre159369_ (##vector-ref _g165136_ 0))
                              (_ns159370_ (##vector-ref _g165136_ 1))
                              (_pkg159371_ (##vector-ref _g165136_ 2)))
                          (let* ((_prelude159373_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159369_)
                                      (gx#syntax-local-e__0 _pre159369_)
                                      (if (gx#core-library-module-path?
                                           _pre159369_)
                                          (gx#core-resolve-library-module-path
                                           _pre159369_)
                                          (if (gx#stx-string? _pre159369_)
                                              (gx#core-resolve-module-path__%
                                               _pre159369_
                                               _path159333_)
                                              (gx#stx-e _pre159369_)))))
                                 (_path-id159375_
                                  (gx#core-module-path->namespace
                                   _path159333_))
                                 (_pkg-id159377_
                                  (if _pkg159371_
                                      (string-append
                                       _pkg159371_
                                       '"/"
                                       _path-id159375_)
                                      _path-id159375_))
                                 (_module-id159379_
                                  (string->symbol _pkg-id159377_))
                                 (_module-ns159384_
                                  (if (eq? _ns159370_ '#!void)
                                      '#f
                                      (let ((_$e159381_ _ns159370_))
                                        (if _$e159381_
                                            _$e159381_
                                            _pkg-id159377_)))))
                            (values _prelude159373_
                                    _module-id159379_
                                    _module-ns159384_
                                    _body159337_)))))))
                 (_E159350159416_
                  (lambda ()
                    (if (gx#stx-pair? _e159341159365_)
                        (let ((_e159358159391_ (gx#syntax-e _e159341159365_)))
                          (let ((_hd159359159394_ (##car _e159358159391_))
                                (_tl159360159396_ (##cdr _e159358159391_)))
                            (if (eq? (gx#stx-e _hd159359159394_) 'package:)
                                (if (gx#stx-pair? _tl159360159396_)
                                    (let ((_e159361159399_
                                           (gx#syntax-e _tl159360159396_)))
                                      (let ((_hd159362159402_
                                             (##car _e159361159399_))
                                            (_tl159363159404_
                                             (##cdr _e159361159399_)))
                                        (let* ((_pkg159407_ _hd159362159402_)
                                               (_rest159409_ _tl159363159404_))
                                          (if '#t
                                              (let ((_pkg159414_
                                                     (if (gx#identifier?
                                                          _pkg159407_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159407_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159407_)
                         (gx#stx-false? _pkg159407_))
                     (gx#stx-e _pkg159407_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159407_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159335_
                                                 _rest159409_
                                                 _pre159338_
                                                 _ns159339_
                                                 _pkg159414_))
                                              (_E159357159387_)))))
                                    (_E159357159387_))
                                (_E159357159387_))))
                        (_E159357159387_))))
                 (_E159343159442_
                  (lambda ()
                    (if (gx#stx-pair? _e159341159365_)
                        (let ((_e159351159420_ (gx#syntax-e _e159341159365_)))
                          (let ((_hd159352159423_ (##car _e159351159420_))
                                (_tl159353159425_ (##cdr _e159351159420_)))
                            (if (eq? (gx#stx-e _hd159352159423_) 'namespace:)
                                (if (gx#stx-pair? _tl159353159425_)
                                    (let ((_e159354159428_
                                           (gx#syntax-e _tl159353159425_)))
                                      (let ((_hd159355159431_
                                             (##car _e159354159428_))
                                            (_tl159356159433_
                                             (##cdr _e159354159428_)))
                                        (let* ((_ns159436_ _hd159355159431_)
                                               (_rest159438_ _tl159356159433_))
                                          (if '#t
                                              (let ((_ns159440_
                                                     (if (gx#identifier?
                                                          _ns159436_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159436_))
                                                         (if (gx#stx-string?
                                                              _ns159436_)
                                                             (gx#stx-e
                                                              _ns159436_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159436_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159436_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159335_
                                                 _rest159438_
                                                 _pre159338_
                                                 _ns159440_
                                                 _pkg159340_))
                                              (_E159350159416_)))))
                                    (_E159350159416_))
                                (_E159350159416_))))
                        (_E159350159416_))))
                 (_E159342159466_
                  (lambda ()
                    (if (gx#stx-pair? _e159341159365_)
                        (let ((_e159344159446_ (gx#syntax-e _e159341159365_)))
                          (let ((_hd159345159449_ (##car _e159344159446_))
                                (_tl159346159451_ (##cdr _e159344159446_)))
                            (if (eq? (gx#stx-e _hd159345159449_) 'prelude:)
                                (if (gx#stx-pair? _tl159346159451_)
                                    (let ((_e159347159454_
                                           (gx#syntax-e _tl159346159451_)))
                                      (let ((_hd159348159457_
                                             (##car _e159347159454_))
                                            (_tl159349159459_
                                             (##cdr _e159347159454_)))
                                        (let* ((_prelude159462_
                                                _hd159348159457_)
                                               (_rest159464_ _tl159349159459_))
                                          (if '#t
                                              (_lp159335_
                                               _rest159464_
                                               _prelude159462_
                                               _ns159339_
                                               _pkg159340_)
                                              (_E159343159442_)))))
                                    (_E159343159442_))
                                (_E159343159442_))))
                        (_E159343159442_)))))
            (_E159342159466_)))))
    (define gx#core-read-module/lang
      (lambda (_path159160_)
        (letrec ((_default-read-module-body159162_
                  (lambda (_inp159325_)
                    (let _lp159327_ ((_body159329_ '()))
                      (let ((_next159331_ (read-syntax _inp159325_)))
                        (if (eof-object? _next159331_)
                            (reverse _body159329_)
                            (_lp159327_ (cons _next159331_ _body159329_)))))))
                 (_read-body159163_
                  (lambda (_inp159244_
                           _pre159245_
                           _ns159246_
                           _pkg159247_
                           _args159248_)
                    (let ((_g165138_
                           (if _pkg159247_
                               (values _pre159245_ _ns159246_ _pkg159247_)
                               (gx#core-read-module-package
                                _path159160_
                                _pre159245_
                                _ns159246_))))
                      (begin
                        (let ((_g165139_
                               (if (##values? _g165138_)
                                   (##vector-length _g165138_)
                                   1)))
                          (if (not (##fx= _g165139_ 3))
                              (error "Context expects 3 values" _g165139_)))
                        (let ((_pre159250_ (##vector-ref _g165138_ 0))
                              (_ns159251_ (##vector-ref _g165138_ 1))
                              (_pkg159252_ (##vector-ref _g165138_ 2)))
                          (let* ((_prelude159254_
                                  (gx#import-module__0 _pre159250_))
                                 (_read-module-body159308_
                                  (let ((_$e159300_
                                         (find (lambda (_e159255159257_)
                                                 (let* ((_g159259159269_
                                                         _e159255159257_)
                                                        (_else159261159277_
                                                         (lambda () '#f))
                                                        (_K159263159281_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159259159269_
                                                        'gx#module-export::t)
                                                       (let* ((_e159264159284_
                                                               (##unchecked-structure-ref
                                                                _g159259159269_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159265159287_
                                                               (##unchecked-structure-ref
                                                                _g159259159269_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159266159290_
                                                               (##unchecked-structure-ref
                                                                _g159259159269_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159266159290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159267159293_
                            (##unchecked-structure-ref
                             _g159259159269_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159295159297_)
                              (eq? _g159295159297_ 'read-module-body))
                            _e159267159293_)
                           (_K159263159281_)
                           (_else159261159277_)))
                     (_else159261159277_)))
               (_else159261159277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159254_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159300_
                                        ((lambda (_xport159303_)
                                           (let ((_proc159306_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159303_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159306_)
                                                 _proc159306_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159160_
                                                  _pre159250_
                                                  _proc159306_))))
                                         _$e159300_)
                                        _default-read-module-body159162_)))
                                 (_path-id159310_
                                  (gx#core-module-path->namespace
                                   _path159160_))
                                 (_pkg-id159312_
                                  (if _pkg159252_
                                      (string-append
                                       _pkg159252_
                                       '"/"
                                       _path-id159310_)
                                      _path-id159310_))
                                 (_module-id159314_
                                  (string->symbol _pkg-id159312_))
                                 (_module-ns159319_
                                  (let ((_$e159316_ _ns159251_))
                                    (if _$e159316_ _$e159316_ _pkg-id159312_)))
                                 (_body159322_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159308_ _inp159244_))
                                   gx#current-module-reader-path
                                   _path159160_
                                   gx#current-module-reader-args
                                   _args159248_)))
                            (values _prelude159254_
                                    _module-id159314_
                                    _module-ns159319_
                                    _body159322_)))))))
                 (_string-e159164_
                  (lambda (_obj159241_ _what159242_)
                    (if (string? _obj159241_)
                        _obj159241_
                        (if (symbol? _obj159241_)
                            (symbol->string _obj159241_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159242_)
                             _path159160_
                             _obj159241_)))))
                 (_read-lang-args159165_
                  (lambda (_inp159196_ _args159197_)
                    (let* ((_args159198159206_ _args159197_)
                           (_else159200159214_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159160_)))
                           (_K159202159229_
                            (lambda (_args159217_ _prelude159218_)
                              (let* ((_pkg159220_
                                      (pgetq 'package: _args159217_))
                                     (_pkg159222_
                                      (if _pkg159220_
                                          (_string-e159164_
                                           _pkg159220_
                                           '"package")
                                          '#f))
                                     (_ns159224_
                                      (pgetq 'namespace: _args159217_))
                                     (_ns159226_
                                      (if _ns159224_
                                          (_string-e159164_
                                           _ns159224_
                                           '"namespace")
                                          '#f)))
                                (_read-body159163_
                                 _inp159196_
                                 _prelude159218_
                                 _ns159226_
                                 _pkg159222_
                                 _args159217_)))))
                      (if (##pair? _args159198159206_)
                          (let ((_hd159203159232_ (##car _args159198159206_))
                                (_tl159204159234_ (##cdr _args159198159206_)))
                            (let* ((_prelude159237_ _hd159203159232_)
                                   (_args159239_ _tl159204159234_))
                              (_K159202159229_ _args159239_ _prelude159237_)))
                          (_else159200159214_)))))
                 (_read-lang159166_
                  (lambda (_inp159171_)
                    (let* ((_head159173_ (read-line _inp159171_))
                           (_$e159175_ (string-index _head159173_ '#\space)))
                      (if _$e159175_
                          ((lambda (_ix159178_)
                             (let ((_lang159180_
                                    (substring _head159173_ '0 _ix159178_)))
                               (if (equal? _lang159180_ '"#lang")
                                   (let* ((_rest159182_
                                           (substring
                                            _head159173_
                                            (fx+ _ix159178_ '1)
                                            (string-length _head159173_)))
                                          (_args159193_
                                           (with-catch
                                            (lambda (_g159183159185_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159160_
                                               _g159183159185_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159182_
                                               (lambda (_g159188159190_)
                                                 (read-all
                                                  _g159188159190_
                                                  read)))))))
                                     (_read-lang-args159165_
                                      _inp159171_
                                      _args159193_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159160_))))
                           _$e159175_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159160_)))))
                 (_read-e159167_
                  (lambda (_inp159169_)
                    (if (eq? (peek-char _inp159169_) '#\#)
                        (_read-lang159166_ _inp159169_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159160_)))))
          (gx#call-with-input-source-file _path159160_ _read-e159167_))))
    (define gx#core-read-module-package
      (lambda (_path159114_ _pre159115_ _ns159116_)
        (letrec ((_string-e159118_
                  (lambda (_e159158_)
                    (if (symbol? _e159158_)
                        (symbol->string _e159158_)
                        (if (string? _e159158_)
                            _e159158_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159158_))))))
          (let _lp159120_ ((_dir159122_ (path-directory _path159114_))
                           (_pkg-path159123_ '()))
            (let ((_gerbil.pkg159125_ (path-expand '"gerbil.pkg" _dir159122_)))
              (if (file-exists? _gerbil.pkg159125_)
                  (let ((_plist159127_
                         (gx#core-library-package-plist__% _dir159122_ '#t)))
                    (if (null? _plist159127_)
                        (let ((_pkg159129_
                               (if (not (null? _pkg-path159123_))
                                   (string-join _pkg-path159123_ '"/")
                                   '#f)))
                          (values _pre159115_ _ns159116_ _pkg159129_))
                        (if (list? _plist159127_)
                            (let* ((_root159131_
                                    (pgetq 'package: _plist159127_))
                                   (_pkg159135_
                                    (let ((_pkg-path159133_
                                           (if _root159131_
                                               (cons (_string-e159118_
                                                      _root159131_)
                                                     _pkg-path159123_)
                                               _pkg-path159123_)))
                                      (if (not (null? _pkg-path159133_))
                                          (string-join _pkg-path159133_ '"/")
                                          '#f)))
                                   (_ns159142_
                                    (let ((_ns159140_
                                           (let ((_$e159137_ _ns159116_))
                                             (if _$e159137_
                                                 _$e159137_
                                                 (pgetq 'namespace:
                                                        _plist159127_)))))
                                      (if _ns159140_
                                          (_string-e159118_ _ns159140_)
                                          '#f)))
                                   (_pre159147_
                                    (let ((_$e159144_ _pre159115_))
                                      (if _$e159144_
                                          _$e159144_
                                          (pgetq 'prelude: _plist159127_)))))
                              (values _pre159147_ _ns159142_ _pkg159135_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159127_))))
                  (let ((_dir*159150_
                         (path-strip-trailing-directory-separator
                          _dir159122_)))
                    (if (or (string-empty? _dir*159150_)
                            (equal? _dir159122_ _dir*159150_))
                        (values _pre159115_ _ns159116_ '#f)
                        (let ((_xpath159155_
                               (path-strip-directory _dir*159150_))
                              (_xdir159156_ (path-directory _dir*159150_)))
                          (_lp159120_
                           _xdir159156_
                           (cons _xpath159155_ _pkg-path159123_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159112_)
        (path-strip-extension (path-strip-directory _path159112_))))
    (define gx#core-module-path->id
      (lambda (_path159110_)
        (string->symbol (gx#core-module-path->namespace _path159110_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159089_ _rel159090_)
        (let* ((_path159092_ (gx#stx-e _stx-path159089_))
               (_path159094_
                (if (string-empty? (path-extension _path159092_))
                    (string-append _path159092_ '".ss")
                    _path159092_)))
          (gx#core-resolve-path__%
           _path159094_
           (let ((_$e159097_ (gx#stx-source _stx-path159089_)))
             (if _$e159097_ _$e159097_ _rel159090_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159103_)
        (let ((_rel159105_ '#f))
          (gx#core-resolve-module-path__% _stx-path159103_ _rel159105_))))
    (define gx#core-resolve-module-path
      (lambda _g165141_
        (let ((_g165140_ (##length _g165141_)))
          (cond ((##fx= _g165140_ 1)
                 (apply (lambda (_stx-path159103_)
                          (gx#core-resolve-module-path__0 _stx-path159103_))
                        _g165141_))
                ((##fx= _g165140_ 2)
                 (apply (lambda (_stx-path159107_ _rel159108_)
                          (gx#core-resolve-module-path__%
                           _stx-path159107_
                           _rel159108_))
                        _g165141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g165141_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath158975_)
        (let* ((_spath158977_ (symbol->string (gx#stx-e _libpath158975_)))
               (_spath158979_
                (substring _spath158977_ '1 (string-length _spath158977_)))
               (_ext158981_ (path-extension _spath158979_))
               (_ssi158983_
                (if (string-empty? _ext158981_)
                    (string-append _spath158979_ '".ssi")
                    (string-append
                     (path-strip-extension _spath158979_)
                     '".ssi")))
               (_srcs158987_
                (if (string-empty? _ext158981_)
                    (map (lambda (_ext158985_)
                           (string-append _spath158979_ _ext158985_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath158979_ '()))))
          (let _lp158990_ ((_rest158992_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest158993159002_ _rest158992_)
                   (_E158996159006_
                    (lambda ()
                      (error '"No clause matching" _rest158993159002_))))
              (let ((_K158998159076_
                     (lambda (_rest159017_ _dir159018_)
                       (letrec ((_resolve159020_
                                 (lambda (_ssi159032_ _srcs159033_)
                                   (let ((_compiled-path159035_
                                          (path-expand
                                           _ssi159032_
                                           _dir159018_)))
                                     (if (file-exists? _compiled-path159035_)
                                         (path-normalize _compiled-path159035_)
                                         (let _lpr159037_ ((_rest-src159039_
                                                            _srcs159033_))
                                           (let* ((_rest-src159040159048_
                                                   _rest-src159039_)
                                                  (_else159042159056_
                                                   (lambda ()
                                                     (_lp158990_
                                                      _rest159017_)))
                                                  (_K159044159064_
                                                   (lambda (_rest-src159059_
                                                            _src159060_)
                                                     (let ((_src-path159062_
                                                            (path-expand
                                                             _src159060_
                                                             _dir159018_)))
                                                       (if (file-exists?
                                                            _src-path159062_)
                                                           (path-normalize
                                                            _src-path159062_)
                                                           (_lpr159037_
                                                            _rest-src159059_))))))
                                             (if (##pair? _rest-src159040159048_)
                                                 (let ((_hd159045159067_
                                                        (##car _rest-src159040159048_))
                                                       (_tl159046159069_
                                                        (##cdr _rest-src159040159048_)))
                                                   (let* ((_src159072_
                                                           _hd159045159067_)
                                                          (_rest-src159074_
                                                           _tl159046159069_))
                                                     (_K159044159064_
                                                      _rest-src159074_
                                                      _src159072_)))
                                                 (_else159042159056_)))))))))
                         (let ((_$e159022_
                                (gx#core-library-package-path-prefix
                                 _dir159018_)))
                           (if _$e159022_
                               ((lambda (_prefix159025_)
                                  (if (string-prefix?
                                       _prefix159025_
                                       _spath158979_)
                                      (let ((_ssi159029_
                                             (substring
                                              _ssi158983_
                                              (string-length _prefix159025_)
                                              (string-length _ssi158983_)))
                                            (_srcs159030_
                                             (map (lambda (_src159027_)
                                                    (substring
                                                     _src159027_
                                                     (string-length
                                                      _prefix159025_)
                                                     (string-length
                                                      _src159027_)))
                                                  _srcs158987_)))
                                        (_resolve159020_
                                         _ssi159029_
                                         _srcs159030_))
                                      (_lp158990_ _rest159017_)))
                                _$e159022_)
                               (_resolve159020_ _ssi158983_ _srcs158987_))))))
                    (_K158997159011_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath158975_))))
                (let ((_try-match158995159014_
                       (lambda ()
                         (if (##null? _rest158993159002_)
                             (_K158997159011_)
                             (_E158996159006_)))))
                  (if (##pair? _rest158993159002_)
                      (let ((_tl159000159081_ (##cdr _rest158993159002_))
                            (_hd158999159079_ (##car _rest158993159002_)))
                        (let ((_dir159084_ _hd158999159079_)
                              (_rest159086_ _tl159000159081_))
                          (_K158998159076_ _rest159086_ _dir159084_)))
                      (_try-match158995159014_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath158948_)
        (letrec ((_resolve158950_
                  (lambda (_path158967_ _base158968_)
                    (let ((_$e158970_ (string-rindex _base158968_ '#\/)))
                      (if _$e158970_
                          ((lambda (_idx158973_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base158968_ '0 _idx158973_)
                                '"/"
                                _path158967_))))
                           _$e158970_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path158967_))))))))
          (let ((_spath158952_ (symbol->string (gx#stx-e _modpath158948_)))
                (_mod158953_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod158953_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath158948_))
            (let ((_mpath158955_
                   (symbol->string
                    (##structure-ref
                     _mod158953_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp158957_ ((_spath158959_ _spath158952_)
                               (_mpath158960_ _mpath158955_))
                (if (string-prefix? '"../" _spath158959_)
                    (let ((_$e158962_ (string-rindex _mpath158960_ '#\/)))
                      (if _$e158962_
                          ((lambda (_idx158965_)
                             (_lp158957_
                              (substring
                               _spath158959_
                               '3
                               (string-length _spath158959_))
                              (substring _mpath158960_ '0 _idx158965_)))
                           _$e158962_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath158948_)))
                    (if (string-prefix? '"./" _spath158959_)
                        (_lp158957_
                         (substring
                          _spath158959_
                          '2
                          (string-length _spath158959_))
                         _mpath158960_)
                        (_resolve158950_ _spath158959_ _mpath158960_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir158941_)
        (let ((_$e158943_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir158941_))))
          (if _$e158943_
              ((lambda (_pkg158946_)
                 (string-append (symbol->string _pkg158946_) '"/"))
               _$e158943_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir158913_ _exists?158914_)
        (let* ((_cache158916_ (gx#core-library-package-cache))
               (_$e158918_ (table-ref _cache158916_ _dir158913_ '#f)))
          (if _$e158918_
              (values _$e158918_)
              (let* ((_gerbil.pkg158921_
                      (path-expand '"gerbil.pkg" _dir158913_))
                     (_plist158928_
                      (if (or _exists?158914_
                              (file-exists? _gerbil.pkg158921_))
                          (let ((_e158926_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg158921_
                                  read)))
                            (if (eof-object? _e158926_)
                                '()
                                (if (list? _e158926_)
                                    _e158926_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg158921_
                                     _e158926_))))
                          '())))
                (table-set! _cache158916_ _dir158913_ _plist158928_)
                _plist158928_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir158934_)
        (let ((_exists?158936_ '#f))
          (gx#core-library-package-plist__% _dir158934_ _exists?158936_))))
    (define gx#core-library-package-plist
      (lambda _g165143_
        (let ((_g165142_ (##length _g165143_)))
          (cond ((##fx= _g165142_ 1)
                 (apply (lambda (_dir158934_)
                          (gx#core-library-package-plist__0 _dir158934_))
                        _g165143_))
                ((##fx= _g165142_ 2)
                 (apply (lambda (_dir158938_ _exists?158939_)
                          (gx#core-library-package-plist__%
                           _dir158938_
                           _exists?158939_))
                        _g165143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g165143_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e158907_ (gx#current-expander-module-library-package-cache)))
          (if _$e158907_
              (values _$e158907_)
              (let ((_cache158910_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache158910_)
                _cache158910_)))))
    (define gx#core-library-module-path?
      (lambda (_stx158904_) (gx#core-special-module-path? _stx158904_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx158902_) (gx#core-special-module-path? _stx158902_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx158897_ _char158898_)
        (if (gx#identifier? _stx158897_)
            (if (interned-symbol? (gx#stx-e _stx158897_))
                (let ((_str158900_ (symbol->string (gx#stx-e _stx158897_))))
                  (if (fx> (string-length _str158900_) '1)
                      (eq? (string-ref _str158900_ '0) _char158898_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx158891_)
        (gx#core-bound-identifier?__%
         _stx158891_
         (lambda (_g158892158894_)
           (gx#expander-binding?__% _g158892158894_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx158885_)
        (gx#core-bound-identifier?__%
         _stx158885_
         (lambda (_g158886158888_)
           (gx#expander-binding?__% _g158886158888_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx158872_)
        (letrec ((_module-prelude?158874_
                  (lambda (_e158880_)
                    (let ((_$e158882_
                           (##structure-instance-of?
                            _e158880_
                            'gx#module-context::t)))
                      (if _$e158882_
                          _$e158882_
                          (##structure-instance-of?
                           _e158880_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx158872_
           (lambda (_g158875158877_)
             (gx#expander-binding?__%
              _g158875158877_
              _module-prelude?158874_))))))
    (define gx#core-bind-import!__%
      (lambda (_in158802_ _ctx158803_ _force-weak?158804_)
        (let* ((_in158805158814_ _in158802_)
               (_E158807158818_
                (lambda () (error '"No clause matching" _in158805158814_)))
               (_K158808158831_
                (lambda (_weak?158821_ _phi158822_ _key158823_ _source158824_)
                  (gx#core-bind!__%
                   _key158823_
                   (let ((_e158826_
                          (gx#core-resolve-module-export _source158824_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e158826_
                       '1
                       gx#binding::t
                       '#f)
                      _key158823_
                      _phi158822_
                      _e158826_
                      (##unchecked-structure-ref
                       _source158824_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e158828_ _force-weak?158804_))
                        (if _$e158828_ _$e158828_ _weak?158821_))))
                   gx#core-context-rebind?
                   _phi158822_
                   _ctx158803_))))
          (if (##structure-direct-instance-of?
               _in158805158814_
               'gx#module-import::t)
              (let* ((_e158809158834_
                      (##unchecked-structure-ref
                       _in158805158814_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source158837_ _e158809158834_)
                     (_e158810158839_
                      (##unchecked-structure-ref
                       _in158805158814_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key158842_ _e158810158839_)
                     (_e158811158844_
                      (##unchecked-structure-ref
                       _in158805158814_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi158847_ _e158811158844_)
                     (_e158812158849_
                      (##unchecked-structure-ref
                       _in158805158814_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?158852_ _e158812158849_))
                (_K158808158831_
                 _weak?158852_
                 _phi158847_
                 _key158842_
                 _source158837_))
              (_E158807158818_)))))
    (define gx#core-bind-import!__0
      (lambda (_in158857_)
        (let* ((_ctx158859_ (gx#current-expander-context))
               (_force-weak?158861_ '#f))
          (gx#core-bind-import!__%
           _in158857_
           _ctx158859_
           _force-weak?158861_))))
    (define gx#core-bind-import!__1
      (lambda (_in158863_ _ctx158864_)
        (let ((_force-weak?158866_ '#f))
          (gx#core-bind-import!__%
           _in158863_
           _ctx158864_
           _force-weak?158866_))))
    (define gx#core-bind-import!
      (lambda _g165145_
        (let ((_g165144_ (##length _g165145_)))
          (cond ((##fx= _g165144_ 1)
                 (apply (lambda (_in158857_)
                          (gx#core-bind-import!__0 _in158857_))
                        _g165145_))
                ((##fx= _g165144_ 2)
                 (apply (lambda (_in158863_ _ctx158864_)
                          (gx#core-bind-import!__1 _in158863_ _ctx158864_))
                        _g165145_))
                ((##fx= _g165144_ 3)
                 (apply (lambda (_in158868_ _ctx158869_ _force-weak?158870_)
                          (gx#core-bind-import!__%
                           _in158868_
                           _ctx158869_
                           _force-weak?158870_))
                        _g165145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g165145_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in158788_ _ctx158789_)
        (gx#core-bind-import!__% _in158788_ _ctx158789_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in158794_)
        (let ((_ctx158796_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in158794_ _ctx158796_))))
    (define gx#core-bind-weak-import!
      (lambda _g165147_
        (let ((_g165146_ (##length _g165147_)))
          (cond ((##fx= _g165146_ 1)
                 (apply (lambda (_in158794_)
                          (gx#core-bind-weak-import!__0 _in158794_))
                        _g165147_))
                ((##fx= _g165146_ 2)
                 (apply (lambda (_in158798_ _ctx158799_)
                          (gx#core-bind-weak-import!__%
                           _in158798_
                           _ctx158799_))
                        _g165147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g165147_))))))
    (define gx#core-resolve-module-export
      (lambda (_out158679_)
        (letrec ((_subst158681_
                  (lambda (_key158727_)
                    (let* ((_key158728158736_ _key158727_)
                           (_else158730158744_ (lambda () _key158727_))
                           (_K158732158775_
                            (lambda (_mark158747_ _id158748_)
                              (let* ((_mark158749158755_ _mark158747_)
                                     (_E158751158759_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark158749158755_)))
                                     (_K158752158767_
                                      (lambda (_subst158762_)
                                        (let ((_$e158764_
                                               (if _subst158762_
                                                   (table-ref
                                                    _subst158762_
                                                    _id158748_
                                                    '#f)
                                                   '#f)))
                                          (if _$e158764_
                                              _$e158764_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key158727_))))))
                                (if (##structure-instance-of?
                                     _mark158749158755_
                                     'gx#expander-mark::t)
                                    (let* ((_e158753158770_
                                            (##unchecked-structure-ref
                                             _mark158749158755_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst158773_ _e158753158770_))
                                      (_K158752158767_ _subst158773_))
                                    (_E158751158759_))))))
                      (if (##pair? _key158728158736_)
                          (let ((_hd158733158778_ (##car _key158728158736_))
                                (_tl158734158780_ (##cdr _key158728158736_)))
                            (let* ((_id158783_ _hd158733158778_)
                                   (_mark158785_ _tl158734158780_))
                              (_K158732158775_ _mark158785_ _id158783_)))
                          (_else158730158744_))))))
          (let* ((_out158682158692_ _out158679_)
                 (_E158684158696_
                  (lambda () (error '"No clause matching" _out158682158692_)))
                 (_K158685158703_
                  (lambda (_phi158699_ _key158700_ _ctx158701_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx158701_ _phi158699_)
                     (_subst158681_ _key158700_)))))
            (if (##structure-direct-instance-of?
                 _out158682158692_
                 'gx#module-export::t)
                (let* ((_e158686158706_
                        (##unchecked-structure-ref
                         _out158682158692_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx158709_ _e158686158706_)
                       (_e158687158711_
                        (##unchecked-structure-ref
                         _out158682158692_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key158714_ _e158687158711_)
                       (_e158688158716_
                        (##unchecked-structure-ref
                         _out158682158692_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi158719_ _e158688158716_)
                       (_e158689158721_
                        (##unchecked-structure-ref
                         _out158682158692_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e158690158724_
                        (##unchecked-structure-ref
                         _out158682158692_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K158685158703_ _phi158719_ _key158714_ _ctx158709_))
                (_E158684158696_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158604_ _rename158605_ _dphi158606_)
        (let* ((_out158607158617_ _out158604_)
               (_E158609158621_
                (lambda () (error '"No clause matching" _out158607158617_)))
               (_K158610158633_
                (lambda (_weak?158624_
                         _name158625_
                         _phi158626_
                         _key158627_
                         _ctx158628_)
                  (##structure
                   gx#module-import::t
                   _out158604_
                   (let ((_$e158630_ _rename158605_))
                     (if _$e158630_ _$e158630_ _name158625_))
                   (fx+ _phi158626_ _dphi158606_)
                   _weak?158624_))))
          (if (##structure-direct-instance-of?
               _out158607158617_
               'gx#module-export::t)
              (let* ((_e158611158636_
                      (##unchecked-structure-ref
                       _out158607158617_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158639_ _e158611158636_)
                     (_e158612158641_
                      (##unchecked-structure-ref
                       _out158607158617_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158644_ _e158612158641_)
                     (_e158613158646_
                      (##unchecked-structure-ref
                       _out158607158617_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158649_ _e158613158646_)
                     (_e158614158651_
                      (##unchecked-structure-ref
                       _out158607158617_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158654_ _e158614158651_)
                     (_e158615158656_
                      (##unchecked-structure-ref
                       _out158607158617_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?158659_ _e158615158656_))
                (_K158610158633_
                 _weak?158659_
                 _name158654_
                 _phi158649_
                 _key158644_
                 _ctx158639_))
              (_E158609158621_)))))
    (define gx#core-module-export->import__0
      (lambda (_out158664_)
        (let* ((_rename158666_ '#f) (_dphi158668_ '0))
          (gx#core-module-export->import__%
           _out158664_
           _rename158666_
           _dphi158668_))))
    (define gx#core-module-export->import__1
      (lambda (_out158670_ _rename158671_)
        (let ((_dphi158673_ '0))
          (gx#core-module-export->import__%
           _out158670_
           _rename158671_
           _dphi158673_))))
    (define gx#core-module-export->import
      (lambda _g165149_
        (let ((_g165148_ (##length _g165149_)))
          (cond ((##fx= _g165148_ 1)
                 (apply (lambda (_out158664_)
                          (gx#core-module-export->import__0 _out158664_))
                        _g165149_))
                ((##fx= _g165148_ 2)
                 (apply (lambda (_out158670_ _rename158671_)
                          (gx#core-module-export->import__1
                           _out158670_
                           _rename158671_))
                        _g165149_))
                ((##fx= _g165148_ 3)
                 (apply (lambda (_out158675_ _rename158676_ _dphi158677_)
                          (gx#core-module-export->import__%
                           _out158675_
                           _rename158676_
                           _dphi158677_))
                        _g165149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g165149_))))))
    (define gx#core-expand-module%
      (lambda (_stx158532_)
        (letrec ((_make-context158534_
                  (lambda (_id158585_)
                    (let* ((_super158587_ (gx#current-expander-context))
                           (_bind-id158589_ (gx#stx-e _id158585_))
                           (_mod-id158591_
                            (if (##structure-instance-of?
                                 _super158587_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158587_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158589_)
                                _bind-id158589_))
                           (_ns158593_ (symbol->string _mod-id158591_))
                           (_path158600_
                            (if (##structure-instance-of?
                                 _super158587_
                                 'gx#module-context::t)
                                (let ((_path158595_
                                       (##unchecked-structure-ref
                                        _super158587_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158595_)
                                          (null? _path158595_))
                                      (cons _bind-id158589_ _path158595_)
                                      (if (not _path158595_)
                                          _bind-id158589_
                                          (cons _bind-id158589_
                                                (cons _path158595_ '())))))
                                _bind-id158589_)))
                      (let ((__obj165125
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
                         __obj165125
                         _mod-id158591_
                         _super158587_
                         _ns158593_
                         _path158600_)
                        __obj165125)))))
          (let* ((_e158535158545_ _stx158532_)
                 (_E158537158549_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158535158545_)))
                 (_E158536158581_
                  (lambda ()
                    (if (gx#stx-pair? _e158535158545_)
                        (let ((_e158538158553_ (gx#syntax-e _e158535158545_)))
                          (let ((_hd158539158556_ (##car _e158538158553_))
                                (_tl158540158558_ (##cdr _e158538158553_)))
                            (if (gx#stx-pair? _tl158540158558_)
                                (let ((_e158541158561_
                                       (gx#syntax-e _tl158540158558_)))
                                  (let ((_hd158542158564_
                                         (##car _e158541158561_))
                                        (_tl158543158566_
                                         (##cdr _e158541158561_)))
                                    (let* ((_id158569_ _hd158542158564_)
                                           (_body158571_ _tl158543158566_))
                                      (if (and (gx#identifier? _id158569_)
                                               (gx#stx-list? _body158571_))
                                          (let* ((_ctx158573_
                                                  (_make-context158534_
                                                   _id158569_))
                                                 (_body158575_
                                                  (gx#core-expand-module-begin
                                                   _body158571_
                                                   _ctx158573_))
                                                 (_body158577_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158575_)
                                                   (gx#stx-source
                                                    _stx158532_))))
                                            (##unchecked-structure-set!
                                             _ctx158573_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158577_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158573_
                                             _body158577_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158569_
                                             _ctx158573_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158569_)
                                              _body158577_)
                                             (gx#stx-source _stx158532_)))
                                          (_E158537158549_)))))
                                (_E158537158549_))))
                        (_E158537158549_)))))
            (_E158536158581_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158498_ _ctx158499_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158502_
                   (gx#core-expand-head (cons '%%begin-module _body158498_)))
                  (_e158503158510_ _stx158502_)
                  (_E158505158514_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158502_)))
                  (_E158504158528_
                   (lambda ()
                     (if (gx#stx-pair? _e158503158510_)
                         (let ((_e158506158518_ (gx#syntax-e _e158503158510_)))
                           (let ((_hd158507158521_ (##car _e158506158518_))
                                 (_tl158508158523_ (##cdr _e158506158518_)))
                             (if (and (gx#identifier? _hd158507158521_)
                                      (gx#core-identifier=?
                                       _hd158507158521_
                                       '%#begin-module))
                                 (let ((_body158526_ _tl158508158523_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158502_)
                                           _body158526_
                                           (gx#core-expand-module-body
                                            _body158526_))
                                       (_E158505158514_)))
                                 (_E158505158514_))))
                         (_E158505158514_)))))
             (_E158504158528_)))
         gx#current-expander-context
         _ctx158499_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158294_)
        (letrec ((_expand-special158296_
                  (lambda (_hd158425_ _K158426_ _rest158427_ _r158428_)
                    (let* ((_e158429158446_ _hd158425_)
                           (_E158441158450_
                            (lambda ()
                              (_K158426_
                               _rest158427_
                               (cons (gx#core-expand-top _hd158425_)
                                     _r158428_))))
                           (_E158431158462_
                            (lambda ()
                              (if (gx#stx-pair? _e158429158446_)
                                  (let ((_e158442158454_
                                         (gx#syntax-e _e158429158446_)))
                                    (let ((_hd158443158457_
                                           (##car _e158442158454_))
                                          (_tl158444158459_
                                           (##cdr _e158442158454_)))
                                      (if (and (gx#identifier?
                                                _hd158443158457_)
                                               (gx#core-identifier=?
                                                _hd158443158457_
                                                '%#export))
                                          (if '#t
                                              (_K158426_
                                               _rest158427_
                                               (cons _hd158425_ _r158428_))
                                              (_E158441158450_))
                                          (_E158441158450_))))
                                  (_E158441158450_))))
                           (_E158430158494_
                            (lambda ()
                              (if (gx#stx-pair? _e158429158446_)
                                  (let ((_e158432158466_
                                         (gx#syntax-e _e158429158446_)))
                                    (let ((_hd158433158469_
                                           (##car _e158432158466_))
                                          (_tl158434158471_
                                           (##cdr _e158432158466_)))
                                      (if (and (gx#identifier?
                                                _hd158433158469_)
                                               (gx#core-identifier=?
                                                _hd158433158469_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158434158471_)
                                              (let ((_e158435158474_
                                                     (gx#syntax-e
                                                      _tl158434158471_)))
                                                (let ((_hd158436158477_
                                                       (##car _e158435158474_))
                                                      (_tl158437158479_
                                                       (##cdr _e158435158474_)))
                                                  (let ((_hd-bind158482_
                                                         _hd158436158477_))
                                                    (if (gx#stx-pair?
                                                         _tl158437158479_)
                                                        (let ((_e158438158484_
                                                               (gx#syntax-e
                                                                _tl158437158479_)))
                                                          (let ((_hd158439158487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158438158484_))
                        (_tl158440158489_ (##cdr _e158438158484_)))
                    (let ((_expr158492_ _hd158439158487_))
                      (if (gx#stx-null? _tl158440158489_)
                          (if (gx#core-bind-values? _hd-bind158482_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158482_)
                                (_K158426_
                                 _rest158427_
                                 (cons _hd158425_ _r158428_)))
                              (_E158431158462_))
                          (_E158431158462_)))))
                (_E158431158462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158431158462_))
                                          (_E158431158462_))))
                                  (_E158431158462_)))))
                      (_E158430158494_))))
                 (_expand-body158297_
                  (lambda (_rbody158299_)
                    (let _lp158301_ ((_rest158303_ _rbody158299_)
                                     (_body158304_ '()))
                      (let* ((_rest158305158313_ _rest158303_)
                             (_else158307158321_ (lambda () _body158304_))
                             (_K158309158413_
                              (lambda (_rest158324_ _hd158325_)
                                (let* ((_e158326158347_ _hd158325_)
                                       (_E158342158351_
                                        (lambda ()
                                          (_lp158301_
                                           _rest158324_
                                           (cons (gx#core-expand-expression
                                                  _hd158325_)
                                                 _body158304_))))
                                       (_E158338158365_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158326158347_)
                                              (let ((_e158343158355_
                                                     (gx#syntax-e
                                                      _e158326158347_)))
                                                (let ((_hd158344158358_
                                                       (##car _e158343158355_))
                                                      (_tl158345158360_
                                                       (##cdr _e158343158355_)))
                                                  (let ((_form158363_
                                                         _hd158344158358_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158363_
                                                         gx#special-form-binding?)
                                                        (_lp158301_
                                                         _rest158324_
                                                         (cons _hd158325_
                                                               _body158304_))
                                                        (_E158342158351_)))))
                                              (_E158342158351_))))
                                       (_E158328158377_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158326158347_)
                                              (let ((_e158339158369_
                                                     (gx#syntax-e
                                                      _e158326158347_)))
                                                (let ((_hd158340158372_
                                                       (##car _e158339158369_))
                                                      (_tl158341158374_
                                                       (##cdr _e158339158369_)))
                                                  (if (and (gx#identifier?
                                                            _hd158340158372_)
                                                           (gx#core-identifier=?
                                                            _hd158340158372_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158301_
                                                           _rest158324_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158325_)
                         _body158304_))
                  (_E158338158365_))
              (_E158338158365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158338158365_))))
                                       (_E158327158409_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158326158347_)
                                              (let ((_e158329158381_
                                                     (gx#syntax-e
                                                      _e158326158347_)))
                                                (let ((_hd158330158384_
                                                       (##car _e158329158381_))
                                                      (_tl158331158386_
                                                       (##cdr _e158329158381_)))
                                                  (if (and (gx#identifier?
                                                            _hd158330158384_)
                                                           (gx#core-identifier=?
                                                            _hd158330158384_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158331158386_)
                                                          (let ((_e158332158389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158331158386_)))
                    (let ((_hd158333158392_ (##car _e158332158389_))
                          (_tl158334158394_ (##cdr _e158332158389_)))
                      (let ((_hd-bind158397_ _hd158333158392_))
                        (if (gx#stx-pair? _tl158334158394_)
                            (let ((_e158335158399_
                                   (gx#syntax-e _tl158334158394_)))
                              (let ((_hd158336158402_ (##car _e158335158399_))
                                    (_tl158337158404_ (##cdr _e158335158399_)))
                                (let ((_expr158407_ _hd158336158402_))
                                  (if (gx#stx-null? _tl158337158404_)
                                      (if '#t
                                          (_lp158301_
                                           _rest158324_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158397_)
                                                   (gx#core-expand-expression
                                                    _expr158407_))
                                                  (gx#stx-source _hd158325_))
                                                 _body158304_))
                                          (_E158328158377_))
                                      (_E158328158377_)))))
                            (_E158328158377_)))))
                  (_E158328158377_))
              (_E158328158377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158328158377_)))))
                                  (_E158327158409_)))))
                        (if (##pair? _rest158305158313_)
                            (let ((_hd158310158416_ (##car _rest158305158313_))
                                  (_tl158311158418_
                                   (##cdr _rest158305158313_)))
                              (let* ((_hd158421_ _hd158310158416_)
                                     (_rest158423_ _tl158311158418_))
                                (_K158309158413_ _rest158423_ _hd158421_)))
                            (_else158307158321_)))))))
          (_expand-body158297_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158294_)
            _expand-special158296_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158137_
               _expanded?158138_
               _method158139_
               _current-phi158140_
               _expand1158141_)
        (letrec ((_K158143_
                  (lambda (_rest158261_ _r158262_)
                    (let* ((_e158263158270_ _rest158261_)
                           (_E158265158274_ (lambda () _r158262_))
                           (_E158264158290_
                            (lambda ()
                              (if (gx#stx-pair? _e158263158270_)
                                  (let ((_e158266158278_
                                         (gx#syntax-e _e158263158270_)))
                                    (let ((_hd158267158281_
                                           (##car _e158266158278_))
                                          (_tl158268158283_
                                           (##cdr _e158266158278_)))
                                      (let* ((_hd158286_ _hd158267158281_)
                                             (_rest158288_ _tl158268158283_))
                                        (if '#t
                                            (_step158144_
                                             _hd158286_
                                             _rest158288_
                                             _r158262_)
                                            (_E158265158274_)))))
                                  (_E158265158274_)))))
                      (_E158264158290_))))
                 (_step158144_
                  (lambda (_hd158175_ _rest158176_ _r158177_)
                    (let* ((_e158178158196_ _hd158175_)
                           (_E158191158200_
                            (lambda ()
                              (if (_expanded?158138_ (gx#stx-e _hd158175_))
                                  (_K158143_
                                   _rest158176_
                                   (cons (gx#stx-e _hd158175_) _r158177_))
                                  (_expand1158141_
                                   _hd158175_
                                   _K158143_
                                   _rest158176_
                                   _r158177_))))
                           (_E158187158216_
                            (lambda ()
                              (if (gx#stx-pair? _e158178158196_)
                                  (let ((_e158192158204_
                                         (gx#syntax-e _e158178158196_)))
                                    (let ((_hd158193158207_
                                           (##car _e158192158204_))
                                          (_tl158194158209_
                                           (##cdr _e158192158204_)))
                                      (let* ((_macro158212_ _hd158193158207_)
                                             (_body158214_ _tl158194158209_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158212_
                                             gx#syntax-binding?)
                                            (_K158143_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158212_)
                                                    _hd158175_
                                                    _method158139_)
                                                   _rest158176_)
                                             _r158177_)
                                            (_E158191158200_)))))
                                  (_E158191158200_))))
                           (_E158180158230_
                            (lambda ()
                              (if (gx#stx-pair? _e158178158196_)
                                  (let ((_e158188158220_
                                         (gx#syntax-e _e158178158196_)))
                                    (let ((_hd158189158223_
                                           (##car _e158188158220_))
                                          (_tl158190158225_
                                           (##cdr _e158188158220_)))
                                      (if (eq? (gx#stx-e _hd158189158223_)
                                               'begin:)
                                          (let ((_body158228_
                                                 _tl158190158225_))
                                            (if '#t
                                                (_K158143_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158176_
                                                  _body158228_)
                                                 _r158177_)
                                                (_E158187158216_)))
                                          (_E158187158216_))))
                                  (_E158187158216_))))
                           (_E158179158257_
                            (lambda ()
                              (if (gx#stx-pair? _e158178158196_)
                                  (let ((_e158181158234_
                                         (gx#syntax-e _e158178158196_)))
                                    (let ((_hd158182158237_
                                           (##car _e158181158234_))
                                          (_tl158183158239_
                                           (##cdr _e158181158234_)))
                                      (if (eq? (gx#stx-e _hd158182158237_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158183158239_)
                                              (let ((_e158184158242_
                                                     (gx#syntax-e
                                                      _tl158183158239_)))
                                                (let ((_hd158185158245_
                                                       (##car _e158184158242_))
                                                      (_tl158186158247_
                                                       (##cdr _e158184158242_)))
                                                  (let* ((_dphi158250_
                                                          _hd158185158245_)
                                                         (_body158252_
                                                          _tl158186158247_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158250_)
                                                        (let ((_rbody158255_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158143_ _body158252_ '()))
                        _current-phi158140_
                        (fx+ (gx#stx-e _dphi158250_) (_current-phi158140_)))))
                  (_K158143_
                   _rest158176_
                   (foldr1 cons _r158177_ _rbody158255_)))
                (_E158180158230_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158180158230_))
                                          (_E158180158230_))))
                                  (_E158180158230_)))))
                      (_E158179158257_)))))
          (let* ((_e158145158152_ _stx158137_)
                 (_E158147158156_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158145158152_)))
                 (_E158146158171_
                  (lambda ()
                    (if (gx#stx-pair? _e158145158152_)
                        (let ((_e158148158160_ (gx#syntax-e _e158145158152_)))
                          (let ((_hd158149158163_ (##car _e158148158160_))
                                (_tl158150158165_ (##cdr _e158148158160_)))
                            (let ((_body158168_ _tl158150158165_))
                              (if '#t
                                  (if (_current-phi158140_)
                                      (_K158143_ _body158168_ '())
                                      (call-with-parameters
                                       (lambda () (_K158143_ _body158168_ '()))
                                       _current-phi158140_
                                       (gx#current-expander-phi)))
                                  (_E158147158156_)))))
                        (_E158147158156_)))))
            (_E158146158171_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx157804_ _internal-expand?157805_)
        (letrec ((_expand1157807_
                  (lambda (_hd158117_ _K158118_ _rest158119_ _r158120_)
                    (if (gx#core-bound-module? _hd158117_)
                        (_import1157808_
                         (gx#syntax-local-e__0 _hd158117_)
                         _K158118_
                         _rest158119_
                         _r158120_)
                        (if (gx#core-library-module-path? _hd158117_)
                            (_import1157808_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158117_))
                             _K158118_
                             _rest158119_
                             _r158120_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158117_)
                                (_import1157808_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158117_))
                                 _K158118_
                                 _rest158119_
                                 _r158120_)
                                (let ((_e158122_ (gx#stx-e _hd158117_)))
                                  (if (pair? _e158122_)
                                      (let ((_$e158124_
                                             (gx#stx-e (car _e158122_))))
                                        (if (eq? 'spec: _$e158124_)
                                            (_import-spec157811_
                                             _hd158117_
                                             _K158118_
                                             _rest158119_
                                             _r158120_)
                                            (if (eq? 'in: _$e158124_)
                                                (_import-submodule157809_
                                                 _hd158117_
                                                 _K158118_
                                                 _rest158119_
                                                 _r158120_)
                                                (if (eq? 'runtime: _$e158124_)
                                                    (_import-runtime157810_
                                                     _hd158117_
                                                     _K158118_
                                                     _rest158119_
                                                     _r158120_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx157804_
                                                     _hd158117_)))))
                                      (if (string? _e158122_)
                                          (_import1157808_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158117_
                                             (gx#stx-source _stx157804_)))
                                           _K158118_
                                           _rest158119_
                                           _r158120_)
                                          (if (##structure-instance-of?
                                               _e158122_
                                               'gx#module-context::t)
                                              (_K158118_
                                               _rest158119_
                                               (cons _e158122_ _r158120_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx157804_
                                               _hd158117_))))))))))
                 (_import1157808_
                  (lambda (_ctx158106_ _K158107_ _rest158108_ _r158109_)
                    (let ((_dphi158111_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158107_
                       _rest158108_
                       (cons (##structure
                              gx#import-set::t
                              _ctx158106_
                              _dphi158111_
                              (map (lambda (_g158112158114_)
                                     (gx#core-module-export->import__%
                                      _g158112158114_
                                      '#f
                                      _dphi158111_))
                                   (##unchecked-structure-ref
                                    _ctx158106_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r158109_)))))
                 (_import-submodule157809_
                  (lambda (_hd158073_ _K158074_ _rest158075_ _r158076_)
                    (let* ((_e158077158084_ _hd158073_)
                           (_E158079158088_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158077158084_)))
                           (_E158078158102_
                            (lambda ()
                              (if (gx#stx-pair? _e158077158084_)
                                  (let ((_e158080158092_
                                         (gx#syntax-e _e158077158084_)))
                                    (let ((_hd158081158095_
                                           (##car _e158080158092_))
                                          (_tl158082158097_
                                           (##cdr _e158080158092_)))
                                      (let ((_spath158100_ _tl158082158097_))
                                        (if '#t
                                            (_import1157808_
                                             (_import-spec-source157812_
                                              _spath158100_)
                                             _K158074_
                                             _rest158075_
                                             _r158076_)
                                            (_E158079158088_)))))
                                  (_E158079158088_)))))
                      (_E158078158102_))))
                 (_import-runtime157810_
                  (lambda (_hd158040_ _K158041_ _rest158042_ _r158043_)
                    (let* ((_e158044158051_ _hd158040_)
                           (_E158046158055_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158044158051_)))
                           (_E158045158069_
                            (lambda ()
                              (if (gx#stx-pair? _e158044158051_)
                                  (let ((_e158047158059_
                                         (gx#syntax-e _e158044158051_)))
                                    (let ((_hd158048158062_
                                           (##car _e158047158059_))
                                          (_tl158049158064_
                                           (##cdr _e158047158059_)))
                                      (let ((_spath158067_ _tl158049158064_))
                                        (if '#t
                                            (_K158041_
                                             _rest158042_
                                             (cons (_import-spec-source157812_
                                                    _spath158067_)
                                                   _r158043_))
                                            (_E158046158055_)))))
                                  (_E158046158055_)))))
                      (_E158045158069_))))
                 (_import-spec157811_
                  (lambda (_hd157879_ _K157880_ _rest157881_ _r157882_)
                    (let* ((_e157883157900_ _hd157879_)
                           (_E157892157904_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157883157900_)))
                           (_E157885158014_
                            (lambda ()
                              (if (gx#stx-pair? _e157883157900_)
                                  (let ((_e157893157908_
                                         (gx#syntax-e _e157883157900_)))
                                    (let ((_hd157894157911_
                                           (##car _e157893157908_))
                                          (_tl157895157913_
                                           (##cdr _e157893157908_)))
                                      (if (gx#stx-pair? _tl157895157913_)
                                          (let ((_e157896157916_
                                                 (gx#syntax-e
                                                  _tl157895157913_)))
                                            (let ((_hd157897157919_
                                                   (##car _e157896157916_))
                                                  (_tl157898157921_
                                                   (##cdr _e157896157916_)))
                                              (let* ((_path157924_
                                                      _hd157897157919_)
                                                     (_specs157926_
                                                      _tl157898157921_))
                                                (if '#t
                                                    (let ((_src-ctx157928_
                                                           (_import-spec-source157812_
                                                            _path157924_))
                                                          (_exports157929_
                                                           (make-table))
                                                          (_specs157930_
                                                           (gx#syntax->list
                                                            _specs157926_)))
                                                      (for-each
                                                       (lambda (_out157932_)
                                                         (table-set!
                                                          _exports157929_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out157932_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out157932_
                         '4
                         gx#module-export::t
                         '#f))
                  _out157932_))
               (##unchecked-structure-ref
                _src-ctx157928_
                '9
                gx#module-context::t
                '#f))
              (_K157880_
               _rest157881_
               (foldl1 (lambda (_spec157934_ _r157935_)
                         (let* ((_e157936157952_ _spec157934_)
                                (_E157938157956_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e157936157952_)))
                                (_E157937158010_
                                 (lambda ()
                                   (if (gx#stx-pair? _e157936157952_)
                                       (let ((_e157939157960_
                                              (gx#syntax-e _e157936157952_)))
                                         (let ((_hd157940157963_
                                                (##car _e157939157960_))
                                               (_tl157941157965_
                                                (##cdr _e157939157960_)))
                                           (let ((_phi157968_
                                                  _hd157940157963_))
                                             (if (gx#stx-pair?
                                                  _tl157941157965_)
                                                 (let ((_e157942157970_
                                                        (gx#syntax-e
                                                         _tl157941157965_)))
                                                   (let ((_hd157943157973_
                                                          (##car _e157942157970_))
                                                         (_tl157944157975_
                                                          (##cdr _e157942157970_)))
                                                     (let ((_name157978_
                                                            _hd157943157973_))
                                                       (if (gx#stx-pair?
                                                            _tl157944157975_)
                                                           (let ((_e157945157980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl157944157975_)))
                     (let ((_hd157946157983_ (##car _e157945157980_))
                           (_tl157947157985_ (##cdr _e157945157980_)))
                       (let ((_src-phi157988_ _hd157946157983_))
                         (if (gx#stx-pair? _tl157947157985_)
                             (let ((_e157948157990_
                                    (gx#syntax-e _tl157947157985_)))
                               (let ((_hd157949157993_ (##car _e157948157990_))
                                     (_tl157950157995_
                                      (##cdr _e157948157990_)))
                                 (let ((_src-name157998_ _hd157949157993_))
                                   (if (gx#stx-null? _tl157950157995_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi157988_)
                                                (gx#identifier?
                                                 _src-name157998_)
                                                (gx#stx-fixnum? _phi157968_)
                                                (gx#identifier? _name157978_))
                                           (let ((_src-phi158000_
                                                  (gx#stx-e _src-phi157988_))
                                                 (_src-name158001_
                                                  (gx#core-identifier-key
                                                   _src-name157998_))
                                                 (_phi158002_
                                                  (gx#stx-e _phi157968_))
                                                 (_name158003_
                                                  (gx#core-identifier-key
                                                   _name157978_)))
                                             (let ((_$e158005_
                                                    (table-ref
                                                     _exports157929_
                                                     (cons _src-phi158000_
                                                           _src-name158001_)
                                                     '#f)))
                                               (if _$e158005_
                                                   ((lambda (_out158008_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out158008_
                                                             _name158003_
                                                             (fx- _phi158002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi158000_))
                    _r157935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e158005_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx157804_
                                                    _hd157879_))))
                                           (_E157938157956_))
                                       (_E157938157956_)))))
                             (_E157938157956_)))))
                   (_E157938157956_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E157938157956_)))))
                                       (_E157938157956_)))))
                           (_E157937158010_)))
                       _r157882_
                       _specs157930_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E157892157904_)))))
                                          (_E157892157904_))))
                                  (_E157892157904_))))
                           (_E157884158036_
                            (lambda ()
                              (if (gx#stx-pair? _e157883157900_)
                                  (let ((_e157886158018_
                                         (gx#syntax-e _e157883157900_)))
                                    (let ((_hd157887158021_
                                           (##car _e157886158018_))
                                          (_tl157888158023_
                                           (##cdr _e157886158018_)))
                                      (if (gx#stx-pair? _tl157888158023_)
                                          (let ((_e157889158026_
                                                 (gx#syntax-e
                                                  _tl157888158023_)))
                                            (let ((_hd157890158029_
                                                   (##car _e157889158026_))
                                                  (_tl157891158031_
                                                   (##cdr _e157889158026_)))
                                              (let ((_path158034_
                                                     _hd157890158029_))
                                                (if (gx#stx-null?
                                                     _tl157891158031_)
                                                    (if '#t
                                                        (_K157880_
                                                         _rest157881_
                                                         (cons (_import-spec-source157812_
                                                                _path158034_)
                                                               _r157882_))
                                                        (_E157885158014_))
                                                    (_E157885158014_)))))
                                          (_E157885158014_))))
                                  (_E157885158014_)))))
                      (_E157884158036_))))
                 (_import-spec-source157812_
                  (lambda (_spath157877_)
                    (gx#core-import-nested-module _spath157877_ _stx157804_)))
                 (_import!157813_
                  (lambda (_rbody157826_)
                    (letrec* ((_current-ctx157828_
                               (gx#current-expander-context))
                              (_deps157829_ (make-table 'test: eq?))
                              (_bind!157830_
                               (lambda (_hd157875_)
                                 (gx#core-bind-import!__1
                                  _hd157875_
                                  _current-ctx157828_))))
                      (let _lp157832_ ((_rest157834_ _rbody157826_)
                                       (_body157835_ '()))
                        (let* ((_rest157836157844_ _rest157834_)
                               (_else157838157854_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx157828_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx157828_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx157828_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body157835_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx157852_ _g165150_)
                                     (gx#eval-module _ctx157852_))
                                   _deps157829_)
                                  _body157835_))
                               (_K157840157863_
                                (lambda (_rest157857_ _hd157858_)
                                  (if (##structure-direct-instance-of?
                                       _hd157858_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!157830_ _hd157858_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd157858_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd157858_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps157829_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd157858_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd157858_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!157830_
                                             (##unchecked-structure-ref
                                              _hd157858_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd157858_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps157829_
                                                 (##unchecked-structure-ref
                                                  _hd157858_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e157860_
                                                 (##structure-instance-of?
                                                  _hd157858_
                                                  'gx#module-context::t)))
                                            (if _$e157860_
                                                _$e157860_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx157804_
                                                 _hd157858_)))))
                                  (_lp157832_
                                   _rest157857_
                                   (cons _hd157858_ _body157835_)))))
                          (if (##pair? _rest157836157844_)
                              (let ((_hd157841157866_
                                     (##car _rest157836157844_))
                                    (_tl157842157868_
                                     (##cdr _rest157836157844_)))
                                (let* ((_hd157871_ _hd157841157866_)
                                       (_rest157873_ _tl157842157868_))
                                  (_K157840157863_ _rest157873_ _hd157871_)))
                              (_else157838157854_)))))))
                 (_expanded-import?157814_
                  (lambda (_e157818_)
                    (let ((_$e157820_
                           (##structure-direct-instance-of?
                            _e157818_
                            'gx#import-set::t)))
                      (if _$e157820_
                          _$e157820_
                          (let ((_$e157823_
                                 (##structure-direct-instance-of?
                                  _e157818_
                                  'gx#module-import::t)))
                            (if _$e157823_
                                _$e157823_
                                (##structure-instance-of?
                                 _e157818_
                                 'gx#module-context::t))))))))
          (let ((_rbody157816_
                 (gx#core-expand-import/export
                  _stx157804_
                  _expanded-import?157814_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1157807_)))
            (if _internal-expand?157805_
                (reverse _rbody157816_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!157813_ _rbody157816_))
                 (gx#stx-source _stx157804_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158130_)
        (let ((_internal-expand?158132_ '#f))
          (gx#core-expand-import%__% _stx158130_ _internal-expand?158132_))))
    (define gx#core-expand-import%
      (lambda _g165152_
        (let ((_g165151_ (##length _g165152_)))
          (cond ((##fx= _g165151_ 1)
                 (apply (lambda (_stx158130_)
                          (gx#core-expand-import%__0 _stx158130_))
                        _g165152_))
                ((##fx= _g165151_ 2)
                 (apply (lambda (_stx158134_ _internal-expand?158135_)
                          (gx#core-expand-import%__%
                           _stx158134_
                           _internal-expand?158135_))
                        _g165152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g165152_))))))
    (define gx#core-import-nested-module
      (lambda (_spath157731_ _where157732_)
        (let* ((_e157733157740_ _spath157731_)
               (_E157735157744_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157733157740_)))
               (_E157734157799_
                (lambda ()
                  (if (gx#stx-pair? _e157733157740_)
                      (let ((_e157736157748_ (gx#syntax-e _e157733157740_)))
                        (let ((_hd157737157751_ (##car _e157736157748_))
                              (_tl157738157753_ (##cdr _e157736157748_)))
                          (let* ((_origin157756_ _hd157737157751_)
                                 (_sub157758_ _tl157738157753_))
                            (if '#t
                                (let ((_origin-ctx157760_
                                       (if (gx#stx-false? _origin157756_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin157756_))))
                                  (let _lp157762_ ((_rest157764_ _sub157758_)
                                                   (_ctx157765_
                                                    _origin-ctx157760_))
                                    (let* ((_e157766157773_ _rest157764_)
                                           (_E157768157777_
                                            (lambda () _ctx157765_))
                                           (_E157767157795_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e157766157773_)
                                                  (let ((_e157769157781_
                                                         (gx#syntax-e
                                                          _e157766157773_)))
                                                    (let ((_hd157770157784_
                                                           (##car _e157769157781_))
                                                          (_tl157771157786_
                                                           (##cdr _e157769157781_)))
                                                      (let* ((_id157789_
                                                              _hd157770157784_)
                                                             (_rest157791_
                                                              _tl157771157786_))
                                                        (if '#t
                                                            (let ((_bind157793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id157789_
                            '0
                            _ctx157765_)))
                      (if (and (##structure-direct-instance-of?
                                _bind157793_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind157793_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where157732_
                           _spath157731_
                           _id157789_))
                      (_lp157762_
                       _rest157791_
                       (##unchecked-structure-ref
                        _bind157793_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E157768157777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157768157777_)))))
                                      (_E157767157795_))))
                                (_E157735157744_)))))
                      (_E157735157744_)))))
          (_E157734157799_))))
    (define gx#core-expand-import-source
      (lambda (_hd157729_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd157729_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157237_ _internal-expand?157238_)
        (letrec* ((_make-export__165081165082_
                   (lambda (_bind157677_ _phi157678_ _ctx157679_ _name157680_)
                     (let* ((_key157682_
                             (##unchecked-structure-ref
                              _bind157677_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key157684_
                             (if _name157680_
                                 (gx#core-identifier-key _name157680_)
                                 _key157682_)))
                       (##structure
                        gx#module-export::t
                        _ctx157679_
                        _key157682_
                        _phi157678_
                        _export-key157684_
                        (let ((_$e157687_
                               (##structure-instance-of?
                                _bind157677_
                                'gx#extern-binding::t)))
                          (if _$e157687_
                              _$e157687_
                              (##structure-direct-instance-of?
                               _bind157677_
                               'gx#import-binding::t)))))))
                  (_make-export__0__165083165086_
                   (lambda (_bind157693_)
                     (let* ((_phi157695_ (gx#current-export-expander-phi))
                            (_ctx157697_ (gx#current-expander-context))
                            (_name157699_ '#f))
                       (_make-export__165081165082_
                        _bind157693_
                        _phi157695_
                        _ctx157697_
                        _name157699_))))
                  (_make-export__1__165084165087_
                   (lambda (_bind157701_ _phi157702_)
                     (let* ((_ctx157704_ (gx#current-expander-context))
                            (_name157706_ '#f))
                       (_make-export__165081165082_
                        _bind157701_
                        _phi157702_
                        _ctx157704_
                        _name157706_))))
                  (_make-export__2__165085165088_
                   (lambda (_bind157708_ _phi157709_ _ctx157710_)
                     (let ((_name157712_ '#f))
                       (_make-export__165081165082_
                        _bind157708_
                        _phi157709_
                        _ctx157710_
                        _name157712_))))
                  (_make-export157240_
                   (lambda _g165154_
                     (let ((_g165153_ (##length _g165154_)))
                       (cond ((##fx= _g165153_ 1)
                              (apply (lambda (_bind157693_)
                                       (_make-export__0__165083165086_
                                        _bind157693_))
                                     _g165154_))
                             ((##fx= _g165153_ 2)
                              (apply (lambda (_bind157701_ _phi157702_)
                                       (_make-export__1__165084165087_
                                        _bind157701_
                                        _phi157702_))
                                     _g165154_))
                             ((##fx= _g165153_ 3)
                              (apply (lambda (_bind157708_
                                              _phi157709_
                                              _ctx157710_)
                                       (_make-export__2__165085165088_
                                        _bind157708_
                                        _phi157709_
                                        _ctx157710_))
                                     _g165154_))
                             ((##fx= _g165153_ 4)
                              (apply (lambda (_bind157714_
                                              _phi157715_
                                              _ctx157716_
                                              _name157717_)
                                       (_make-export__165081165082_
                                        _bind157714_
                                        _phi157715_
                                        _ctx157716_
                                        _name157717_))
                                     _g165154_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g165154_))))))
                  (_expand1157241_
                   (lambda (_hd157390_ _K157391_ _rest157392_ _r157393_)
                     (let* ((_e157394157426_ _hd157390_)
                            (_E157421157430_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157237_
                                _hd157390_)))
                            (_E157411157509_
                             (lambda ()
                               (if (gx#stx-pair? _e157394157426_)
                                   (let ((_e157422157434_
                                          (gx#syntax-e _e157394157426_)))
                                     (let ((_hd157423157437_
                                            (##car _e157422157434_))
                                           (_tl157424157439_
                                            (##cdr _e157422157434_)))
                                       (if (eq? (gx#stx-e _hd157423157437_)
                                                'import:)
                                           (let ((_in157442_ _tl157424157439_))
                                             (if (gx#stx-list? _in157442_)
                                                 (let _lp157444_ ((_in-rest157446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157442_)
                          (_r157447_ _r157393_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157448157455_
                                                           _in-rest157446_)
                                                          (_E157450157459_
                                                           (lambda ()
                                                             (_K157391_
                                                              _rest157392_
                                                              _r157447_)))
                                                          (_E157449157505_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157448157455_)
                         (let ((_e157451157463_ (gx#syntax-e _e157448157455_)))
                           (let ((_hd157452157466_ (##car _e157451157463_))
                                 (_tl157453157468_ (##cdr _e157451157463_)))
                             (let* ((_hd157471_ _hd157452157466_)
                                    (_in-rest157473_ _tl157453157468_))
                               (if '#t
                                   (let ((_src157503_
                                          (if (gx#core-bound-module?
                                               _hd157471_)
                                              (gx#syntax-local-e__0 _hd157471_)
                                              (if (gx#core-library-module-path?
                                                   _hd157471_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157471_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157471_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157471_))
                                                      (if (gx#stx-string?
                                                           _hd157471_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157471_
                                                            (gx#stx-source
                                                             _stx157237_)))
                                                          (let* ((_e157474157481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157471_)
                         (_E157476157485_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157237_
                             _hd157471_)))
                         (_E157475157499_
                          (lambda ()
                            (if (gx#stx-pair? _e157474157481_)
                                (let ((_e157477157489_
                                       (gx#syntax-e _e157474157481_)))
                                  (let ((_hd157478157492_
                                         (##car _e157477157489_))
                                        (_tl157479157494_
                                         (##cdr _e157477157489_)))
                                    (if (eq? (gx#stx-e _hd157478157492_) 'in:)
                                        (let ((_spath157497_ _tl157479157494_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157497_
                                               _stx157237_)
                                              (_E157476157485_)))
                                        (_E157476157485_))))
                                (_E157476157485_)))))
                    (_E157475157499_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157444_
                                      _in-rest157473_
                                      (_export-imports157242_
                                       _src157503_
                                       _r157447_)))
                                   (_E157450157459_)))))
                         (_E157450157459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157449157505_)))
                                                 (_E157421157430_)))
                                           (_E157421157430_))))
                                   (_E157421157430_))))
                            (_E157398157548_
                             (lambda ()
                               (if (gx#stx-pair? _e157394157426_)
                                   (let ((_e157412157513_
                                          (gx#syntax-e _e157394157426_)))
                                     (let ((_hd157413157516_
                                            (##car _e157412157513_))
                                           (_tl157414157518_
                                            (##cdr _e157412157513_)))
                                       (if (eq? (gx#stx-e _hd157413157516_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157414157518_)
                                               (let ((_e157415157521_
                                                      (gx#syntax-e
                                                       _tl157414157518_)))
                                                 (let ((_hd157416157524_
                                                        (##car _e157415157521_))
                                                       (_tl157417157526_
                                                        (##cdr _e157415157521_)))
                                                   (let ((_id157529_
                                                          _hd157416157524_))
                                                     (if (gx#stx-pair?
                                                          _tl157417157526_)
                                                         (let ((_e157418157531_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157417157526_)))
                   (let ((_hd157419157534_ (##car _e157418157531_))
                         (_tl157420157536_ (##cdr _e157418157531_)))
                     (let ((_name157539_ _hd157419157534_))
                       (if (gx#stx-null? _tl157420157536_)
                           (if '#t
                               (let* ((_phi157541_
                                       (gx#current-export-expander-phi))
                                      (_$e157543_
                                       (gx#core-resolve-identifier__1
                                        _id157529_
                                        _phi157541_)))
                                 (if _$e157543_
                                     ((lambda (_bind157546_)
                                        (_K157391_
                                         _rest157392_
                                         (cons (_make-export__165081165082_
                                                _bind157546_
                                                _phi157541_
                                                (gx#current-expander-context)
                                                _name157539_)
                                               _r157393_)))
                                      _$e157543_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157237_
                                      _hd157390_
                                      _id157529_)))
                               (_E157411157509_))
                           (_E157411157509_)))))
                 (_E157411157509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157411157509_))
                                           (_E157411157509_))))
                                   (_E157411157509_))))
                            (_E157397157597_
                             (lambda ()
                               (if (gx#stx-pair? _e157394157426_)
                                   (let ((_e157399157552_
                                          (gx#syntax-e _e157394157426_)))
                                     (let ((_hd157400157555_
                                            (##car _e157399157552_))
                                           (_tl157401157557_
                                            (##cdr _e157399157552_)))
                                       (if (eq? (gx#stx-e _hd157400157555_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157401157557_)
                                               (let ((_e157402157560_
                                                      (gx#syntax-e
                                                       _tl157401157557_)))
                                                 (let ((_hd157403157563_
                                                        (##car _e157402157560_))
                                                       (_tl157404157565_
                                                        (##cdr _e157402157560_)))
                                                   (let ((_phi157568_
                                                          _hd157403157563_))
                                                     (if (gx#stx-pair?
                                                          _tl157404157565_)
                                                         (let ((_e157405157570_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157404157565_)))
                   (let ((_hd157406157573_ (##car _e157405157570_))
                         (_tl157407157575_ (##cdr _e157405157570_)))
                     (let ((_id157578_ _hd157406157573_))
                       (if (gx#stx-pair? _tl157407157575_)
                           (let ((_e157408157580_
                                  (gx#syntax-e _tl157407157575_)))
                             (let ((_hd157409157583_ (##car _e157408157580_))
                                   (_tl157410157585_ (##cdr _e157408157580_)))
                               (let ((_name157588_ _hd157409157583_))
                                 (if (gx#stx-null? _tl157410157585_)
                                     (if (and (gx#stx-fixnum? _phi157568_)
                                              (gx#identifier? _id157578_)
                                              (gx#identifier? _name157588_))
                                         (let* ((_phi157590_
                                                 (gx#stx-e _phi157568_))
                                                (_$e157592_
                                                 (gx#core-resolve-identifier__1
                                                  _id157578_
                                                  _phi157590_)))
                                           (if _$e157592_
                                               ((lambda (_bind157595_)
                                                  (_K157391_
                                                   _rest157392_
                                                   (cons (_make-export__165081165082_
                                                          _bind157595_
                                                          _phi157590_
                                                          (gx#current-expander-context)
                                                          _name157588_)
                                                         _r157393_)))
                                                _$e157592_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157237_
                                                _hd157390_
                                                _id157578_)))
                                         (_E157398157548_))
                                     (_E157398157548_)))))
                           (_E157398157548_)))))
                 (_E157398157548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157398157548_))
                                           (_E157398157548_))))
                                   (_E157398157548_))))
                            (_E157396157608_
                             (lambda ()
                               (let ((_id157601_ _e157394157426_))
                                 (if (gx#identifier? _id157601_)
                                     (let ((_$e157603_
                                            (gx#core-resolve-identifier__1
                                             _id157601_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157603_
                                           ((lambda (_bind157606_)
                                              (_K157391_
                                               _rest157392_
                                               (cons (_make-export__0__165083165086_
                                                      _bind157606_)
                                                     _r157393_)))
                                            _$e157603_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157237_
                                            _hd157390_)))
                                     (_E157397157597_)))))
                            (_E157395157672_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157394157426_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157612_
                                               (gx#current-expander-context))
                                              (_current-phi157614_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157616_
                                               (gx#core-context-shift
                                                _current-ctx157612_
                                                _current-phi157614_))
                                              (_phi-bind157618_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157616_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157621_ ((_bind-rest157623_
                                                           _phi-bind157618_)
                                                          (_set157624_ '()))
                                           (let* ((_bind-rest157625157635_
                                                   _bind-rest157623_)
                                                  (_else157627157643_
                                                   (lambda ()
                                                     (_K157391_
                                                      _rest157392_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157614_
                                                             _set157624_)
                                                            _r157393_))))
                                                  (_K157629157653_
                                                   (lambda (_bind-rest157646_
                                                            _bind157647_
                                                            _key157648_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157647_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157647_))
                                                         (_lp157621_
                                                          _bind-rest157646_
                                                          _set157624_)
                                                         (_lp157621_
                                                          _bind-rest157646_
                                                          (cons (_make-export__2__165085165088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157647_
                         _current-phi157614_
                         _current-ctx157612_)
                        _set157624_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157625157635_)
                                                 (let ((_hd157630157656_
                                                        (##car _bind-rest157625157635_))
                                                       (_tl157631157658_
                                                        (##cdr _bind-rest157625157635_)))
                                                   (if (##pair? _hd157630157656_)
                                                       (let ((_hd157632157661_
                                                              (##car _hd157630157656_))
                                                             (_tl157633157663_
                                                              (##cdr _hd157630157656_)))
                                                         (let* ((_key157666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157632157661_)
                        (_bind157668_ _tl157633157663_)
                        (_bind-rest157670_ _tl157631157658_))
                   (_K157629157653_
                    _bind-rest157670_
                    _bind157668_
                    _key157666_)))
               (_else157627157643_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157627157643_)))))
                                       (_E157396157608_))
                                   (_E157396157608_)))))
                       (_E157395157672_))))
                  (_export-imports157242_
                   (lambda (_src157266_ _r157267_)
                     (letrec* ((_current-ctx157269_
                                (gx#current-expander-context))
                               (_current-phi157270_
                                (gx#current-export-expander-phi))
                               (_import->export157271_
                                (lambda (_in157352_)
                                  (let* ((_in157353157361_ _in157352_)
                                         (_E157355157365_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157353157361_)))
                                         (_K157356157372_
                                          (lambda (_phi157368_
                                                   _key157369_
                                                   _out157370_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157269_
                                             _key157369_
                                             _phi157368_
                                             _key157369_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157353157361_
                                         'gx#module-import::t)
                                        (let* ((_e157357157375_
                                                (##unchecked-structure-ref
                                                 _in157353157361_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157378_ _e157357157375_)
                                               (_e157358157380_
                                                (##unchecked-structure-ref
                                                 _in157353157361_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157383_ _e157358157380_)
                                               (_e157359157385_
                                                (##unchecked-structure-ref
                                                 _in157353157361_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157388_ _e157359157385_))
                                          (_K157356157372_
                                           _phi157388_
                                           _key157383_
                                           _out157378_))
                                        (_E157355157365_)))))
                               (_fold-e157272_
                                (lambda (_in157274_ _r157275_)
                                  (let* ((_in157276157290_ _in157274_)
                                         (_else157279157298_
                                          (lambda () _r157275_)))
                                    (let ((_K157285157334_
                                           (lambda (_phi157330_
                                                    _key157331_
                                                    _out157332_)
                                             (if (and (fx= _phi157330_
                                                           _current-phi157270_)
                                                      (eq? _src157266_
                                                           (##unchecked-structure-ref
                                                            _out157332_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157271_
                                                        _in157274_)
                                                       _r157275_)
                                                 _r157275_)))
                                          (_K157281157309_
                                           (lambda (_imports157302_
                                                    _phi157303_
                                                    _ctx157304_)
                                             (if (and (fx= _phi157303_
                                                           _current-phi157270_)
                                                      (eq? _src157266_
                                                           _ctx157304_))
                                                 (foldl1 (lambda (_in157306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157307_)
                   (cons (_import->export157271_ _in157306_) _r157307_))
                 _r157275_
                 _imports157302_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157275_))))
                                      (let ((_try-match157278157327_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157276157290_
                                                    'gx#import-set::t)
                                                   (let* ((_e157282157312_
                                                           (##unchecked-structure-ref
                                                            _in157276157290_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157283157317_
                                                           (##unchecked-structure-ref
                                                            _in157276157290_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157284157322_
                                                           (##unchecked-structure-ref
                                                            _in157276157290_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157315_
                                                            _e157282157312_)
                                                           (_phi157320_
                                                            _e157283157317_)
                                                           (_imports157325_
                                                            _e157284157322_))
                                                       (_K157281157309_
                                                        _imports157325_
                                                        _phi157320_
                                                        _ctx157315_)))
                                                   (_else157279157298_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157276157290_
                                             'gx#module-import::t)
                                            (let* ((_e157286157337_
                                                    (##unchecked-structure-ref
                                                     _in157276157290_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157287157342_
                                                    (##unchecked-structure-ref
                                                     _in157276157290_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157288157347_
                                                    (##unchecked-structure-ref
                                                     _in157276157290_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157340_
                                                     _e157286157337_)
                                                    (_key157345_
                                                     _e157287157342_)
                                                    (_phi157350_
                                                     _e157288157347_))
                                                (_K157285157334_
                                                 _phi157350_
                                                 _key157345_
                                                 _out157340_)))
                                            (_try-match157278157327_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157266_
                              _current-phi157270_
                              (foldl1 _fold-e157272_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157269_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157267_))))
                  (_export!157243_
                   (lambda (_rbody157256_)
                     (letrec* ((_current-ctx157258_
                                (gx#current-expander-context))
                               (_fold-e157259_
                                (lambda (_out157263_ _r157264_)
                                  (if (##structure-direct-instance-of?
                                       _out157263_
                                       'gx#module-export::t)
                                      (cons _out157263_ _r157264_)
                                      (if (##structure-direct-instance-of?
                                           _out157263_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157264_
                                                  (##unchecked-structure-ref
                                                   _out157263_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157264_)))))
                       (let ((_body157261_ (reverse _rbody157256_)))
                         (##unchecked-structure-set!
                          _current-ctx157258_
                          (foldl1 _fold-e157259_
                                  (##unchecked-structure-ref
                                   _current-ctx157258_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157261_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157261_))))
                  (_expanded-export?157244_
                   (lambda (_e157251_)
                     (let ((_$e157253_
                            (##structure-direct-instance-of?
                             _e157251_
                             'gx#module-export::t)))
                       (if _$e157253_
                           _$e157253_
                           (##structure-direct-instance-of?
                            _e157251_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?157238_)
              (let ((_rbody157249_
                     (gx#core-expand-import/export
                      _stx157237_
                      _expanded-export?157244_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157241_)))
                (if _internal-expand?157238_
                    (reverse _rbody157249_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157243_ _rbody157249_))
                     (gx#stx-source _stx157237_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157237_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157237_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx157722_)
        (let ((_internal-expand?157724_ '#f))
          (gx#core-expand-export%__% _stx157722_ _internal-expand?157724_))))
    (define gx#core-expand-export%
      (lambda _g165156_
        (let ((_g165155_ (##length _g165156_)))
          (cond ((##fx= _g165155_ 1)
                 (apply (lambda (_stx157722_)
                          (gx#core-expand-export%__0 _stx157722_))
                        _g165156_))
                ((##fx= _g165155_ 2)
                 (apply (lambda (_stx157726_ _internal-expand?157727_)
                          (gx#core-expand-export%__%
                           _stx157726_
                           _internal-expand?157727_))
                        _g165156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g165156_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157234_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157234_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157204_)
        (let* ((_e157205157212_ _stx157204_)
               (_E157207157216_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157205157212_)))
               (_E157206157230_
                (lambda ()
                  (if (gx#stx-pair? _e157205157212_)
                      (let ((_e157208157220_ (gx#syntax-e _e157205157212_)))
                        (let ((_hd157209157223_ (##car _e157208157220_))
                              (_tl157210157225_ (##cdr _e157208157220_)))
                          (let ((_body157228_ _tl157210157225_))
                            (if (gx#identifier-list? _body157228_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157228_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157228_))
                                   (gx#stx-source _stx157204_)))
                                (_E157207157216_)))))
                      (_E157207157216_)))))
          (_E157206157230_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157170_ _private?157171_ _phi157172_ _ctx157173_)
        (gx#core-bind-syntax!__%
         _id157170_
         ((if _private?157171_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157170_))
         _private?157171_
         _phi157172_
         _ctx157173_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157178_)
        (let* ((_private?157180_ '#f)
               (_phi157182_ (gx#current-expander-phi))
               (_ctx157184_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157178_
           _private?157180_
           _phi157182_
           _ctx157184_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157186_ _private?157187_)
        (let* ((_phi157189_ (gx#current-expander-phi))
               (_ctx157191_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157186_
           _private?157187_
           _phi157189_
           _ctx157191_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157193_ _private?157194_ _phi157195_)
        (let ((_ctx157197_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157193_
           _private?157194_
           _phi157195_
           _ctx157197_))))
    (define gx#core-bind-feature!
      (lambda _g165158_
        (let ((_g165157_ (##length _g165158_)))
          (cond ((##fx= _g165157_ 1)
                 (apply (lambda (_id157178_)
                          (gx#core-bind-feature!__0 _id157178_))
                        _g165158_))
                ((##fx= _g165157_ 2)
                 (apply (lambda (_id157186_ _private?157187_)
                          (gx#core-bind-feature!__1
                           _id157186_
                           _private?157187_))
                        _g165158_))
                ((##fx= _g165157_ 3)
                 (apply (lambda (_id157193_ _private?157194_ _phi157195_)
                          (gx#core-bind-feature!__2
                           _id157193_
                           _private?157194_
                           _phi157195_))
                        _g165158_))
                ((##fx= _g165157_ 4)
                 (apply (lambda (_id157199_
                                 _private?157200_
                                 _phi157201_
                                 _ctx157202_)
                          (gx#core-bind-feature!__%
                           _id157199_
                           _private?157200_
                           _phi157201_
                           _ctx157202_))
                        _g165158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g165158_))))))))
