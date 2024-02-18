(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708271950)
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
      (lambda _$args173860_
        (apply make-instance gx#module-import::t _$args173860_)))
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
      (lambda _$args173857_
        (apply make-instance gx#module-export::t _$args173857_)))
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
      (lambda _$args173854_
        (apply make-instance gx#import-set::t _$args173854_)))
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
      (lambda _$args173851_
        (apply make-instance gx#export-set::t _$args173851_)))
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
      (lambda _$args173848_
        (apply make-instance gx#import-expander::t _$args173848_)))
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
      (lambda _$args173845_
        (apply make-instance gx#export-expander::t _$args173845_)))
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
      (lambda _$args173842_
        (apply make-instance gx#import-export-expander::t _$args173842_)))
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
      (lambda (_path173839_ _fun173840_)
        (call-with-input-file
         (cons 'path: (cons _path173839_ gx#source-file-settings))
         _fun173840_)))
    (define gx#module-context:::init!
      (lambda (_self173833_ _id173834_ _super173835_ _ns173836_ _path173837_)
        (if (##fx< '11 (##structure-length _self173833_))
            (begin
              (##unchecked-structure-set!
               _self173833_
               _id173834_
               '1
               (##structure-type _self173833_)
               '#f)
              (##unchecked-structure-set!
               _self173833_
               (make-hash-table-eq)
               '2
               (##structure-type _self173833_)
               '#f)
              (##unchecked-structure-set!
               _self173833_
               _super173835_
               '3
               (##structure-type _self173833_)
               '#f)
              (##unchecked-structure-set!
               _self173833_
               '#f
               '4
               (##structure-type _self173833_)
               '#f)
              (##unchecked-structure-set!
               _self173833_
               '#f
               '5
               (##structure-type _self173833_)
               '#f)
              (##unchecked-structure-set!
               _self173833_
               _ns173836_
               '6
               (##structure-type _self173833_)
               '#f)
              (##unchecked-structure-set!
               _self173833_
               _path173837_
               '7
               (##structure-type _self173833_)
               '#f)
              (##unchecked-structure-set!
               _self173833_
               '()
               '8
               (##structure-type _self173833_)
               '#f)
              (##unchecked-structure-set!
               _self173833_
               '()
               '9
               (##structure-type _self173833_)
               '#f)
              (##unchecked-structure-set!
               _self173833_
               '#f
               '10
               (##structure-type _self173833_)
               '#f)
              (##unchecked-structure-set!
               _self173833_
               '#f
               '11
               (##structure-type _self173833_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self173833_
                   '11
                   (##vector-length _self173833_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self173677_ _ctx173678_ _root173679_)
        (let ((_super173687_
               (let ((_$e173681_ _root173679_))
                 (if _$e173681_
                     _$e173681_
                     (let ((_$e173684_ (gx#core-context-root__0)))
                       (if _$e173684_
                           _$e173684_
                           (let ((__obj177969
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor177970
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj177969
                                     ':init!)))
                               (if __constructor177970
                                   (__constructor177970 __obj177969)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj177969)))))))
          (if _ctx173678_
              (let ((_id173690_
                     (##structure-ref
                      _ctx173678_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path173691_
                     (##structure-ref _ctx173678_ '7 gx#module-context::t '#f))
                    (_in173692_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx173678_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e173693_
                     (make-promise (lambda () (gx#eval-module _ctx173678_)))))
                (if (##fx< '8 (##structure-length _self173677_))
                    (begin
                      (##unchecked-structure-set!
                       _self173677_
                       _id173690_
                       '1
                       (##structure-type _self173677_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173677_
                       (make-hash-table-eq 'size: (length _in173692_))
                       '2
                       (##structure-type _self173677_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173677_
                       _super173687_
                       '3
                       (##structure-type _self173677_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173677_
                       '#f
                       '4
                       (##structure-type _self173677_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173677_
                       '#f
                       '5
                       (##structure-type _self173677_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173677_
                       _path173691_
                       '6
                       (##structure-type _self173677_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173677_
                       _in173692_
                       '7
                       (##structure-type _self173677_)
                       '#f)
                      (##unchecked-structure-set!
                       _self173677_
                       _e173693_
                       '8
                       (##structure-type _self173677_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self173677_
                           '8
                           (##vector-length _self173677_)))
                (for-each
                 (lambda (_g173694173696_)
                   (gx#core-bind-weak-import!__% _g173694173696_ _self173677_))
                 _in173692_))
              (if (##fx< '8 (##structure-length _self173677_))
                  (begin
                    (##unchecked-structure-set!
                     _self173677_
                     '#f
                     '1
                     (##structure-type _self173677_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173677_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self173677_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173677_
                     _super173687_
                     '3
                     (##structure-type _self173677_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173677_
                     '#f
                     '4
                     (##structure-type _self173677_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173677_
                     '#f
                     '5
                     (##structure-type _self173677_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173677_
                     '#f
                     '6
                     (##structure-type _self173677_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173677_
                     '()
                     '7
                     (##structure-type _self173677_)
                     '#f)
                    (##unchecked-structure-set!
                     _self173677_
                     '#f
                     '8
                     (##structure-type _self173677_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self173677_
                         '8
                         (##vector-length _self173677_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self173702_ _ctx173703_)
        (let ((_root173705_ '#f))
          (gx#prelude-context:::init!__%
           _self173702_
           _ctx173703_
           _root173705_))))
    (define gx#prelude-context:::init!
      (lambda _g177976_
        (let ((_g177975_ (##length _g177976_)))
          (cond ((##fx= _g177975_ 2)
                 (apply (lambda (_self173702_ _ctx173703_)
                          (gx#prelude-context:::init!__0
                           _self173702_
                           _ctx173703_))
                        _g177976_))
                ((##fx= _g177975_ 3)
                 (apply (lambda (_self173707_ _ctx173708_ _root173709_)
                          (gx#prelude-context:::init!__%
                           _self173707_
                           _ctx173708_
                           _root173709_))
                        _g177976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g177976_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self173551_ _e173552_)
        (if (##fx< '3 (##structure-length _self173551_))
            (begin
              (##unchecked-structure-set!
               _self173551_
               _e173552_
               '1
               (##structure-type _self173551_)
               '#f)
              (##unchecked-structure-set!
               _self173551_
               (gx#current-expander-context)
               '2
               (##structure-type _self173551_)
               '#f)
              (##unchecked-structure-set!
               _self173551_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self173551_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self173551_
                   '3
                   (##vector-length _self173551_)))))
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
      (lambda (_g173177173180_ _g173178173182_)
        (gx#core-apply-user-expander__%
         _g173177173180_
         _g173178173182_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g173048173051_ _g173049173053_)
        (gx#core-apply-user-expander__%
         _g173048173051_
         _g173049173053_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx172919_)
        (let* ((_path172921_
                (##structure-ref _ctx172919_ '7 gx#module-context::t '#f))
               (_path172923_
                (if (pair? _path172921_) (last _path172921_) _path172921_)))
          (if (string? _path172923_) _path172923_ '#f))))
    (define gx#import-module__%
      (lambda (_path172895_ _reload?172896_ _eval?172897_)
        (let ((_ctx172899_
               ((gx#current-expander-module-import)
                _path172895_
                _reload?172896_)))
          (if (and _ctx172899_ _eval?172897_)
              (gx#eval-module _ctx172899_)
              '#!void)
          _ctx172899_)))
    (define gx#import-module__0
      (lambda (_path172904_)
        (let* ((_reload?172906_ '#f) (_eval?172908_ '#f))
          (gx#import-module__% _path172904_ _reload?172906_ _eval?172908_))))
    (define gx#import-module__1
      (lambda (_path172910_ _reload?172911_)
        (let ((_eval?172913_ '#f))
          (gx#import-module__% _path172910_ _reload?172911_ _eval?172913_))))
    (define gx#import-module
      (lambda _g177978_
        (let ((_g177977_ (##length _g177978_)))
          (cond ((##fx= _g177977_ 1)
                 (apply (lambda (_path172904_)
                          (gx#import-module__0 _path172904_))
                        _g177978_))
                ((##fx= _g177977_ 2)
                 (apply (lambda (_path172910_ _reload?172911_)
                          (gx#import-module__1 _path172910_ _reload?172911_))
                        _g177978_))
                ((##fx= _g177977_ 3)
                 (apply (lambda (_path172915_ _reload?172916_ _eval?172917_)
                          (gx#import-module__%
                           _path172915_
                           _reload?172916_
                           _eval?172917_))
                        _g177978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g177978_))))))
    (define gx#eval-module
      (lambda (_mod172892_) ((gx#current-expander-module-eval) _mod172892_)))
    (define gx#core-eval-module
      (lambda (_obj172877_)
        (letrec ((_force-e172879_
                  (lambda (_getf172888_ _e172889_)
                    (call-with-parameters
                     (lambda () (force (_getf172888_ _e172889_)))
                     gx#current-expander-context
                     _e172889_
                     gx#current-expander-phi
                     '0))))
          (let _recur172881_ ((_e172883_ _obj172877_))
            (if (##structure-instance-of? _e172883_ 'gx#module-context::t)
                (begin
                  (let ((_$e172885_ (gx#core-context-prelude__% _e172883_)))
                    (if _$e172885_ (_recur172881_ _$e172885_) '#!void))
                  (_force-e172879_ gx#module-context-e _e172883_))
                (if (##structure-instance-of? _e172883_ 'gx#prelude-context::t)
                    (_force-e172879_ gx#prelude-context-e _e172883_)
                    (if (gx#stx-string? _e172883_)
                        (_recur172881_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e172883_)))
                        (if (gx#core-library-module-path? _e172883_)
                            (_recur172881_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e172883_)))
                            (error '"Cannot eval module" _obj172877_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx172860_)
        (let _lp172862_ ((_e172864_ _ctx172860_))
          (if (or (##structure-instance-of? _e172864_ 'gx#module-context::t)
                  (##structure-instance-of? _e172864_ 'gx#local-context::t))
              (_lp172862_
               (##unchecked-structure-ref _e172864_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e172864_ 'gx#prelude-context::t)
                  _e172864_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx172873_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx172873_))))
    (define gx#core-context-prelude
      (lambda _g177980_
        (let ((_g177979_ (##length _g177980_)))
          (cond ((##fx= _g177979_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g177980_))
                ((##fx= _g177979_ 1)
                 (apply (lambda (_ctx172875_)
                          (gx#core-context-prelude__% _ctx172875_))
                        _g177980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g177980_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx172850_)
        (let* ((_ht172852_ (gx#current-expander-module-registry))
               (_$e172854_ (hash-get _ht172852_ _ctx172850_)))
          (if _$e172854_
              (values _$e172854_)
              (let ((_pre172857_
                     (let ((__obj177971
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
                       (gx#prelude-context:::init! __obj177971 _ctx172850_)
                       __obj177971)))
                (hash-put! _ht172852_ _ctx172850_ _pre172857_)
                _pre172857_)))))
    (define gx#core-import-module__%
      (lambda (_rpath172731_ _reload?172732_)
        (letrec ((_import-source172734_
                  (lambda (_path172819_)
                    (if (member _path172819_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path172819_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g177981_ (gx#core-read-module _path172819_)))
                         (begin
                           (let ((_g177982_
                                  (if (##values? _g177981_)
                                      (##vector-length _g177981_)
                                      1)))
                             (if (not (##fx= _g177982_ 4))
                                 (error "Context expects 4 values" _g177982_)))
                           (let ((_pre172822_ (##vector-ref _g177981_ 0))
                                 (_id172823_ (##vector-ref _g177981_ 1))
                                 (_ns172824_ (##vector-ref _g177981_ 2))
                                 (_body172825_ (##vector-ref _g177981_ 3)))
                             (let* ((_prelude172830_
                                     (if (##structure-instance-of?
                                          _pre172822_
                                          'gx#prelude-context::t)
                                         _pre172822_
                                         (if (##structure-instance-of?
                                              _pre172822_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre172822_)
                                             (if (string? _pre172822_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre172822_))
                                                 (if (not _pre172822_)
                                                     (let ((_$e172827_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e172827_
                                                           _$e172827_
                                                           (let ((__obj177972
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
                     (gx#prelude-context:::init! __obj177972 '#f)
                     __obj177972)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath172731_
                                                            _pre172822_))))))
                                    (_ctx172832_
                                     (let ((__obj177973
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
                                        __obj177973
                                        _id172823_
                                        _prelude172830_
                                        _ns172824_
                                        _path172819_)
                                       __obj177973))
                                    (_body172834_
                                     (gx#core-expand-module-begin
                                      _body172825_
                                      _ctx172832_))
                                    (_body172836_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body172834_)
                                      _path172819_
                                      _ctx172832_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx172832_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body172836_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx172832_
                                _body172836_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path172819_
                                _ctx172832_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id172823_
                                _ctx172832_)
                               _ctx172832_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path172819_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule172735_
                  (lambda (_rpath172747_)
                    (let* ((_rpath172748172755_ _rpath172747_)
                           (_E172750172759_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath172748172755_)))
                           (_K172751172807_
                            (lambda (_refs172762_ _origin172763_)
                              (let ((_ctx172765_
                                     (if _origin172763_
                                         (gx#core-import-module__%
                                          _origin172763_
                                          _reload?172732_)
                                         (gx#current-expander-context))))
                                (let _lp172767_ ((_rest172769_ _refs172762_)
                                                 (_ctx172770_ _ctx172765_))
                                  (let* ((_rest172771172779_ _rest172769_)
                                         (_else172773172787_
                                          (lambda () _ctx172770_))
                                         (_K172775172795_
                                          (lambda (_rest172790_ _id172791_)
                                            (let ((_bind172793_
                                                   (gx#resolve-identifier__%
                                                    _id172791_
                                                    '0
                                                    _ctx172770_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind172793_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind172793_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp172767_
                                                   _rest172790_
                                                   (##unchecked-structure-ref
                                                    _bind172793_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath172747_
                                                         _id172791_
                                                         _bind172793_))))))
                                    (if (##pair? _rest172771172779_)
                                        (let ((_hd172776172798_
                                               (##car _rest172771172779_))
                                              (_tl172777172800_
                                               (##cdr _rest172771172779_)))
                                          (let* ((_id172803_ _hd172776172798_)
                                                 (_rest172805_
                                                  _tl172777172800_))
                                            (_K172775172795_
                                             _rest172805_
                                             _id172803_)))
                                        (_else172773172787_))))))))
                      (if (##pair? _rpath172748172755_)
                          (let ((_hd172752172810_ (##car _rpath172748172755_))
                                (_tl172753172812_ (##cdr _rpath172748172755_)))
                            (let* ((_origin172815_ _hd172752172810_)
                                   (_refs172817_ _tl172753172812_))
                              (_K172751172807_ _refs172817_ _origin172815_)))
                          (_E172750172759_))))))
          (let ((_$e172737_
                 (if (not _reload?172732_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath172731_)
                     '#f)))
            (if _$e172737_
                (values _$e172737_)
                (if (list? _rpath172731_)
                    (_import-submodule172735_ _rpath172731_)
                    (if (gx#core-library-module-path? _rpath172731_)
                        (let ((_ctx172740_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath172731_)
                                _reload?172732_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath172731_
                           _ctx172740_)
                          _ctx172740_)
                        (let* ((_npath172742_ (path-normalize _rpath172731_))
                               (_$e172744_
                                (if (not _reload?172732_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath172742_)
                                    '#f)))
                          (if _$e172744_
                              (values _$e172744_)
                              (_import-source172734_ _npath172742_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath172843_)
        (let ((_reload?172845_ '#f))
          (gx#core-import-module__% _rpath172843_ _reload?172845_))))
    (define gx#core-import-module
      (lambda _g177984_
        (let ((_g177983_ (##length _g177984_)))
          (cond ((##fx= _g177983_ 1)
                 (apply (lambda (_rpath172843_)
                          (gx#core-import-module__0 _rpath172843_))
                        _g177984_))
                ((##fx= _g177983_ 2)
                 (apply (lambda (_rpath172847_ _reload?172848_)
                          (gx#core-import-module__%
                           _rpath172847_
                           _reload?172848_))
                        _g177984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g177984_))))))
    (define gx#core-read-module
      (lambda (_path172720_)
        (with-catch
         (lambda (_exn172722_)
           (if (and (datum-parsing-exception? _exn172722_)
                    (eq? (datum-parsing-exception-filepos _exn172722_) '0))
               (gx#core-read-module/lang _path172720_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path172720_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g172724172726_)
                      (display-exception _exn172722_ _g172724172726_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path172720_)))))
    (define gx#core-read-module/sexp
      (lambda (_path172583_)
        (let _lp172585_ ((_body172587_ (read-syntax-from-file _path172583_))
                         (_pre172588_ '#f)
                         (_ns172589_ '#f)
                         (_pkg172590_ '#f))
          (let* ((_e172591172615_ _body172587_)
                 (_E172607172637_
                  (lambda ()
                    (let ((_g177985_
                           (if _pkg172590_
                               (values _pre172588_ _ns172589_ _pkg172590_)
                               (gx#core-read-module-package
                                _path172583_
                                _pre172588_
                                _ns172589_))))
                      (begin
                        (let ((_g177986_
                               (if (##values? _g177985_)
                                   (##vector-length _g177985_)
                                   1)))
                          (if (not (##fx= _g177986_ 3))
                              (error "Context expects 3 values" _g177986_)))
                        (let ((_pre172619_ (##vector-ref _g177985_ 0))
                              (_ns172620_ (##vector-ref _g177985_ 1))
                              (_pkg172621_ (##vector-ref _g177985_ 2)))
                          (let* ((_prelude172623_
                                  (if (gx#core-bound-module-prelude?
                                       _pre172619_)
                                      (gx#syntax-local-e__0 _pre172619_)
                                      (if (gx#core-library-module-path?
                                           _pre172619_)
                                          (gx#core-resolve-library-module-path
                                           _pre172619_)
                                          (if (gx#stx-string? _pre172619_)
                                              (gx#core-resolve-module-path__%
                                               _pre172619_
                                               _path172583_)
                                              (gx#stx-e _pre172619_)))))
                                 (_path-id172625_
                                  (gx#core-module-path->namespace
                                   _path172583_))
                                 (_pkg-id172627_
                                  (if _pkg172621_
                                      (string-append
                                       _pkg172621_
                                       '"/"
                                       _path-id172625_)
                                      _path-id172625_))
                                 (_module-id172629_
                                  (string->symbol _pkg-id172627_))
                                 (_module-ns172634_
                                  (if (eq? _ns172620_ '#!void)
                                      '#f
                                      (let ((_$e172631_ _ns172620_))
                                        (if _$e172631_
                                            _$e172631_
                                            _pkg-id172627_)))))
                            (values _prelude172623_
                                    _module-id172629_
                                    _module-ns172634_
                                    _body172587_)))))))
                 (_E172600172666_
                  (lambda ()
                    (if (gx#stx-pair? _e172591172615_)
                        (let ((_e172608172641_ (gx#syntax-e _e172591172615_)))
                          (let ((_hd172609172644_ (##car _e172608172641_))
                                (_tl172610172646_ (##cdr _e172608172641_)))
                            (if (eq? (gx#stx-e _hd172609172644_) 'package:)
                                (if (gx#stx-pair? _tl172610172646_)
                                    (let ((_e172611172649_
                                           (gx#syntax-e _tl172610172646_)))
                                      (let ((_hd172612172652_
                                             (##car _e172611172649_))
                                            (_tl172613172654_
                                             (##cdr _e172611172649_)))
                                        (let* ((_pkg172657_ _hd172612172652_)
                                               (_rest172659_ _tl172613172654_))
                                          (if '#t
                                              (let ((_pkg172664_
                                                     (if (gx#identifier?
                                                          _pkg172657_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg172657_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg172657_)
                         (gx#stx-false? _pkg172657_))
                     (gx#stx-e _pkg172657_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg172657_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp172585_
                                                 _rest172659_
                                                 _pre172588_
                                                 _ns172589_
                                                 _pkg172664_))
                                              (_E172607172637_)))))
                                    (_E172607172637_))
                                (_E172607172637_))))
                        (_E172607172637_))))
                 (_E172593172692_
                  (lambda ()
                    (if (gx#stx-pair? _e172591172615_)
                        (let ((_e172601172670_ (gx#syntax-e _e172591172615_)))
                          (let ((_hd172602172673_ (##car _e172601172670_))
                                (_tl172603172675_ (##cdr _e172601172670_)))
                            (if (eq? (gx#stx-e _hd172602172673_) 'namespace:)
                                (if (gx#stx-pair? _tl172603172675_)
                                    (let ((_e172604172678_
                                           (gx#syntax-e _tl172603172675_)))
                                      (let ((_hd172605172681_
                                             (##car _e172604172678_))
                                            (_tl172606172683_
                                             (##cdr _e172604172678_)))
                                        (let* ((_ns172686_ _hd172605172681_)
                                               (_rest172688_ _tl172606172683_))
                                          (if '#t
                                              (let ((_ns172690_
                                                     (if (gx#identifier?
                                                          _ns172686_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns172686_))
                                                         (if (gx#stx-string?
                                                              _ns172686_)
                                                             (gx#stx-e
                                                              _ns172686_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns172686_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns172686_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp172585_
                                                 _rest172688_
                                                 _pre172588_
                                                 _ns172690_
                                                 _pkg172590_))
                                              (_E172600172666_)))))
                                    (_E172600172666_))
                                (_E172600172666_))))
                        (_E172600172666_))))
                 (_E172592172716_
                  (lambda ()
                    (if (gx#stx-pair? _e172591172615_)
                        (let ((_e172594172696_ (gx#syntax-e _e172591172615_)))
                          (let ((_hd172595172699_ (##car _e172594172696_))
                                (_tl172596172701_ (##cdr _e172594172696_)))
                            (if (eq? (gx#stx-e _hd172595172699_) 'prelude:)
                                (if (gx#stx-pair? _tl172596172701_)
                                    (let ((_e172597172704_
                                           (gx#syntax-e _tl172596172701_)))
                                      (let ((_hd172598172707_
                                             (##car _e172597172704_))
                                            (_tl172599172709_
                                             (##cdr _e172597172704_)))
                                        (let* ((_prelude172712_
                                                _hd172598172707_)
                                               (_rest172714_ _tl172599172709_))
                                          (if '#t
                                              (_lp172585_
                                               _rest172714_
                                               _prelude172712_
                                               _ns172589_
                                               _pkg172590_)
                                              (_E172593172692_)))))
                                    (_E172593172692_))
                                (_E172593172692_))))
                        (_E172593172692_)))))
            (_E172592172716_)))))
    (define gx#core-read-module/lang
      (lambda (_path172410_)
        (letrec ((_default-read-module-body172412_
                  (lambda (_inp172575_)
                    (let _lp172577_ ((_body172579_ '()))
                      (let ((_next172581_ (read-syntax _inp172575_)))
                        (if (eof-object? _next172581_)
                            (reverse _body172579_)
                            (_lp172577_ (cons _next172581_ _body172579_)))))))
                 (_read-body172413_
                  (lambda (_inp172494_
                           _pre172495_
                           _ns172496_
                           _pkg172497_
                           _args172498_)
                    (let ((_g177987_
                           (if _pkg172497_
                               (values _pre172495_ _ns172496_ _pkg172497_)
                               (gx#core-read-module-package
                                _path172410_
                                _pre172495_
                                _ns172496_))))
                      (begin
                        (let ((_g177988_
                               (if (##values? _g177987_)
                                   (##vector-length _g177987_)
                                   1)))
                          (if (not (##fx= _g177988_ 3))
                              (error "Context expects 3 values" _g177988_)))
                        (let ((_pre172500_ (##vector-ref _g177987_ 0))
                              (_ns172501_ (##vector-ref _g177987_ 1))
                              (_pkg172502_ (##vector-ref _g177987_ 2)))
                          (let* ((_prelude172504_
                                  (gx#import-module__0 _pre172500_))
                                 (_read-module-body172558_
                                  (let ((_$e172550_
                                         (find (lambda (_e172505172507_)
                                                 (let* ((_g172509172519_
                                                         _e172505172507_)
                                                        (_else172511172527_
                                                         (lambda () '#f))
                                                        (_K172513172531_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g172509172519_
                                                        'gx#module-export::t)
                                                       (let* ((_e172514172534_
                                                               (##unchecked-structure-ref
                                                                _g172509172519_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e172515172537_
                                                               (##unchecked-structure-ref
                                                                _g172509172519_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e172516172540_
                                                               (##unchecked-structure-ref
                                                                _g172509172519_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e172516172540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e172517172543_
                            (##unchecked-structure-ref
                             _g172509172519_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g172545172547_)
                              (eq? _g172545172547_ 'read-module-body))
                            _e172517172543_)
                           (_K172513172531_)
                           (_else172511172527_)))
                     (_else172511172527_)))
               (_else172511172527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude172504_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e172550_
                                        ((lambda (_xport172553_)
                                           (let ((_proc172556_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport172553_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc172556_)
                                                 _proc172556_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path172410_
                                                  _pre172500_
                                                  _proc172556_))))
                                         _$e172550_)
                                        _default-read-module-body172412_)))
                                 (_path-id172560_
                                  (gx#core-module-path->namespace
                                   _path172410_))
                                 (_pkg-id172562_
                                  (if _pkg172502_
                                      (string-append
                                       _pkg172502_
                                       '"/"
                                       _path-id172560_)
                                      _path-id172560_))
                                 (_module-id172564_
                                  (string->symbol _pkg-id172562_))
                                 (_module-ns172569_
                                  (let ((_$e172566_ _ns172501_))
                                    (if _$e172566_ _$e172566_ _pkg-id172562_)))
                                 (_body172572_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body172558_ _inp172494_))
                                   gx#current-module-reader-path
                                   _path172410_
                                   gx#current-module-reader-args
                                   _args172498_)))
                            (values _prelude172504_
                                    _module-id172564_
                                    _module-ns172569_
                                    _body172572_)))))))
                 (_string-e172414_
                  (lambda (_obj172491_ _what172492_)
                    (if (string? _obj172491_)
                        _obj172491_
                        (if (symbol? _obj172491_)
                            (symbol->string _obj172491_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what172492_)
                             _path172410_
                             _obj172491_)))))
                 (_read-lang-args172415_
                  (lambda (_inp172446_ _args172447_)
                    (let* ((_args172448172456_ _args172447_)
                           (_else172450172464_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path172410_)))
                           (_K172452172479_
                            (lambda (_args172467_ _prelude172468_)
                              (let* ((_pkg172470_
                                      (pgetq 'package: _args172467_))
                                     (_pkg172472_
                                      (if _pkg172470_
                                          (_string-e172414_
                                           _pkg172470_
                                           '"package")
                                          '#f))
                                     (_ns172474_
                                      (pgetq 'namespace: _args172467_))
                                     (_ns172476_
                                      (if _ns172474_
                                          (_string-e172414_
                                           _ns172474_
                                           '"namespace")
                                          '#f)))
                                (_read-body172413_
                                 _inp172446_
                                 _prelude172468_
                                 _ns172476_
                                 _pkg172472_
                                 _args172467_)))))
                      (if (##pair? _args172448172456_)
                          (let ((_hd172453172482_ (##car _args172448172456_))
                                (_tl172454172484_ (##cdr _args172448172456_)))
                            (let* ((_prelude172487_ _hd172453172482_)
                                   (_args172489_ _tl172454172484_))
                              (_K172452172479_ _args172489_ _prelude172487_)))
                          (_else172450172464_)))))
                 (_read-lang172416_
                  (lambda (_inp172421_)
                    (let* ((_head172423_ (read-line _inp172421_))
                           (_$e172425_ (string-index _head172423_ '#\space)))
                      (if _$e172425_
                          ((lambda (_ix172428_)
                             (let ((_lang172430_
                                    (substring _head172423_ '0 _ix172428_)))
                               (if (equal? _lang172430_ '"#lang")
                                   (let* ((_rest172432_
                                           (substring
                                            _head172423_
                                            (fx+ _ix172428_ '1)
                                            (string-length _head172423_)))
                                          (_args172443_
                                           (with-catch
                                            (lambda (_g172433172435_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path172410_
                                               _g172433172435_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest172432_
                                               (lambda (_g172438172440_)
                                                 (read-all
                                                  _g172438172440_
                                                  read)))))))
                                     (_read-lang-args172415_
                                      _inp172421_
                                      _args172443_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path172410_))))
                           _$e172425_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path172410_)))))
                 (_read-e172417_
                  (lambda (_inp172419_)
                    (if (eq? (peek-char _inp172419_) '#\#)
                        (_read-lang172416_ _inp172419_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path172410_)))))
          (gx#call-with-input-source-file _path172410_ _read-e172417_))))
    (define gx#core-read-module-package
      (lambda (_path172364_ _pre172365_ _ns172366_)
        (letrec ((_string-e172368_
                  (lambda (_e172408_)
                    (if (symbol? _e172408_)
                        (symbol->string _e172408_)
                        (if (string? _e172408_)
                            _e172408_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e172408_))))))
          (let _lp172370_ ((_dir172372_ (path-directory _path172364_))
                           (_pkg-path172373_ '()))
            (let ((_gerbil.pkg172375_ (path-expand '"gerbil.pkg" _dir172372_)))
              (if (file-exists? _gerbil.pkg172375_)
                  (let ((_plist172377_
                         (gx#core-library-package-plist__% _dir172372_ '#t)))
                    (if (null? _plist172377_)
                        (let ((_pkg172379_
                               (if (not (null? _pkg-path172373_))
                                   (string-join _pkg-path172373_ '"/")
                                   '#f)))
                          (values _pre172365_ _ns172366_ _pkg172379_))
                        (if (list? _plist172377_)
                            (let* ((_root172381_
                                    (pgetq 'package: _plist172377_))
                                   (_pkg172385_
                                    (let ((_pkg-path172383_
                                           (if _root172381_
                                               (cons (_string-e172368_
                                                      _root172381_)
                                                     _pkg-path172373_)
                                               _pkg-path172373_)))
                                      (if (not (null? _pkg-path172383_))
                                          (string-join _pkg-path172383_ '"/")
                                          '#f)))
                                   (_ns172392_
                                    (let ((_ns172390_
                                           (let ((_$e172387_ _ns172366_))
                                             (if _$e172387_
                                                 _$e172387_
                                                 (pgetq 'namespace:
                                                        _plist172377_)))))
                                      (if _ns172390_
                                          (_string-e172368_ _ns172390_)
                                          '#f)))
                                   (_pre172397_
                                    (let ((_$e172394_ _pre172365_))
                                      (if _$e172394_
                                          _$e172394_
                                          (pgetq 'prelude: _plist172377_)))))
                              (values _pre172397_ _ns172392_ _pkg172385_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist172377_))))
                  (let ((_dir*172400_
                         (path-strip-trailing-directory-separator
                          _dir172372_)))
                    (if (or (string-empty? _dir*172400_)
                            (equal? _dir172372_ _dir*172400_))
                        (values _pre172365_ _ns172366_ '#f)
                        (let ((_xpath172405_
                               (path-strip-directory _dir*172400_))
                              (_xdir172406_ (path-directory _dir*172400_)))
                          (_lp172370_
                           _xdir172406_
                           (cons _xpath172405_ _pkg-path172373_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path172362_)
        (path-strip-extension (path-strip-directory _path172362_))))
    (define gx#core-module-path->id
      (lambda (_path172360_)
        (string->symbol (gx#core-module-path->namespace _path172360_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path172339_ _rel172340_)
        (let* ((_path172342_ (gx#stx-e _stx-path172339_))
               (_path172344_
                (if (string-empty? (path-extension _path172342_))
                    (string-append _path172342_ '".ss")
                    _path172342_)))
          (gx#core-resolve-path__%
           _path172344_
           (let ((_$e172347_ (gx#stx-source _stx-path172339_)))
             (if _$e172347_ _$e172347_ _rel172340_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path172353_)
        (let ((_rel172355_ '#f))
          (gx#core-resolve-module-path__% _stx-path172353_ _rel172355_))))
    (define gx#core-resolve-module-path
      (lambda _g177990_
        (let ((_g177989_ (##length _g177990_)))
          (cond ((##fx= _g177989_ 1)
                 (apply (lambda (_stx-path172353_)
                          (gx#core-resolve-module-path__0 _stx-path172353_))
                        _g177990_))
                ((##fx= _g177989_ 2)
                 (apply (lambda (_stx-path172357_ _rel172358_)
                          (gx#core-resolve-module-path__%
                           _stx-path172357_
                           _rel172358_))
                        _g177990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g177990_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath172225_)
        (let* ((_spath172227_ (symbol->string (gx#stx-e _libpath172225_)))
               (_spath172229_
                (substring _spath172227_ '1 (string-length _spath172227_)))
               (_ext172231_ (path-extension _spath172229_))
               (_ssi172233_
                (if (string-empty? _ext172231_)
                    (string-append _spath172229_ '".ssi")
                    (string-append
                     (path-strip-extension _spath172229_)
                     '".ssi")))
               (_srcs172237_
                (if (string-empty? _ext172231_)
                    (map (lambda (_ext172235_)
                           (string-append _spath172229_ _ext172235_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath172229_ '()))))
          (let _lp172240_ ((_rest172242_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest172243172252_ _rest172242_)
                   (_E172246172256_
                    (lambda ()
                      (error '"No clause matching" _rest172243172252_))))
              (let ((_K172248172326_
                     (lambda (_rest172267_ _dir172268_)
                       (letrec ((_resolve172270_
                                 (lambda (_ssi172282_ _srcs172283_)
                                   (let ((_compiled-path172285_
                                          (path-expand
                                           _ssi172282_
                                           _dir172268_)))
                                     (if (file-exists? _compiled-path172285_)
                                         (path-normalize _compiled-path172285_)
                                         (let _lpr172287_ ((_rest-src172289_
                                                            _srcs172283_))
                                           (let* ((_rest-src172290172298_
                                                   _rest-src172289_)
                                                  (_else172292172306_
                                                   (lambda ()
                                                     (_lp172240_
                                                      _rest172267_)))
                                                  (_K172294172314_
                                                   (lambda (_rest-src172309_
                                                            _src172310_)
                                                     (let ((_src-path172312_
                                                            (path-expand
                                                             _src172310_
                                                             _dir172268_)))
                                                       (if (file-exists?
                                                            _src-path172312_)
                                                           (path-normalize
                                                            _src-path172312_)
                                                           (_lpr172287_
                                                            _rest-src172309_))))))
                                             (if (##pair? _rest-src172290172298_)
                                                 (let ((_hd172295172317_
                                                        (##car _rest-src172290172298_))
                                                       (_tl172296172319_
                                                        (##cdr _rest-src172290172298_)))
                                                   (let* ((_src172322_
                                                           _hd172295172317_)
                                                          (_rest-src172324_
                                                           _tl172296172319_))
                                                     (_K172294172314_
                                                      _rest-src172324_
                                                      _src172322_)))
                                                 (_else172292172306_)))))))))
                         (let ((_$e172272_
                                (gx#core-library-package-path-prefix
                                 _dir172268_)))
                           (if _$e172272_
                               ((lambda (_prefix172275_)
                                  (if (string-prefix?
                                       _prefix172275_
                                       _spath172229_)
                                      (let ((_ssi172279_
                                             (substring
                                              _ssi172233_
                                              (string-length _prefix172275_)
                                              (string-length _ssi172233_)))
                                            (_srcs172280_
                                             (map (lambda (_src172277_)
                                                    (substring
                                                     _src172277_
                                                     (string-length
                                                      _prefix172275_)
                                                     (string-length
                                                      _src172277_)))
                                                  _srcs172237_)))
                                        (_resolve172270_
                                         _ssi172279_
                                         _srcs172280_))
                                      (_lp172240_ _rest172267_)))
                                _$e172272_)
                               (_resolve172270_ _ssi172233_ _srcs172237_))))))
                    (_K172247172261_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath172225_))))
                (let ((_try-match172245172264_
                       (lambda ()
                         (if (##null? _rest172243172252_)
                             (_K172247172261_)
                             (_E172246172256_)))))
                  (if (##pair? _rest172243172252_)
                      (let ((_tl172250172331_ (##cdr _rest172243172252_))
                            (_hd172249172329_ (##car _rest172243172252_)))
                        (let ((_dir172334_ _hd172249172329_)
                              (_rest172336_ _tl172250172331_))
                          (_K172248172326_ _rest172336_ _dir172334_)))
                      (_try-match172245172264_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath172198_)
        (letrec ((_resolve172200_
                  (lambda (_path172217_ _base172218_)
                    (let ((_$e172220_ (string-rindex _base172218_ '#\/)))
                      (if _$e172220_
                          ((lambda (_idx172223_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base172218_ '0 _idx172223_)
                                '"/"
                                _path172217_))))
                           _$e172220_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path172217_))))))))
          (let ((_spath172202_ (symbol->string (gx#stx-e _modpath172198_)))
                (_mod172203_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod172203_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath172198_))
            (let ((_mpath172205_
                   (symbol->string
                    (##structure-ref
                     _mod172203_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp172207_ ((_spath172209_ _spath172202_)
                               (_mpath172210_ _mpath172205_))
                (if (string-prefix? '"../" _spath172209_)
                    (let ((_$e172212_ (string-rindex _mpath172210_ '#\/)))
                      (if _$e172212_
                          ((lambda (_idx172215_)
                             (_lp172207_
                              (substring
                               _spath172209_
                               '3
                               (string-length _spath172209_))
                              (substring _mpath172210_ '0 _idx172215_)))
                           _$e172212_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath172198_)))
                    (if (string-prefix? '"./" _spath172209_)
                        (_lp172207_
                         (substring
                          _spath172209_
                          '2
                          (string-length _spath172209_))
                         _mpath172210_)
                        (_resolve172200_ _spath172209_ _mpath172210_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir172191_)
        (let ((_$e172193_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir172191_))))
          (if _$e172193_
              ((lambda (_pkg172196_)
                 (string-append (symbol->string _pkg172196_) '"/"))
               _$e172193_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir172163_ _exists?172164_)
        (let* ((_cache172166_ (gx#core-library-package-cache))
               (_$e172168_ (hash-get _cache172166_ _dir172163_)))
          (if _$e172168_
              (values _$e172168_)
              (let* ((_gerbil.pkg172171_
                      (path-expand '"gerbil.pkg" _dir172163_))
                     (_plist172178_
                      (if (or _exists?172164_
                              (file-exists? _gerbil.pkg172171_))
                          (let ((_e172176_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg172171_
                                  read)))
                            (if (eof-object? _e172176_)
                                '()
                                (if (list? _e172176_)
                                    _e172176_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg172171_
                                     _e172176_))))
                          '())))
                (hash-put! _cache172166_ _dir172163_ _plist172178_)
                _plist172178_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir172184_)
        (let ((_exists?172186_ '#f))
          (gx#core-library-package-plist__% _dir172184_ _exists?172186_))))
    (define gx#core-library-package-plist
      (lambda _g177992_
        (let ((_g177991_ (##length _g177992_)))
          (cond ((##fx= _g177991_ 1)
                 (apply (lambda (_dir172184_)
                          (gx#core-library-package-plist__0 _dir172184_))
                        _g177992_))
                ((##fx= _g177991_ 2)
                 (apply (lambda (_dir172188_ _exists?172189_)
                          (gx#core-library-package-plist__%
                           _dir172188_
                           _exists?172189_))
                        _g177992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g177992_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e172157_ (gx#current-expander-module-library-package-cache)))
          (if _$e172157_
              (values _$e172157_)
              (let ((_cache172160_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache
                 _cache172160_)
                _cache172160_)))))
    (define gx#core-library-module-path?
      (lambda (_stx172154_) (gx#core-special-module-path? _stx172154_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx172152_) (gx#core-special-module-path? _stx172152_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx172147_ _char172148_)
        (if (gx#identifier? _stx172147_)
            (if (interned-symbol? (gx#stx-e _stx172147_))
                (let ((_str172150_ (symbol->string (gx#stx-e _stx172147_))))
                  (if (fx> (string-length _str172150_) '1)
                      (eq? (string-ref _str172150_ '0) _char172148_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx172141_)
        (gx#core-bound-identifier?__%
         _stx172141_
         (lambda (_g172142172144_)
           (gx#expander-binding?__% _g172142172144_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx172135_)
        (gx#core-bound-identifier?__%
         _stx172135_
         (lambda (_g172136172138_)
           (gx#expander-binding?__% _g172136172138_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx172122_)
        (letrec ((_module-prelude?172124_
                  (lambda (_e172130_)
                    (let ((_$e172132_
                           (##structure-instance-of?
                            _e172130_
                            'gx#module-context::t)))
                      (if _$e172132_
                          _$e172132_
                          (##structure-instance-of?
                           _e172130_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx172122_
           (lambda (_g172125172127_)
             (gx#expander-binding?__%
              _g172125172127_
              _module-prelude?172124_))))))
    (define gx#core-bind-import!__%
      (lambda (_in172052_ _ctx172053_ _force-weak?172054_)
        (let* ((_in172055172064_ _in172052_)
               (_E172057172068_
                (lambda () (error '"No clause matching" _in172055172064_)))
               (_K172058172081_
                (lambda (_weak?172071_ _phi172072_ _key172073_ _source172074_)
                  (gx#core-bind!__%
                   _key172073_
                   (let ((_e172076_
                          (gx#core-resolve-module-export _source172074_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e172076_
                       '1
                       gx#binding::t
                       '#f)
                      _key172073_
                      _phi172072_
                      _e172076_
                      (##unchecked-structure-ref
                       _source172074_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e172078_ _force-weak?172054_))
                        (if _$e172078_ _$e172078_ _weak?172071_))))
                   gx#core-context-rebind?
                   _phi172072_
                   _ctx172053_))))
          (if (##structure-direct-instance-of?
               _in172055172064_
               'gx#module-import::t)
              (let* ((_e172059172084_
                      (##unchecked-structure-ref
                       _in172055172064_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source172087_ _e172059172084_)
                     (_e172060172089_
                      (##unchecked-structure-ref
                       _in172055172064_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key172092_ _e172060172089_)
                     (_e172061172094_
                      (##unchecked-structure-ref
                       _in172055172064_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi172097_ _e172061172094_)
                     (_e172062172099_
                      (##unchecked-structure-ref
                       _in172055172064_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?172102_ _e172062172099_))
                (_K172058172081_
                 _weak?172102_
                 _phi172097_
                 _key172092_
                 _source172087_))
              (_E172057172068_)))))
    (define gx#core-bind-import!__0
      (lambda (_in172107_)
        (let* ((_ctx172109_ (gx#current-expander-context))
               (_force-weak?172111_ '#f))
          (gx#core-bind-import!__%
           _in172107_
           _ctx172109_
           _force-weak?172111_))))
    (define gx#core-bind-import!__1
      (lambda (_in172113_ _ctx172114_)
        (let ((_force-weak?172116_ '#f))
          (gx#core-bind-import!__%
           _in172113_
           _ctx172114_
           _force-weak?172116_))))
    (define gx#core-bind-import!
      (lambda _g177994_
        (let ((_g177993_ (##length _g177994_)))
          (cond ((##fx= _g177993_ 1)
                 (apply (lambda (_in172107_)
                          (gx#core-bind-import!__0 _in172107_))
                        _g177994_))
                ((##fx= _g177993_ 2)
                 (apply (lambda (_in172113_ _ctx172114_)
                          (gx#core-bind-import!__1 _in172113_ _ctx172114_))
                        _g177994_))
                ((##fx= _g177993_ 3)
                 (apply (lambda (_in172118_ _ctx172119_ _force-weak?172120_)
                          (gx#core-bind-import!__%
                           _in172118_
                           _ctx172119_
                           _force-weak?172120_))
                        _g177994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g177994_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in172038_ _ctx172039_)
        (gx#core-bind-import!__% _in172038_ _ctx172039_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in172044_)
        (let ((_ctx172046_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in172044_ _ctx172046_))))
    (define gx#core-bind-weak-import!
      (lambda _g177996_
        (let ((_g177995_ (##length _g177996_)))
          (cond ((##fx= _g177995_ 1)
                 (apply (lambda (_in172044_)
                          (gx#core-bind-weak-import!__0 _in172044_))
                        _g177996_))
                ((##fx= _g177995_ 2)
                 (apply (lambda (_in172048_ _ctx172049_)
                          (gx#core-bind-weak-import!__%
                           _in172048_
                           _ctx172049_))
                        _g177996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g177996_))))))
    (define gx#core-resolve-module-export
      (lambda (_out171929_)
        (letrec ((_subst171931_
                  (lambda (_key171977_)
                    (let* ((_key171978171986_ _key171977_)
                           (_else171980171994_ (lambda () _key171977_))
                           (_K171982172025_
                            (lambda (_mark171997_ _id171998_)
                              (let* ((_mark171999172005_ _mark171997_)
                                     (_E172001172009_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark171999172005_)))
                                     (_K172002172017_
                                      (lambda (_subst172012_)
                                        (let ((_$e172014_
                                               (if _subst172012_
                                                   (hash-get
                                                    _subst172012_
                                                    _id171998_)
                                                   '#f)))
                                          (if _$e172014_
                                              _$e172014_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key171977_))))))
                                (if (##structure-instance-of?
                                     _mark171999172005_
                                     'gx#expander-mark::t)
                                    (let* ((_e172003172020_
                                            (##unchecked-structure-ref
                                             _mark171999172005_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst172023_ _e172003172020_))
                                      (_K172002172017_ _subst172023_))
                                    (_E172001172009_))))))
                      (if (##pair? _key171978171986_)
                          (let ((_hd171983172028_ (##car _key171978171986_))
                                (_tl171984172030_ (##cdr _key171978171986_)))
                            (let* ((_id172033_ _hd171983172028_)
                                   (_mark172035_ _tl171984172030_))
                              (_K171982172025_ _mark172035_ _id172033_)))
                          (_else171980171994_))))))
          (let* ((_out171932171942_ _out171929_)
                 (_E171934171946_
                  (lambda () (error '"No clause matching" _out171932171942_)))
                 (_K171935171953_
                  (lambda (_phi171949_ _key171950_ _ctx171951_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx171951_ _phi171949_)
                     (_subst171931_ _key171950_)))))
            (if (##structure-direct-instance-of?
                 _out171932171942_
                 'gx#module-export::t)
                (let* ((_e171936171956_
                        (##unchecked-structure-ref
                         _out171932171942_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx171959_ _e171936171956_)
                       (_e171937171961_
                        (##unchecked-structure-ref
                         _out171932171942_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key171964_ _e171937171961_)
                       (_e171938171966_
                        (##unchecked-structure-ref
                         _out171932171942_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi171969_ _e171938171966_)
                       (_e171939171971_
                        (##unchecked-structure-ref
                         _out171932171942_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e171940171974_
                        (##unchecked-structure-ref
                         _out171932171942_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K171935171953_ _phi171969_ _key171964_ _ctx171959_))
                (_E171934171946_))))))
    (define gx#core-module-export->import__%
      (lambda (_out171854_ _rename171855_ _dphi171856_)
        (let* ((_out171857171867_ _out171854_)
               (_E171859171871_
                (lambda () (error '"No clause matching" _out171857171867_)))
               (_K171860171883_
                (lambda (_weak?171874_
                         _name171875_
                         _phi171876_
                         _key171877_
                         _ctx171878_)
                  (##structure
                   gx#module-import::t
                   _out171854_
                   (let ((_$e171880_ _rename171855_))
                     (if _$e171880_ _$e171880_ _name171875_))
                   (fx+ _phi171876_ _dphi171856_)
                   _weak?171874_))))
          (if (##structure-direct-instance-of?
               _out171857171867_
               'gx#module-export::t)
              (let* ((_e171861171886_
                      (##unchecked-structure-ref
                       _out171857171867_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx171889_ _e171861171886_)
                     (_e171862171891_
                      (##unchecked-structure-ref
                       _out171857171867_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key171894_ _e171862171891_)
                     (_e171863171896_
                      (##unchecked-structure-ref
                       _out171857171867_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi171899_ _e171863171896_)
                     (_e171864171901_
                      (##unchecked-structure-ref
                       _out171857171867_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name171904_ _e171864171901_)
                     (_e171865171906_
                      (##unchecked-structure-ref
                       _out171857171867_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?171909_ _e171865171906_))
                (_K171860171883_
                 _weak?171909_
                 _name171904_
                 _phi171899_
                 _key171894_
                 _ctx171889_))
              (_E171859171871_)))))
    (define gx#core-module-export->import__0
      (lambda (_out171914_)
        (let* ((_rename171916_ '#f) (_dphi171918_ '0))
          (gx#core-module-export->import__%
           _out171914_
           _rename171916_
           _dphi171918_))))
    (define gx#core-module-export->import__1
      (lambda (_out171920_ _rename171921_)
        (let ((_dphi171923_ '0))
          (gx#core-module-export->import__%
           _out171920_
           _rename171921_
           _dphi171923_))))
    (define gx#core-module-export->import
      (lambda _g177998_
        (let ((_g177997_ (##length _g177998_)))
          (cond ((##fx= _g177997_ 1)
                 (apply (lambda (_out171914_)
                          (gx#core-module-export->import__0 _out171914_))
                        _g177998_))
                ((##fx= _g177997_ 2)
                 (apply (lambda (_out171920_ _rename171921_)
                          (gx#core-module-export->import__1
                           _out171920_
                           _rename171921_))
                        _g177998_))
                ((##fx= _g177997_ 3)
                 (apply (lambda (_out171925_ _rename171926_ _dphi171927_)
                          (gx#core-module-export->import__%
                           _out171925_
                           _rename171926_
                           _dphi171927_))
                        _g177998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g177998_))))))
    (define gx#core-expand-module%
      (lambda (_stx171782_)
        (letrec ((_make-context171784_
                  (lambda (_id171835_)
                    (let* ((_super171837_ (gx#current-expander-context))
                           (_bind-id171839_ (gx#stx-e _id171835_))
                           (_mod-id171841_
                            (if (##structure-instance-of?
                                 _super171837_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super171837_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id171839_)
                                _bind-id171839_))
                           (_ns171843_ (symbol->string _mod-id171841_))
                           (_path171850_
                            (if (##structure-instance-of?
                                 _super171837_
                                 'gx#module-context::t)
                                (let ((_path171845_
                                       (##unchecked-structure-ref
                                        _super171837_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path171845_)
                                          (null? _path171845_))
                                      (cons _bind-id171839_ _path171845_)
                                      (if (not _path171845_)
                                          _bind-id171839_
                                          (cons _bind-id171839_
                                                (cons _path171845_ '())))))
                                _bind-id171839_)))
                      (let ((__obj177974
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
                         __obj177974
                         _mod-id171841_
                         _super171837_
                         _ns171843_
                         _path171850_)
                        __obj177974)))))
          (let* ((_e171785171795_ _stx171782_)
                 (_E171787171799_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e171785171795_)))
                 (_E171786171831_
                  (lambda ()
                    (if (gx#stx-pair? _e171785171795_)
                        (let ((_e171788171803_ (gx#syntax-e _e171785171795_)))
                          (let ((_hd171789171806_ (##car _e171788171803_))
                                (_tl171790171808_ (##cdr _e171788171803_)))
                            (if (gx#stx-pair? _tl171790171808_)
                                (let ((_e171791171811_
                                       (gx#syntax-e _tl171790171808_)))
                                  (let ((_hd171792171814_
                                         (##car _e171791171811_))
                                        (_tl171793171816_
                                         (##cdr _e171791171811_)))
                                    (let* ((_id171819_ _hd171792171814_)
                                           (_body171821_ _tl171793171816_))
                                      (if (and (gx#identifier? _id171819_)
                                               (gx#stx-list? _body171821_))
                                          (let* ((_ctx171823_
                                                  (_make-context171784_
                                                   _id171819_))
                                                 (_body171825_
                                                  (gx#core-expand-module-begin
                                                   _body171821_
                                                   _ctx171823_))
                                                 (_body171827_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body171825_)
                                                   (gx#stx-source
                                                    _stx171782_))))
                                            (##unchecked-structure-set!
                                             _ctx171823_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body171827_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx171823_
                                             _body171827_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id171819_
                                             _ctx171823_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id171819_)
                                              _body171827_)
                                             (gx#stx-source _stx171782_)))
                                          (_E171787171799_)))))
                                (_E171787171799_))))
                        (_E171787171799_)))))
            (_E171786171831_)))))
    (define gx#core-expand-module-begin
      (lambda (_body171748_ _ctx171749_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx171752_
                   (gx#core-expand-head (cons '%%begin-module _body171748_)))
                  (_e171753171760_ _stx171752_)
                  (_E171755171764_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx171752_)))
                  (_E171754171778_
                   (lambda ()
                     (if (gx#stx-pair? _e171753171760_)
                         (let ((_e171756171768_ (gx#syntax-e _e171753171760_)))
                           (let ((_hd171757171771_ (##car _e171756171768_))
                                 (_tl171758171773_ (##cdr _e171756171768_)))
                             (if (and (gx#identifier? _hd171757171771_)
                                      (gx#core-identifier=?
                                       _hd171757171771_
                                       '%#begin-module))
                                 (let ((_body171776_ _tl171758171773_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx171752_)
                                           _body171776_
                                           (gx#core-expand-module-body
                                            _body171776_))
                                       (_E171755171764_)))
                                 (_E171755171764_))))
                         (_E171755171764_)))))
             (_E171754171778_)))
         gx#current-expander-context
         _ctx171749_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body171544_)
        (letrec ((_expand-special171546_
                  (lambda (_hd171675_ _K171676_ _rest171677_ _r171678_)
                    (let* ((_e171679171696_ _hd171675_)
                           (_E171691171700_
                            (lambda ()
                              (_K171676_
                               _rest171677_
                               (cons (gx#core-expand-top _hd171675_)
                                     _r171678_))))
                           (_E171681171712_
                            (lambda ()
                              (if (gx#stx-pair? _e171679171696_)
                                  (let ((_e171692171704_
                                         (gx#syntax-e _e171679171696_)))
                                    (let ((_hd171693171707_
                                           (##car _e171692171704_))
                                          (_tl171694171709_
                                           (##cdr _e171692171704_)))
                                      (if (and (gx#identifier?
                                                _hd171693171707_)
                                               (gx#core-identifier=?
                                                _hd171693171707_
                                                '%#export))
                                          (if '#t
                                              (_K171676_
                                               _rest171677_
                                               (cons _hd171675_ _r171678_))
                                              (_E171691171700_))
                                          (_E171691171700_))))
                                  (_E171691171700_))))
                           (_E171680171744_
                            (lambda ()
                              (if (gx#stx-pair? _e171679171696_)
                                  (let ((_e171682171716_
                                         (gx#syntax-e _e171679171696_)))
                                    (let ((_hd171683171719_
                                           (##car _e171682171716_))
                                          (_tl171684171721_
                                           (##cdr _e171682171716_)))
                                      (if (and (gx#identifier?
                                                _hd171683171719_)
                                               (gx#core-identifier=?
                                                _hd171683171719_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl171684171721_)
                                              (let ((_e171685171724_
                                                     (gx#syntax-e
                                                      _tl171684171721_)))
                                                (let ((_hd171686171727_
                                                       (##car _e171685171724_))
                                                      (_tl171687171729_
                                                       (##cdr _e171685171724_)))
                                                  (let ((_hd-bind171732_
                                                         _hd171686171727_))
                                                    (if (gx#stx-pair?
                                                         _tl171687171729_)
                                                        (let ((_e171688171734_
                                                               (gx#syntax-e
                                                                _tl171687171729_)))
                                                          (let ((_hd171689171737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e171688171734_))
                        (_tl171690171739_ (##cdr _e171688171734_)))
                    (let ((_expr171742_ _hd171689171737_))
                      (if (gx#stx-null? _tl171690171739_)
                          (if (gx#core-bind-values? _hd-bind171732_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind171732_)
                                (_K171676_
                                 _rest171677_
                                 (cons _hd171675_ _r171678_)))
                              (_E171681171712_))
                          (_E171681171712_)))))
                (_E171681171712_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E171681171712_))
                                          (_E171681171712_))))
                                  (_E171681171712_)))))
                      (_E171680171744_))))
                 (_expand-body171547_
                  (lambda (_rbody171549_)
                    (let _lp171551_ ((_rest171553_ _rbody171549_)
                                     (_body171554_ '()))
                      (let* ((_rest171555171563_ _rest171553_)
                             (_else171557171571_ (lambda () _body171554_))
                             (_K171559171663_
                              (lambda (_rest171574_ _hd171575_)
                                (let* ((_e171576171597_ _hd171575_)
                                       (_E171592171601_
                                        (lambda ()
                                          (_lp171551_
                                           _rest171574_
                                           (cons (gx#core-expand-expression
                                                  _hd171575_)
                                                 _body171554_))))
                                       (_E171588171615_
                                        (lambda ()
                                          (if (gx#stx-pair? _e171576171597_)
                                              (let ((_e171593171605_
                                                     (gx#syntax-e
                                                      _e171576171597_)))
                                                (let ((_hd171594171608_
                                                       (##car _e171593171605_))
                                                      (_tl171595171610_
                                                       (##cdr _e171593171605_)))
                                                  (let ((_form171613_
                                                         _hd171594171608_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form171613_
                                                         gx#special-form-binding?)
                                                        (_lp171551_
                                                         _rest171574_
                                                         (cons _hd171575_
                                                               _body171554_))
                                                        (_E171592171601_)))))
                                              (_E171592171601_))))
                                       (_E171578171627_
                                        (lambda ()
                                          (if (gx#stx-pair? _e171576171597_)
                                              (let ((_e171589171619_
                                                     (gx#syntax-e
                                                      _e171576171597_)))
                                                (let ((_hd171590171622_
                                                       (##car _e171589171619_))
                                                      (_tl171591171624_
                                                       (##cdr _e171589171619_)))
                                                  (if (and (gx#identifier?
                                                            _hd171590171622_)
                                                           (gx#core-identifier=?
                                                            _hd171590171622_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp171551_
                                                           _rest171574_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd171575_)
                         _body171554_))
                  (_E171588171615_))
              (_E171588171615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E171588171615_))))
                                       (_E171577171659_
                                        (lambda ()
                                          (if (gx#stx-pair? _e171576171597_)
                                              (let ((_e171579171631_
                                                     (gx#syntax-e
                                                      _e171576171597_)))
                                                (let ((_hd171580171634_
                                                       (##car _e171579171631_))
                                                      (_tl171581171636_
                                                       (##cdr _e171579171631_)))
                                                  (if (and (gx#identifier?
                                                            _hd171580171634_)
                                                           (gx#core-identifier=?
                                                            _hd171580171634_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl171581171636_)
                                                          (let ((_e171582171639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl171581171636_)))
                    (let ((_hd171583171642_ (##car _e171582171639_))
                          (_tl171584171644_ (##cdr _e171582171639_)))
                      (let ((_hd-bind171647_ _hd171583171642_))
                        (if (gx#stx-pair? _tl171584171644_)
                            (let ((_e171585171649_
                                   (gx#syntax-e _tl171584171644_)))
                              (let ((_hd171586171652_ (##car _e171585171649_))
                                    (_tl171587171654_ (##cdr _e171585171649_)))
                                (let ((_expr171657_ _hd171586171652_))
                                  (if (gx#stx-null? _tl171587171654_)
                                      (if '#t
                                          (_lp171551_
                                           _rest171574_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind171647_)
                                                   (gx#core-expand-expression
                                                    _expr171657_))
                                                  (gx#stx-source _hd171575_))
                                                 _body171554_))
                                          (_E171578171627_))
                                      (_E171578171627_)))))
                            (_E171578171627_)))))
                  (_E171578171627_))
              (_E171578171627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E171578171627_)))))
                                  (_E171577171659_)))))
                        (if (##pair? _rest171555171563_)
                            (let ((_hd171560171666_ (##car _rest171555171563_))
                                  (_tl171561171668_
                                   (##cdr _rest171555171563_)))
                              (let* ((_hd171671_ _hd171560171666_)
                                     (_rest171673_ _tl171561171668_))
                                (_K171559171663_ _rest171673_ _hd171671_)))
                            (_else171557171571_)))))))
          (_expand-body171547_
           (gx#core-expand-block__%
            (cons '%#begin-module _body171544_)
            _expand-special171546_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx171387_
               _expanded?171388_
               _method171389_
               _current-phi171390_
               _expand1171391_)
        (letrec ((_K171393_
                  (lambda (_rest171511_ _r171512_)
                    (let* ((_e171513171520_ _rest171511_)
                           (_E171515171524_ (lambda () _r171512_))
                           (_E171514171540_
                            (lambda ()
                              (if (gx#stx-pair? _e171513171520_)
                                  (let ((_e171516171528_
                                         (gx#syntax-e _e171513171520_)))
                                    (let ((_hd171517171531_
                                           (##car _e171516171528_))
                                          (_tl171518171533_
                                           (##cdr _e171516171528_)))
                                      (let* ((_hd171536_ _hd171517171531_)
                                             (_rest171538_ _tl171518171533_))
                                        (if '#t
                                            (_step171394_
                                             _hd171536_
                                             _rest171538_
                                             _r171512_)
                                            (_E171515171524_)))))
                                  (_E171515171524_)))))
                      (_E171514171540_))))
                 (_step171394_
                  (lambda (_hd171425_ _rest171426_ _r171427_)
                    (let* ((_e171428171446_ _hd171425_)
                           (_E171441171450_
                            (lambda ()
                              (if (_expanded?171388_ (gx#stx-e _hd171425_))
                                  (_K171393_
                                   _rest171426_
                                   (cons (gx#stx-e _hd171425_) _r171427_))
                                  (_expand1171391_
                                   _hd171425_
                                   _K171393_
                                   _rest171426_
                                   _r171427_))))
                           (_E171437171466_
                            (lambda ()
                              (if (gx#stx-pair? _e171428171446_)
                                  (let ((_e171442171454_
                                         (gx#syntax-e _e171428171446_)))
                                    (let ((_hd171443171457_
                                           (##car _e171442171454_))
                                          (_tl171444171459_
                                           (##cdr _e171442171454_)))
                                      (let* ((_macro171462_ _hd171443171457_)
                                             (_body171464_ _tl171444171459_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro171462_
                                             gx#syntax-binding?)
                                            (_K171393_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro171462_)
                                                    _hd171425_
                                                    _method171389_)
                                                   _rest171426_)
                                             _r171427_)
                                            (_E171441171450_)))))
                                  (_E171441171450_))))
                           (_E171430171480_
                            (lambda ()
                              (if (gx#stx-pair? _e171428171446_)
                                  (let ((_e171438171470_
                                         (gx#syntax-e _e171428171446_)))
                                    (let ((_hd171439171473_
                                           (##car _e171438171470_))
                                          (_tl171440171475_
                                           (##cdr _e171438171470_)))
                                      (if (eq? (gx#stx-e _hd171439171473_)
                                               'begin:)
                                          (let ((_body171478_
                                                 _tl171440171475_))
                                            (if '#t
                                                (_K171393_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest171426_
                                                  _body171478_)
                                                 _r171427_)
                                                (_E171437171466_)))
                                          (_E171437171466_))))
                                  (_E171437171466_))))
                           (_E171429171507_
                            (lambda ()
                              (if (gx#stx-pair? _e171428171446_)
                                  (let ((_e171431171484_
                                         (gx#syntax-e _e171428171446_)))
                                    (let ((_hd171432171487_
                                           (##car _e171431171484_))
                                          (_tl171433171489_
                                           (##cdr _e171431171484_)))
                                      (if (eq? (gx#stx-e _hd171432171487_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl171433171489_)
                                              (let ((_e171434171492_
                                                     (gx#syntax-e
                                                      _tl171433171489_)))
                                                (let ((_hd171435171495_
                                                       (##car _e171434171492_))
                                                      (_tl171436171497_
                                                       (##cdr _e171434171492_)))
                                                  (let* ((_dphi171500_
                                                          _hd171435171495_)
                                                         (_body171502_
                                                          _tl171436171497_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi171500_)
                                                        (let ((_rbody171505_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K171393_ _body171502_ '()))
                        _current-phi171390_
                        (fx+ (gx#stx-e _dphi171500_) (_current-phi171390_)))))
                  (_K171393_
                   _rest171426_
                   (foldr1 cons _r171427_ _rbody171505_)))
                (_E171430171480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E171430171480_))
                                          (_E171430171480_))))
                                  (_E171430171480_)))))
                      (_E171429171507_)))))
          (let* ((_e171395171402_ _stx171387_)
                 (_E171397171406_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e171395171402_)))
                 (_E171396171421_
                  (lambda ()
                    (if (gx#stx-pair? _e171395171402_)
                        (let ((_e171398171410_ (gx#syntax-e _e171395171402_)))
                          (let ((_hd171399171413_ (##car _e171398171410_))
                                (_tl171400171415_ (##cdr _e171398171410_)))
                            (let ((_body171418_ _tl171400171415_))
                              (if '#t
                                  (if (_current-phi171390_)
                                      (_K171393_ _body171418_ '())
                                      (call-with-parameters
                                       (lambda () (_K171393_ _body171418_ '()))
                                       _current-phi171390_
                                       (gx#current-expander-phi)))
                                  (_E171397171406_)))))
                        (_E171397171406_)))))
            (_E171396171421_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx171054_ _internal-expand?171055_)
        (letrec ((_expand1171057_
                  (lambda (_hd171367_ _K171368_ _rest171369_ _r171370_)
                    (if (gx#core-bound-module? _hd171367_)
                        (_import1171058_
                         (gx#syntax-local-e__0 _hd171367_)
                         _K171368_
                         _rest171369_
                         _r171370_)
                        (if (gx#core-library-module-path? _hd171367_)
                            (_import1171058_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd171367_))
                             _K171368_
                             _rest171369_
                             _r171370_)
                            (if (gx#core-library-relative-module-path?
                                 _hd171367_)
                                (_import1171058_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd171367_))
                                 _K171368_
                                 _rest171369_
                                 _r171370_)
                                (let ((_e171372_ (gx#stx-e _hd171367_)))
                                  (if (pair? _e171372_)
                                      (let ((_$e171374_
                                             (gx#stx-e (car _e171372_))))
                                        (if (eq? 'spec: _$e171374_)
                                            (_import-spec171061_
                                             _hd171367_
                                             _K171368_
                                             _rest171369_
                                             _r171370_)
                                            (if (eq? 'in: _$e171374_)
                                                (_import-submodule171059_
                                                 _hd171367_
                                                 _K171368_
                                                 _rest171369_
                                                 _r171370_)
                                                (if (eq? 'runtime: _$e171374_)
                                                    (_import-runtime171060_
                                                     _hd171367_
                                                     _K171368_
                                                     _rest171369_
                                                     _r171370_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx171054_
                                                     _hd171367_)))))
                                      (if (string? _e171372_)
                                          (_import1171058_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd171367_
                                             (gx#stx-source _stx171054_)))
                                           _K171368_
                                           _rest171369_
                                           _r171370_)
                                          (if (##structure-instance-of?
                                               _e171372_
                                               'gx#module-context::t)
                                              (_K171368_
                                               _rest171369_
                                               (cons _e171372_ _r171370_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx171054_
                                               _hd171367_))))))))))
                 (_import1171058_
                  (lambda (_ctx171356_ _K171357_ _rest171358_ _r171359_)
                    (let ((_dphi171361_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K171357_
                       _rest171358_
                       (cons (##structure
                              gx#import-set::t
                              _ctx171356_
                              _dphi171361_
                              (map (lambda (_g171362171364_)
                                     (gx#core-module-export->import__%
                                      _g171362171364_
                                      '#f
                                      _dphi171361_))
                                   (##unchecked-structure-ref
                                    _ctx171356_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r171359_)))))
                 (_import-submodule171059_
                  (lambda (_hd171323_ _K171324_ _rest171325_ _r171326_)
                    (let* ((_e171327171334_ _hd171323_)
                           (_E171329171338_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e171327171334_)))
                           (_E171328171352_
                            (lambda ()
                              (if (gx#stx-pair? _e171327171334_)
                                  (let ((_e171330171342_
                                         (gx#syntax-e _e171327171334_)))
                                    (let ((_hd171331171345_
                                           (##car _e171330171342_))
                                          (_tl171332171347_
                                           (##cdr _e171330171342_)))
                                      (let ((_spath171350_ _tl171332171347_))
                                        (if '#t
                                            (_import1171058_
                                             (_import-spec-source171062_
                                              _spath171350_)
                                             _K171324_
                                             _rest171325_
                                             _r171326_)
                                            (_E171329171338_)))))
                                  (_E171329171338_)))))
                      (_E171328171352_))))
                 (_import-runtime171060_
                  (lambda (_hd171290_ _K171291_ _rest171292_ _r171293_)
                    (let* ((_e171294171301_ _hd171290_)
                           (_E171296171305_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e171294171301_)))
                           (_E171295171319_
                            (lambda ()
                              (if (gx#stx-pair? _e171294171301_)
                                  (let ((_e171297171309_
                                         (gx#syntax-e _e171294171301_)))
                                    (let ((_hd171298171312_
                                           (##car _e171297171309_))
                                          (_tl171299171314_
                                           (##cdr _e171297171309_)))
                                      (let ((_spath171317_ _tl171299171314_))
                                        (if '#t
                                            (_K171291_
                                             _rest171292_
                                             (cons (_import-spec-source171062_
                                                    _spath171317_)
                                                   _r171293_))
                                            (_E171296171305_)))))
                                  (_E171296171305_)))))
                      (_E171295171319_))))
                 (_import-spec171061_
                  (lambda (_hd171129_ _K171130_ _rest171131_ _r171132_)
                    (let* ((_e171133171150_ _hd171129_)
                           (_E171142171154_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e171133171150_)))
                           (_E171135171264_
                            (lambda ()
                              (if (gx#stx-pair? _e171133171150_)
                                  (let ((_e171143171158_
                                         (gx#syntax-e _e171133171150_)))
                                    (let ((_hd171144171161_
                                           (##car _e171143171158_))
                                          (_tl171145171163_
                                           (##cdr _e171143171158_)))
                                      (if (gx#stx-pair? _tl171145171163_)
                                          (let ((_e171146171166_
                                                 (gx#syntax-e
                                                  _tl171145171163_)))
                                            (let ((_hd171147171169_
                                                   (##car _e171146171166_))
                                                  (_tl171148171171_
                                                   (##cdr _e171146171166_)))
                                              (let* ((_path171174_
                                                      _hd171147171169_)
                                                     (_specs171176_
                                                      _tl171148171171_))
                                                (if '#t
                                                    (let ((_src-ctx171178_
                                                           (_import-spec-source171062_
                                                            _path171174_))
                                                          (_exports171179_
                                                           (make-hash-table))
                                                          (_specs171180_
                                                           (gx#syntax->list
                                                            _specs171176_)))
                                                      (for-each
                                                       (lambda (_out171182_)
                                                         (hash-put!
                                                          _exports171179_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out171182_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out171182_
                         '4
                         gx#module-export::t
                         '#f))
                  _out171182_))
               (##unchecked-structure-ref
                _src-ctx171178_
                '9
                gx#module-context::t
                '#f))
              (_K171130_
               _rest171131_
               (foldl1 (lambda (_spec171184_ _r171185_)
                         (let* ((_e171186171202_ _spec171184_)
                                (_E171188171206_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e171186171202_)))
                                (_E171187171260_
                                 (lambda ()
                                   (if (gx#stx-pair? _e171186171202_)
                                       (let ((_e171189171210_
                                              (gx#syntax-e _e171186171202_)))
                                         (let ((_hd171190171213_
                                                (##car _e171189171210_))
                                               (_tl171191171215_
                                                (##cdr _e171189171210_)))
                                           (let ((_phi171218_
                                                  _hd171190171213_))
                                             (if (gx#stx-pair?
                                                  _tl171191171215_)
                                                 (let ((_e171192171220_
                                                        (gx#syntax-e
                                                         _tl171191171215_)))
                                                   (let ((_hd171193171223_
                                                          (##car _e171192171220_))
                                                         (_tl171194171225_
                                                          (##cdr _e171192171220_)))
                                                     (let ((_name171228_
                                                            _hd171193171223_))
                                                       (if (gx#stx-pair?
                                                            _tl171194171225_)
                                                           (let ((_e171195171230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl171194171225_)))
                     (let ((_hd171196171233_ (##car _e171195171230_))
                           (_tl171197171235_ (##cdr _e171195171230_)))
                       (let ((_src-phi171238_ _hd171196171233_))
                         (if (gx#stx-pair? _tl171197171235_)
                             (let ((_e171198171240_
                                    (gx#syntax-e _tl171197171235_)))
                               (let ((_hd171199171243_ (##car _e171198171240_))
                                     (_tl171200171245_
                                      (##cdr _e171198171240_)))
                                 (let ((_src-name171248_ _hd171199171243_))
                                   (if (gx#stx-null? _tl171200171245_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi171238_)
                                                (gx#identifier?
                                                 _src-name171248_)
                                                (gx#stx-fixnum? _phi171218_)
                                                (gx#identifier? _name171228_))
                                           (let ((_src-phi171250_
                                                  (gx#stx-e _src-phi171238_))
                                                 (_src-name171251_
                                                  (gx#core-identifier-key
                                                   _src-name171248_))
                                                 (_phi171252_
                                                  (gx#stx-e _phi171218_))
                                                 (_name171253_
                                                  (gx#core-identifier-key
                                                   _name171228_)))
                                             (let ((_$e171255_
                                                    (hash-get
                                                     _exports171179_
                                                     (cons _src-phi171250_
                                                           _src-name171251_))))
                                               (if _$e171255_
                                                   ((lambda (_out171258_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out171258_
                                                             _name171253_
                                                             (fx- _phi171252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi171250_))
                    _r171185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e171255_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx171054_
                                                    _hd171129_))))
                                           (_E171188171206_))
                                       (_E171188171206_)))))
                             (_E171188171206_)))))
                   (_E171188171206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E171188171206_)))))
                                       (_E171188171206_)))))
                           (_E171187171260_)))
                       _r171132_
                       _specs171180_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E171142171154_)))))
                                          (_E171142171154_))))
                                  (_E171142171154_))))
                           (_E171134171286_
                            (lambda ()
                              (if (gx#stx-pair? _e171133171150_)
                                  (let ((_e171136171268_
                                         (gx#syntax-e _e171133171150_)))
                                    (let ((_hd171137171271_
                                           (##car _e171136171268_))
                                          (_tl171138171273_
                                           (##cdr _e171136171268_)))
                                      (if (gx#stx-pair? _tl171138171273_)
                                          (let ((_e171139171276_
                                                 (gx#syntax-e
                                                  _tl171138171273_)))
                                            (let ((_hd171140171279_
                                                   (##car _e171139171276_))
                                                  (_tl171141171281_
                                                   (##cdr _e171139171276_)))
                                              (let ((_path171284_
                                                     _hd171140171279_))
                                                (if (gx#stx-null?
                                                     _tl171141171281_)
                                                    (if '#t
                                                        (_K171130_
                                                         _rest171131_
                                                         (cons (_import-spec-source171062_
                                                                _path171284_)
                                                               _r171132_))
                                                        (_E171135171264_))
                                                    (_E171135171264_)))))
                                          (_E171135171264_))))
                                  (_E171135171264_)))))
                      (_E171134171286_))))
                 (_import-spec-source171062_
                  (lambda (_spath171127_)
                    (gx#core-import-nested-module _spath171127_ _stx171054_)))
                 (_import!171063_
                  (lambda (_rbody171076_)
                    (letrec* ((_current-ctx171078_
                               (gx#current-expander-context))
                              (_deps171079_ (make-hash-table-eq))
                              (_bind!171080_
                               (lambda (_hd171125_)
                                 (gx#core-bind-import!__1
                                  _hd171125_
                                  _current-ctx171078_))))
                      (let _lp171082_ ((_rest171084_ _rbody171076_)
                                       (_body171085_ '()))
                        (let* ((_rest171086171094_ _rest171084_)
                               (_else171088171104_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx171078_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx171078_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx171078_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body171085_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx171102_ _g177999_)
                                     (gx#eval-module _ctx171102_))
                                   _deps171079_)
                                  _body171085_))
                               (_K171090171113_
                                (lambda (_rest171107_ _hd171108_)
                                  (if (##structure-direct-instance-of?
                                       _hd171108_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!171080_ _hd171108_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd171108_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd171108_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps171079_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd171108_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd171108_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!171080_
                                             (##unchecked-structure-ref
                                              _hd171108_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd171108_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps171079_
                                                 (##unchecked-structure-ref
                                                  _hd171108_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e171110_
                                                 (##structure-instance-of?
                                                  _hd171108_
                                                  'gx#module-context::t)))
                                            (if _$e171110_
                                                _$e171110_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx171054_
                                                 _hd171108_)))))
                                  (_lp171082_
                                   _rest171107_
                                   (cons _hd171108_ _body171085_)))))
                          (if (##pair? _rest171086171094_)
                              (let ((_hd171091171116_
                                     (##car _rest171086171094_))
                                    (_tl171092171118_
                                     (##cdr _rest171086171094_)))
                                (let* ((_hd171121_ _hd171091171116_)
                                       (_rest171123_ _tl171092171118_))
                                  (_K171090171113_ _rest171123_ _hd171121_)))
                              (_else171088171104_)))))))
                 (_expanded-import?171064_
                  (lambda (_e171068_)
                    (let ((_$e171070_
                           (##structure-direct-instance-of?
                            _e171068_
                            'gx#import-set::t)))
                      (if _$e171070_
                          _$e171070_
                          (let ((_$e171073_
                                 (##structure-direct-instance-of?
                                  _e171068_
                                  'gx#module-import::t)))
                            (if _$e171073_
                                _$e171073_
                                (##structure-instance-of?
                                 _e171068_
                                 'gx#module-context::t))))))))
          (let ((_rbody171066_
                 (gx#core-expand-import/export
                  _stx171054_
                  _expanded-import?171064_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1171057_)))
            (if _internal-expand?171055_
                (reverse _rbody171066_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!171063_ _rbody171066_))
                 (gx#stx-source _stx171054_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx171380_)
        (let ((_internal-expand?171382_ '#f))
          (gx#core-expand-import%__% _stx171380_ _internal-expand?171382_))))
    (define gx#core-expand-import%
      (lambda _g178001_
        (let ((_g178000_ (##length _g178001_)))
          (cond ((##fx= _g178000_ 1)
                 (apply (lambda (_stx171380_)
                          (gx#core-expand-import%__0 _stx171380_))
                        _g178001_))
                ((##fx= _g178000_ 2)
                 (apply (lambda (_stx171384_ _internal-expand?171385_)
                          (gx#core-expand-import%__%
                           _stx171384_
                           _internal-expand?171385_))
                        _g178001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g178001_))))))
    (define gx#core-import-nested-module
      (lambda (_spath170981_ _where170982_)
        (let* ((_e170983170990_ _spath170981_)
               (_E170985170994_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170983170990_)))
               (_E170984171049_
                (lambda ()
                  (if (gx#stx-pair? _e170983170990_)
                      (let ((_e170986170998_ (gx#syntax-e _e170983170990_)))
                        (let ((_hd170987171001_ (##car _e170986170998_))
                              (_tl170988171003_ (##cdr _e170986170998_)))
                          (let* ((_origin171006_ _hd170987171001_)
                                 (_sub171008_ _tl170988171003_))
                            (if '#t
                                (let ((_origin-ctx171010_
                                       (if (gx#stx-false? _origin171006_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin171006_))))
                                  (let _lp171012_ ((_rest171014_ _sub171008_)
                                                   (_ctx171015_
                                                    _origin-ctx171010_))
                                    (let* ((_e171016171023_ _rest171014_)
                                           (_E171018171027_
                                            (lambda () _ctx171015_))
                                           (_E171017171045_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e171016171023_)
                                                  (let ((_e171019171031_
                                                         (gx#syntax-e
                                                          _e171016171023_)))
                                                    (let ((_hd171020171034_
                                                           (##car _e171019171031_))
                                                          (_tl171021171036_
                                                           (##cdr _e171019171031_)))
                                                      (let* ((_id171039_
                                                              _hd171020171034_)
                                                             (_rest171041_
                                                              _tl171021171036_))
                                                        (if '#t
                                                            (let ((_bind171043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id171039_
                            '0
                            _ctx171015_)))
                      (if (and (##structure-direct-instance-of?
                                _bind171043_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind171043_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where170982_
                           _spath170981_
                           _id171039_))
                      (_lp171012_
                       _rest171041_
                       (##unchecked-structure-ref
                        _bind171043_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E171018171027_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E171018171027_)))))
                                      (_E171017171045_))))
                                (_E170985170994_)))))
                      (_E170985170994_)))))
          (_E170984171049_))))
    (define gx#core-expand-import-source
      (lambda (_hd170979_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd170979_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx170487_ _internal-expand?170488_)
        (letrec* ((_make-export__177930177931_
                   (lambda (_bind170927_ _phi170928_ _ctx170929_ _name170930_)
                     (let* ((_key170932_
                             (##unchecked-structure-ref
                              _bind170927_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key170934_
                             (if _name170930_
                                 (gx#core-identifier-key _name170930_)
                                 _key170932_)))
                       (##structure
                        gx#module-export::t
                        _ctx170929_
                        _key170932_
                        _phi170928_
                        _export-key170934_
                        (let ((_$e170937_
                               (##structure-instance-of?
                                _bind170927_
                                'gx#extern-binding::t)))
                          (if _$e170937_
                              _$e170937_
                              (##structure-direct-instance-of?
                               _bind170927_
                               'gx#import-binding::t)))))))
                  (_make-export__0__177932177935_
                   (lambda (_bind170943_)
                     (let* ((_phi170945_ (gx#current-export-expander-phi))
                            (_ctx170947_ (gx#current-expander-context))
                            (_name170949_ '#f))
                       (_make-export__177930177931_
                        _bind170943_
                        _phi170945_
                        _ctx170947_
                        _name170949_))))
                  (_make-export__1__177933177936_
                   (lambda (_bind170951_ _phi170952_)
                     (let* ((_ctx170954_ (gx#current-expander-context))
                            (_name170956_ '#f))
                       (_make-export__177930177931_
                        _bind170951_
                        _phi170952_
                        _ctx170954_
                        _name170956_))))
                  (_make-export__2__177934177937_
                   (lambda (_bind170958_ _phi170959_ _ctx170960_)
                     (let ((_name170962_ '#f))
                       (_make-export__177930177931_
                        _bind170958_
                        _phi170959_
                        _ctx170960_
                        _name170962_))))
                  (_make-export170490_
                   (lambda _g178003_
                     (let ((_g178002_ (##length _g178003_)))
                       (cond ((##fx= _g178002_ 1)
                              (apply (lambda (_bind170943_)
                                       (_make-export__0__177932177935_
                                        _bind170943_))
                                     _g178003_))
                             ((##fx= _g178002_ 2)
                              (apply (lambda (_bind170951_ _phi170952_)
                                       (_make-export__1__177933177936_
                                        _bind170951_
                                        _phi170952_))
                                     _g178003_))
                             ((##fx= _g178002_ 3)
                              (apply (lambda (_bind170958_
                                              _phi170959_
                                              _ctx170960_)
                                       (_make-export__2__177934177937_
                                        _bind170958_
                                        _phi170959_
                                        _ctx170960_))
                                     _g178003_))
                             ((##fx= _g178002_ 4)
                              (apply (lambda (_bind170964_
                                              _phi170965_
                                              _ctx170966_
                                              _name170967_)
                                       (_make-export__177930177931_
                                        _bind170964_
                                        _phi170965_
                                        _ctx170966_
                                        _name170967_))
                                     _g178003_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g178003_))))))
                  (_expand1170491_
                   (lambda (_hd170640_ _K170641_ _rest170642_ _r170643_)
                     (let* ((_e170644170676_ _hd170640_)
                            (_E170671170680_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx170487_
                                _hd170640_)))
                            (_E170661170759_
                             (lambda ()
                               (if (gx#stx-pair? _e170644170676_)
                                   (let ((_e170672170684_
                                          (gx#syntax-e _e170644170676_)))
                                     (let ((_hd170673170687_
                                            (##car _e170672170684_))
                                           (_tl170674170689_
                                            (##cdr _e170672170684_)))
                                       (if (eq? (gx#stx-e _hd170673170687_)
                                                'import:)
                                           (let ((_in170692_ _tl170674170689_))
                                             (if (gx#stx-list? _in170692_)
                                                 (let _lp170694_ ((_in-rest170696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in170692_)
                          (_r170697_ _r170643_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e170698170705_
                                                           _in-rest170696_)
                                                          (_E170700170709_
                                                           (lambda ()
                                                             (_K170641_
                                                              _rest170642_
                                                              _r170697_)))
                                                          (_E170699170755_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e170698170705_)
                         (let ((_e170701170713_ (gx#syntax-e _e170698170705_)))
                           (let ((_hd170702170716_ (##car _e170701170713_))
                                 (_tl170703170718_ (##cdr _e170701170713_)))
                             (let* ((_hd170721_ _hd170702170716_)
                                    (_in-rest170723_ _tl170703170718_))
                               (if '#t
                                   (let ((_src170753_
                                          (if (gx#core-bound-module?
                                               _hd170721_)
                                              (gx#syntax-local-e__0 _hd170721_)
                                              (if (gx#core-library-module-path?
                                                   _hd170721_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd170721_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd170721_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd170721_))
                                                      (if (gx#stx-string?
                                                           _hd170721_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd170721_
                                                            (gx#stx-source
                                                             _stx170487_)))
                                                          (let* ((_e170724170731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd170721_)
                         (_E170726170735_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx170487_
                             _hd170721_)))
                         (_E170725170749_
                          (lambda ()
                            (if (gx#stx-pair? _e170724170731_)
                                (let ((_e170727170739_
                                       (gx#syntax-e _e170724170731_)))
                                  (let ((_hd170728170742_
                                         (##car _e170727170739_))
                                        (_tl170729170744_
                                         (##cdr _e170727170739_)))
                                    (if (eq? (gx#stx-e _hd170728170742_) 'in:)
                                        (let ((_spath170747_ _tl170729170744_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath170747_
                                               _stx170487_)
                                              (_E170726170735_)))
                                        (_E170726170735_))))
                                (_E170726170735_)))))
                    (_E170725170749_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp170694_
                                      _in-rest170723_
                                      (_export-imports170492_
                                       _src170753_
                                       _r170697_)))
                                   (_E170700170709_)))))
                         (_E170700170709_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E170699170755_)))
                                                 (_E170671170680_)))
                                           (_E170671170680_))))
                                   (_E170671170680_))))
                            (_E170648170798_
                             (lambda ()
                               (if (gx#stx-pair? _e170644170676_)
                                   (let ((_e170662170763_
                                          (gx#syntax-e _e170644170676_)))
                                     (let ((_hd170663170766_
                                            (##car _e170662170763_))
                                           (_tl170664170768_
                                            (##cdr _e170662170763_)))
                                       (if (eq? (gx#stx-e _hd170663170766_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl170664170768_)
                                               (let ((_e170665170771_
                                                      (gx#syntax-e
                                                       _tl170664170768_)))
                                                 (let ((_hd170666170774_
                                                        (##car _e170665170771_))
                                                       (_tl170667170776_
                                                        (##cdr _e170665170771_)))
                                                   (let ((_id170779_
                                                          _hd170666170774_))
                                                     (if (gx#stx-pair?
                                                          _tl170667170776_)
                                                         (let ((_e170668170781_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl170667170776_)))
                   (let ((_hd170669170784_ (##car _e170668170781_))
                         (_tl170670170786_ (##cdr _e170668170781_)))
                     (let ((_name170789_ _hd170669170784_))
                       (if (gx#stx-null? _tl170670170786_)
                           (if '#t
                               (let* ((_phi170791_
                                       (gx#current-export-expander-phi))
                                      (_$e170793_
                                       (gx#core-resolve-identifier__1
                                        _id170779_
                                        _phi170791_)))
                                 (if _$e170793_
                                     ((lambda (_bind170796_)
                                        (_K170641_
                                         _rest170642_
                                         (cons (_make-export__177930177931_
                                                _bind170796_
                                                _phi170791_
                                                (gx#current-expander-context)
                                                _name170789_)
                                               _r170643_)))
                                      _$e170793_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx170487_
                                      _hd170640_
                                      _id170779_)))
                               (_E170661170759_))
                           (_E170661170759_)))))
                 (_E170661170759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E170661170759_))
                                           (_E170661170759_))))
                                   (_E170661170759_))))
                            (_E170647170847_
                             (lambda ()
                               (if (gx#stx-pair? _e170644170676_)
                                   (let ((_e170649170802_
                                          (gx#syntax-e _e170644170676_)))
                                     (let ((_hd170650170805_
                                            (##car _e170649170802_))
                                           (_tl170651170807_
                                            (##cdr _e170649170802_)))
                                       (if (eq? (gx#stx-e _hd170650170805_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl170651170807_)
                                               (let ((_e170652170810_
                                                      (gx#syntax-e
                                                       _tl170651170807_)))
                                                 (let ((_hd170653170813_
                                                        (##car _e170652170810_))
                                                       (_tl170654170815_
                                                        (##cdr _e170652170810_)))
                                                   (let ((_phi170818_
                                                          _hd170653170813_))
                                                     (if (gx#stx-pair?
                                                          _tl170654170815_)
                                                         (let ((_e170655170820_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl170654170815_)))
                   (let ((_hd170656170823_ (##car _e170655170820_))
                         (_tl170657170825_ (##cdr _e170655170820_)))
                     (let ((_id170828_ _hd170656170823_))
                       (if (gx#stx-pair? _tl170657170825_)
                           (let ((_e170658170830_
                                  (gx#syntax-e _tl170657170825_)))
                             (let ((_hd170659170833_ (##car _e170658170830_))
                                   (_tl170660170835_ (##cdr _e170658170830_)))
                               (let ((_name170838_ _hd170659170833_))
                                 (if (gx#stx-null? _tl170660170835_)
                                     (if (and (gx#stx-fixnum? _phi170818_)
                                              (gx#identifier? _id170828_)
                                              (gx#identifier? _name170838_))
                                         (let* ((_phi170840_
                                                 (gx#stx-e _phi170818_))
                                                (_$e170842_
                                                 (gx#core-resolve-identifier__1
                                                  _id170828_
                                                  _phi170840_)))
                                           (if _$e170842_
                                               ((lambda (_bind170845_)
                                                  (_K170641_
                                                   _rest170642_
                                                   (cons (_make-export__177930177931_
                                                          _bind170845_
                                                          _phi170840_
                                                          (gx#current-expander-context)
                                                          _name170838_)
                                                         _r170643_)))
                                                _$e170842_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx170487_
                                                _hd170640_
                                                _id170828_)))
                                         (_E170648170798_))
                                     (_E170648170798_)))))
                           (_E170648170798_)))))
                 (_E170648170798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E170648170798_))
                                           (_E170648170798_))))
                                   (_E170648170798_))))
                            (_E170646170858_
                             (lambda ()
                               (let ((_id170851_ _e170644170676_))
                                 (if (gx#identifier? _id170851_)
                                     (let ((_$e170853_
                                            (gx#core-resolve-identifier__1
                                             _id170851_
                                             (gx#current-export-expander-phi))))
                                       (if _$e170853_
                                           ((lambda (_bind170856_)
                                              (_K170641_
                                               _rest170642_
                                               (cons (_make-export__0__177932177935_
                                                      _bind170856_)
                                                     _r170643_)))
                                            _$e170853_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx170487_
                                            _hd170640_)))
                                     (_E170647170847_)))))
                            (_E170645170922_
                             (lambda ()
                               (if (eq? (gx#stx-e _e170644170676_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx170862_
                                               (gx#current-expander-context))
                                              (_current-phi170864_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx170866_
                                               (gx#core-context-shift
                                                _current-ctx170862_
                                                _current-phi170864_))
                                              (_phi-bind170868_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx170866_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp170871_ ((_bind-rest170873_
                                                           _phi-bind170868_)
                                                          (_set170874_ '()))
                                           (let* ((_bind-rest170875170885_
                                                   _bind-rest170873_)
                                                  (_else170877170893_
                                                   (lambda ()
                                                     (_K170641_
                                                      _rest170642_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi170864_
                                                             _set170874_)
                                                            _r170643_))))
                                                  (_K170879170903_
                                                   (lambda (_bind-rest170896_
                                                            _bind170897_
                                                            _key170898_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind170897_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind170897_))
                                                         (_lp170871_
                                                          _bind-rest170896_
                                                          _set170874_)
                                                         (_lp170871_
                                                          _bind-rest170896_
                                                          (cons (_make-export__2__177934177937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind170897_
                         _current-phi170864_
                         _current-ctx170862_)
                        _set170874_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest170875170885_)
                                                 (let ((_hd170880170906_
                                                        (##car _bind-rest170875170885_))
                                                       (_tl170881170908_
                                                        (##cdr _bind-rest170875170885_)))
                                                   (if (##pair? _hd170880170906_)
                                                       (let ((_hd170882170911_
                                                              (##car _hd170880170906_))
                                                             (_tl170883170913_
                                                              (##cdr _hd170880170906_)))
                                                         (let* ((_key170916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd170882170911_)
                        (_bind170918_ _tl170883170913_)
                        (_bind-rest170920_ _tl170881170908_))
                   (_K170879170903_
                    _bind-rest170920_
                    _bind170918_
                    _key170916_)))
               (_else170877170893_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else170877170893_)))))
                                       (_E170646170858_))
                                   (_E170646170858_)))))
                       (_E170645170922_))))
                  (_export-imports170492_
                   (lambda (_src170516_ _r170517_)
                     (letrec* ((_current-ctx170519_
                                (gx#current-expander-context))
                               (_current-phi170520_
                                (gx#current-export-expander-phi))
                               (_import->export170521_
                                (lambda (_in170602_)
                                  (let* ((_in170603170611_ _in170602_)
                                         (_E170605170615_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in170603170611_)))
                                         (_K170606170622_
                                          (lambda (_phi170618_
                                                   _key170619_
                                                   _out170620_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx170519_
                                             _key170619_
                                             _phi170618_
                                             _key170619_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in170603170611_
                                         'gx#module-import::t)
                                        (let* ((_e170607170625_
                                                (##unchecked-structure-ref
                                                 _in170603170611_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out170628_ _e170607170625_)
                                               (_e170608170630_
                                                (##unchecked-structure-ref
                                                 _in170603170611_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key170633_ _e170608170630_)
                                               (_e170609170635_
                                                (##unchecked-structure-ref
                                                 _in170603170611_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi170638_ _e170609170635_))
                                          (_K170606170622_
                                           _phi170638_
                                           _key170633_
                                           _out170628_))
                                        (_E170605170615_)))))
                               (_fold-e170522_
                                (lambda (_in170524_ _r170525_)
                                  (let* ((_in170526170540_ _in170524_)
                                         (_else170529170548_
                                          (lambda () _r170525_)))
                                    (let ((_K170535170584_
                                           (lambda (_phi170580_
                                                    _key170581_
                                                    _out170582_)
                                             (if (and (fx= _phi170580_
                                                           _current-phi170520_)
                                                      (eq? _src170516_
                                                           (##unchecked-structure-ref
                                                            _out170582_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export170521_
                                                        _in170524_)
                                                       _r170525_)
                                                 _r170525_)))
                                          (_K170531170559_
                                           (lambda (_imports170552_
                                                    _phi170553_
                                                    _ctx170554_)
                                             (if (and (fx= _phi170553_
                                                           _current-phi170520_)
                                                      (eq? _src170516_
                                                           _ctx170554_))
                                                 (foldl1 (lambda (_in170556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r170557_)
                   (cons (_import->export170521_ _in170556_) _r170557_))
                 _r170525_
                 _imports170552_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r170525_))))
                                      (let ((_try-match170528170577_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in170526170540_
                                                    'gx#import-set::t)
                                                   (let* ((_e170532170562_
                                                           (##unchecked-structure-ref
                                                            _in170526170540_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e170533170567_
                                                           (##unchecked-structure-ref
                                                            _in170526170540_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e170534170572_
                                                           (##unchecked-structure-ref
                                                            _in170526170540_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx170565_
                                                            _e170532170562_)
                                                           (_phi170570_
                                                            _e170533170567_)
                                                           (_imports170575_
                                                            _e170534170572_))
                                                       (_K170531170559_
                                                        _imports170575_
                                                        _phi170570_
                                                        _ctx170565_)))
                                                   (_else170529170548_)))))
                                        (if (##structure-direct-instance-of?
                                             _in170526170540_
                                             'gx#module-import::t)
                                            (let* ((_e170536170587_
                                                    (##unchecked-structure-ref
                                                     _in170526170540_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e170537170592_
                                                    (##unchecked-structure-ref
                                                     _in170526170540_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e170538170597_
                                                    (##unchecked-structure-ref
                                                     _in170526170540_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out170590_
                                                     _e170536170587_)
                                                    (_key170595_
                                                     _e170537170592_)
                                                    (_phi170600_
                                                     _e170538170597_))
                                                (_K170535170584_
                                                 _phi170600_
                                                 _key170595_
                                                 _out170590_)))
                                            (_try-match170528170577_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src170516_
                              _current-phi170520_
                              (foldl1 _fold-e170522_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx170519_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r170517_))))
                  (_export!170493_
                   (lambda (_rbody170506_)
                     (letrec* ((_current-ctx170508_
                                (gx#current-expander-context))
                               (_fold-e170509_
                                (lambda (_out170513_ _r170514_)
                                  (if (##structure-direct-instance-of?
                                       _out170513_
                                       'gx#module-export::t)
                                      (cons _out170513_ _r170514_)
                                      (if (##structure-direct-instance-of?
                                           _out170513_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r170514_
                                                  (##unchecked-structure-ref
                                                   _out170513_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r170514_)))))
                       (let ((_body170511_ (reverse _rbody170506_)))
                         (##unchecked-structure-set!
                          _current-ctx170508_
                          (foldl1 _fold-e170509_
                                  (##unchecked-structure-ref
                                   _current-ctx170508_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body170511_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body170511_))))
                  (_expanded-export?170494_
                   (lambda (_e170501_)
                     (let ((_$e170503_
                            (##structure-direct-instance-of?
                             _e170501_
                             'gx#module-export::t)))
                       (if _$e170503_
                           _$e170503_
                           (##structure-direct-instance-of?
                            _e170501_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?170488_)
              (let ((_rbody170499_
                     (gx#core-expand-import/export
                      _stx170487_
                      _expanded-export?170494_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1170491_)))
                (if _internal-expand?170488_
                    (reverse _rbody170499_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!170493_ _rbody170499_))
                     (gx#stx-source _stx170487_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx170487_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx170487_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx170972_)
        (let ((_internal-expand?170974_ '#f))
          (gx#core-expand-export%__% _stx170972_ _internal-expand?170974_))))
    (define gx#core-expand-export%
      (lambda _g178005_
        (let ((_g178004_ (##length _g178005_)))
          (cond ((##fx= _g178004_ 1)
                 (apply (lambda (_stx170972_)
                          (gx#core-expand-export%__0 _stx170972_))
                        _g178005_))
                ((##fx= _g178004_ 2)
                 (apply (lambda (_stx170976_ _internal-expand?170977_)
                          (gx#core-expand-export%__%
                           _stx170976_
                           _internal-expand?170977_))
                        _g178005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g178005_))))))
    (define gx#core-expand-export-source
      (lambda (_hd170484_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd170484_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx170454_)
        (let* ((_e170455170462_ _stx170454_)
               (_E170457170466_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170455170462_)))
               (_E170456170480_
                (lambda ()
                  (if (gx#stx-pair? _e170455170462_)
                      (let ((_e170458170470_ (gx#syntax-e _e170455170462_)))
                        (let ((_hd170459170473_ (##car _e170458170470_))
                              (_tl170460170475_ (##cdr _e170458170470_)))
                          (let ((_body170478_ _tl170460170475_))
                            (if (gx#identifier-list? _body170478_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body170478_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body170478_))
                                   (gx#stx-source _stx170454_)))
                                (_E170457170466_)))))
                      (_E170457170466_)))))
          (_E170456170480_))))
    (define gx#core-bind-feature!__%
      (lambda (_id170420_ _private?170421_ _phi170422_ _ctx170423_)
        (gx#core-bind-syntax!__%
         _id170420_
         ((if _private?170421_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id170420_))
         _private?170421_
         _phi170422_
         _ctx170423_)))
    (define gx#core-bind-feature!__0
      (lambda (_id170428_)
        (let* ((_private?170430_ '#f)
               (_phi170432_ (gx#current-expander-phi))
               (_ctx170434_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id170428_
           _private?170430_
           _phi170432_
           _ctx170434_))))
    (define gx#core-bind-feature!__1
      (lambda (_id170436_ _private?170437_)
        (let* ((_phi170439_ (gx#current-expander-phi))
               (_ctx170441_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id170436_
           _private?170437_
           _phi170439_
           _ctx170441_))))
    (define gx#core-bind-feature!__2
      (lambda (_id170443_ _private?170444_ _phi170445_)
        (let ((_ctx170447_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id170443_
           _private?170444_
           _phi170445_
           _ctx170447_))))
    (define gx#core-bind-feature!
      (lambda _g178007_
        (let ((_g178006_ (##length _g178007_)))
          (cond ((##fx= _g178006_ 1)
                 (apply (lambda (_id170428_)
                          (gx#core-bind-feature!__0 _id170428_))
                        _g178007_))
                ((##fx= _g178006_ 2)
                 (apply (lambda (_id170436_ _private?170437_)
                          (gx#core-bind-feature!__1
                           _id170436_
                           _private?170437_))
                        _g178007_))
                ((##fx= _g178006_ 3)
                 (apply (lambda (_id170443_ _private?170444_ _phi170445_)
                          (gx#core-bind-feature!__2
                           _id170443_
                           _private?170444_
                           _phi170445_))
                        _g178007_))
                ((##fx= _g178006_ 4)
                 (apply (lambda (_id170449_
                                 _private?170450_
                                 _phi170451_
                                 _ctx170452_)
                          (gx#core-bind-feature!__%
                           _id170449_
                           _private?170450_
                           _phi170451_
                           _ctx170452_))
                        _g178007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g178007_))))))))
