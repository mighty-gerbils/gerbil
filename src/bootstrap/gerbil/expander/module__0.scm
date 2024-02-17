(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708194424)
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
      (lambda _$args160359_
        (apply make-instance gx#module-import::t _$args160359_)))
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
      (lambda _$args160356_
        (apply make-instance gx#module-export::t _$args160356_)))
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
      (lambda _$args160353_
        (apply make-instance gx#import-set::t _$args160353_)))
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
      (lambda _$args160350_
        (apply make-instance gx#export-set::t _$args160350_)))
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
      (lambda _$args160347_
        (apply make-instance gx#import-expander::t _$args160347_)))
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
      (lambda _$args160344_
        (apply make-instance gx#export-expander::t _$args160344_)))
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
      (lambda _$args160341_
        (apply make-instance gx#import-export-expander::t _$args160341_)))
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
      (lambda (_path160338_ _fun160339_)
        (call-with-input-file
         (cons 'path: (cons _path160338_ gx#source-file-settings))
         _fun160339_)))
    (define gx#module-context:::init!
      (lambda (_self160332_ _id160333_ _super160334_ _ns160335_ _path160336_)
        (if (##fx< '11 (##structure-length _self160332_))
            (begin
              (##unchecked-structure-set!
               _self160332_
               _id160333_
               '1
               (##structure-type _self160332_)
               '#f)
              (##unchecked-structure-set!
               _self160332_
               (make-hash-table-eq)
               '2
               (##structure-type _self160332_)
               '#f)
              (##unchecked-structure-set!
               _self160332_
               _super160334_
               '3
               (##structure-type _self160332_)
               '#f)
              (##unchecked-structure-set!
               _self160332_
               '#f
               '4
               (##structure-type _self160332_)
               '#f)
              (##unchecked-structure-set!
               _self160332_
               '#f
               '5
               (##structure-type _self160332_)
               '#f)
              (##unchecked-structure-set!
               _self160332_
               _ns160335_
               '6
               (##structure-type _self160332_)
               '#f)
              (##unchecked-structure-set!
               _self160332_
               _path160336_
               '7
               (##structure-type _self160332_)
               '#f)
              (##unchecked-structure-set!
               _self160332_
               '()
               '8
               (##structure-type _self160332_)
               '#f)
              (##unchecked-structure-set!
               _self160332_
               '()
               '9
               (##structure-type _self160332_)
               '#f)
              (##unchecked-structure-set!
               _self160332_
               '#f
               '10
               (##structure-type _self160332_)
               '#f)
              (##unchecked-structure-set!
               _self160332_
               '#f
               '11
               (##structure-type _self160332_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160332_
                   '11
                   (##vector-length _self160332_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160176_ _ctx160177_ _root160178_)
        (let ((_super160186_
               (let ((_$e160180_ _root160178_))
                 (if _$e160180_
                     _$e160180_
                     (let ((_$e160183_ (gx#core-context-root__0)))
                       (if _$e160183_
                           _$e160183_
                           (let ((__obj164468
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor164469
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj164468
                                     ':init!)))
                               (if __constructor164469
                                   (__constructor164469 __obj164468)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj164468)))))))
          (if _ctx160177_
              (let ((_id160189_
                     (##structure-ref
                      _ctx160177_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160190_
                     (##structure-ref _ctx160177_ '7 gx#module-context::t '#f))
                    (_in160191_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160177_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160192_
                     (make-promise (lambda () (gx#eval-module _ctx160177_)))))
                (if (##fx< '8 (##structure-length _self160176_))
                    (begin
                      (##unchecked-structure-set!
                       _self160176_
                       _id160189_
                       '1
                       (##structure-type _self160176_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160176_
                       (make-hash-table-eq 'size: (length _in160191_))
                       '2
                       (##structure-type _self160176_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160176_
                       _super160186_
                       '3
                       (##structure-type _self160176_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160176_
                       '#f
                       '4
                       (##structure-type _self160176_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160176_
                       '#f
                       '5
                       (##structure-type _self160176_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160176_
                       _path160190_
                       '6
                       (##structure-type _self160176_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160176_
                       _in160191_
                       '7
                       (##structure-type _self160176_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160176_
                       _e160192_
                       '8
                       (##structure-type _self160176_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160176_
                           '8
                           (##vector-length _self160176_)))
                (for-each
                 (lambda (_g160193160195_)
                   (gx#core-bind-weak-import!__% _g160193160195_ _self160176_))
                 _in160191_))
              (if (##fx< '8 (##structure-length _self160176_))
                  (begin
                    (##unchecked-structure-set!
                     _self160176_
                     '#f
                     '1
                     (##structure-type _self160176_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160176_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self160176_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160176_
                     _super160186_
                     '3
                     (##structure-type _self160176_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160176_
                     '#f
                     '4
                     (##structure-type _self160176_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160176_
                     '#f
                     '5
                     (##structure-type _self160176_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160176_
                     '#f
                     '6
                     (##structure-type _self160176_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160176_
                     '()
                     '7
                     (##structure-type _self160176_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160176_
                     '#f
                     '8
                     (##structure-type _self160176_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160176_
                         '8
                         (##vector-length _self160176_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160201_ _ctx160202_)
        (let ((_root160204_ '#f))
          (gx#prelude-context:::init!__%
           _self160201_
           _ctx160202_
           _root160204_))))
    (define gx#prelude-context:::init!
      (lambda _g164475_
        (let ((_g164474_ (##length _g164475_)))
          (cond ((##fx= _g164474_ 2)
                 (apply (lambda (_self160201_ _ctx160202_)
                          (gx#prelude-context:::init!__0
                           _self160201_
                           _ctx160202_))
                        _g164475_))
                ((##fx= _g164474_ 3)
                 (apply (lambda (_self160206_ _ctx160207_ _root160208_)
                          (gx#prelude-context:::init!__%
                           _self160206_
                           _ctx160207_
                           _root160208_))
                        _g164475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g164475_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160050_ _e160051_)
        (if (##fx< '3 (##structure-length _self160050_))
            (begin
              (##unchecked-structure-set!
               _self160050_
               _e160051_
               '1
               (##structure-type _self160050_)
               '#f)
              (##unchecked-structure-set!
               _self160050_
               (gx#current-expander-context)
               '2
               (##structure-type _self160050_)
               '#f)
              (##unchecked-structure-set!
               _self160050_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160050_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160050_
                   '3
                   (##vector-length _self160050_)))))
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
      (lambda (_g159676159679_ _g159677159681_)
        (gx#core-apply-user-expander__%
         _g159676159679_
         _g159677159681_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g159547159550_ _g159548159552_)
        (gx#core-apply-user-expander__%
         _g159547159550_
         _g159548159552_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx159418_)
        (let* ((_path159420_
                (##structure-ref _ctx159418_ '7 gx#module-context::t '#f))
               (_path159422_
                (if (pair? _path159420_) (last _path159420_) _path159420_)))
          (if (string? _path159422_) _path159422_ '#f))))
    (define gx#import-module__%
      (lambda (_path159394_ _reload?159395_ _eval?159396_)
        (let ((_ctx159398_
               ((gx#current-expander-module-import)
                _path159394_
                _reload?159395_)))
          (if (and _ctx159398_ _eval?159396_)
              (gx#eval-module _ctx159398_)
              '#!void)
          _ctx159398_)))
    (define gx#import-module__0
      (lambda (_path159403_)
        (let* ((_reload?159405_ '#f) (_eval?159407_ '#f))
          (gx#import-module__% _path159403_ _reload?159405_ _eval?159407_))))
    (define gx#import-module__1
      (lambda (_path159409_ _reload?159410_)
        (let ((_eval?159412_ '#f))
          (gx#import-module__% _path159409_ _reload?159410_ _eval?159412_))))
    (define gx#import-module
      (lambda _g164477_
        (let ((_g164476_ (##length _g164477_)))
          (cond ((##fx= _g164476_ 1)
                 (apply (lambda (_path159403_)
                          (gx#import-module__0 _path159403_))
                        _g164477_))
                ((##fx= _g164476_ 2)
                 (apply (lambda (_path159409_ _reload?159410_)
                          (gx#import-module__1 _path159409_ _reload?159410_))
                        _g164477_))
                ((##fx= _g164476_ 3)
                 (apply (lambda (_path159414_ _reload?159415_ _eval?159416_)
                          (gx#import-module__%
                           _path159414_
                           _reload?159415_
                           _eval?159416_))
                        _g164477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g164477_))))))
    (define gx#eval-module
      (lambda (_mod159391_) ((gx#current-expander-module-eval) _mod159391_)))
    (define gx#core-eval-module
      (lambda (_obj159376_)
        (letrec ((_force-e159378_
                  (lambda (_getf159387_ _e159388_)
                    (call-with-parameters
                     (lambda () (force (_getf159387_ _e159388_)))
                     gx#current-expander-context
                     _e159388_
                     gx#current-expander-phi
                     '0))))
          (let _recur159380_ ((_e159382_ _obj159376_))
            (if (##structure-instance-of? _e159382_ 'gx#module-context::t)
                (begin
                  (let ((_$e159384_ (gx#core-context-prelude__% _e159382_)))
                    (if _$e159384_ (_recur159380_ _$e159384_) '#!void))
                  (_force-e159378_ gx#module-context-e _e159382_))
                (if (##structure-instance-of? _e159382_ 'gx#prelude-context::t)
                    (_force-e159378_ gx#prelude-context-e _e159382_)
                    (if (gx#stx-string? _e159382_)
                        (_recur159380_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159382_)))
                        (if (gx#core-library-module-path? _e159382_)
                            (_recur159380_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159382_)))
                            (error '"Cannot eval module" _obj159376_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159359_)
        (let _lp159361_ ((_e159363_ _ctx159359_))
          (if (or (##structure-instance-of? _e159363_ 'gx#module-context::t)
                  (##structure-instance-of? _e159363_ 'gx#local-context::t))
              (_lp159361_
               (##unchecked-structure-ref _e159363_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159363_ 'gx#prelude-context::t)
                  _e159363_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159372_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159372_))))
    (define gx#core-context-prelude
      (lambda _g164479_
        (let ((_g164478_ (##length _g164479_)))
          (cond ((##fx= _g164478_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g164479_))
                ((##fx= _g164478_ 1)
                 (apply (lambda (_ctx159374_)
                          (gx#core-context-prelude__% _ctx159374_))
                        _g164479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g164479_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159349_)
        (let* ((_ht159351_ (gx#current-expander-module-registry))
               (_$e159353_ (hash-get _ht159351_ _ctx159349_)))
          (if _$e159353_
              (values _$e159353_)
              (let ((_pre159356_
                     (let ((__obj164470
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
                       (gx#prelude-context:::init! __obj164470 _ctx159349_)
                       __obj164470)))
                (table-set! _ht159351_ _ctx159349_ _pre159356_)
                _pre159356_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159230_ _reload?159231_)
        (letrec ((_import-source159233_
                  (lambda (_path159318_)
                    (if (member _path159318_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159318_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g164480_ (gx#core-read-module _path159318_)))
                         (begin
                           (let ((_g164481_
                                  (if (##values? _g164480_)
                                      (##vector-length _g164480_)
                                      1)))
                             (if (not (##fx= _g164481_ 4))
                                 (error "Context expects 4 values" _g164481_)))
                           (let ((_pre159321_ (##vector-ref _g164480_ 0))
                                 (_id159322_ (##vector-ref _g164480_ 1))
                                 (_ns159323_ (##vector-ref _g164480_ 2))
                                 (_body159324_ (##vector-ref _g164480_ 3)))
                             (let* ((_prelude159329_
                                     (if (##structure-instance-of?
                                          _pre159321_
                                          'gx#prelude-context::t)
                                         _pre159321_
                                         (if (##structure-instance-of?
                                              _pre159321_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159321_)
                                             (if (string? _pre159321_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159321_))
                                                 (if (not _pre159321_)
                                                     (let ((_$e159326_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159326_
                                                           _$e159326_
                                                           (let ((__obj164471
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
                     (gx#prelude-context:::init! __obj164471 '#f)
                     __obj164471)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159230_
                                                            _pre159321_))))))
                                    (_ctx159331_
                                     (let ((__obj164472
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
                                        __obj164472
                                        _id159322_
                                        _prelude159329_
                                        _ns159323_
                                        _path159318_)
                                       __obj164472))
                                    (_body159333_
                                     (gx#core-expand-module-begin
                                      _body159324_
                                      _ctx159331_))
                                    (_body159335_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159333_)
                                      _path159318_
                                      _ctx159331_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159331_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159335_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159331_
                                _body159335_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159318_
                                _ctx159331_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159322_
                                _ctx159331_)
                               _ctx159331_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159318_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159234_
                  (lambda (_rpath159246_)
                    (let* ((_rpath159247159254_ _rpath159246_)
                           (_E159249159258_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159247159254_)))
                           (_K159250159306_
                            (lambda (_refs159261_ _origin159262_)
                              (let ((_ctx159264_
                                     (if _origin159262_
                                         (gx#core-import-module__%
                                          _origin159262_
                                          _reload?159231_)
                                         (gx#current-expander-context))))
                                (let _lp159266_ ((_rest159268_ _refs159261_)
                                                 (_ctx159269_ _ctx159264_))
                                  (let* ((_rest159270159278_ _rest159268_)
                                         (_else159272159286_
                                          (lambda () _ctx159269_))
                                         (_K159274159294_
                                          (lambda (_rest159289_ _id159290_)
                                            (let ((_bind159292_
                                                   (gx#resolve-identifier__%
                                                    _id159290_
                                                    '0
                                                    _ctx159269_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159292_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159292_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159266_
                                                   _rest159289_
                                                   (##unchecked-structure-ref
                                                    _bind159292_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159246_
                                                         _id159290_
                                                         _bind159292_))))))
                                    (if (##pair? _rest159270159278_)
                                        (let ((_hd159275159297_
                                               (##car _rest159270159278_))
                                              (_tl159276159299_
                                               (##cdr _rest159270159278_)))
                                          (let* ((_id159302_ _hd159275159297_)
                                                 (_rest159304_
                                                  _tl159276159299_))
                                            (_K159274159294_
                                             _rest159304_
                                             _id159302_)))
                                        (_else159272159286_))))))))
                      (if (##pair? _rpath159247159254_)
                          (let ((_hd159251159309_ (##car _rpath159247159254_))
                                (_tl159252159311_ (##cdr _rpath159247159254_)))
                            (let* ((_origin159314_ _hd159251159309_)
                                   (_refs159316_ _tl159252159311_))
                              (_K159250159306_ _refs159316_ _origin159314_)))
                          (_E159249159258_))))))
          (let ((_$e159236_
                 (if (not _reload?159231_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath159230_)
                     '#f)))
            (if _$e159236_
                (values _$e159236_)
                (if (list? _rpath159230_)
                    (_import-submodule159234_ _rpath159230_)
                    (if (gx#core-library-module-path? _rpath159230_)
                        (let ((_ctx159239_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159230_)
                                _reload?159231_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159230_
                           _ctx159239_)
                          _ctx159239_)
                        (let* ((_npath159241_ (path-normalize _rpath159230_))
                               (_$e159243_
                                (if (not _reload?159231_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath159241_)
                                    '#f)))
                          (if _$e159243_
                              (values _$e159243_)
                              (_import-source159233_ _npath159241_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159342_)
        (let ((_reload?159344_ '#f))
          (gx#core-import-module__% _rpath159342_ _reload?159344_))))
    (define gx#core-import-module
      (lambda _g164483_
        (let ((_g164482_ (##length _g164483_)))
          (cond ((##fx= _g164482_ 1)
                 (apply (lambda (_rpath159342_)
                          (gx#core-import-module__0 _rpath159342_))
                        _g164483_))
                ((##fx= _g164482_ 2)
                 (apply (lambda (_rpath159346_ _reload?159347_)
                          (gx#core-import-module__%
                           _rpath159346_
                           _reload?159347_))
                        _g164483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g164483_))))))
    (define gx#core-read-module
      (lambda (_path159219_)
        (with-catch
         (lambda (_exn159221_)
           (if (and (datum-parsing-exception? _exn159221_)
                    (eq? (datum-parsing-exception-filepos _exn159221_) '0))
               (gx#core-read-module/lang _path159219_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159219_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159223159225_)
                      (display-exception _exn159221_ _g159223159225_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159219_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159082_)
        (let _lp159084_ ((_body159086_ (read-syntax-from-file _path159082_))
                         (_pre159087_ '#f)
                         (_ns159088_ '#f)
                         (_pkg159089_ '#f))
          (let* ((_e159090159114_ _body159086_)
                 (_E159106159136_
                  (lambda ()
                    (let ((_g164484_
                           (if _pkg159089_
                               (values _pre159087_ _ns159088_ _pkg159089_)
                               (gx#core-read-module-package
                                _path159082_
                                _pre159087_
                                _ns159088_))))
                      (begin
                        (let ((_g164485_
                               (if (##values? _g164484_)
                                   (##vector-length _g164484_)
                                   1)))
                          (if (not (##fx= _g164485_ 3))
                              (error "Context expects 3 values" _g164485_)))
                        (let ((_pre159118_ (##vector-ref _g164484_ 0))
                              (_ns159119_ (##vector-ref _g164484_ 1))
                              (_pkg159120_ (##vector-ref _g164484_ 2)))
                          (let* ((_prelude159122_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159118_)
                                      (gx#syntax-local-e__0 _pre159118_)
                                      (if (gx#core-library-module-path?
                                           _pre159118_)
                                          (gx#core-resolve-library-module-path
                                           _pre159118_)
                                          (if (gx#stx-string? _pre159118_)
                                              (gx#core-resolve-module-path__%
                                               _pre159118_
                                               _path159082_)
                                              (gx#stx-e _pre159118_)))))
                                 (_path-id159124_
                                  (gx#core-module-path->namespace
                                   _path159082_))
                                 (_pkg-id159126_
                                  (if _pkg159120_
                                      (string-append
                                       _pkg159120_
                                       '"/"
                                       _path-id159124_)
                                      _path-id159124_))
                                 (_module-id159128_
                                  (string->symbol _pkg-id159126_))
                                 (_module-ns159133_
                                  (if (eq? _ns159119_ '#!void)
                                      '#f
                                      (let ((_$e159130_ _ns159119_))
                                        (if _$e159130_
                                            _$e159130_
                                            _pkg-id159126_)))))
                            (values _prelude159122_
                                    _module-id159128_
                                    _module-ns159133_
                                    _body159086_)))))))
                 (_E159099159165_
                  (lambda ()
                    (if (gx#stx-pair? _e159090159114_)
                        (let ((_e159107159140_ (gx#syntax-e _e159090159114_)))
                          (let ((_hd159108159143_ (##car _e159107159140_))
                                (_tl159109159145_ (##cdr _e159107159140_)))
                            (if (eq? (gx#stx-e _hd159108159143_) 'package:)
                                (if (gx#stx-pair? _tl159109159145_)
                                    (let ((_e159110159148_
                                           (gx#syntax-e _tl159109159145_)))
                                      (let ((_hd159111159151_
                                             (##car _e159110159148_))
                                            (_tl159112159153_
                                             (##cdr _e159110159148_)))
                                        (let* ((_pkg159156_ _hd159111159151_)
                                               (_rest159158_ _tl159112159153_))
                                          (if '#t
                                              (let ((_pkg159163_
                                                     (if (gx#identifier?
                                                          _pkg159156_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159156_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159156_)
                         (gx#stx-false? _pkg159156_))
                     (gx#stx-e _pkg159156_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159084_
                                                 _rest159158_
                                                 _pre159087_
                                                 _ns159088_
                                                 _pkg159163_))
                                              (_E159106159136_)))))
                                    (_E159106159136_))
                                (_E159106159136_))))
                        (_E159106159136_))))
                 (_E159092159191_
                  (lambda ()
                    (if (gx#stx-pair? _e159090159114_)
                        (let ((_e159100159169_ (gx#syntax-e _e159090159114_)))
                          (let ((_hd159101159172_ (##car _e159100159169_))
                                (_tl159102159174_ (##cdr _e159100159169_)))
                            (if (eq? (gx#stx-e _hd159101159172_) 'namespace:)
                                (if (gx#stx-pair? _tl159102159174_)
                                    (let ((_e159103159177_
                                           (gx#syntax-e _tl159102159174_)))
                                      (let ((_hd159104159180_
                                             (##car _e159103159177_))
                                            (_tl159105159182_
                                             (##cdr _e159103159177_)))
                                        (let* ((_ns159185_ _hd159104159180_)
                                               (_rest159187_ _tl159105159182_))
                                          (if '#t
                                              (let ((_ns159189_
                                                     (if (gx#identifier?
                                                          _ns159185_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159185_))
                                                         (if (gx#stx-string?
                                                              _ns159185_)
                                                             (gx#stx-e
                                                              _ns159185_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159185_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159084_
                                                 _rest159187_
                                                 _pre159087_
                                                 _ns159189_
                                                 _pkg159089_))
                                              (_E159099159165_)))))
                                    (_E159099159165_))
                                (_E159099159165_))))
                        (_E159099159165_))))
                 (_E159091159215_
                  (lambda ()
                    (if (gx#stx-pair? _e159090159114_)
                        (let ((_e159093159195_ (gx#syntax-e _e159090159114_)))
                          (let ((_hd159094159198_ (##car _e159093159195_))
                                (_tl159095159200_ (##cdr _e159093159195_)))
                            (if (eq? (gx#stx-e _hd159094159198_) 'prelude:)
                                (if (gx#stx-pair? _tl159095159200_)
                                    (let ((_e159096159203_
                                           (gx#syntax-e _tl159095159200_)))
                                      (let ((_hd159097159206_
                                             (##car _e159096159203_))
                                            (_tl159098159208_
                                             (##cdr _e159096159203_)))
                                        (let* ((_prelude159211_
                                                _hd159097159206_)
                                               (_rest159213_ _tl159098159208_))
                                          (if '#t
                                              (_lp159084_
                                               _rest159213_
                                               _prelude159211_
                                               _ns159088_
                                               _pkg159089_)
                                              (_E159092159191_)))))
                                    (_E159092159191_))
                                (_E159092159191_))))
                        (_E159092159191_)))))
            (_E159091159215_)))))
    (define gx#core-read-module/lang
      (lambda (_path158909_)
        (letrec ((_default-read-module-body158911_
                  (lambda (_inp159074_)
                    (let _lp159076_ ((_body159078_ '()))
                      (let ((_next159080_ (read-syntax _inp159074_)))
                        (if (eof-object? _next159080_)
                            (reverse _body159078_)
                            (_lp159076_ (cons _next159080_ _body159078_)))))))
                 (_read-body158912_
                  (lambda (_inp158993_
                           _pre158994_
                           _ns158995_
                           _pkg158996_
                           _args158997_)
                    (let ((_g164486_
                           (if _pkg158996_
                               (values _pre158994_ _ns158995_ _pkg158996_)
                               (gx#core-read-module-package
                                _path158909_
                                _pre158994_
                                _ns158995_))))
                      (begin
                        (let ((_g164487_
                               (if (##values? _g164486_)
                                   (##vector-length _g164486_)
                                   1)))
                          (if (not (##fx= _g164487_ 3))
                              (error "Context expects 3 values" _g164487_)))
                        (let ((_pre158999_ (##vector-ref _g164486_ 0))
                              (_ns159000_ (##vector-ref _g164486_ 1))
                              (_pkg159001_ (##vector-ref _g164486_ 2)))
                          (let* ((_prelude159003_
                                  (gx#import-module__0 _pre158999_))
                                 (_read-module-body159057_
                                  (let ((_$e159049_
                                         (find (lambda (_e159004159006_)
                                                 (let* ((_g159008159018_
                                                         _e159004159006_)
                                                        (_else159010159026_
                                                         (lambda () '#f))
                                                        (_K159012159030_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159008159018_
                                                        'gx#module-export::t)
                                                       (let* ((_e159013159033_
                                                               (##unchecked-structure-ref
                                                                _g159008159018_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159014159036_
                                                               (##unchecked-structure-ref
                                                                _g159008159018_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159015159039_
                                                               (##unchecked-structure-ref
                                                                _g159008159018_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159015159039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159016159042_
                            (##unchecked-structure-ref
                             _g159008159018_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159044159046_)
                              (eq? _g159044159046_ 'read-module-body))
                            _e159016159042_)
                           (_K159012159030_)
                           (_else159010159026_)))
                     (_else159010159026_)))
               (_else159010159026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159003_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159049_
                                        ((lambda (_xport159052_)
                                           (let ((_proc159055_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159052_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159055_)
                                                 _proc159055_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path158909_
                                                  _pre158999_
                                                  _proc159055_))))
                                         _$e159049_)
                                        _default-read-module-body158911_)))
                                 (_path-id159059_
                                  (gx#core-module-path->namespace
                                   _path158909_))
                                 (_pkg-id159061_
                                  (if _pkg159001_
                                      (string-append
                                       _pkg159001_
                                       '"/"
                                       _path-id159059_)
                                      _path-id159059_))
                                 (_module-id159063_
                                  (string->symbol _pkg-id159061_))
                                 (_module-ns159068_
                                  (let ((_$e159065_ _ns159000_))
                                    (if _$e159065_ _$e159065_ _pkg-id159061_)))
                                 (_body159071_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159057_ _inp158993_))
                                   gx#current-module-reader-path
                                   _path158909_
                                   gx#current-module-reader-args
                                   _args158997_)))
                            (values _prelude159003_
                                    _module-id159063_
                                    _module-ns159068_
                                    _body159071_)))))))
                 (_string-e158913_
                  (lambda (_obj158990_ _what158991_)
                    (if (string? _obj158990_)
                        _obj158990_
                        (if (symbol? _obj158990_)
                            (symbol->string _obj158990_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what158991_)
                             _path158909_
                             _obj158990_)))))
                 (_read-lang-args158914_
                  (lambda (_inp158945_ _args158946_)
                    (let* ((_args158947158955_ _args158946_)
                           (_else158949158963_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path158909_)))
                           (_K158951158978_
                            (lambda (_args158966_ _prelude158967_)
                              (let* ((_pkg158969_
                                      (pgetq 'package: _args158966_))
                                     (_pkg158971_
                                      (if _pkg158969_
                                          (_string-e158913_
                                           _pkg158969_
                                           '"package")
                                          '#f))
                                     (_ns158973_
                                      (pgetq 'namespace: _args158966_))
                                     (_ns158975_
                                      (if _ns158973_
                                          (_string-e158913_
                                           _ns158973_
                                           '"namespace")
                                          '#f)))
                                (_read-body158912_
                                 _inp158945_
                                 _prelude158967_
                                 _ns158975_
                                 _pkg158971_
                                 _args158966_)))))
                      (if (##pair? _args158947158955_)
                          (let ((_hd158952158981_ (##car _args158947158955_))
                                (_tl158953158983_ (##cdr _args158947158955_)))
                            (let* ((_prelude158986_ _hd158952158981_)
                                   (_args158988_ _tl158953158983_))
                              (_K158951158978_ _args158988_ _prelude158986_)))
                          (_else158949158963_)))))
                 (_read-lang158915_
                  (lambda (_inp158920_)
                    (let* ((_head158922_ (read-line _inp158920_))
                           (_$e158924_ (string-index _head158922_ '#\space)))
                      (if _$e158924_
                          ((lambda (_ix158927_)
                             (let ((_lang158929_
                                    (substring _head158922_ '0 _ix158927_)))
                               (if (equal? _lang158929_ '"#lang")
                                   (let* ((_rest158931_
                                           (substring
                                            _head158922_
                                            (fx+ _ix158927_ '1)
                                            (string-length _head158922_)))
                                          (_args158942_
                                           (with-catch
                                            (lambda (_g158932158934_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path158909_
                                               _g158932158934_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest158931_
                                               (lambda (_g158937158939_)
                                                 (read-all
                                                  _g158937158939_
                                                  read)))))))
                                     (_read-lang-args158914_
                                      _inp158920_
                                      _args158942_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path158909_))))
                           _$e158924_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path158909_)))))
                 (_read-e158916_
                  (lambda (_inp158918_)
                    (if (eq? (peek-char _inp158918_) '#\#)
                        (_read-lang158915_ _inp158918_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path158909_)))))
          (gx#call-with-input-source-file _path158909_ _read-e158916_))))
    (define gx#core-read-module-package
      (lambda (_path158863_ _pre158864_ _ns158865_)
        (letrec ((_string-e158867_
                  (lambda (_e158907_)
                    (if (symbol? _e158907_)
                        (symbol->string _e158907_)
                        (if (string? _e158907_)
                            _e158907_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e158907_))))))
          (let _lp158869_ ((_dir158871_ (path-directory _path158863_))
                           (_pkg-path158872_ '()))
            (let ((_gerbil.pkg158874_ (path-expand '"gerbil.pkg" _dir158871_)))
              (if (file-exists? _gerbil.pkg158874_)
                  (let ((_plist158876_
                         (gx#core-library-package-plist__% _dir158871_ '#t)))
                    (if (null? _plist158876_)
                        (let ((_pkg158878_
                               (if (not (null? _pkg-path158872_))
                                   (string-join _pkg-path158872_ '"/")
                                   '#f)))
                          (values _pre158864_ _ns158865_ _pkg158878_))
                        (if (list? _plist158876_)
                            (let* ((_root158880_
                                    (pgetq 'package: _plist158876_))
                                   (_pkg158884_
                                    (let ((_pkg-path158882_
                                           (if _root158880_
                                               (cons (_string-e158867_
                                                      _root158880_)
                                                     _pkg-path158872_)
                                               _pkg-path158872_)))
                                      (if (not (null? _pkg-path158882_))
                                          (string-join _pkg-path158882_ '"/")
                                          '#f)))
                                   (_ns158891_
                                    (let ((_ns158889_
                                           (let ((_$e158886_ _ns158865_))
                                             (if _$e158886_
                                                 _$e158886_
                                                 (pgetq 'namespace:
                                                        _plist158876_)))))
                                      (if _ns158889_
                                          (_string-e158867_ _ns158889_)
                                          '#f)))
                                   (_pre158896_
                                    (let ((_$e158893_ _pre158864_))
                                      (if _$e158893_
                                          _$e158893_
                                          (pgetq 'prelude: _plist158876_)))))
                              (values _pre158896_ _ns158891_ _pkg158884_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist158876_))))
                  (let ((_dir*158899_
                         (path-strip-trailing-directory-separator
                          _dir158871_)))
                    (if (or (string-empty? _dir*158899_)
                            (equal? _dir158871_ _dir*158899_))
                        (values _pre158864_ _ns158865_ '#f)
                        (let ((_xpath158904_
                               (path-strip-directory _dir*158899_))
                              (_xdir158905_ (path-directory _dir*158899_)))
                          (_lp158869_
                           _xdir158905_
                           (cons _xpath158904_ _pkg-path158872_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path158861_)
        (path-strip-extension (path-strip-directory _path158861_))))
    (define gx#core-module-path->id
      (lambda (_path158859_)
        (string->symbol (gx#core-module-path->namespace _path158859_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path158838_ _rel158839_)
        (let* ((_path158841_ (gx#stx-e _stx-path158838_))
               (_path158843_
                (if (string-empty? (path-extension _path158841_))
                    (string-append _path158841_ '".ss")
                    _path158841_)))
          (gx#core-resolve-path__%
           _path158843_
           (let ((_$e158846_ (gx#stx-source _stx-path158838_)))
             (if _$e158846_ _$e158846_ _rel158839_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path158852_)
        (let ((_rel158854_ '#f))
          (gx#core-resolve-module-path__% _stx-path158852_ _rel158854_))))
    (define gx#core-resolve-module-path
      (lambda _g164489_
        (let ((_g164488_ (##length _g164489_)))
          (cond ((##fx= _g164488_ 1)
                 (apply (lambda (_stx-path158852_)
                          (gx#core-resolve-module-path__0 _stx-path158852_))
                        _g164489_))
                ((##fx= _g164488_ 2)
                 (apply (lambda (_stx-path158856_ _rel158857_)
                          (gx#core-resolve-module-path__%
                           _stx-path158856_
                           _rel158857_))
                        _g164489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g164489_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath158724_)
        (let* ((_spath158726_ (symbol->string (gx#stx-e _libpath158724_)))
               (_spath158728_
                (substring _spath158726_ '1 (string-length _spath158726_)))
               (_ext158730_ (path-extension _spath158728_))
               (_ssi158732_
                (if (string-empty? _ext158730_)
                    (string-append _spath158728_ '".ssi")
                    (string-append
                     (path-strip-extension _spath158728_)
                     '".ssi")))
               (_srcs158736_
                (if (string-empty? _ext158730_)
                    (map (lambda (_ext158734_)
                           (string-append _spath158728_ _ext158734_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath158728_ '()))))
          (let _lp158739_ ((_rest158741_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest158742158751_ _rest158741_)
                   (_E158745158755_
                    (lambda ()
                      (error '"No clause matching" _rest158742158751_))))
              (let ((_K158747158825_
                     (lambda (_rest158766_ _dir158767_)
                       (letrec ((_resolve158769_
                                 (lambda (_ssi158781_ _srcs158782_)
                                   (let ((_compiled-path158784_
                                          (path-expand
                                           _ssi158781_
                                           _dir158767_)))
                                     (if (file-exists? _compiled-path158784_)
                                         (path-normalize _compiled-path158784_)
                                         (let _lpr158786_ ((_rest-src158788_
                                                            _srcs158782_))
                                           (let* ((_rest-src158789158797_
                                                   _rest-src158788_)
                                                  (_else158791158805_
                                                   (lambda ()
                                                     (_lp158739_
                                                      _rest158766_)))
                                                  (_K158793158813_
                                                   (lambda (_rest-src158808_
                                                            _src158809_)
                                                     (let ((_src-path158811_
                                                            (path-expand
                                                             _src158809_
                                                             _dir158767_)))
                                                       (if (file-exists?
                                                            _src-path158811_)
                                                           (path-normalize
                                                            _src-path158811_)
                                                           (_lpr158786_
                                                            _rest-src158808_))))))
                                             (if (##pair? _rest-src158789158797_)
                                                 (let ((_hd158794158816_
                                                        (##car _rest-src158789158797_))
                                                       (_tl158795158818_
                                                        (##cdr _rest-src158789158797_)))
                                                   (let* ((_src158821_
                                                           _hd158794158816_)
                                                          (_rest-src158823_
                                                           _tl158795158818_))
                                                     (_K158793158813_
                                                      _rest-src158823_
                                                      _src158821_)))
                                                 (_else158791158805_)))))))))
                         (let ((_$e158771_
                                (gx#core-library-package-path-prefix
                                 _dir158767_)))
                           (if _$e158771_
                               ((lambda (_prefix158774_)
                                  (if (string-prefix?
                                       _prefix158774_
                                       _spath158728_)
                                      (let ((_ssi158778_
                                             (substring
                                              _ssi158732_
                                              (string-length _prefix158774_)
                                              (string-length _ssi158732_)))
                                            (_srcs158779_
                                             (map (lambda (_src158776_)
                                                    (substring
                                                     _src158776_
                                                     (string-length
                                                      _prefix158774_)
                                                     (string-length
                                                      _src158776_)))
                                                  _srcs158736_)))
                                        (_resolve158769_
                                         _ssi158778_
                                         _srcs158779_))
                                      (_lp158739_ _rest158766_)))
                                _$e158771_)
                               (_resolve158769_ _ssi158732_ _srcs158736_))))))
                    (_K158746158760_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath158724_))))
                (let ((_try-match158744158763_
                       (lambda ()
                         (if (##null? _rest158742158751_)
                             (_K158746158760_)
                             (_E158745158755_)))))
                  (if (##pair? _rest158742158751_)
                      (let ((_tl158749158830_ (##cdr _rest158742158751_))
                            (_hd158748158828_ (##car _rest158742158751_)))
                        (let ((_dir158833_ _hd158748158828_)
                              (_rest158835_ _tl158749158830_))
                          (_K158747158825_ _rest158835_ _dir158833_)))
                      (_try-match158744158763_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath158697_)
        (letrec ((_resolve158699_
                  (lambda (_path158716_ _base158717_)
                    (let ((_$e158719_ (string-rindex _base158717_ '#\/)))
                      (if _$e158719_
                          ((lambda (_idx158722_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base158717_ '0 _idx158722_)
                                '"/"
                                _path158716_))))
                           _$e158719_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path158716_))))))))
          (let ((_spath158701_ (symbol->string (gx#stx-e _modpath158697_)))
                (_mod158702_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod158702_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath158697_))
            (let ((_mpath158704_
                   (symbol->string
                    (##structure-ref
                     _mod158702_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp158706_ ((_spath158708_ _spath158701_)
                               (_mpath158709_ _mpath158704_))
                (if (string-prefix? '"../" _spath158708_)
                    (let ((_$e158711_ (string-rindex _mpath158709_ '#\/)))
                      (if _$e158711_
                          ((lambda (_idx158714_)
                             (_lp158706_
                              (substring
                               _spath158708_
                               '3
                               (string-length _spath158708_))
                              (substring _mpath158709_ '0 _idx158714_)))
                           _$e158711_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath158697_)))
                    (if (string-prefix? '"./" _spath158708_)
                        (_lp158706_
                         (substring
                          _spath158708_
                          '2
                          (string-length _spath158708_))
                         _mpath158709_)
                        (_resolve158699_ _spath158708_ _mpath158709_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir158690_)
        (let ((_$e158692_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir158690_))))
          (if _$e158692_
              ((lambda (_pkg158695_)
                 (string-append (symbol->string _pkg158695_) '"/"))
               _$e158692_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir158662_ _exists?158663_)
        (let* ((_cache158665_ (gx#core-library-package-cache))
               (_$e158667_ (hash-get _cache158665_ _dir158662_)))
          (if _$e158667_
              (values _$e158667_)
              (let* ((_gerbil.pkg158670_
                      (path-expand '"gerbil.pkg" _dir158662_))
                     (_plist158677_
                      (if (or _exists?158663_
                              (file-exists? _gerbil.pkg158670_))
                          (let ((_e158675_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg158670_
                                  read)))
                            (if (eof-object? _e158675_)
                                '()
                                (if (list? _e158675_)
                                    _e158675_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg158670_
                                     _e158675_))))
                          '())))
                (table-set! _cache158665_ _dir158662_ _plist158677_)
                _plist158677_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir158683_)
        (let ((_exists?158685_ '#f))
          (gx#core-library-package-plist__% _dir158683_ _exists?158685_))))
    (define gx#core-library-package-plist
      (lambda _g164491_
        (let ((_g164490_ (##length _g164491_)))
          (cond ((##fx= _g164490_ 1)
                 (apply (lambda (_dir158683_)
                          (gx#core-library-package-plist__0 _dir158683_))
                        _g164491_))
                ((##fx= _g164490_ 2)
                 (apply (lambda (_dir158687_ _exists?158688_)
                          (gx#core-library-package-plist__%
                           _dir158687_
                           _exists?158688_))
                        _g164491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g164491_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e158656_ (gx#current-expander-module-library-package-cache)))
          (if _$e158656_
              (values _$e158656_)
              (let ((_cache158659_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache
                 _cache158659_)
                _cache158659_)))))
    (define gx#core-library-module-path?
      (lambda (_stx158653_) (gx#core-special-module-path? _stx158653_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx158651_) (gx#core-special-module-path? _stx158651_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx158646_ _char158647_)
        (if (gx#identifier? _stx158646_)
            (if (interned-symbol? (gx#stx-e _stx158646_))
                (let ((_str158649_ (symbol->string (gx#stx-e _stx158646_))))
                  (if (fx> (string-length _str158649_) '1)
                      (eq? (string-ref _str158649_ '0) _char158647_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx158640_)
        (gx#core-bound-identifier?__%
         _stx158640_
         (lambda (_g158641158643_)
           (gx#expander-binding?__% _g158641158643_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx158634_)
        (gx#core-bound-identifier?__%
         _stx158634_
         (lambda (_g158635158637_)
           (gx#expander-binding?__% _g158635158637_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx158621_)
        (letrec ((_module-prelude?158623_
                  (lambda (_e158629_)
                    (let ((_$e158631_
                           (##structure-instance-of?
                            _e158629_
                            'gx#module-context::t)))
                      (if _$e158631_
                          _$e158631_
                          (##structure-instance-of?
                           _e158629_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx158621_
           (lambda (_g158624158626_)
             (gx#expander-binding?__%
              _g158624158626_
              _module-prelude?158623_))))))
    (define gx#core-bind-import!__%
      (lambda (_in158551_ _ctx158552_ _force-weak?158553_)
        (let* ((_in158554158563_ _in158551_)
               (_E158556158567_
                (lambda () (error '"No clause matching" _in158554158563_)))
               (_K158557158580_
                (lambda (_weak?158570_ _phi158571_ _key158572_ _source158573_)
                  (gx#core-bind!__%
                   _key158572_
                   (let ((_e158575_
                          (gx#core-resolve-module-export _source158573_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e158575_
                       '1
                       gx#binding::t
                       '#f)
                      _key158572_
                      _phi158571_
                      _e158575_
                      (##unchecked-structure-ref
                       _source158573_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e158577_ _force-weak?158553_))
                        (if _$e158577_ _$e158577_ _weak?158570_))))
                   gx#core-context-rebind?
                   _phi158571_
                   _ctx158552_))))
          (if (##structure-direct-instance-of?
               _in158554158563_
               'gx#module-import::t)
              (let* ((_e158558158583_
                      (##unchecked-structure-ref
                       _in158554158563_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source158586_ _e158558158583_)
                     (_e158559158588_
                      (##unchecked-structure-ref
                       _in158554158563_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key158591_ _e158559158588_)
                     (_e158560158593_
                      (##unchecked-structure-ref
                       _in158554158563_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi158596_ _e158560158593_)
                     (_e158561158598_
                      (##unchecked-structure-ref
                       _in158554158563_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?158601_ _e158561158598_))
                (_K158557158580_
                 _weak?158601_
                 _phi158596_
                 _key158591_
                 _source158586_))
              (_E158556158567_)))))
    (define gx#core-bind-import!__0
      (lambda (_in158606_)
        (let* ((_ctx158608_ (gx#current-expander-context))
               (_force-weak?158610_ '#f))
          (gx#core-bind-import!__%
           _in158606_
           _ctx158608_
           _force-weak?158610_))))
    (define gx#core-bind-import!__1
      (lambda (_in158612_ _ctx158613_)
        (let ((_force-weak?158615_ '#f))
          (gx#core-bind-import!__%
           _in158612_
           _ctx158613_
           _force-weak?158615_))))
    (define gx#core-bind-import!
      (lambda _g164493_
        (let ((_g164492_ (##length _g164493_)))
          (cond ((##fx= _g164492_ 1)
                 (apply (lambda (_in158606_)
                          (gx#core-bind-import!__0 _in158606_))
                        _g164493_))
                ((##fx= _g164492_ 2)
                 (apply (lambda (_in158612_ _ctx158613_)
                          (gx#core-bind-import!__1 _in158612_ _ctx158613_))
                        _g164493_))
                ((##fx= _g164492_ 3)
                 (apply (lambda (_in158617_ _ctx158618_ _force-weak?158619_)
                          (gx#core-bind-import!__%
                           _in158617_
                           _ctx158618_
                           _force-weak?158619_))
                        _g164493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g164493_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in158537_ _ctx158538_)
        (gx#core-bind-import!__% _in158537_ _ctx158538_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in158543_)
        (let ((_ctx158545_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in158543_ _ctx158545_))))
    (define gx#core-bind-weak-import!
      (lambda _g164495_
        (let ((_g164494_ (##length _g164495_)))
          (cond ((##fx= _g164494_ 1)
                 (apply (lambda (_in158543_)
                          (gx#core-bind-weak-import!__0 _in158543_))
                        _g164495_))
                ((##fx= _g164494_ 2)
                 (apply (lambda (_in158547_ _ctx158548_)
                          (gx#core-bind-weak-import!__%
                           _in158547_
                           _ctx158548_))
                        _g164495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g164495_))))))
    (define gx#core-resolve-module-export
      (lambda (_out158428_)
        (letrec ((_subst158430_
                  (lambda (_key158476_)
                    (let* ((_key158477158485_ _key158476_)
                           (_else158479158493_ (lambda () _key158476_))
                           (_K158481158524_
                            (lambda (_mark158496_ _id158497_)
                              (let* ((_mark158498158504_ _mark158496_)
                                     (_E158500158508_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark158498158504_)))
                                     (_K158501158516_
                                      (lambda (_subst158511_)
                                        (let ((_$e158513_
                                               (if _subst158511_
                                                   (hash-get
                                                    _subst158511_
                                                    _id158497_)
                                                   '#f)))
                                          (if _$e158513_
                                              _$e158513_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key158476_))))))
                                (if (##structure-instance-of?
                                     _mark158498158504_
                                     'gx#expander-mark::t)
                                    (let* ((_e158502158519_
                                            (##unchecked-structure-ref
                                             _mark158498158504_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst158522_ _e158502158519_))
                                      (_K158501158516_ _subst158522_))
                                    (_E158500158508_))))))
                      (if (##pair? _key158477158485_)
                          (let ((_hd158482158527_ (##car _key158477158485_))
                                (_tl158483158529_ (##cdr _key158477158485_)))
                            (let* ((_id158532_ _hd158482158527_)
                                   (_mark158534_ _tl158483158529_))
                              (_K158481158524_ _mark158534_ _id158532_)))
                          (_else158479158493_))))))
          (let* ((_out158431158441_ _out158428_)
                 (_E158433158445_
                  (lambda () (error '"No clause matching" _out158431158441_)))
                 (_K158434158452_
                  (lambda (_phi158448_ _key158449_ _ctx158450_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx158450_ _phi158448_)
                     (_subst158430_ _key158449_)))))
            (if (##structure-direct-instance-of?
                 _out158431158441_
                 'gx#module-export::t)
                (let* ((_e158435158455_
                        (##unchecked-structure-ref
                         _out158431158441_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx158458_ _e158435158455_)
                       (_e158436158460_
                        (##unchecked-structure-ref
                         _out158431158441_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key158463_ _e158436158460_)
                       (_e158437158465_
                        (##unchecked-structure-ref
                         _out158431158441_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi158468_ _e158437158465_)
                       (_e158438158470_
                        (##unchecked-structure-ref
                         _out158431158441_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e158439158473_
                        (##unchecked-structure-ref
                         _out158431158441_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K158434158452_ _phi158468_ _key158463_ _ctx158458_))
                (_E158433158445_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158353_ _rename158354_ _dphi158355_)
        (let* ((_out158356158366_ _out158353_)
               (_E158358158370_
                (lambda () (error '"No clause matching" _out158356158366_)))
               (_K158359158382_
                (lambda (_weak?158373_
                         _name158374_
                         _phi158375_
                         _key158376_
                         _ctx158377_)
                  (##structure
                   gx#module-import::t
                   _out158353_
                   (let ((_$e158379_ _rename158354_))
                     (if _$e158379_ _$e158379_ _name158374_))
                   (fx+ _phi158375_ _dphi158355_)
                   _weak?158373_))))
          (if (##structure-direct-instance-of?
               _out158356158366_
               'gx#module-export::t)
              (let* ((_e158360158385_
                      (##unchecked-structure-ref
                       _out158356158366_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158388_ _e158360158385_)
                     (_e158361158390_
                      (##unchecked-structure-ref
                       _out158356158366_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158393_ _e158361158390_)
                     (_e158362158395_
                      (##unchecked-structure-ref
                       _out158356158366_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158398_ _e158362158395_)
                     (_e158363158400_
                      (##unchecked-structure-ref
                       _out158356158366_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158403_ _e158363158400_)
                     (_e158364158405_
                      (##unchecked-structure-ref
                       _out158356158366_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?158408_ _e158364158405_))
                (_K158359158382_
                 _weak?158408_
                 _name158403_
                 _phi158398_
                 _key158393_
                 _ctx158388_))
              (_E158358158370_)))))
    (define gx#core-module-export->import__0
      (lambda (_out158413_)
        (let* ((_rename158415_ '#f) (_dphi158417_ '0))
          (gx#core-module-export->import__%
           _out158413_
           _rename158415_
           _dphi158417_))))
    (define gx#core-module-export->import__1
      (lambda (_out158419_ _rename158420_)
        (let ((_dphi158422_ '0))
          (gx#core-module-export->import__%
           _out158419_
           _rename158420_
           _dphi158422_))))
    (define gx#core-module-export->import
      (lambda _g164497_
        (let ((_g164496_ (##length _g164497_)))
          (cond ((##fx= _g164496_ 1)
                 (apply (lambda (_out158413_)
                          (gx#core-module-export->import__0 _out158413_))
                        _g164497_))
                ((##fx= _g164496_ 2)
                 (apply (lambda (_out158419_ _rename158420_)
                          (gx#core-module-export->import__1
                           _out158419_
                           _rename158420_))
                        _g164497_))
                ((##fx= _g164496_ 3)
                 (apply (lambda (_out158424_ _rename158425_ _dphi158426_)
                          (gx#core-module-export->import__%
                           _out158424_
                           _rename158425_
                           _dphi158426_))
                        _g164497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g164497_))))))
    (define gx#core-expand-module%
      (lambda (_stx158281_)
        (letrec ((_make-context158283_
                  (lambda (_id158334_)
                    (let* ((_super158336_ (gx#current-expander-context))
                           (_bind-id158338_ (gx#stx-e _id158334_))
                           (_mod-id158340_
                            (if (##structure-instance-of?
                                 _super158336_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158336_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158338_)
                                _bind-id158338_))
                           (_ns158342_ (symbol->string _mod-id158340_))
                           (_path158349_
                            (if (##structure-instance-of?
                                 _super158336_
                                 'gx#module-context::t)
                                (let ((_path158344_
                                       (##unchecked-structure-ref
                                        _super158336_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158344_)
                                          (null? _path158344_))
                                      (cons _bind-id158338_ _path158344_)
                                      (if (not _path158344_)
                                          _bind-id158338_
                                          (cons _bind-id158338_
                                                (cons _path158344_ '())))))
                                _bind-id158338_)))
                      (let ((__obj164473
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
                         __obj164473
                         _mod-id158340_
                         _super158336_
                         _ns158342_
                         _path158349_)
                        __obj164473)))))
          (let* ((_e158284158294_ _stx158281_)
                 (_E158286158298_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158284158294_)))
                 (_E158285158330_
                  (lambda ()
                    (if (gx#stx-pair? _e158284158294_)
                        (let ((_e158287158302_ (gx#syntax-e _e158284158294_)))
                          (let ((_hd158288158305_ (##car _e158287158302_))
                                (_tl158289158307_ (##cdr _e158287158302_)))
                            (if (gx#stx-pair? _tl158289158307_)
                                (let ((_e158290158310_
                                       (gx#syntax-e _tl158289158307_)))
                                  (let ((_hd158291158313_
                                         (##car _e158290158310_))
                                        (_tl158292158315_
                                         (##cdr _e158290158310_)))
                                    (let* ((_id158318_ _hd158291158313_)
                                           (_body158320_ _tl158292158315_))
                                      (if (and (gx#identifier? _id158318_)
                                               (gx#stx-list? _body158320_))
                                          (let* ((_ctx158322_
                                                  (_make-context158283_
                                                   _id158318_))
                                                 (_body158324_
                                                  (gx#core-expand-module-begin
                                                   _body158320_
                                                   _ctx158322_))
                                                 (_body158326_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158324_)
                                                   (gx#stx-source
                                                    _stx158281_))))
                                            (##unchecked-structure-set!
                                             _ctx158322_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158326_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158322_
                                             _body158326_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158318_
                                             _ctx158322_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158318_)
                                              _body158326_)
                                             (gx#stx-source _stx158281_)))
                                          (_E158286158298_)))))
                                (_E158286158298_))))
                        (_E158286158298_)))))
            (_E158285158330_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158247_ _ctx158248_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158251_
                   (gx#core-expand-head (cons '%%begin-module _body158247_)))
                  (_e158252158259_ _stx158251_)
                  (_E158254158263_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158251_)))
                  (_E158253158277_
                   (lambda ()
                     (if (gx#stx-pair? _e158252158259_)
                         (let ((_e158255158267_ (gx#syntax-e _e158252158259_)))
                           (let ((_hd158256158270_ (##car _e158255158267_))
                                 (_tl158257158272_ (##cdr _e158255158267_)))
                             (if (and (gx#identifier? _hd158256158270_)
                                      (gx#core-identifier=?
                                       _hd158256158270_
                                       '%#begin-module))
                                 (let ((_body158275_ _tl158257158272_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158251_)
                                           _body158275_
                                           (gx#core-expand-module-body
                                            _body158275_))
                                       (_E158254158263_)))
                                 (_E158254158263_))))
                         (_E158254158263_)))))
             (_E158253158277_)))
         gx#current-expander-context
         _ctx158248_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158043_)
        (letrec ((_expand-special158045_
                  (lambda (_hd158174_ _K158175_ _rest158176_ _r158177_)
                    (let* ((_e158178158195_ _hd158174_)
                           (_E158190158199_
                            (lambda ()
                              (_K158175_
                               _rest158176_
                               (cons (gx#core-expand-top _hd158174_)
                                     _r158177_))))
                           (_E158180158211_
                            (lambda ()
                              (if (gx#stx-pair? _e158178158195_)
                                  (let ((_e158191158203_
                                         (gx#syntax-e _e158178158195_)))
                                    (let ((_hd158192158206_
                                           (##car _e158191158203_))
                                          (_tl158193158208_
                                           (##cdr _e158191158203_)))
                                      (if (and (gx#identifier?
                                                _hd158192158206_)
                                               (gx#core-identifier=?
                                                _hd158192158206_
                                                '%#export))
                                          (if '#t
                                              (_K158175_
                                               _rest158176_
                                               (cons _hd158174_ _r158177_))
                                              (_E158190158199_))
                                          (_E158190158199_))))
                                  (_E158190158199_))))
                           (_E158179158243_
                            (lambda ()
                              (if (gx#stx-pair? _e158178158195_)
                                  (let ((_e158181158215_
                                         (gx#syntax-e _e158178158195_)))
                                    (let ((_hd158182158218_
                                           (##car _e158181158215_))
                                          (_tl158183158220_
                                           (##cdr _e158181158215_)))
                                      (if (and (gx#identifier?
                                                _hd158182158218_)
                                               (gx#core-identifier=?
                                                _hd158182158218_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158183158220_)
                                              (let ((_e158184158223_
                                                     (gx#syntax-e
                                                      _tl158183158220_)))
                                                (let ((_hd158185158226_
                                                       (##car _e158184158223_))
                                                      (_tl158186158228_
                                                       (##cdr _e158184158223_)))
                                                  (let ((_hd-bind158231_
                                                         _hd158185158226_))
                                                    (if (gx#stx-pair?
                                                         _tl158186158228_)
                                                        (let ((_e158187158233_
                                                               (gx#syntax-e
                                                                _tl158186158228_)))
                                                          (let ((_hd158188158236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158187158233_))
                        (_tl158189158238_ (##cdr _e158187158233_)))
                    (let ((_expr158241_ _hd158188158236_))
                      (if (gx#stx-null? _tl158189158238_)
                          (if (gx#core-bind-values? _hd-bind158231_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158231_)
                                (_K158175_
                                 _rest158176_
                                 (cons _hd158174_ _r158177_)))
                              (_E158180158211_))
                          (_E158180158211_)))))
                (_E158180158211_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158180158211_))
                                          (_E158180158211_))))
                                  (_E158180158211_)))))
                      (_E158179158243_))))
                 (_expand-body158046_
                  (lambda (_rbody158048_)
                    (let _lp158050_ ((_rest158052_ _rbody158048_)
                                     (_body158053_ '()))
                      (let* ((_rest158054158062_ _rest158052_)
                             (_else158056158070_ (lambda () _body158053_))
                             (_K158058158162_
                              (lambda (_rest158073_ _hd158074_)
                                (let* ((_e158075158096_ _hd158074_)
                                       (_E158091158100_
                                        (lambda ()
                                          (_lp158050_
                                           _rest158073_
                                           (cons (gx#core-expand-expression
                                                  _hd158074_)
                                                 _body158053_))))
                                       (_E158087158114_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158075158096_)
                                              (let ((_e158092158104_
                                                     (gx#syntax-e
                                                      _e158075158096_)))
                                                (let ((_hd158093158107_
                                                       (##car _e158092158104_))
                                                      (_tl158094158109_
                                                       (##cdr _e158092158104_)))
                                                  (let ((_form158112_
                                                         _hd158093158107_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158112_
                                                         gx#special-form-binding?)
                                                        (_lp158050_
                                                         _rest158073_
                                                         (cons _hd158074_
                                                               _body158053_))
                                                        (_E158091158100_)))))
                                              (_E158091158100_))))
                                       (_E158077158126_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158075158096_)
                                              (let ((_e158088158118_
                                                     (gx#syntax-e
                                                      _e158075158096_)))
                                                (let ((_hd158089158121_
                                                       (##car _e158088158118_))
                                                      (_tl158090158123_
                                                       (##cdr _e158088158118_)))
                                                  (if (and (gx#identifier?
                                                            _hd158089158121_)
                                                           (gx#core-identifier=?
                                                            _hd158089158121_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158050_
                                                           _rest158073_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158074_)
                         _body158053_))
                  (_E158087158114_))
              (_E158087158114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158087158114_))))
                                       (_E158076158158_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158075158096_)
                                              (let ((_e158078158130_
                                                     (gx#syntax-e
                                                      _e158075158096_)))
                                                (let ((_hd158079158133_
                                                       (##car _e158078158130_))
                                                      (_tl158080158135_
                                                       (##cdr _e158078158130_)))
                                                  (if (and (gx#identifier?
                                                            _hd158079158133_)
                                                           (gx#core-identifier=?
                                                            _hd158079158133_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158080158135_)
                                                          (let ((_e158081158138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158080158135_)))
                    (let ((_hd158082158141_ (##car _e158081158138_))
                          (_tl158083158143_ (##cdr _e158081158138_)))
                      (let ((_hd-bind158146_ _hd158082158141_))
                        (if (gx#stx-pair? _tl158083158143_)
                            (let ((_e158084158148_
                                   (gx#syntax-e _tl158083158143_)))
                              (let ((_hd158085158151_ (##car _e158084158148_))
                                    (_tl158086158153_ (##cdr _e158084158148_)))
                                (let ((_expr158156_ _hd158085158151_))
                                  (if (gx#stx-null? _tl158086158153_)
                                      (if '#t
                                          (_lp158050_
                                           _rest158073_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158146_)
                                                   (gx#core-expand-expression
                                                    _expr158156_))
                                                  (gx#stx-source _hd158074_))
                                                 _body158053_))
                                          (_E158077158126_))
                                      (_E158077158126_)))))
                            (_E158077158126_)))))
                  (_E158077158126_))
              (_E158077158126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158077158126_)))))
                                  (_E158076158158_)))))
                        (if (##pair? _rest158054158062_)
                            (let ((_hd158059158165_ (##car _rest158054158062_))
                                  (_tl158060158167_
                                   (##cdr _rest158054158062_)))
                              (let* ((_hd158170_ _hd158059158165_)
                                     (_rest158172_ _tl158060158167_))
                                (_K158058158162_ _rest158172_ _hd158170_)))
                            (_else158056158070_)))))))
          (_expand-body158046_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158043_)
            _expand-special158045_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx157886_
               _expanded?157887_
               _method157888_
               _current-phi157889_
               _expand1157890_)
        (letrec ((_K157892_
                  (lambda (_rest158010_ _r158011_)
                    (let* ((_e158012158019_ _rest158010_)
                           (_E158014158023_ (lambda () _r158011_))
                           (_E158013158039_
                            (lambda ()
                              (if (gx#stx-pair? _e158012158019_)
                                  (let ((_e158015158027_
                                         (gx#syntax-e _e158012158019_)))
                                    (let ((_hd158016158030_
                                           (##car _e158015158027_))
                                          (_tl158017158032_
                                           (##cdr _e158015158027_)))
                                      (let* ((_hd158035_ _hd158016158030_)
                                             (_rest158037_ _tl158017158032_))
                                        (if '#t
                                            (_step157893_
                                             _hd158035_
                                             _rest158037_
                                             _r158011_)
                                            (_E158014158023_)))))
                                  (_E158014158023_)))))
                      (_E158013158039_))))
                 (_step157893_
                  (lambda (_hd157924_ _rest157925_ _r157926_)
                    (let* ((_e157927157945_ _hd157924_)
                           (_E157940157949_
                            (lambda ()
                              (if (_expanded?157887_ (gx#stx-e _hd157924_))
                                  (_K157892_
                                   _rest157925_
                                   (cons (gx#stx-e _hd157924_) _r157926_))
                                  (_expand1157890_
                                   _hd157924_
                                   _K157892_
                                   _rest157925_
                                   _r157926_))))
                           (_E157936157965_
                            (lambda ()
                              (if (gx#stx-pair? _e157927157945_)
                                  (let ((_e157941157953_
                                         (gx#syntax-e _e157927157945_)))
                                    (let ((_hd157942157956_
                                           (##car _e157941157953_))
                                          (_tl157943157958_
                                           (##cdr _e157941157953_)))
                                      (let* ((_macro157961_ _hd157942157956_)
                                             (_body157963_ _tl157943157958_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro157961_
                                             gx#syntax-binding?)
                                            (_K157892_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro157961_)
                                                    _hd157924_
                                                    _method157888_)
                                                   _rest157925_)
                                             _r157926_)
                                            (_E157940157949_)))))
                                  (_E157940157949_))))
                           (_E157929157979_
                            (lambda ()
                              (if (gx#stx-pair? _e157927157945_)
                                  (let ((_e157937157969_
                                         (gx#syntax-e _e157927157945_)))
                                    (let ((_hd157938157972_
                                           (##car _e157937157969_))
                                          (_tl157939157974_
                                           (##cdr _e157937157969_)))
                                      (if (eq? (gx#stx-e _hd157938157972_)
                                               'begin:)
                                          (let ((_body157977_
                                                 _tl157939157974_))
                                            (if '#t
                                                (_K157892_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest157925_
                                                  _body157977_)
                                                 _r157926_)
                                                (_E157936157965_)))
                                          (_E157936157965_))))
                                  (_E157936157965_))))
                           (_E157928158006_
                            (lambda ()
                              (if (gx#stx-pair? _e157927157945_)
                                  (let ((_e157930157983_
                                         (gx#syntax-e _e157927157945_)))
                                    (let ((_hd157931157986_
                                           (##car _e157930157983_))
                                          (_tl157932157988_
                                           (##cdr _e157930157983_)))
                                      (if (eq? (gx#stx-e _hd157931157986_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl157932157988_)
                                              (let ((_e157933157991_
                                                     (gx#syntax-e
                                                      _tl157932157988_)))
                                                (let ((_hd157934157994_
                                                       (##car _e157933157991_))
                                                      (_tl157935157996_
                                                       (##cdr _e157933157991_)))
                                                  (let* ((_dphi157999_
                                                          _hd157934157994_)
                                                         (_body158001_
                                                          _tl157935157996_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi157999_)
                                                        (let ((_rbody158004_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K157892_ _body158001_ '()))
                        _current-phi157889_
                        (fx+ (gx#stx-e _dphi157999_) (_current-phi157889_)))))
                  (_K157892_
                   _rest157925_
                   (foldr1 cons _r157926_ _rbody158004_)))
                (_E157929157979_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E157929157979_))
                                          (_E157929157979_))))
                                  (_E157929157979_)))))
                      (_E157928158006_)))))
          (let* ((_e157894157901_ _stx157886_)
                 (_E157896157905_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e157894157901_)))
                 (_E157895157920_
                  (lambda ()
                    (if (gx#stx-pair? _e157894157901_)
                        (let ((_e157897157909_ (gx#syntax-e _e157894157901_)))
                          (let ((_hd157898157912_ (##car _e157897157909_))
                                (_tl157899157914_ (##cdr _e157897157909_)))
                            (let ((_body157917_ _tl157899157914_))
                              (if '#t
                                  (if (_current-phi157889_)
                                      (_K157892_ _body157917_ '())
                                      (call-with-parameters
                                       (lambda () (_K157892_ _body157917_ '()))
                                       _current-phi157889_
                                       (gx#current-expander-phi)))
                                  (_E157896157905_)))))
                        (_E157896157905_)))))
            (_E157895157920_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx157553_ _internal-expand?157554_)
        (letrec ((_expand1157556_
                  (lambda (_hd157866_ _K157867_ _rest157868_ _r157869_)
                    (if (gx#core-bound-module? _hd157866_)
                        (_import1157557_
                         (gx#syntax-local-e__0 _hd157866_)
                         _K157867_
                         _rest157868_
                         _r157869_)
                        (if (gx#core-library-module-path? _hd157866_)
                            (_import1157557_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd157866_))
                             _K157867_
                             _rest157868_
                             _r157869_)
                            (if (gx#core-library-relative-module-path?
                                 _hd157866_)
                                (_import1157557_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd157866_))
                                 _K157867_
                                 _rest157868_
                                 _r157869_)
                                (let ((_e157871_ (gx#stx-e _hd157866_)))
                                  (if (pair? _e157871_)
                                      (let ((_$e157873_
                                             (gx#stx-e (car _e157871_))))
                                        (if (eq? 'spec: _$e157873_)
                                            (_import-spec157560_
                                             _hd157866_
                                             _K157867_
                                             _rest157868_
                                             _r157869_)
                                            (if (eq? 'in: _$e157873_)
                                                (_import-submodule157558_
                                                 _hd157866_
                                                 _K157867_
                                                 _rest157868_
                                                 _r157869_)
                                                (if (eq? 'runtime: _$e157873_)
                                                    (_import-runtime157559_
                                                     _hd157866_
                                                     _K157867_
                                                     _rest157868_
                                                     _r157869_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx157553_
                                                     _hd157866_)))))
                                      (if (string? _e157871_)
                                          (_import1157557_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd157866_
                                             (gx#stx-source _stx157553_)))
                                           _K157867_
                                           _rest157868_
                                           _r157869_)
                                          (if (##structure-instance-of?
                                               _e157871_
                                               'gx#module-context::t)
                                              (_K157867_
                                               _rest157868_
                                               (cons _e157871_ _r157869_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx157553_
                                               _hd157866_))))))))))
                 (_import1157557_
                  (lambda (_ctx157855_ _K157856_ _rest157857_ _r157858_)
                    (let ((_dphi157860_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K157856_
                       _rest157857_
                       (cons (##structure
                              gx#import-set::t
                              _ctx157855_
                              _dphi157860_
                              (map (lambda (_g157861157863_)
                                     (gx#core-module-export->import__%
                                      _g157861157863_
                                      '#f
                                      _dphi157860_))
                                   (##unchecked-structure-ref
                                    _ctx157855_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r157858_)))))
                 (_import-submodule157558_
                  (lambda (_hd157822_ _K157823_ _rest157824_ _r157825_)
                    (let* ((_e157826157833_ _hd157822_)
                           (_E157828157837_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157826157833_)))
                           (_E157827157851_
                            (lambda ()
                              (if (gx#stx-pair? _e157826157833_)
                                  (let ((_e157829157841_
                                         (gx#syntax-e _e157826157833_)))
                                    (let ((_hd157830157844_
                                           (##car _e157829157841_))
                                          (_tl157831157846_
                                           (##cdr _e157829157841_)))
                                      (let ((_spath157849_ _tl157831157846_))
                                        (if '#t
                                            (_import1157557_
                                             (_import-spec-source157561_
                                              _spath157849_)
                                             _K157823_
                                             _rest157824_
                                             _r157825_)
                                            (_E157828157837_)))))
                                  (_E157828157837_)))))
                      (_E157827157851_))))
                 (_import-runtime157559_
                  (lambda (_hd157789_ _K157790_ _rest157791_ _r157792_)
                    (let* ((_e157793157800_ _hd157789_)
                           (_E157795157804_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157793157800_)))
                           (_E157794157818_
                            (lambda ()
                              (if (gx#stx-pair? _e157793157800_)
                                  (let ((_e157796157808_
                                         (gx#syntax-e _e157793157800_)))
                                    (let ((_hd157797157811_
                                           (##car _e157796157808_))
                                          (_tl157798157813_
                                           (##cdr _e157796157808_)))
                                      (let ((_spath157816_ _tl157798157813_))
                                        (if '#t
                                            (_K157790_
                                             _rest157791_
                                             (cons (_import-spec-source157561_
                                                    _spath157816_)
                                                   _r157792_))
                                            (_E157795157804_)))))
                                  (_E157795157804_)))))
                      (_E157794157818_))))
                 (_import-spec157560_
                  (lambda (_hd157628_ _K157629_ _rest157630_ _r157631_)
                    (let* ((_e157632157649_ _hd157628_)
                           (_E157641157653_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157632157649_)))
                           (_E157634157763_
                            (lambda ()
                              (if (gx#stx-pair? _e157632157649_)
                                  (let ((_e157642157657_
                                         (gx#syntax-e _e157632157649_)))
                                    (let ((_hd157643157660_
                                           (##car _e157642157657_))
                                          (_tl157644157662_
                                           (##cdr _e157642157657_)))
                                      (if (gx#stx-pair? _tl157644157662_)
                                          (let ((_e157645157665_
                                                 (gx#syntax-e
                                                  _tl157644157662_)))
                                            (let ((_hd157646157668_
                                                   (##car _e157645157665_))
                                                  (_tl157647157670_
                                                   (##cdr _e157645157665_)))
                                              (let* ((_path157673_
                                                      _hd157646157668_)
                                                     (_specs157675_
                                                      _tl157647157670_))
                                                (if '#t
                                                    (let ((_src-ctx157677_
                                                           (_import-spec-source157561_
                                                            _path157673_))
                                                          (_exports157678_
                                                           (make-hash-table))
                                                          (_specs157679_
                                                           (gx#syntax->list
                                                            _specs157675_)))
                                                      (for-each
                                                       (lambda (_out157681_)
                                                         (table-set!
                                                          _exports157678_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out157681_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out157681_
                         '4
                         gx#module-export::t
                         '#f))
                  _out157681_))
               (##unchecked-structure-ref
                _src-ctx157677_
                '9
                gx#module-context::t
                '#f))
              (_K157629_
               _rest157630_
               (foldl1 (lambda (_spec157683_ _r157684_)
                         (let* ((_e157685157701_ _spec157683_)
                                (_E157687157705_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e157685157701_)))
                                (_E157686157759_
                                 (lambda ()
                                   (if (gx#stx-pair? _e157685157701_)
                                       (let ((_e157688157709_
                                              (gx#syntax-e _e157685157701_)))
                                         (let ((_hd157689157712_
                                                (##car _e157688157709_))
                                               (_tl157690157714_
                                                (##cdr _e157688157709_)))
                                           (let ((_phi157717_
                                                  _hd157689157712_))
                                             (if (gx#stx-pair?
                                                  _tl157690157714_)
                                                 (let ((_e157691157719_
                                                        (gx#syntax-e
                                                         _tl157690157714_)))
                                                   (let ((_hd157692157722_
                                                          (##car _e157691157719_))
                                                         (_tl157693157724_
                                                          (##cdr _e157691157719_)))
                                                     (let ((_name157727_
                                                            _hd157692157722_))
                                                       (if (gx#stx-pair?
                                                            _tl157693157724_)
                                                           (let ((_e157694157729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl157693157724_)))
                     (let ((_hd157695157732_ (##car _e157694157729_))
                           (_tl157696157734_ (##cdr _e157694157729_)))
                       (let ((_src-phi157737_ _hd157695157732_))
                         (if (gx#stx-pair? _tl157696157734_)
                             (let ((_e157697157739_
                                    (gx#syntax-e _tl157696157734_)))
                               (let ((_hd157698157742_ (##car _e157697157739_))
                                     (_tl157699157744_
                                      (##cdr _e157697157739_)))
                                 (let ((_src-name157747_ _hd157698157742_))
                                   (if (gx#stx-null? _tl157699157744_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi157737_)
                                                (gx#identifier?
                                                 _src-name157747_)
                                                (gx#stx-fixnum? _phi157717_)
                                                (gx#identifier? _name157727_))
                                           (let ((_src-phi157749_
                                                  (gx#stx-e _src-phi157737_))
                                                 (_src-name157750_
                                                  (gx#core-identifier-key
                                                   _src-name157747_))
                                                 (_phi157751_
                                                  (gx#stx-e _phi157717_))
                                                 (_name157752_
                                                  (gx#core-identifier-key
                                                   _name157727_)))
                                             (let ((_$e157754_
                                                    (hash-get
                                                     _exports157678_
                                                     (cons _src-phi157749_
                                                           _src-name157750_))))
                                               (if _$e157754_
                                                   ((lambda (_out157757_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out157757_
                                                             _name157752_
                                                             (fx- _phi157751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi157749_))
                    _r157684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e157754_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx157553_
                                                    _hd157628_))))
                                           (_E157687157705_))
                                       (_E157687157705_)))))
                             (_E157687157705_)))))
                   (_E157687157705_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E157687157705_)))))
                                       (_E157687157705_)))))
                           (_E157686157759_)))
                       _r157631_
                       _specs157679_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E157641157653_)))))
                                          (_E157641157653_))))
                                  (_E157641157653_))))
                           (_E157633157785_
                            (lambda ()
                              (if (gx#stx-pair? _e157632157649_)
                                  (let ((_e157635157767_
                                         (gx#syntax-e _e157632157649_)))
                                    (let ((_hd157636157770_
                                           (##car _e157635157767_))
                                          (_tl157637157772_
                                           (##cdr _e157635157767_)))
                                      (if (gx#stx-pair? _tl157637157772_)
                                          (let ((_e157638157775_
                                                 (gx#syntax-e
                                                  _tl157637157772_)))
                                            (let ((_hd157639157778_
                                                   (##car _e157638157775_))
                                                  (_tl157640157780_
                                                   (##cdr _e157638157775_)))
                                              (let ((_path157783_
                                                     _hd157639157778_))
                                                (if (gx#stx-null?
                                                     _tl157640157780_)
                                                    (if '#t
                                                        (_K157629_
                                                         _rest157630_
                                                         (cons (_import-spec-source157561_
                                                                _path157783_)
                                                               _r157631_))
                                                        (_E157634157763_))
                                                    (_E157634157763_)))))
                                          (_E157634157763_))))
                                  (_E157634157763_)))))
                      (_E157633157785_))))
                 (_import-spec-source157561_
                  (lambda (_spath157626_)
                    (gx#core-import-nested-module _spath157626_ _stx157553_)))
                 (_import!157562_
                  (lambda (_rbody157575_)
                    (letrec* ((_current-ctx157577_
                               (gx#current-expander-context))
                              (_deps157578_ (make-hash-table-eq))
                              (_bind!157579_
                               (lambda (_hd157624_)
                                 (gx#core-bind-import!__1
                                  _hd157624_
                                  _current-ctx157577_))))
                      (let _lp157581_ ((_rest157583_ _rbody157575_)
                                       (_body157584_ '()))
                        (let* ((_rest157585157593_ _rest157583_)
                               (_else157587157603_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx157577_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx157577_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx157577_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body157584_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx157601_ _g164498_)
                                     (gx#eval-module _ctx157601_))
                                   _deps157578_)
                                  _body157584_))
                               (_K157589157612_
                                (lambda (_rest157606_ _hd157607_)
                                  (if (##structure-direct-instance-of?
                                       _hd157607_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!157579_ _hd157607_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd157607_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd157607_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps157578_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd157607_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd157607_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!157579_
                                             (##unchecked-structure-ref
                                              _hd157607_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd157607_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps157578_
                                                 (##unchecked-structure-ref
                                                  _hd157607_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e157609_
                                                 (##structure-instance-of?
                                                  _hd157607_
                                                  'gx#module-context::t)))
                                            (if _$e157609_
                                                _$e157609_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx157553_
                                                 _hd157607_)))))
                                  (_lp157581_
                                   _rest157606_
                                   (cons _hd157607_ _body157584_)))))
                          (if (##pair? _rest157585157593_)
                              (let ((_hd157590157615_
                                     (##car _rest157585157593_))
                                    (_tl157591157617_
                                     (##cdr _rest157585157593_)))
                                (let* ((_hd157620_ _hd157590157615_)
                                       (_rest157622_ _tl157591157617_))
                                  (_K157589157612_ _rest157622_ _hd157620_)))
                              (_else157587157603_)))))))
                 (_expanded-import?157563_
                  (lambda (_e157567_)
                    (let ((_$e157569_
                           (##structure-direct-instance-of?
                            _e157567_
                            'gx#import-set::t)))
                      (if _$e157569_
                          _$e157569_
                          (let ((_$e157572_
                                 (##structure-direct-instance-of?
                                  _e157567_
                                  'gx#module-import::t)))
                            (if _$e157572_
                                _$e157572_
                                (##structure-instance-of?
                                 _e157567_
                                 'gx#module-context::t))))))))
          (let ((_rbody157565_
                 (gx#core-expand-import/export
                  _stx157553_
                  _expanded-import?157563_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1157556_)))
            (if _internal-expand?157554_
                (reverse _rbody157565_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!157562_ _rbody157565_))
                 (gx#stx-source _stx157553_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx157879_)
        (let ((_internal-expand?157881_ '#f))
          (gx#core-expand-import%__% _stx157879_ _internal-expand?157881_))))
    (define gx#core-expand-import%
      (lambda _g164500_
        (let ((_g164499_ (##length _g164500_)))
          (cond ((##fx= _g164499_ 1)
                 (apply (lambda (_stx157879_)
                          (gx#core-expand-import%__0 _stx157879_))
                        _g164500_))
                ((##fx= _g164499_ 2)
                 (apply (lambda (_stx157883_ _internal-expand?157884_)
                          (gx#core-expand-import%__%
                           _stx157883_
                           _internal-expand?157884_))
                        _g164500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g164500_))))))
    (define gx#core-import-nested-module
      (lambda (_spath157480_ _where157481_)
        (let* ((_e157482157489_ _spath157480_)
               (_E157484157493_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157482157489_)))
               (_E157483157548_
                (lambda ()
                  (if (gx#stx-pair? _e157482157489_)
                      (let ((_e157485157497_ (gx#syntax-e _e157482157489_)))
                        (let ((_hd157486157500_ (##car _e157485157497_))
                              (_tl157487157502_ (##cdr _e157485157497_)))
                          (let* ((_origin157505_ _hd157486157500_)
                                 (_sub157507_ _tl157487157502_))
                            (if '#t
                                (let ((_origin-ctx157509_
                                       (if (gx#stx-false? _origin157505_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin157505_))))
                                  (let _lp157511_ ((_rest157513_ _sub157507_)
                                                   (_ctx157514_
                                                    _origin-ctx157509_))
                                    (let* ((_e157515157522_ _rest157513_)
                                           (_E157517157526_
                                            (lambda () _ctx157514_))
                                           (_E157516157544_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e157515157522_)
                                                  (let ((_e157518157530_
                                                         (gx#syntax-e
                                                          _e157515157522_)))
                                                    (let ((_hd157519157533_
                                                           (##car _e157518157530_))
                                                          (_tl157520157535_
                                                           (##cdr _e157518157530_)))
                                                      (let* ((_id157538_
                                                              _hd157519157533_)
                                                             (_rest157540_
                                                              _tl157520157535_))
                                                        (if '#t
                                                            (let ((_bind157542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id157538_
                            '0
                            _ctx157514_)))
                      (if (and (##structure-direct-instance-of?
                                _bind157542_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind157542_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where157481_
                           _spath157480_
                           _id157538_))
                      (_lp157511_
                       _rest157540_
                       (##unchecked-structure-ref
                        _bind157542_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E157517157526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157517157526_)))))
                                      (_E157516157544_))))
                                (_E157484157493_)))))
                      (_E157484157493_)))))
          (_E157483157548_))))
    (define gx#core-expand-import-source
      (lambda (_hd157478_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd157478_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx156986_ _internal-expand?156987_)
        (letrec* ((_make-export__164429164430_
                   (lambda (_bind157426_ _phi157427_ _ctx157428_ _name157429_)
                     (let* ((_key157431_
                             (##unchecked-structure-ref
                              _bind157426_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key157433_
                             (if _name157429_
                                 (gx#core-identifier-key _name157429_)
                                 _key157431_)))
                       (##structure
                        gx#module-export::t
                        _ctx157428_
                        _key157431_
                        _phi157427_
                        _export-key157433_
                        (let ((_$e157436_
                               (##structure-instance-of?
                                _bind157426_
                                'gx#extern-binding::t)))
                          (if _$e157436_
                              _$e157436_
                              (##structure-direct-instance-of?
                               _bind157426_
                               'gx#import-binding::t)))))))
                  (_make-export__0__164431164434_
                   (lambda (_bind157442_)
                     (let* ((_phi157444_ (gx#current-export-expander-phi))
                            (_ctx157446_ (gx#current-expander-context))
                            (_name157448_ '#f))
                       (_make-export__164429164430_
                        _bind157442_
                        _phi157444_
                        _ctx157446_
                        _name157448_))))
                  (_make-export__1__164432164435_
                   (lambda (_bind157450_ _phi157451_)
                     (let* ((_ctx157453_ (gx#current-expander-context))
                            (_name157455_ '#f))
                       (_make-export__164429164430_
                        _bind157450_
                        _phi157451_
                        _ctx157453_
                        _name157455_))))
                  (_make-export__2__164433164436_
                   (lambda (_bind157457_ _phi157458_ _ctx157459_)
                     (let ((_name157461_ '#f))
                       (_make-export__164429164430_
                        _bind157457_
                        _phi157458_
                        _ctx157459_
                        _name157461_))))
                  (_make-export156989_
                   (lambda _g164502_
                     (let ((_g164501_ (##length _g164502_)))
                       (cond ((##fx= _g164501_ 1)
                              (apply (lambda (_bind157442_)
                                       (_make-export__0__164431164434_
                                        _bind157442_))
                                     _g164502_))
                             ((##fx= _g164501_ 2)
                              (apply (lambda (_bind157450_ _phi157451_)
                                       (_make-export__1__164432164435_
                                        _bind157450_
                                        _phi157451_))
                                     _g164502_))
                             ((##fx= _g164501_ 3)
                              (apply (lambda (_bind157457_
                                              _phi157458_
                                              _ctx157459_)
                                       (_make-export__2__164433164436_
                                        _bind157457_
                                        _phi157458_
                                        _ctx157459_))
                                     _g164502_))
                             ((##fx= _g164501_ 4)
                              (apply (lambda (_bind157463_
                                              _phi157464_
                                              _ctx157465_
                                              _name157466_)
                                       (_make-export__164429164430_
                                        _bind157463_
                                        _phi157464_
                                        _ctx157465_
                                        _name157466_))
                                     _g164502_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g164502_))))))
                  (_expand1156990_
                   (lambda (_hd157139_ _K157140_ _rest157141_ _r157142_)
                     (let* ((_e157143157175_ _hd157139_)
                            (_E157170157179_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx156986_
                                _hd157139_)))
                            (_E157160157258_
                             (lambda ()
                               (if (gx#stx-pair? _e157143157175_)
                                   (let ((_e157171157183_
                                          (gx#syntax-e _e157143157175_)))
                                     (let ((_hd157172157186_
                                            (##car _e157171157183_))
                                           (_tl157173157188_
                                            (##cdr _e157171157183_)))
                                       (if (eq? (gx#stx-e _hd157172157186_)
                                                'import:)
                                           (let ((_in157191_ _tl157173157188_))
                                             (if (gx#stx-list? _in157191_)
                                                 (let _lp157193_ ((_in-rest157195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157191_)
                          (_r157196_ _r157142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157197157204_
                                                           _in-rest157195_)
                                                          (_E157199157208_
                                                           (lambda ()
                                                             (_K157140_
                                                              _rest157141_
                                                              _r157196_)))
                                                          (_E157198157254_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157197157204_)
                         (let ((_e157200157212_ (gx#syntax-e _e157197157204_)))
                           (let ((_hd157201157215_ (##car _e157200157212_))
                                 (_tl157202157217_ (##cdr _e157200157212_)))
                             (let* ((_hd157220_ _hd157201157215_)
                                    (_in-rest157222_ _tl157202157217_))
                               (if '#t
                                   (let ((_src157252_
                                          (if (gx#core-bound-module?
                                               _hd157220_)
                                              (gx#syntax-local-e__0 _hd157220_)
                                              (if (gx#core-library-module-path?
                                                   _hd157220_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157220_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157220_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157220_))
                                                      (if (gx#stx-string?
                                                           _hd157220_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157220_
                                                            (gx#stx-source
                                                             _stx156986_)))
                                                          (let* ((_e157223157230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157220_)
                         (_E157225157234_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx156986_
                             _hd157220_)))
                         (_E157224157248_
                          (lambda ()
                            (if (gx#stx-pair? _e157223157230_)
                                (let ((_e157226157238_
                                       (gx#syntax-e _e157223157230_)))
                                  (let ((_hd157227157241_
                                         (##car _e157226157238_))
                                        (_tl157228157243_
                                         (##cdr _e157226157238_)))
                                    (if (eq? (gx#stx-e _hd157227157241_) 'in:)
                                        (let ((_spath157246_ _tl157228157243_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157246_
                                               _stx156986_)
                                              (_E157225157234_)))
                                        (_E157225157234_))))
                                (_E157225157234_)))))
                    (_E157224157248_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157193_
                                      _in-rest157222_
                                      (_export-imports156991_
                                       _src157252_
                                       _r157196_)))
                                   (_E157199157208_)))))
                         (_E157199157208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157198157254_)))
                                                 (_E157170157179_)))
                                           (_E157170157179_))))
                                   (_E157170157179_))))
                            (_E157147157297_
                             (lambda ()
                               (if (gx#stx-pair? _e157143157175_)
                                   (let ((_e157161157262_
                                          (gx#syntax-e _e157143157175_)))
                                     (let ((_hd157162157265_
                                            (##car _e157161157262_))
                                           (_tl157163157267_
                                            (##cdr _e157161157262_)))
                                       (if (eq? (gx#stx-e _hd157162157265_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157163157267_)
                                               (let ((_e157164157270_
                                                      (gx#syntax-e
                                                       _tl157163157267_)))
                                                 (let ((_hd157165157273_
                                                        (##car _e157164157270_))
                                                       (_tl157166157275_
                                                        (##cdr _e157164157270_)))
                                                   (let ((_id157278_
                                                          _hd157165157273_))
                                                     (if (gx#stx-pair?
                                                          _tl157166157275_)
                                                         (let ((_e157167157280_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157166157275_)))
                   (let ((_hd157168157283_ (##car _e157167157280_))
                         (_tl157169157285_ (##cdr _e157167157280_)))
                     (let ((_name157288_ _hd157168157283_))
                       (if (gx#stx-null? _tl157169157285_)
                           (if '#t
                               (let* ((_phi157290_
                                       (gx#current-export-expander-phi))
                                      (_$e157292_
                                       (gx#core-resolve-identifier__1
                                        _id157278_
                                        _phi157290_)))
                                 (if _$e157292_
                                     ((lambda (_bind157295_)
                                        (_K157140_
                                         _rest157141_
                                         (cons (_make-export__164429164430_
                                                _bind157295_
                                                _phi157290_
                                                (gx#current-expander-context)
                                                _name157288_)
                                               _r157142_)))
                                      _$e157292_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx156986_
                                      _hd157139_
                                      _id157278_)))
                               (_E157160157258_))
                           (_E157160157258_)))))
                 (_E157160157258_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157160157258_))
                                           (_E157160157258_))))
                                   (_E157160157258_))))
                            (_E157146157346_
                             (lambda ()
                               (if (gx#stx-pair? _e157143157175_)
                                   (let ((_e157148157301_
                                          (gx#syntax-e _e157143157175_)))
                                     (let ((_hd157149157304_
                                            (##car _e157148157301_))
                                           (_tl157150157306_
                                            (##cdr _e157148157301_)))
                                       (if (eq? (gx#stx-e _hd157149157304_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157150157306_)
                                               (let ((_e157151157309_
                                                      (gx#syntax-e
                                                       _tl157150157306_)))
                                                 (let ((_hd157152157312_
                                                        (##car _e157151157309_))
                                                       (_tl157153157314_
                                                        (##cdr _e157151157309_)))
                                                   (let ((_phi157317_
                                                          _hd157152157312_))
                                                     (if (gx#stx-pair?
                                                          _tl157153157314_)
                                                         (let ((_e157154157319_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157153157314_)))
                   (let ((_hd157155157322_ (##car _e157154157319_))
                         (_tl157156157324_ (##cdr _e157154157319_)))
                     (let ((_id157327_ _hd157155157322_))
                       (if (gx#stx-pair? _tl157156157324_)
                           (let ((_e157157157329_
                                  (gx#syntax-e _tl157156157324_)))
                             (let ((_hd157158157332_ (##car _e157157157329_))
                                   (_tl157159157334_ (##cdr _e157157157329_)))
                               (let ((_name157337_ _hd157158157332_))
                                 (if (gx#stx-null? _tl157159157334_)
                                     (if (and (gx#stx-fixnum? _phi157317_)
                                              (gx#identifier? _id157327_)
                                              (gx#identifier? _name157337_))
                                         (let* ((_phi157339_
                                                 (gx#stx-e _phi157317_))
                                                (_$e157341_
                                                 (gx#core-resolve-identifier__1
                                                  _id157327_
                                                  _phi157339_)))
                                           (if _$e157341_
                                               ((lambda (_bind157344_)
                                                  (_K157140_
                                                   _rest157141_
                                                   (cons (_make-export__164429164430_
                                                          _bind157344_
                                                          _phi157339_
                                                          (gx#current-expander-context)
                                                          _name157337_)
                                                         _r157142_)))
                                                _$e157341_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx156986_
                                                _hd157139_
                                                _id157327_)))
                                         (_E157147157297_))
                                     (_E157147157297_)))))
                           (_E157147157297_)))))
                 (_E157147157297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157147157297_))
                                           (_E157147157297_))))
                                   (_E157147157297_))))
                            (_E157145157357_
                             (lambda ()
                               (let ((_id157350_ _e157143157175_))
                                 (if (gx#identifier? _id157350_)
                                     (let ((_$e157352_
                                            (gx#core-resolve-identifier__1
                                             _id157350_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157352_
                                           ((lambda (_bind157355_)
                                              (_K157140_
                                               _rest157141_
                                               (cons (_make-export__0__164431164434_
                                                      _bind157355_)
                                                     _r157142_)))
                                            _$e157352_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx156986_
                                            _hd157139_)))
                                     (_E157146157346_)))))
                            (_E157144157421_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157143157175_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157361_
                                               (gx#current-expander-context))
                                              (_current-phi157363_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157365_
                                               (gx#core-context-shift
                                                _current-ctx157361_
                                                _current-phi157363_))
                                              (_phi-bind157367_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157365_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157370_ ((_bind-rest157372_
                                                           _phi-bind157367_)
                                                          (_set157373_ '()))
                                           (let* ((_bind-rest157374157384_
                                                   _bind-rest157372_)
                                                  (_else157376157392_
                                                   (lambda ()
                                                     (_K157140_
                                                      _rest157141_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157363_
                                                             _set157373_)
                                                            _r157142_))))
                                                  (_K157378157402_
                                                   (lambda (_bind-rest157395_
                                                            _bind157396_
                                                            _key157397_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157396_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157396_))
                                                         (_lp157370_
                                                          _bind-rest157395_
                                                          _set157373_)
                                                         (_lp157370_
                                                          _bind-rest157395_
                                                          (cons (_make-export__2__164433164436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157396_
                         _current-phi157363_
                         _current-ctx157361_)
                        _set157373_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157374157384_)
                                                 (let ((_hd157379157405_
                                                        (##car _bind-rest157374157384_))
                                                       (_tl157380157407_
                                                        (##cdr _bind-rest157374157384_)))
                                                   (if (##pair? _hd157379157405_)
                                                       (let ((_hd157381157410_
                                                              (##car _hd157379157405_))
                                                             (_tl157382157412_
                                                              (##cdr _hd157379157405_)))
                                                         (let* ((_key157415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157381157410_)
                        (_bind157417_ _tl157382157412_)
                        (_bind-rest157419_ _tl157380157407_))
                   (_K157378157402_
                    _bind-rest157419_
                    _bind157417_
                    _key157415_)))
               (_else157376157392_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157376157392_)))))
                                       (_E157145157357_))
                                   (_E157145157357_)))))
                       (_E157144157421_))))
                  (_export-imports156991_
                   (lambda (_src157015_ _r157016_)
                     (letrec* ((_current-ctx157018_
                                (gx#current-expander-context))
                               (_current-phi157019_
                                (gx#current-export-expander-phi))
                               (_import->export157020_
                                (lambda (_in157101_)
                                  (let* ((_in157102157110_ _in157101_)
                                         (_E157104157114_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157102157110_)))
                                         (_K157105157121_
                                          (lambda (_phi157117_
                                                   _key157118_
                                                   _out157119_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157018_
                                             _key157118_
                                             _phi157117_
                                             _key157118_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157102157110_
                                         'gx#module-import::t)
                                        (let* ((_e157106157124_
                                                (##unchecked-structure-ref
                                                 _in157102157110_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157127_ _e157106157124_)
                                               (_e157107157129_
                                                (##unchecked-structure-ref
                                                 _in157102157110_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157132_ _e157107157129_)
                                               (_e157108157134_
                                                (##unchecked-structure-ref
                                                 _in157102157110_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157137_ _e157108157134_))
                                          (_K157105157121_
                                           _phi157137_
                                           _key157132_
                                           _out157127_))
                                        (_E157104157114_)))))
                               (_fold-e157021_
                                (lambda (_in157023_ _r157024_)
                                  (let* ((_in157025157039_ _in157023_)
                                         (_else157028157047_
                                          (lambda () _r157024_)))
                                    (let ((_K157034157083_
                                           (lambda (_phi157079_
                                                    _key157080_
                                                    _out157081_)
                                             (if (and (fx= _phi157079_
                                                           _current-phi157019_)
                                                      (eq? _src157015_
                                                           (##unchecked-structure-ref
                                                            _out157081_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157020_
                                                        _in157023_)
                                                       _r157024_)
                                                 _r157024_)))
                                          (_K157030157058_
                                           (lambda (_imports157051_
                                                    _phi157052_
                                                    _ctx157053_)
                                             (if (and (fx= _phi157052_
                                                           _current-phi157019_)
                                                      (eq? _src157015_
                                                           _ctx157053_))
                                                 (foldl1 (lambda (_in157055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157056_)
                   (cons (_import->export157020_ _in157055_) _r157056_))
                 _r157024_
                 _imports157051_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157024_))))
                                      (let ((_try-match157027157076_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157025157039_
                                                    'gx#import-set::t)
                                                   (let* ((_e157031157061_
                                                           (##unchecked-structure-ref
                                                            _in157025157039_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157032157066_
                                                           (##unchecked-structure-ref
                                                            _in157025157039_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157033157071_
                                                           (##unchecked-structure-ref
                                                            _in157025157039_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157064_
                                                            _e157031157061_)
                                                           (_phi157069_
                                                            _e157032157066_)
                                                           (_imports157074_
                                                            _e157033157071_))
                                                       (_K157030157058_
                                                        _imports157074_
                                                        _phi157069_
                                                        _ctx157064_)))
                                                   (_else157028157047_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157025157039_
                                             'gx#module-import::t)
                                            (let* ((_e157035157086_
                                                    (##unchecked-structure-ref
                                                     _in157025157039_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157036157091_
                                                    (##unchecked-structure-ref
                                                     _in157025157039_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157037157096_
                                                    (##unchecked-structure-ref
                                                     _in157025157039_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157089_
                                                     _e157035157086_)
                                                    (_key157094_
                                                     _e157036157091_)
                                                    (_phi157099_
                                                     _e157037157096_))
                                                (_K157034157083_
                                                 _phi157099_
                                                 _key157094_
                                                 _out157089_)))
                                            (_try-match157027157076_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157015_
                              _current-phi157019_
                              (foldl1 _fold-e157021_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157018_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157016_))))
                  (_export!156992_
                   (lambda (_rbody157005_)
                     (letrec* ((_current-ctx157007_
                                (gx#current-expander-context))
                               (_fold-e157008_
                                (lambda (_out157012_ _r157013_)
                                  (if (##structure-direct-instance-of?
                                       _out157012_
                                       'gx#module-export::t)
                                      (cons _out157012_ _r157013_)
                                      (if (##structure-direct-instance-of?
                                           _out157012_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157013_
                                                  (##unchecked-structure-ref
                                                   _out157012_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157013_)))))
                       (let ((_body157010_ (reverse _rbody157005_)))
                         (##unchecked-structure-set!
                          _current-ctx157007_
                          (foldl1 _fold-e157008_
                                  (##unchecked-structure-ref
                                   _current-ctx157007_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157010_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157010_))))
                  (_expanded-export?156993_
                   (lambda (_e157000_)
                     (let ((_$e157002_
                            (##structure-direct-instance-of?
                             _e157000_
                             'gx#module-export::t)))
                       (if _$e157002_
                           _$e157002_
                           (##structure-direct-instance-of?
                            _e157000_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?156987_)
              (let ((_rbody156998_
                     (gx#core-expand-import/export
                      _stx156986_
                      _expanded-export?156993_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1156990_)))
                (if _internal-expand?156987_
                    (reverse _rbody156998_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!156992_ _rbody156998_))
                     (gx#stx-source _stx156986_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx156986_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx156986_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx157471_)
        (let ((_internal-expand?157473_ '#f))
          (gx#core-expand-export%__% _stx157471_ _internal-expand?157473_))))
    (define gx#core-expand-export%
      (lambda _g164504_
        (let ((_g164503_ (##length _g164504_)))
          (cond ((##fx= _g164503_ 1)
                 (apply (lambda (_stx157471_)
                          (gx#core-expand-export%__0 _stx157471_))
                        _g164504_))
                ((##fx= _g164503_ 2)
                 (apply (lambda (_stx157475_ _internal-expand?157476_)
                          (gx#core-expand-export%__%
                           _stx157475_
                           _internal-expand?157476_))
                        _g164504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g164504_))))))
    (define gx#core-expand-export-source
      (lambda (_hd156983_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd156983_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx156953_)
        (let* ((_e156954156961_ _stx156953_)
               (_E156956156965_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156954156961_)))
               (_E156955156979_
                (lambda ()
                  (if (gx#stx-pair? _e156954156961_)
                      (let ((_e156957156969_ (gx#syntax-e _e156954156961_)))
                        (let ((_hd156958156972_ (##car _e156957156969_))
                              (_tl156959156974_ (##cdr _e156957156969_)))
                          (let ((_body156977_ _tl156959156974_))
                            (if (gx#identifier-list? _body156977_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body156977_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body156977_))
                                   (gx#stx-source _stx156953_)))
                                (_E156956156965_)))))
                      (_E156956156965_)))))
          (_E156955156979_))))
    (define gx#core-bind-feature!__%
      (lambda (_id156919_ _private?156920_ _phi156921_ _ctx156922_)
        (gx#core-bind-syntax!__%
         _id156919_
         ((if _private?156920_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id156919_))
         _private?156920_
         _phi156921_
         _ctx156922_)))
    (define gx#core-bind-feature!__0
      (lambda (_id156927_)
        (let* ((_private?156929_ '#f)
               (_phi156931_ (gx#current-expander-phi))
               (_ctx156933_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id156927_
           _private?156929_
           _phi156931_
           _ctx156933_))))
    (define gx#core-bind-feature!__1
      (lambda (_id156935_ _private?156936_)
        (let* ((_phi156938_ (gx#current-expander-phi))
               (_ctx156940_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id156935_
           _private?156936_
           _phi156938_
           _ctx156940_))))
    (define gx#core-bind-feature!__2
      (lambda (_id156942_ _private?156943_ _phi156944_)
        (let ((_ctx156946_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id156942_
           _private?156943_
           _phi156944_
           _ctx156946_))))
    (define gx#core-bind-feature!
      (lambda _g164506_
        (let ((_g164505_ (##length _g164506_)))
          (cond ((##fx= _g164505_ 1)
                 (apply (lambda (_id156927_)
                          (gx#core-bind-feature!__0 _id156927_))
                        _g164506_))
                ((##fx= _g164505_ 2)
                 (apply (lambda (_id156935_ _private?156936_)
                          (gx#core-bind-feature!__1
                           _id156935_
                           _private?156936_))
                        _g164506_))
                ((##fx= _g164505_ 3)
                 (apply (lambda (_id156942_ _private?156943_ _phi156944_)
                          (gx#core-bind-feature!__2
                           _id156942_
                           _private?156943_
                           _phi156944_))
                        _g164506_))
                ((##fx= _g164505_ 4)
                 (apply (lambda (_id156948_
                                 _private?156949_
                                 _phi156950_
                                 _ctx156951_)
                          (gx#core-bind-feature!__%
                           _id156948_
                           _private?156949_
                           _phi156950_
                           _ctx156951_))
                        _g164506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g164506_))))))))
